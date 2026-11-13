// L4/LEAN.PILOT: сводка прогона lean в qedra-bench — lean-results.jsonl + SUMMARY.md.
// Запуск: node tools/lean/summarize.mjs artifacts
// Ожидает artifacts/<осколок>/research/lean/batch-results.jsonl (по одному на job)
// и artifacts/<осколок>/snapshot.sha; для пилота — ещё lean/pilot/index.jsonl и not-generated.jsonl.
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
let index = [];
let notGenerated = [];
let pilotMeta = null;
for (const d of readdirSync(artDir).sort()) {
  const dir = join(artDir, d);
  const resPath = join(dir, 'research', 'lean', 'batch-results.jsonl');
  if (!existsSync(resPath)) continue;
  const shaPath = join(dir, 'snapshot.sha');
  if (existsSync(shaPath)) {
    const m = /snapshot ([0-9a-f]{7,40})/.exec(readFileSync(shaPath, 'utf8'));
    if (m) snapshot = m[1];
  }
  const metaPath = join(dir, 'lean', 'pilot', 'meta.json');
  if (!pilotMeta && existsSync(metaPath)) pilotMeta = JSON.parse(readFileSync(metaPath, 'utf8'));
  const idxPath = join(dir, 'lean', 'pilot', 'index.jsonl');
  if (existsSync(idxPath)) {
    index = readFileSync(idxPath, 'utf8').split(/\r?\n/).filter((l) => l.trim()).map((l) => JSON.parse(l));
  }
  const ngPath = join(dir, 'lean', 'pilot', 'not-generated.jsonl');
  if (existsSync(ngPath)) {
    notGenerated = readFileSync(ngPath, 'utf8').split(/\r?\n/).filter((l) => l.trim()).map((l) => JSON.parse(l));
  }
  const rows = readFileSync(resPath, 'utf8').split(/\r?\n/).filter((l) => l.trim()).map((l) => JSON.parse(l));
  const count = (s) => rows.filter((r) => r.status === s).length;
  shardStats.push({
    shard: d, total: rows.length, passed: count('passed'), failed: count('failed'),
    'failed-axioms': count('failed-axioms'), timeout: count('timeout'), 'vacuous?': count('vacuous?'), unknown: count('unknown'),
  });
  for (const r of rows) records.push(r);
}
records.sort((a, b) => a.id.localeCompare(b.id));

const date = new Date().toISOString().slice(0, 10);
const label = process.env.RUN_LABEL || `lean-${date}-${snapshot.slice(0, 7)}`;
const outDir = join('results', label);
mkdirSync(outDir, { recursive: true });
writeFileSync(join(outDir, 'lean-results.jsonl'), records.map((r) => JSON.stringify(r)).join('\n') + '\n', 'utf8');
if (index.length) writeFileSync(join(outDir, 'pilot-index.jsonl'), index.map((r) => JSON.stringify(r)).join('\n') + '\n', 'utf8');
if (notGenerated.length) writeFileSync(join(outDir, 'pilot-not-generated.jsonl'), notGenerated.map((r) => JSON.stringify(r)).join('\n') + '\n', 'utf8');

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
];
if (pilotMeta) {
  lines.push(`- генератор: \`${pilotMeta.generator || '?'}\`, ответов OK ${pilotMeta.answers}, выборка ${pilotMeta.sample || 'все'} (seed ${pilotMeta.seed}), пакетов по ${pilotMeta.batch}, тактов на теорему ${pilotMeta.heartbeats}/${pilotMeta.bigHeartbeats}`);
}
lines.push(
  '| статус | теорем |',
  '|---|---|',
  `| passed | ${count('passed')} |`,
  `| failed | ${count('failed')} |`,
  `| failed-axioms | ${count('failed-axioms')} |`,
  `| timeout | ${count('timeout')} |`,
  `| vacuous? | ${count('vacuous?')} |`,
  `| unknown | ${count('unknown')} |`,
  '',
  '| осколок | всего | passed | failed | failed-axioms | timeout | vacuous? | unknown |',
  '|---|---|---|---|---|---|---|---|',
  ...shardStats.map((s) => `| ${s.shard} | ${s.total} | ${s.passed} | ${s.failed} | ${s['failed-axioms']} | ${s.timeout} | ${s['vacuous?']} | ${s.unknown} |`),
];

