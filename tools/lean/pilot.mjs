// LEAN.PILOT: генерация сертификатов HasDerivAt по ОТВЕТАМ пилотов qedra-bench.
// Вход — results.jsonl.gz (записи с verdict=OK: input — подынтегральное, pretty — ответ CAS).
// Генератор — Lisp (lib/lean/emit.lisp): сам текст теоремы пишет он, здесь только раскладка по пакетам.
// Пакет = шапка один раз + N теорем + #print axioms на каждую (как в gen-batch.mjs для каталога).
//
// Запуск (локально и в CI):
//   node research/lean/pilot.mjs --data .pilot/rubi.gz,.pilot/uchebnye.gz --out lean/pilot --batch 20
//   node research/lean/pilot.mjs --data ... --sample 500 --seed 1        # выборка 500 на каждый файл
import { readFileSync, writeFileSync, mkdirSync, existsSync, rmSync, readdirSync } from 'node:fs';
import { gunzipSync, gzipSync } from 'node:zlib';
import { spawnSync } from 'node:child_process';
import { join, dirname, resolve, delimiter, basename } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = resolve(join(dirname(fileURLToPath(import.meta.url)), '..', '..'));
const argv = process.argv.slice(2);
const arg = (name, def) => {
  const i = argv.indexOf(name);
  return i >= 0 && i + 1 < argv.length ? argv[i + 1] : def;
};
const has = (name) => argv.includes(name);

const dataArg = arg('--data', '.pilot/rubi.gz,.pilot/uchebnye.gz');
const outDir = resolve(arg('--out', join(root, 'lean', 'pilot')));
const batchSize = +arg('--batch', '20');
const sample = +arg('--sample', '0');
const seed = +arg('--seed', '1');
const heartbeats = +arg('--heartbeats', '200000');
const bigHeartbeats = +arg('--heartbeats-big', '50000');
const chunk = +arg('--chunk', '2000');
const lisp = process.env.LISP_EXE || join(root, 'src', 'Lisp.Host', 'bin', 'Debug', 'net10.0', 'Lisp.exe');
const tmpDir = join(root, '.pilot');
const csvChunk = join(tmpDir, 'chunk.tsv');
const lispScript = join(tmpDir, 'emit.lisp');

mkdirSync(tmpDir, { recursive: true });
if (existsSync(outDir)) rmSync(outDir, { recursive: true, force: true });
mkdirSync(outDir, { recursive: true });

// ---------- данные пилотов ----------

function readRecords(path) {
  const buf = path.endsWith('.gz') ? gunzipSync(readFileSync(path)) : readFileSync(path);
  const rows = [];
  for (const line of buf.toString('utf8').split(/\r?\n/)) {
    if (!line.trim()) continue;
    const r = JSON.parse(line);
    if (r.verdict !== 'OK') continue;
    if (!r.input || !r.pretty) continue;
    rows.push(r);
  }
  return rows;
}

// mulberry32 — детерминированная выборка (seed пишется в отчёт)
function rng(a) {
  return () => {
    a |= 0; a = (a + 0x6d2b79f5) | 0;
    let t = Math.imul(a ^ (a >>> 15), 1 | a);
    t = (t + Math.imul(t ^ (t >>> 7), 61 | t)) ^ t;
    return ((t ^ (t >>> 14)) >>> 0) / 4294967296;
  };
}

function pick(rows, n) {
  if (!n || n >= rows.length) return rows;
  const r = rng(seed);
  const idx = rows.map((_, i) => i);
  for (let i = idx.length - 1; i > 0; i--) {
    const j = Math.floor(r() * (i + 1));
    [idx[i], idx[j]] = [idx[j], idx[i]];
  }
  return idx.slice(0, n).sort((a, b) => a - b).map((i) => rows[i]);
}

const parts = dataArg.split(',').map((s) => resolve(root, s));
let records = [];
const perSource = {};
for (const p of parts) {
  const rows = readRecords(p);
  const chosen = pick(rows, sample);
  perSource[basename(p)] = { ok: rows.length, taken: chosen.length };
  records = records.concat(chosen);
}

// id теоремы — латиница/цифры/подчёркивание, уникальный
const used = new Map();
for (const r of records) {
  let base = String(r.id).replace(/[^A-Za-z0-9_]/g, '_').replace(/^_+/, '');
  if (!/^[A-Za-z]/.test(base)) base = 't_' + base;
  const n = used.get(base) || 0;
  used.set(base, n + 1);
  r.leanId = n === 0 ? base : base + '_' + n;
  r.var = r.variable || 'x';
}

