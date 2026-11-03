// CLI прогонщика: наборы, осколки, выборка rubi, возобновление.
//   node bench/run_suite.mjs --suites independent --workers 4
//   node bench/run_suite.mjs --suites independent,rubi --shards 20 --shard 3 --rubi-sample 10 --out results-3
import fs from 'node:fs';
import os from 'node:os';
import path from 'node:path';
import zlib from 'node:zlib';
import { fileURLToPath } from 'node:url';
import { Worker } from 'node:worker_threads';

const HERE = path.dirname(fileURLToPath(import.meta.url));
const CORPUS = process.env.CORPUS_DIR || path.join(HERE, '..', 'corpus', 'data');
const RESULTS = path.join(HERE, '..', 'results');
const EXE = process.env.QUOD_EXE || 'qedra';
const ORDER = ['independent', 'mit_bee_official', 'mit_bee', 'blake', 'hebisch', 'rubi'];
const TIMEOUT = { rubi: 5 };

try { os.setPriority(process.pid, os.constants.priority.PRIORITY_BELOW_NORMAL); } catch { /* не критично */ }

function corpusFiles(suite) {
  const root = path.join(CORPUS, suite);
  const out = [];
  const walk = (dir) => {
    for (const e of fs.readdirSync(dir, { withFileTypes: true })) {
      const p = path.join(dir, e.name);
      if (e.isDirectory()) walk(p);
      else if (e.name.endsWith('.jsonl')) out.push(p);
    }
  };
  if (fs.existsSync(root)) walk(root);
  return out.sort();
}

function* tasks(suite) {
  for (const file of corpusFiles(suite)) {
    const rel = path.relative(CORPUS, file).replace(/\\/g, '/').slice(0, -'.jsonl'.length);
    const lines = fs.readFileSync(file, 'utf8').split(/\r?\n/);
    for (let i = 0; i < lines.length; i += 1) {
      if (!lines[i].trim()) continue;
      const rec = JSON.parse(lines[i]);
      yield {
        id: `${suite}/${rel}/${i}`, suite, file: rel, index: i,
        integrand: rec.integrand || '', variable: rec.variable || 'x',
        integral: rec.integral ?? null, lower: rec.lower ?? null, upper: rec.upper ?? null,
        value: rec.value ?? null, timeoutSec: TIMEOUT[suite] || 10,
      };
    }
  }
}

// FNV-1a: осколок и выборка детерминированы и не зависят от порядка файлов
function hash(s) {
  let h = 2166136261 >>> 0;
  for (const ch of s) { h ^= ch.charCodeAt(0); h = Math.imul(h, 16777619) >>> 0; }
  return h;
}

function collect(suites, limit, { shard = 0, shards = 1, rubiSample = 100, timeoutOverride = 0 } = {}) {
  const out = [];
  let n = 0;
  for (const suite of suites) {
    for (const t of tasks(suite)) {
      if (shards > 1 && hash(t.id) % shards !== shard) continue;
      if (suite === 'rubi' && rubiSample < 100 && hash(t.id) % 100 >= rubiSample) continue;
      if (timeoutOverride) t.timeoutSec = timeoutOverride;
      out.push(t);
      n += 1;
      if (limit && n >= limit) return out;
    }
  }
  return out;
}

function basePath(suites, out) {
  if (out) return path.resolve(out);
  if (suites.length === 1) return path.join(RESULTS, suites[0]);
  return path.join(RESULTS, 'results');
}

function doneIds(base) {
  const ids = new Set();
  for (const p of [base + '.jsonl', base + '.jsonl.gz']) {
    if (!fs.existsSync(p)) continue;
    let buf = fs.readFileSync(p);
    if (p.endsWith('.gz')) buf = zlib.gunzipSync(buf);
    for (const line of buf.toString('utf8').split(/\r?\n/)) {
      if (!line.trim()) continue;
      try { ids.add(JSON.parse(line).id); } catch { /* битая строка */ }
    }
  }
  return ids;
}

