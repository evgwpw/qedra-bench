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
    this.proc = spawn(this.exe, ['--json'], { stdio: ['pipe', 'pipe', 'pipe'], windowsHide: true });
    this.proc.stderr.on('data', (d) => {
      this.lastErr = (this.lastErr + d.toString()).slice(-2000);
    });
    const rl = readline.createInterface({ input: this.proc.stdout });
    rl.on('line', (line) => {
      if (this.pending) { const p = this.pending; this.pending = null; p.resolve(line); }
    });
    this.proc.on('exit', (code) => {
      if (!this.lastErr) this.lastErr = `процесс завершился, код ${code}`;
      if (this.pending) { const p = this.pending; this.pending = null; p.reject(new Error(this.lastErr)); }
    });
  }

  stop() {
    if (this.proc) {
      try { this.proc.kill('SIGKILL'); } catch { /* уже мёртв */ }
      this.proc = null;
    }
    this.pending = null;
  }

  // → { ans, ms } | { timeout: true } | { failed: true }
  async ask(code, timeoutMs) {
    const payload = JSON.stringify({ op: 'eval', code });
    const t0 = Date.now();
    const lineP = new Promise((resolve, reject) => { this.pending = { resolve, reject }; });
    try {
      this.proc.stdin.write(payload + '\n');
    } catch {
      this.start();
      return { failed: true, why: this.lastErr, ms: Date.now() - t0 };
    }
    let timer;
    const timeoutP = new Promise((resolve) => { timer = setTimeout(() => resolve({ timeout: true }), timeoutMs); });
    const res = await Promise.race([lineP.then((l) => ({ line: l })).catch(() => ({ failed: true, why: this.lastErr })), timeoutP]);
    clearTimeout(timer);
    if (res.timeout) { this.start(); return { timeout: true, ms: Date.now() - t0 }; }
    if (res.failed) { this.start(); return { failed: true, why: this.lastErr, ms: Date.now() - t0 }; }
    try {
      return { ans: JSON.parse(res.line), ms: Date.now() - t0 };
    } catch {
      this.start();
      return { failed: true, why: this.lastErr, ms: Date.now() - t0 };
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
      this.start();
      return { failed: true, why: this.lastErr, ms: Date.now() - t0 };
    }
    let timer;
    const timeoutP = new Promise((resolve) => { timer = setTimeout(() => resolve({ timeout: true }), timeoutMs); });
    const res = await Promise.race([lineP.then((l) => ({ line: l })).catch(() => ({ failed: true, why: this.lastErr })), timeoutP]);
    clearTimeout(timer);
    if (res.timeout) { this.start(); return { timeout: true, ms: Date.now() - t0 }; }
    if (res.failed) { this.start(); return { failed: true, why: this.lastErr, ms: Date.now() - t0 }; }
    try {
      return { ans: JSON.parse(res.line), ms: Date.now() - t0 };
    } catch {
      this.start();
      return { failed: true, why: this.lastErr, ms: Date.now() - t0 };
    }
  }
}
