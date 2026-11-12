// L4 (копия из lisp: research/lean/gen-batch.mjs — синхронизировать при изменении).
// Пакетирование сертификатов: N теорем в один .lean (одна шапка на файл).
// В qedra-bench каталог приходит из снимка evgwpw/Qedra (lean/catalog), поэтому
// без аргументов id берутся из lean/catalog, а не из research/lean/set50.txt.
// Запуск: node tools/lean/gen-batch.mjs [--shards N] [--out-dir lean/batch] [--narrow] [id ...]
import { readFileSync, writeFileSync, mkdirSync, existsSync, readdirSync } from 'node:fs';
import { join, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

// Таблица «голова ответа → модуль mathlib своей версии» (сверено по
// qedra-lean/.lake/packages/mathlib, тег v4.34.0-rc2). `tan`/`tanh` не нужны:
// генератор раскрывает их в sin/cos и sinh/cosh до построения цепочки.
// Замер 2026-11-12: import Mathlib — 13,9 с на пакет, эта таблица — 10,5–14,5 с (−30 %).
const NARROW_IMPORTS = [
  'import Mathlib.Analysis.Complex.Trigonometric', // Real.sin_sq_add_cos_sq
  'import Mathlib.Analysis.SpecialFunctions.ExpDeriv', // hasDerivAt_exp
  'import Mathlib.Analysis.SpecialFunctions.Log.Deriv', // hasDerivAt_log
  'import Mathlib.Analysis.SpecialFunctions.Pow.Real', // rpow_add/neg/mul/one/zero/natCast
  'import Mathlib.Analysis.SpecialFunctions.Pow.Deriv', // hasDerivAt_rpow_const
  'import Mathlib.Analysis.SpecialFunctions.Sqrt', // hasDerivAt_sqrt
  'import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv', // sin, cos
  'import Mathlib.Analysis.SpecialFunctions.Trigonometric.ArctanDeriv', // tan (ℝ), atan
  'import Mathlib.Analysis.SpecialFunctions.Trigonometric.InverseDeriv', // asin, acos
  'import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp', // sinh, cosh
  'import Mathlib.Tactic', // ring, ring_nf, field_simp, positivity, linarith, nlinarith, norm_num, linear_combination
];

const root = join(dirname(fileURLToPath(import.meta.url)), '..', '..');
const catalogDir = join(root, 'lean', 'catalog');
const setPath = join(root, 'research', 'lean', 'set50.txt');

const argv = process.argv.slice(2);
let shards = 1;
let narrow = false;
let outDir = join(root, 'lean', 'batch');
const ids = [];
for (let i = 0; i < argv.length; i += 1) {
  if (argv[i] === '--shards') {
    shards = Number(argv[i + 1]);
    i += 1;
  } else if (argv[i] === '--out-dir') {
    outDir = join(root, argv[i + 1]);
    i += 1;
  } else if (argv[i] === '--narrow') {
    narrow = true;
  } else {
    ids.push(argv[i]);
  }
}
if (!ids.length) {
  for (const f of readdirSync(catalogDir)) {
    if (f.endsWith('.lean')) ids.push(f.slice(0, -'.lean'.length));
  }
  ids.sort();
}

// Разбор файла каталога: шапка (до комментария `-- qedra: <выражение>`) и тело (комментарий + теорема).
function splitFile(id) {
  const path = join(catalogDir, id + '.lean');
  if (!existsSync(path)) throw new Error(`нет файла ${path}`);
  const lines = readFileSync(path, 'utf8').replace(/\r\n/g, '\n').split('\n');
  const at = lines.findIndex((l) => /^theorem qedra_int_/.test(l));
  if (at < 0) throw new Error(`нет теоремы в ${path}`);
  const bodyStart = at > 0 && /^-- qedra: /.test(lines[at - 1]) ? at - 1 : at;
  return { header: lines.slice(0, bodyStart).join('\n').replace(/\s+$/, ''), body: lines.slice(bodyStart).join('\n').replace(/\s+$/, '') };
}

let header = null;
const bodies = [];
for (const id of ids) {
  const { header: h, body } = splitFile(id);
  if (header === null) {
    header = h;
  } else if (h !== header) {
    throw new Error(`шапка ${id} отличается от первой — пакетирование небезопасно`);
  }
  bodies.push({ id, body });
}

mkdirSync(outDir, { recursive: true });
// Узкая шапка: `import Mathlib` заменяется таблицей модулей по головам ответа.
function narrowHeader(h) {
  if (!h.startsWith('import Mathlib')) throw new Error('шапка не начинается с import Mathlib');
  return NARROW_IMPORTS.join('\n') + h.slice('import Mathlib'.length);
}
const head = narrow ? narrowHeader(header) : header;
const per = Math.ceil(bodies.length / shards);
const written = [];
for (let k = 0; k < shards; k += 1) {
  const part = bodies.slice(k * per, (k + 1) * per);
  if (!part.length) continue;
  const name = `shard-${k + 1}.lean`;
  const parts = [head, '', ...part.map((p) => p.body), '', '-- аксиомы (L4: passed только при propext/Classical.choice/Quot.sound)'];
  for (const p of part) parts.push(`#print axioms qedra_int_${p.id}`);
  writeFileSync(join(outDir, name), parts.join('\n') + '\n', 'utf8');
  written.push(`${name}: ${part.length} теорем (${part[0].id}…${part[part.length - 1].id})`);
}
console.log(`пакетов ${written.length} из ${bodies.length} теорем → ${outDir}`);
console.log(written.join('\n'));