function finish(base) {
  const raw = base + '.jsonl';
  if (!fs.existsSync(raw)) return;
  const gz = raw + '.gz';
  const byId = new Map();
  if (fs.existsSync(gz)) {
    for (const line of zlib.gunzipSync(fs.readFileSync(gz)).toString('utf8').split(/\r?\n/)) {
      if (!line.trim()) continue;
      try { const r = JSON.parse(line); byId.set(r.id, line); } catch { /* битая */ }
    }
  }
  for (const line of fs.readFileSync(raw, 'utf8').split(/\r?\n/)) {
    if (!line.trim()) continue;
    try { const r = JSON.parse(line); byId.set(r.id, line); } catch { /* битая */ }
  }
  fs.writeFileSync(gz, zlib.gzipSync([...byId.values()].join('\n') + '\n', { level: 6 }));
  fs.unlinkSync(raw);
  console.log(`compressed -> ${path.relative(process.cwd(), gz)} (${byId.size} records)`);
}

async function execute(base, todo, workers) {
  fs.mkdirSync(path.dirname(base), { recursive: true });
  const seen = doneIds(base);
  const queue = todo.filter((t) => !seen.has(t.id));
  console.log(`tasks ${queue.length} (done ${seen.size}), workers ${workers}`);
  if (!queue.length) { finish(base); return; }
  const outPath = base + '.jsonl';
  const counts = {};
  const t0 = Date.now();
  let done = 0;
  let next = 0;
  const pool = [];
  await new Promise((resolve) => {
    const feed = (w) => {
      if (next >= queue.length) return;
      const task = queue[next]; next += 1;
      w.idle = false;
      w.worker.postMessage({ task, timeoutSec: task.timeoutSec });
    };
    for (let k = 0; k < workers; k += 1) {
      const w = { idle: true, worker: new Worker(new URL('./worker.mjs', import.meta.url), { workerData: { exe: EXE } }) };
      w.worker.on('message', (rec) => {
        fs.appendFileSync(outPath, JSON.stringify(rec) + '\n');
        done += 1;
        counts[rec.verdict] = (counts[rec.verdict] || 0) + 1;
        if (done % 100 === 0 || done === queue.length) {
          const dt = (Date.now() - t0) / 1000;
          const rate = done / dt;
          const eta = rate ? (queue.length - done) / rate / 60 : 0;
          const top = Object.entries(counts).sort((a, b) => b[1] - a[1]).slice(0, 4)
            .map(([k2, v]) => `${k2}=${v}`).join(', ');
          console.log(`${done}/${queue.length}  ${rate.toFixed(1)}/s  eta ${eta.toFixed(0)} min  ${top}`);
        }
        w.idle = true;
        if (done === queue.length) { resolve(); return; }
        feed(w);
      });
      w.worker.on('error', (err) => {
        console.error('worker failed:', err.message);
        w.idle = true;
        feed(w);
      });
      pool.push(w);
      feed(w);
    }
  });
  for (const w of pool) w.worker.terminate();
  await new Promise((res) => setTimeout(res, 0));
  finish(base);
  console.log(`done in ${((Date.now() - t0) / 60000).toFixed(1)} min`);
}

const args = process.argv.slice(2);
const get = (name, def) => {
  const i = args.indexOf('--' + name);
  return i >= 0 && args[i + 1] && !args[i + 1].startsWith('--') ? args[i + 1] : def;
};
const has = (name) => args.includes('--' + name);

const suites = get('suites')
  ? String(get('suites')).split(',').map((s) => s.trim()).filter(Boolean)
  : (get('suite') ? [get('suite')] : ORDER);
const shards = Number(get('shards', 1));
const shard = Number(get('shard', 0));
const rubiSample = Number(get('rubi-sample', 100));
const timeoutOverride = get('timeout') ? Number(get('timeout')) : 0;
const limit = get('limit') ? Number(get('limit')) : 0;
const todo = collect(suites, limit, { shard, shards, rubiSample, timeoutOverride });
await execute(basePath(suites, get('out')), todo, Number(get('workers', Math.max(1, os.cpus().length))));
