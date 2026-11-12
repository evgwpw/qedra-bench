// Замер времени `lake env lean` на отдельных файлах: сколько стоит импорт и сколько тактики.
// Запуск: node research/lean/time-file.mjs <файл.lean> [ещё файлы…]
// Файл копируется в qedra-lean/.lean-verify/ и проверяется относительным путём —
// с абсолютным путём `lake env lean` на этой машине не возвращается.
import { spawnSync } from 'node:child_process';
import { copyFileSync, existsSync, mkdirSync } from 'node:fs';
import { basename, join, resolve, delimiter } from 'node:path';

const LEAN_BIN = process.env.LEAN_BIN_DIR || (process.platform === 'win32' ? 'E:\\GD\\lean-4.34.0-rc2-windows\\bin' : '');
// Разделитель PATH разный в Windows и Linux — иначе на раннере lake не находится.
const childEnv = { ...process.env };
if (LEAN_BIN) childEnv.PATH = `${LEAN_BIN}${delimiter}${process.env.PATH || ''}`;
const project = resolve('qedra-lean');
const verify = join(project, '.lean-verify');
const files = process.argv.slice(2);
if (!files.length) {
  console.error('укажите .lean файлы');
  process.exit(2);
}
if (!existsSync(verify)) mkdirSync(verify, { recursive: true });

for (const f of files) {
  const abs = resolve(f);
  if (!existsSync(abs)) {
    console.log(`${basename(f)}\tнет файла`);
    continue;
  }
  const name = `_time_${basename(f)}`;
  copyFileSync(abs, join(verify, name));
  const t0 = Date.now();
  const r = spawnSync('lake', ['env', 'lean', join('.lean-verify', name)], {
    cwd: project,
    env: childEnv,
    encoding: 'utf8',
    timeout: 900000,
  });
  if (r.error) {
    console.log(`${basename(f)}\tне удалось запустить lake — ${r.error.message}`);
    continue;
  }
  const ms = Date.now() - t0;
  const out = `${r.stdout || ''}${r.stderr || ''}`;
  const errors = out.split(/\r?\n/).filter((l) => /: error:/.test(l));
  console.log(`${basename(f)}\t${(ms / 1000).toFixed(1)} с\t${r.status === 0 ? 'ok' : `код ${r.status}`}\t${errors.length ? errors[0].slice(0, 120) : ''}`);
}
