// Клиент Lisp.exe --json: построчный протокол, таймаут с перезапуском процесса.
import { spawn } from 'node:child_process';
import readline from 'node:readline';

export class Lisp {
  constructor(exe) {
    this.exe = exe;
    this.proc = null;
    this.pending = null;
    this.start();
  }

  start() {
    this.stop();
    this.lastErr = '';
    const proc = spawn(this.exe, ['--json'], { stdio: ['pipe', 'pipe', 'pipe'], windowsHide: true });
    this.proc = proc;
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
      if (!this.lastErr) this.lastErr = `процесс завершился, код ${code}`;
      if (this.pending) { const p = this.pending; this.pending = null; p.reject(new Error(this.lastErr)); }
    });
  }

  stop() {
    const proc = this.proc;
    this.proc = null;
    this.pending = null;
    if (proc) {
      try { proc.kill('SIGKILL'); } catch { /* уже мёртв */ }
    }
  }

  // → { ans, ms } | { timeout: true } | { failed: true }
  async ask(code, timeoutMs) {
    const payload = JSON.stringify({ op: 'eval', code });
    const t0 = Date.now();
    const lineP = new Promise((resolve, reject) => { this.pending = { resolve, reject }; });
    try {
      this.proc.stdin.write(payload + '\n');
    } catch {
      const why = this.lastErr;
      this.start();
      return { failed: true, why, ms: Date.now() - t0 };
    }
    let timer;
    const timeoutP = new Promise((resolve) => { timer = setTimeout(() => resolve({ timeout: true }), timeoutMs); });
    const res = await Promise.race([lineP.then((l) => ({ line: l })).catch(() => ({ failed: true, why: this.lastErr })), timeoutP]);
    clearTimeout(timer);
    if (res.timeout) { this.start(); return { timeout: true, ms: Date.now() - t0 }; }
    if (res.failed) { const why = this.lastErr; this.start(); return { failed: true, why, ms: Date.now() - t0 }; }
    try {
      return { ans: JSON.parse(res.line), ms: Date.now() - t0 };
    } catch {
      const why = this.lastErr;
      this.start();
      return { failed: true, why, ms: Date.now() - t0 };
    }
  }

  // math-режим: тот же процесс, другая операция
  async math(code, timeoutMs) {
    return this.askJson({ op: 'math', code }, timeoutMs);
  }

  async askJson(obj, timeoutMs) {
    const payload = JSON.stringify(obj);
    const t0 = Date.now();
    const lineP = new Promise((resolve, reject) => { this.pending = { resolve, reject }; });
    try {
      this.proc.stdin.write(payload + '\n');
    } catch {
      const why = this.lastErr;
      this.start();
      return { failed: true, why, ms: Date.now() - t0 };
    }
    let timer;
    const timeoutP = new Promise((resolve) => { timer = setTimeout(() => resolve({ timeout: true }), timeoutMs); });
    const res = await Promise.race([lineP.then((l) => ({ line: l })).catch(() => ({ failed: true, why: this.lastErr })), timeoutP]);
    clearTimeout(timer);
    if (res.timeout) { this.start(); return { timeout: true, ms: Date.now() - t0 }; }
    if (res.failed) { const why = this.lastErr; this.start(); return { failed: true, why, ms: Date.now() - t0 }; }
    try {
      return { ans: JSON.parse(res.line), ms: Date.now() - t0 };
    } catch {
      const why = this.lastErr;
      this.start();
      return { failed: true, why, ms: Date.now() - t0 };
    }
  }
}
