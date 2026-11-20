// Клиент Lisp.exe --json: построчный протокол.
// Таймаут задачи: клиент шлёт в запросе timeout_s (бюджет, вверх до целого) — сторож Lisp сам прерывает вычисление и
// отвечает status "timeout", процесс остаётся тёплым. Убийство процесса — только страховка: нет ответа за бюджет + GUARD_MS
// (старые снимки без JSON.GUARD поле игнорируют). После каждого (пере)запуска процесса — прогрев вне бюджета задач.
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
    this.warmupOn = warmup && process.env.BENCH_NO_WARMUP !== '1';
    this.ready = Promise.resolve();
    this.start();
  }

  start() {
    this.stop();
    this.lastErr = '';
    this.dead = false;
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
      if (!this.lastErr) this.lastErr = `процесс завершился, код ${code}`;
      if (this.pending) { const p = this.pending; this.pending = null; p.reject(new Error(this.lastErr)); }
    });
    this.ready = this.warmupOn ? this.warmup(proc) : Promise.resolve();
  }

  stop() {
    const proc = this.proc;
    this.proc = null;
    this.pending = null;
    if (proc) {
      try { proc.kill('SIGKILL'); } catch { /* уже мёртв */ }
    }
  }

  // Прогрев: загрузить Rubi и каскад, не входит ни в ms, ни в бюджет задачи. Ошибка — только в лог.
  async warmup(proc) {
    const t0 = Date.now();
    const notes = [];
    for (const code of WARMUP_CODES) {
      if (this.proc !== proc) return;
      const r = await this.exchange({ op: 'math', code }, WARMUP_LIMIT_S);
      if (r.timeout) notes.push(`timeout: ${code}`);
      else if (r.failed) notes.push(`сбой: ${code}: ${String(r.why || '').slice(0, 200)}`);
      else if (r.ans && r.ans.status === 'error') notes.push(`ошибка: ${code}: ${String(r.ans.error || '').slice(0, 200)}`);
      if (r.failed || r.timeout) break;
    }
    console.error(`warmup ${Date.now() - t0} ms${notes.length ? ' (' + notes.join('; ') + ')' : ''}`);
  }

  // Один обмен: запрос с timeout_s, ждём строку ответа. → { ans, ms } | { timeout, ms } | { failed, why, ms }
  // status "timeout" в ответе — штатный таймаут сторожа (процесс жив); нет ответа за бюджет + GUARD_MS — страховка: перезапуск.
  async exchange(obj, budgetSec) {
    const t0 = Date.now();
    const proc = this.proc;
    const payload = JSON.stringify({ ...obj, timeout_s: Math.max(1, Math.ceil(budgetSec)) });
    const lineP = new Promise((resolve, reject) => { this.pending = { resolve, reject }; });
    try {
      proc.stdin.write(payload + '\n');
    } catch {
      const why = this.lastErr;
      this.start();
      return { failed: true, why, ms: Date.now() - t0 };
    }
    let timer;
    const guardP = new Promise((resolve) => { timer = setTimeout(() => resolve({ guard: true }), budgetSec * 1000 + GUARD_MS); });
    const res = await Promise.race([lineP.then((l) => ({ line: l })).catch(() => ({ failed: true, why: this.lastErr })), guardP]);
    clearTimeout(timer);
    if (res.guard) { this.start(); return { timeout: true, ms: Date.now() - t0 }; }
    if (res.failed) { const why = this.lastErr; this.start(); return { failed: true, why, ms: Date.now() - t0 }; }
    let ans;
    try {
      ans = JSON.parse(res.line);
    } catch {
      const why = this.lastErr;
      this.start();
      return { failed: true, why, ms: Date.now() - t0 };
    }
    if (ans && ans.status === 'timeout') {
      // процесс мог завершиться сам (сторож не прервал примитив) — тогда следующий запрос начнёт с перезапуска
      return { timeout: true, ms: Date.now() - t0, guarded: true };
    }
    return { ans, ms: Date.now() - t0 };
  }

  // запрос пользователя: ждёт прогрева, перезапускает мёртвый процесс
  async request(obj, timeoutMs) {
    await this.ready;
    if (this.dead || !this.proc) { this.start(); await this.ready; }
    return this.exchange(obj, timeoutMs / 1000);
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