// Узкие импорты вместо `import Mathlib` (та же таблица, что в gen-batch.mjs, — −30 % времени пакета)
const NARROW_IMPORTS = [
  'import Mathlib.Analysis.Complex.Trigonometric',
  'import Mathlib.Analysis.SpecialFunctions.ExpDeriv',
  'import Mathlib.Analysis.SpecialFunctions.Log.Deriv',
  'import Mathlib.Analysis.SpecialFunctions.Pow.Real',
  'import Mathlib.Analysis.SpecialFunctions.Pow.Deriv',
  'import Mathlib.Analysis.SpecialFunctions.Sqrt',
  'import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv',
  'import Mathlib.Analysis.SpecialFunctions.Trigonometric.ArctanDeriv',
  'import Mathlib.Analysis.SpecialFunctions.Trigonometric.InverseDeriv',
  'import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp',
  'import Mathlib.Tactic',
];

function lispStr(s) {
  return '"' + String(s).replace(/\\/g, '\\\\').replace(/"/g, '\\"') + '"';
}

// каждый ответ — 4 строки: id, переменная, подынтегральное, ответ
function tsvLine(r) {
  const clean = (s) => String(s).replace(/[\r\n]+/g, ' ').trim();
  return [r.leanId, r.var, clean(r.input), clean(r.pretty)].join('\n');
}

const SRC = [
  '; сгенерировано pilot.mjs: на каждый ответ 4 строки — id, переменная, подынтегральное, ответ',
  '; слишком большие ответы (Rubi с вложенными rubi-rt) не переводим: рекурсия генератора на них падает',
  '(define (pilot-one id v fs Fs)',
  '  (let ((f (try (math-read fs) #f)) (F (try (math-read Fs) #f)))',
  '    (display "===ID ") (display id)',
  '    (cond ((or (> (string-length fs) 4000) (> (string-length Fs) 20000))',
  '           (display " unsupported too-large"))',
  '          ((not f) (display " unsupported parse-integrand"))',
  '          ((not F) (display " unsupported parse-answer"))',
  '          (else',
  '           (let ((r (try (lean-emit-antiderivative f F (string->symbol v) (quote ()) id) #f)))',
  '             (cond ((not r) (display " unsupported error"))',
  '                   ((string? r) (display " ok") (newline) (display r))',
  '                   ((pair? r) (display " unsupported ") (display (car (cdr r))))',
  '                   (else (display " unsupported error"))))))',
  '    (newline) (display "===END") (newline)))',
  '(define (pilot-emit path)',
  '  (let ((ls (string-split (read-text-file path) (format "~%"))))',
  '    (let loop ((l ls) (n 0))',
  '      (if (or (null? l) (null? (cdr l)) (null? (cddr l)) (null? (cdddr l)))',
  '          n',
  '          (let* ((id (car l)) (v (cadr l)) (fs (caddr l)) (Fs (cadddr l)))',
  '            (try (pilot-one id v fs Fs)',
  '                 (begin (display "===ID ") (display id)',
  '                        (display " unsupported error") (newline)',
  '                        (display "===END") (newline)))',
  '            (loop (cddr (cddr l)) (+ n 1)))))))',
  '(pilot-emit "' + lispScript.replace(/\\/g, '/') + '/../chunk.tsv")',
].join('\n');

let ok = 0;
let failed = 0;
const stats = new Map();
const sources = new Map(); // leanId -> текст
const notGenerated = [];

for (let start = 0; start < records.length; start += chunk) {
  let done = 0;
  // Если Lisp падает на отдельном ответе (глубина рекурсии на огромных выражениях),
  // чанк дочитываем с места обрыва, а не теряем остаток.
  while (done < Math.min(chunk, records.length - start)) {
    const slice = records.slice(start + done, start + chunk);
    writeFileSync(csvChunk, slice.map(tsvLine).join('\n') + '\n', 'utf8');
    writeFileSync(lispScript, SRC, 'utf8');
    const env = { ...process.env };
    const r = spawnSync(lisp, [lispScript], { encoding: 'utf8', maxBuffer: 1 << 30, env });
    if (r.error) {
      console.error('не удалось запустить Lisp:', r.error.message);
      process.exit(2);
    }
    const out = (r.stdout || '') + (r.stderr || '');
    let cur = null;
    let buf = [];
    let seen = 0;
    for (const line of out.split(/\r?\n/)) {
      if (line.startsWith('===ID ')) {
        cur = line.slice(6).trim();
        buf = [];
        continue;
      }
      if (line === '===END') {
        if (!cur) continue;
        seen += 1;
        const [id, kind, ...reason] = cur.split(' ');
        if (kind === 'ok') {
          sources.set(id, buf.join('\n'));
          ok += 1;
        } else {
          failed += 1;
          const why = reason.join(' ') || 'unknown';
          stats.set(why, (stats.get(why) || 0) + 1);
          notGenerated.push({ id, reason: why });
        }
        cur = null;
        continue;
      }
      if (cur) buf.push(line);
    }
    if (seen === 0) break;
    done += seen;
    if (seen < slice.length) process.stderr.write(`  обрыв на ${start + done}, дочитываю остаток чанка\n`);
  }
  process.stderr.write(`  чанк ${start}…${start + done}: ok ${ok}, не переведено ${failed}\n`);
}

if (ok === 0) {
  console.error('ни одна теорема не сгенерирована');
  process.exit(1);
}

// ---------- раскладка по пакетам ----------

const ids = records.map((r) => r.leanId).filter((id) => sources.has(id));
let header = null;
const index = [];
let batch = 0;
let body = [];
let count = 0;
let axioms = [];
const meta = new Map(records.map((r) => [r.leanId, r]));

function flush() {
  if (!body.length) return;
  batch += 1;
  const name = `shard-${String(batch).padStart(4, '0')}.lean`;
  const text = header + body.join('\n') + '\n\n' + axioms.join('\n') + '\n';
  writeFileSync(join(outDir, name), text, 'utf8');
  body = [];
  axioms = [];
  count = 0;
}

for (const id of ids) {
  const src = sources.get(id).replace(/\r\n/g, '\n');
  const at = src.indexOf('theorem qedra_int_');
  if (at < 0) continue;
  const th = src.slice(at).trimEnd();
  if (header === null) header = src.slice(0, at);
  // Предел тактов на теорему: без него один огромный ответ (Rubi с rubi-rt даёт десятки КБ)
  // вешает весь пакет, и статусы теряются все сразу. Большие тела получают меньший предел.
  const hb = th.length > 40000 ? bigHeartbeats : heartbeats;
  body.push(`set_option maxHeartbeats ${hb} in\n` + th);
  axioms.push(`#print axioms qedra_int_${id}`);
  const r = meta.get(id);
  index.push({
    id: r.id,
    theorem: `qedra_int_${id}`,
    file: `shard-${String(batch + 1).padStart(4, '0')}.lean`,
    suite: r.suite || '',
    sub: r.file || '',
  });
  count += 1;
  if (count >= batchSize) flush();
}
flush();

// узкая шапка — после сборки пакетов (шапка у всех одна, генератор всегда пишет import Mathlib)
if (has('--narrow') && header && header.startsWith('import Mathlib')) {
  const wide = header;
  const narrowHead = NARROW_IMPORTS.join('\n') + header.slice('import Mathlib'.length);
  for (const f of readdirSync(outDir).filter((x) => x.endsWith('.lean'))) {
    const p = join(outDir, f);
    const text = readFileSync(p, 'utf8');
    if (text.startsWith(wide)) writeFileSync(p, narrowHead + text.slice(wide.length), 'utf8');
  }
  header = narrowHead;
}

writeFileSync(join(outDir, 'index.jsonl'), index.map((x) => JSON.stringify(x)).join('\n') + '\n', 'utf8');
writeFileSync(join(outDir, 'not-generated.jsonl'), notGenerated.map((x) => JSON.stringify(x)).join('\n') + '\n', 'utf8');

// --pack: один gz со всеми пакетами и индексом — так корпус едет в qedra-bench,
// не разрастаясь сотнями файлов (в CI распаковывается tools/lean/unpack.mjs)
const packPath = arg('--pack', '');
if (packPath) {
  const head = spawnSync('git', ['rev-parse', 'HEAD'], { cwd: root, encoding: 'utf8' });
  const items = [
    {
      kind: 'meta',
      generator: (head.stdout || '').trim(),
      sample, seed, batch: batchSize, heartbeats, bigHeartbeats,
      answers: records.length, generated: ok, notGenerated: failed,
      sources: perSource,
      created: new Date().toISOString(),
    },
    { kind: 'index', lines: index },
    { kind: 'not-generated', lines: notGenerated },
  ];
  for (const f of readdirSync(outDir).filter((f) => f.endsWith('.lean')).sort()) {
    items.push({ kind: 'lean', file: f, text: readFileSync(join(outDir, f), 'utf8') });
  }
  const gz = gzipSync(Buffer.from(items.map((x) => JSON.stringify(x)).join('\n') + '\n', 'utf8'), { level: 9 });
  writeFileSync(resolve(root, packPath), gz);
  console.log(`пакет корпуса: ${packPath} (${(gz.length / 1048576).toFixed(1)} МБ)`);
}

console.log(`записей-ответов OK: ${records.length} (${Object.entries(perSource).map(([k, v]) => `${k}: ${v.taken} из ${v.ok}`).join(', ')})`);
console.log(`сгенерировано: ${ok}, не переведено: ${failed}, пакетов: ${batch} по ${batchSize}`);
if (stats.size) console.log('причины: ' + [...stats.entries()].sort((a, b) => b[1] - a[1]).map(([k, v]) => `${k}=${v}`).join(', '));
console.log(`→ ${outDir}`);