// ---------- пилот: таблицы по наборам и подглавам ----------
if (index.length) {
  const byTheorem = new Map(index.map((x) => [x.theorem, x]));
  const tally = (keyOf) => {
    const m = new Map();
    const add = (k, st) => {
      if (!m.has(k)) m.set(k, { total: 0, passed: 0, failed: 0, 'failed-axioms': 0, timeout: 0, 'vacuous?': 0, unknown: 0, notGenerated: 0 });
      const e = m.get(k);
      if (st === 'not-generated') e.notGenerated += 1;
      else { e.total += 1; e[st] = (e[st] || 0) + 1; }
    };
    for (const r of records) {
      const meta = byTheorem.get(`qedra_int_${r.id}`);
      add(keyOf(meta || {}), r.status);
    }
    for (const n of notGenerated) {
      // у не переведённых теоремы нет: набор берём по префиксу id
      const suite = String(n.id).startsWith('rubi') ? 'rubi' : 'uchebnye';
      add(keyOf({ suite, sub: '' }), 'not-generated');
      add(suite, 'not-generated');
    }
    return m;
  };
  const table = (title, m) => {
    const rows = [...m.entries()].sort((a, b) => b[1].total + b[1].notGenerated - (a[1].total + a[1].notGenerated));
    const all = rows.reduce((a, [, v]) => {
      for (const k of Object.keys(v)) a[k] = (a[k] || 0) + v[k];
      return a;
    }, {});
    const share = all.total ? Math.round((100 * all.passed) / all.total) : 0;
    return [
      `## ${title}`,
      '',
      `Всего ответов OK: ${all.total + all.notGenerated} (из них не переведено генератором: ${all.notGenerated}); проценты — от проверенных.`,
      '',
      '| набор | проверено | passed | failed | failed-axioms | timeout | vacuous? | unknown | не переведено | passed, % |',
      '|---|---|---|---|---|---|---|---|---|---|',
      ...rows.map(([k, v]) => {
        const t = v.total || 0;
        const p = t ? Math.round((100 * v.passed) / t) : 0;
        return `| ${k} | ${t} | ${v.passed} | ${v.failed} | ${v['failed-axioms']} | ${v.timeout} | ${v['vacuous?']} | ${v.unknown} | ${v.notGenerated} | ${p} |`;
      }),
      `| **всего** | **${all.total}** | **${all.passed}** | **${all.failed}** | **${all['failed-axioms']}** | **${all.timeout}** | **${all['vacuous?']}** | **${all.unknown}** | **${all.notGenerated}** | **${share}** |`,
      '',
    ];
  };
  lines.push(...table('Пилот: по наборам', tally((x) => x.suite || '?')));
  lines.push(...table('Пилот: Rubi по подглавам', tally((x) => (x.suite === 'rubi' ? (String(x.sub).split('/').pop() || '?') : x.suite || '?'))));
  const reasons = new Map();
  for (const n of notGenerated) reasons.set(n.reason, (reasons.get(n.reason) || 0) + 1);
  lines.push('## Пилот: почему не переведено', '', '| причина | ответов |', '|---|---|');
  for (const [k, v] of [...reasons.entries()].sort((a, b) => b[1] - a[1])) lines.push(`| ${k} | ${v} |`);
  lines.push('');
}

lines.push(bad.length ? '## Не passed\n' : '**Все теоремы passed.**');
for (const r of bad) lines.push(`- \`${r.id}\` — ${r.status}: ${r.log}`);
writeFileSync(join(outDir, 'SUMMARY.md'), lines.join('\n') + '\n', 'utf8');
console.log(`результаты: ${outDir} (passed ${count('passed')} из ${records.length})`);
