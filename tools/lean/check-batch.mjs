// L4: проверка пакетного файла — статус по каждой теореме, а не по файлу.
// Запуск: node research/lean/check-batch.mjs lean/batch/shard-1.lean [ещё файлы…]
// Пишет research/lean/batch-results.jsonl: {id, status, ms, file, log}.
// Статусы: passed | failed | failed-axioms | unknown; аксиомы — только propext, Classical.choice, Quot.sound.
import { spawnSync } from 'node:child_process';
import { copyFileSync, existsSync, mkdirSync, readFileSync, writeFileSync, appendFileSync } from 'node:fs';
import { basename, join, resolve, dirname, delimiter } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = join(dirname(fileURLToPath(import.meta.url)), '..', '..');
const project = join(root, 'qedra-lean');
const verify = join(project, '.lean-verify');
const resultsPath = join(root, 'research', 'lean', 'batch-results.jsonl');
const LEAN_BIN = process.env.LEAN_BIN_DIR || (process.platform === 'win32' ? 'E:\\GD\\lean-4.34.0-rc2-windows\\bin' : '');
const timeoutMs = Number(process.env.LEAN_TIMEOUT_MS || 900000);
const ALLOWED = new Set(['propext', 'Classical.choice', 'Quot.sound']);
// Разделитель PATH разный в Windows и Linux: с «;» на раннере PATH ломается и lake не находится.
const childEnv = { ...process.env };
if (LEAN_BIN) childEnv.PATH = `${LEAN_BIN}${delimiter}${process.env.PATH || ''}`;

const files = process.argv.slice(2);
if (!files.length) {
  console.error('укажите пакетные .lean файлы');
  process.exit(2);
}
if (!existsSync(verify)) mkdirSync(verify, { recursive: true });
writeFileSync(resultsPath, '');

for (const f of files) {
  const abs = resolve(f);
  if (!existsSync(abs)) {
    console.log(`${basename(f)}: нет файла`);
    continue;
  }
  const src = readFileSync(abs, 'utf8').replace(/\r\n/g, '\n');
  const lines = src.split('\n');
  // Границы теорем в пакетном файле: строка «theorem qedra_int_<id>».
  const starts = [];
  lines.forEach((l, i) => {
    const m = /^theorem qedra_int_(\S+)/.exec(l);
    if (m) starts.push({ id: m[1], line: i + 1 });
  });
  if (!starts.length) {
    console.log(`${basename(f)}: теорем не найдено`);
    continue;
  }
  const name = `_batch_${basename(f)}`;
  copyFileSync(abs, join(verify, name));
  const t0 = Date.now();
  const r = spawnSync('lake', ['env', 'lean', join('.lean-verify', name)], {
    cwd: project,
    env: childEnv,
    encoding: 'utf8',
    timeout: timeoutMs,
  });
  if (r.error) {
    console.log(`${basename(f)}: не удалось запустить lake — ${r.error.message}`);
    process.exit(1);
  }
  const ms = Date.now() - t0;
  const out = `${r.stdout || ''}\n${r.stderr || ''}`;

  const errors = new Map(); // id -> первая ошибка
  for (const l of out.split(/\r?\n/)) {
    const m = /:(\d+):\d+: error: (.*)$/.exec(l);
    if (!m) continue;
    const line = Number(m[1]);
    let owner = null;
    for (const s of starts) if (s.line <= line) owner = s.id;
    if (owner && !errors.has(owner)) errors.set(owner, m[2].slice(0, 300));
  }
  const axioms = new Map(); // id -> [аксиомы]
  for (const l of out.split(/\r?\n/)) {
    const dep = /'qedra_int_(\S+)' depends on axioms: \[(.*)\]/.exec(l);
    if (dep) {
      axioms.set(dep[1], dep[2].split(',').map((s) => s.trim()).filter(Boolean));
      continue;
    }
    const none = /'qedra_int_(\S+)' does not depend on any axioms/.exec(l);
    if (none) axioms.set(none[1], []);
  }

  const summary = { passed: 0, failed: 0, 'failed-axioms': 0, unknown: 0 };
  const records = [];
  for (const s of starts) {
    let status;
    let log = '';
    if (errors.has(s.id)) {
      status = 'failed';
      log = errors.get(s.id);
    } else if (!axioms.has(s.id)) {
      status = 'unknown';
      log = 'нет вывода #print axioms (таймаут или теорема не объявлена)';
    } else {
      const bad = axioms.get(s.id).filter((a) => !ALLOWED.has(a));
      if (bad.length) {
        status = 'failed-axioms';
        log = `лишние аксиомы: ${bad.join(', ')}`;
      } else {
        status = 'passed';
      }
    }
    summary[status] += 1;
    records.push({ id: s.id, status, ms: null, file: `lean/batch/${basename(f)}`, log });
  }
  for (const rec of records) appendFileSync(resultsPath, `${JSON.stringify(rec)}\n`);
  console.log(`${basename(f)}: ${(ms / 1000).toFixed(1)} с — passed ${summary.passed}, failed ${summary.failed}, failed-axioms ${summary['failed-axioms']}, unknown ${summary.unknown}; код ${r.status}`);
  if (summary.passed !== records.length) process.exitCode = 1;
}
console.log(`результаты: ${resultsPath}`);
