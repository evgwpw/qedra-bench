// Распаковка корпуса пилота (один gz, см. research/lean/pilot.mjs --pack) в пакеты .lean.
// Запуск: node tools/lean/unpack.mjs lean/pilot/sample-500x2.gz lean/pilot
import { readFileSync, writeFileSync, mkdirSync, rmSync, existsSync } from 'node:fs';
import { gunzipSync } from 'node:zlib';
import { join, resolve } from 'node:path';

const pack = process.argv[2];
const outDir = resolve(process.argv[3] || 'lean/pilot');
if (!pack) {
  console.error('укажите .gz корпуса пилота: node tools/lean/unpack.mjs <файл.gz> [каталог]');
  process.exit(2);
}
const lines = gunzipSync(readFileSync(pack)).toString('utf8').split(/\r?\n/).filter(Boolean);
if (existsSync(outDir)) rmSync(outDir, { recursive: true, force: true });
mkdirSync(outDir, { recursive: true });

let files = 0;
const index = [];
const notGenerated = [];
let meta = null;
for (const line of lines) {
  const item = JSON.parse(line);
  if (item.kind === 'lean') {
    writeFileSync(join(outDir, item.file), item.text, 'utf8');
    files += 1;
  } else if (item.kind === 'index') {
    index.push(...item.lines);
  } else if (item.kind === 'not-generated') {
    notGenerated.push(...item.lines);
  } else if (item.kind === 'meta') {
    meta = item;
  }
}
if (meta) writeFileSync(join(outDir, 'meta.json'), JSON.stringify(meta, null, 2) + '\n', 'utf8');
writeFileSync(join(outDir, 'index.jsonl'), index.map((x) => JSON.stringify(x)).join('\n') + '\n', 'utf8');
writeFileSync(join(outDir, 'not-generated.jsonl'), notGenerated.map((x) => JSON.stringify(x)).join('\n') + '\n', 'utf8');
console.log(`распаковано: ${files} пакетов, теорем ${index.length}, не переведено ${notGenerated.length} → ${outDir}`);
