// Клиент Lisp.exe --json: построчный протокол.
// Таймаут задачи: клиент шлёт в запросе timeout_s (бюджет, вверх до целого) — сторож Lisp сам прерывает вычисление и
// отвечает status "timeout", процесс остаётся тёплым. Убийство процесса — только страховка: нет ответа за бюджет + GUARD_MS
// (старые снимки без JSON.GUARD поле игнорируют). После каждого (пере)запуска процесса — прогрев вне бюджета задач.
// Учёт: каждый перезапуск записывается с причиной (guard, exit3, exit<код>, crash, bad-json, write-error, warmup-fail),
// время прогрева — тоже; worker забирает их через takeMeta() и кладёт в запись результата задачи.
import { spawn } from 'node:child_process';
import readline from 'node:readline';

const GUARD_MS = 5000;        // запас сверх бюджета до страховочного убийства
const WARMUP_LIMIT_S = 60;    // свой лимит прогрева, вне бюджета задач
// прямой Rubi (загрузка правил) и каскад integrate; формат — как у worker.mjs (op math, fn из workflow)
const WARMUP_CODES = ['integrate_rubi((1+2*x)^(3/2), x)', 'integrate(x*exp(x), x)'];

export class Lisp {
  constructor(exe, { warmup = true } = {}) {
    this.exe = exe;
    this.proc = null;
    this.pending = null;
    this.dead = false;
    this.deadReason = null;
    this.meta = { restarts: [], warmupMs: null };
    this.warmupOn = warmup && process.env.BENCH_NO_WARMUP !== '1';
    this.ready = Promise.resolve();
    this.start(null);
  }

  // Что накопилось с прошлого вызова: { restart: "причина[,причина]" | undefined, warmup_ms: число | undefined }
  takeMeta() {
    const m = this.meta;
    this.meta = { restarts: [], warmupMs: null };
    const out = {};
    if (m.restarts.length) out.restart = m.restarts.join(',');
    if (m.warmupMs !== null) out.warmup_ms = m.warmupMs;
    return out;
  }

  // reason — причина перезапуска (null для первого запуска); withWarmup=false — без прогрева (повторный сбой подряд)
  start(reason, withWarmup = true) {
    this.stop();
    if (reason) this.meta.restarts.push(reason);
    this.lastErr = '';
    this.dead = false;
    this.deadReason = null;
    const proc = spawn(this.exe, ['--json'], { stdio: ['pipe', 'pipe', 'pipe'], windowsHide: true });
    this.proc = proc;
    proc.stdin.on('error', () => { /* EPIPE мёртвого процесса: поймает exit/страховка */ });
    proc.stderr.on('data', (d) => {
      if (this.proc !== proc) return;
      this.lastErr = (this.lastErr + d.toString()).slice(-2000);
    });
    const rl = readline.createInterface({ input: proc.stdout });
    rl.on('line', (line) => {
      if (this.proc !== proc) return;
      if (this.pending) { const p = this.pending; this.pending = null; p.resolve(line); }
    });
    proc.on('exit', (code) => {
      // exit убитого по таймауту процесса приходит уже после запуска нового —
      // без проверки он отклонял бы чужой (следующий) запрос и давал ложный ERROR
      if (this.proc !== proc) return;
      this.dead = true; // например, сторож не смог прервать вычисление и завершил процесс (код 3)
      this.deadReason = this.deadReason || (code === 3 ? 'exit3' : (code === null || code === undefined ? 'crash' : `exit${code}`));
      if (!this.lastErr) this.lastErr = `процесс завершился, код ${code}`;
      if (this.pending) { const p = this.pending; this.pending = null; p.reject(new Error(this.lastErr)); }
    });
    this.ready = this.warmupOn && withWarmup ? this.warmup(proc) : Promise.resolve();
  }

  stop() {
    const proc = this.proc;
    this.proc = null;
    this.pending = null;
    if (proc) {
      try { proc.kill('SIGKILL'); } catch { /* уже мёртв */ }
    }
  }

  // Базовый обмен без перезапусков: одна строка запроса, одна строка ответа.
  // → { line } | { guard } | { failed, why, reason }. На процессе — не больше одного ожидающего запроса.
  async rawExchange(proc, payload, limitMs) {
    if (this.proc !== proc) return { failed: true, why: 'процесс заменён', reason: 'crash' };
    if (this.pending) throw new Error('внутренняя ошибка: на процессе уже есть ожидающий запрос');
    const lineP = new Promise((resolve, reject) => { this.pending = { resolve, reject }; });
    try {
      proc.stdin.write(payload + '\n');
    } catch {
      this.pending = null;
      return { failed: true, why: this.lastErr, reason: 'write-error' };
    }
    let timer;
    const guardP = new Promise((resolve) => { timer = setTimeout(() => resolve({ guard: true }), limitMs + GUARD_MS); });
    const res = await Promise.race([
      lineP.then((l) => ({ line: l })).catch(() => ({ failed: true, why: this.lastErr, reason: this.deadReason || 'crash' })),
      guardP]);
    clearTimeout(timer);
    if (res.guard && this.proc === proc) this.pending = null;
    return res;
  }

