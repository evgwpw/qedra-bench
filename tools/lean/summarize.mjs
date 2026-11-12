// L4: сводка прогона lean в qedra-bench — lean-results.jsonl + SUMMARY.md.
// Запуск: node tools/lean/summarize.mjs artifacts
// Ожидает artifacts/<осколок>/research/lean/batch-results.jsonl (по одному на job)
// и artifacts/<осколок>/snapshot.sha. Каталог результатов: results/lean-<дата>-<sha снимка>.
import { readFileSync, writeFileSync, mkdirSync, readdirSync, existsSync } from 'node:fs';
import { join } from 'node:path';

const artDir = process.argv[2] || 'artifacts';
if (!existsSync(artDir)) {
  console.error(`нет каталога ${artDir}`);
  process.exit(2);
}

const records = [];
const shardStats = [];
let snapshot = 'unknown';
for (const d of readdirSync(artDir).sort()) {
  const dir = join(artDir, d);
  const resPath = join(dir, 'research', 'lean', 'batch-results.jsonl');
  if (!existsSync(resPath)) continue;
  const shaPath = join(dir, 'snapshot.sha');
  if (existsSync(shaPath)) {
    const m = /snapshot ([0-9a-f]{7,40})/.exec(readFileSync(shaPath, 'utf8'));
    if (m) snapshot = m[1];
  }
  const rows = readFileSync(resPath, 'utf8').split(/\r?\n/).filter((l) => l.trim()).map((l) => JSON.parse(l));
  const count = (s) => rows.filter((r) => r.status === s).length;
  shardStats.push({ shard: d, total: rows.length, passed: count('passed'), failed: count('failed'), 'failed-axioms': count('failed-axioms'), unknown: count('unknown') });
  for (const r of rows) records.push(r);
}
records.sort((a, b) => a.id.localeCompare(b.id));

const date = new Date().toISOString().slice(0, 10);
const outDir = join('results', `lean-${date}-${snapshot.slice(0, 7)}`);
mkdirSync(outDir, { recursive: true });
writeFileSync(join(outDir, 'lean-results.jsonl'), records.map((r) => JSON.stringify(r)).join('\n') + '\n', 'utf8');

const count = (s) => records.filter((r) => r.status === s).length;
const runUrl = process.env.GITHUB_RUN_ID
  ? `${process.env.GITHUB_SERVER_URL}/${process.env.GITHUB_REPOSITORY}/actions/runs/${process.env.GITHUB_RUN_ID}`
  : '(локальный прогон)';
const bad = records.filter((r) => r.status !== 'passed');
const lines = [
  `# Lean: ${date}, снимок ${snapshot}`,
  '',
  `- вход: \`qedra_ref=${process.env.QEDRA_REF || '?'}\`, осколков ${process.env.SHARDS || '?'}, таймаут на пакет ${process.env.TIMEOUT_S || '?'} с`,
  `- прогон: ${runUrl}`,
  `- всего теорем: ${records.length}`,
  '',
  '| статус | теорем |',
  '|---|---|',
  `| passed | ${count('passed')} |`,
  `| failed | ${count('failed')} |`,
  `| failed-axioms | ${count('failed-axioms')} |`,
  `| unknown | ${count('unknown')} |`,
  '',
  '| осколок | всего | passed | failed | failed-axioms | unknown |',
  '|---|---|---|---|---|---|',
  ...shardStats.map((s) => `| ${s.shard} | ${s.total} | ${s.passed} | ${s.failed} | ${s['failed-axioms']} | ${s.unknown} |`),
  '',
  bad.length ? '## Не passed\n' : '**Все теоремы passed.**',
];
for (const r of bad) lines.push(`- \`${r.id}\` — ${r.status}: ${r.log}`);
writeFileSync(join(outDir, 'SUMMARY.md'), lines.join('\n') + '\n', 'utf8');
console.log(`результаты: ${outDir} (passed ${count('passed')} из ${records.length})`);
