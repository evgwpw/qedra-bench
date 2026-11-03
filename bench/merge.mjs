// Слияние осколков Actions: node merge.mjs <каталог артефактов> <каталог результата>
// Пишет results.jsonl.gz и SUMMARY.md (таблица по наборам и главам rubi).
import fs from 'node:fs';
import path from 'node:path';
import zlib from 'node:zlib';

const src = process.argv[2];
const out = process.argv[3];
if (!src || !out) {
  console.error('usage: node merge.mjs <artifacts-dir> <out-dir>');
  process.exit(2);
}
fs.mkdirSync(out, { recursive: true });

const byId = new Map();
for (const f of fs.readdirSync(src).sort()) {
  if (!/\.jsonl(\.gz)?$/.test(f)) continue;
  const p = path.join(src, f);
  let buf = fs.readFileSync(p);
  if (f.endsWith('.gz')) buf = zlib.gunzipSync(buf);
  let n = 0;
  for (const line of buf.toString('utf8').split(/\r?\n/)) {
    if (!line.trim()) continue;
    try { const r = JSON.parse(line); byId.set(r.id, r); n += 1; } catch { /* битая строка */ }
  }
  console.log(`${f}: ${n}`);
}

const recs = [...byId.values()];
fs.writeFileSync(path.join(out, 'results.jsonl.gz'), zlib.gzipSync(recs.map((r) => JSON.stringify(r)).join('\n') + '\n', { level: 6 }));

const VERDICTS = ['OK', 'WRONG', 'UNVERIFIED', 'partial', 'nonelementary', 'FALSE-NE', 'UNKNOWN', 'TIMEOUT', 'ERROR', 'untranslated'];
const ORDER = ['independent', 'mit_bee_official', 'mit_bee', 'blake', 'hebisch', 'rubi'];
const pct = (a, b) => (b ? (100 * a / b).toFixed(1) : '0.0');
const median = (a) => (a.length ? a[Math.floor(a.length / 2)] : 0);

function row(name, rs) {
  const n = rs.length;
  const cnt = VERDICTS.map((v) => rs.filter((r) => r.verdict === v).length);
  const times = rs.map((r) => r.ms || 0).sort((a, b) => a - b);
  return `| ${name} | ${n} | ${cnt.map((c) => `${c} (${pct(c, n)}%)`).join(' | ')} | ${median(times)} | ${times[Math.floor(0.95 * (times.length - 1))] || 0} |`;
}

const groups = new Map();
for (const r of recs) {
  const g = groups.get(r.suite) || [];
  g.push(r);
  groups.set(r.suite, g);
}
const head = ['| раздел | всего | ' + VERDICTS.join(' | ') + ' | медиана, мс | p95, мс |',
  '|---'.repeat(VERDICTS.length + 4) + '|'];
const lines = ['# Qedra — прогон корпуса интегралов', '',
  `Записей: ${recs.length}.`, '', '### По наборам', ...head];
for (const s of ORDER) if (groups.has(s)) lines.push(row(s, groups.get(s)));
const rubi = groups.get('rubi');
if (rubi) {
  const ch = new Map();
  for (const r of rubi) {
    const parts = r.file.split('/');
    const key = parts[0] === 'rubi' ? parts[1] : parts[0];
    const a = ch.get(key) || [];
    a.push(r);
    ch.set(key, a);
  }
  lines.push('', '### rubi по главам', ...head);
  for (const k of [...ch.keys()].sort()) lines.push(row(`rubi: ${k}`, ch.get(k)));
}
const totals = VERDICTS.map((v) => [v, recs.filter((r) => r.verdict === v).length]).filter(([, n]) => n);
lines.push('', 'Итого: ' + totals.map(([v, n]) => `${v}=${n}`).join(', ') + ` (всего ${recs.length}).`, '');
fs.writeFileSync(path.join(out, 'SUMMARY.md'), lines.join('\n') + '\n');
console.log('готово:', recs.length, 'записей →', out);