  // Прогрев: загрузить Rubi и каскад, не входит ни в ms, ни в бюджет задачи. Своя простая процедура:
  // перезапусков внутри нет; сбой — процесс помечается мёртвым с причиной warmup-fail (перезапустит request).
  async warmup(proc) {
    const t0 = Date.now();
    const notes = [];
    let failed = false;
    for (const code of WARMUP_CODES) {
      if (this.proc !== proc) return;
      const payload = JSON.stringify({ op: 'math', code, timeout_s: WARMUP_LIMIT_S });
      const r = await this.rawExchange(proc, payload, WARMUP_LIMIT_S * 1000);
      if (this.proc !== proc) return;
      if (r.guard || r.failed) { notes.push(`сбой: ${code}: ${String(r.why || 'нет ответа').slice(0, 200)}`); failed = true; break; }
      let ans = null;
      try { ans = JSON.parse(r.line); } catch { notes.push(`сбой: ${code}: не JSON`); failed = true; break; }
      if (ans && ans.status === 'timeout') { notes.push(`timeout: ${code}`); break; }
      if (ans && ans.status === 'error') notes.push(`ошибка: ${code}: ${String(ans.error || '').slice(0, 200)}`);
    }
    const ms = Date.now() - t0;
    this.meta.warmupMs = (this.meta.warmupMs || 0) + ms;
    console.error(`warmup ${ms} ms${notes.length ? ' (' + notes.join('; ') + ')' : ''}`);
    if (failed) {
      this.deadReason = 'warmup-fail';
      this.dead = true;
      this.stop();
    }
  }

  // Один обмен задачи: запрос с timeout_s. → { ans, ms } | { timeout, ms } | { failed, why, ms }
  // status "timeout" в ответе — штатный таймаут сторожа (процесс жив); нет ответа за бюджет + GUARD_MS — страховка: перезапуск.
  async exchange(obj, budgetSec) {
    const t0 = Date.now();
    const proc = this.proc;
    const payload = JSON.stringify({ ...obj, timeout_s: Math.max(1, Math.ceil(budgetSec)) });
    const res = await this.rawExchange(proc, payload, budgetSec * 1000);
    if (res.guard) { this.start('guard'); return { timeout: true, ms: Date.now() - t0 }; }
    if (res.failed) { const why = this.lastErr || res.why; this.start(res.reason || 'crash'); return { failed: true, why, ms: Date.now() - t0 }; }
    let ans;
    try {
      ans = JSON.parse(res.line);
    } catch {
      const why = this.lastErr;
      this.start('bad-json');
      return { failed: true, why, ms: Date.now() - t0 };
    }
    if (ans && ans.status === 'timeout') {
      // процесс мог завершиться сам (сторож не прервал примитив, код 3): ждём exit недолго и перезапускаем сразу,
      // чтобы перезапуск записался этой задаче
      if (!this.dead) await new Promise((r) => setTimeout(r, 200));
      if (this.dead && this.proc === proc) this.start(this.deadReason || 'exit3');
      return { timeout: true, ms: Date.now() - t0, guarded: true };
    }
    return { ans, ms: Date.now() - t0 };
  }

  // запрос пользователя: ждёт готовности (this.ready мог смениться), перезапускает мёртвый процесс
  async request(obj, timeoutMs) {
    await this.waitReady();
    if (this.dead || !this.proc) {
      this.start(this.deadReason || 'crash');
      await this.waitReady();
      // прогрев упал и после перезапуска — не зацикливаться: ещё раз без прогрева
      if (this.dead || !this.proc) { this.start(this.deadReason || 'crash', false); await this.waitReady(); }
    }
    return this.exchange(obj, timeoutMs / 1000);
  }

  async waitReady() {
    let r;
    do { r = this.ready; await r; } while (r !== this.ready);
  }

  // → { ans, ms } | { timeout: true } | { failed: true }
  async ask(code, timeoutMs) {
    return this.request({ op: 'eval', code }, timeoutMs);
  }

  // math-режим: тот же процесс, другая операция
  async math(code, timeoutMs) {
    return this.request({ op: 'math', code }, timeoutMs);
  }

  async askJson(obj, timeoutMs) {
    return this.request(obj, timeoutMs);
  }
}
