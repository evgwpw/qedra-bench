// Воркер пула: свой Lisp.exe, одна задача за сообщение.
import { parentPort, workerData } from 'node:worker_threads';
import { Lisp } from './lisp.mjs';
import { translate } from './translate.mjs';
import { checkIndefinite, checkDefinite } from './oracle.mjs';

const lisp = new Lisp(workerData.exe);
// интегратор неопределённых интегралов задаётся входом workflow `fn`;
// определённые интегралы всегда идут через integrate (у rubi-integrate границ нет)
const FN = workerData.fn || 'integrate';

async function run(task, timeoutSec) {
  const timeoutMs = timeoutSec * 1000;
  // набор из tasks/ приходит уже переведённым во входной язык
  const { text, why, renames } = task.input
    ? { text: task.input, why: null, renames: {} }
    : translate(task.integrand);
  const base = {
    id: task.id, suite: task.suite, file: task.file, index: task.index,
    integrand: task.integrand, variable: task.variable,
    has_lower: task.lower !== null && task.lower !== undefined,
    input: text, renames: Object.keys(renames || {}).length ? renames : undefined,
    expected: task.integral, lower: task.lower, upper: task.upper, value: task.value,
  };
  if (text === null) {
    return { ...base, status: 'untranslated', verdict: 'untranslated', detail: { reason: why }, ms: 0, pretty: null };
  }
  const code = task.lower !== null && task.lower !== undefined
    ? `integrate(${text}, ${task.variable}, ${task.lower}, ${task.upper})`
    : `${FN}(${text}, ${task.variable})`;
  const r = await lisp.math(code, timeoutMs);
  if (r.timeout) return { ...base, status: 'timeout', verdict: 'TIMEOUT', ms: timeoutMs, pretty: null };
  if (r.failed || !r.ans) return { ...base, status: 'error', verdict: 'ERROR', detail: r.why || 'нет ответа', ms: r.ms || 0, pretty: null };
  const ans = r.ans;
  const pretty = ans.pretty || '';
  const rec = { ...base, pretty, status: ans.status, ms: r.ms };
  if (ans.status === 'error') return { ...rec, verdict: 'ERROR', detail: ans.error };
  if (ans.status === 'nonelementary') {
    const elementary = task.value !== null && task.value !== undefined
      ? true
      : isElementary(task.integral);
    const falseNe = elementary || task.suite === 'hebisch';
    return { ...rec, verdict: falseNe ? 'FALSE-NE' : 'nonelementary' };
  }
  if (ans.status === 'unknown') return { ...rec, verdict: 'UNKNOWN' };
  const res = typeof ans.result === 'string' ? ans.result : '';
  // отказ движка приходит обычным ответом — символом unknown; это не ложный ответ
  if (/^unknown$/i.test(res.trim()) || pretty.trim() === 'unknown') {
    return { ...rec, status: 'unknown', verdict: 'UNKNOWN' };
  }
  if (!res || /^\(integrate\b/.test(res) || pretty.includes('integrate(')) {
    return { ...rec, verdict: 'partial' };
  }
  let v;
  if (task.lower !== null && task.lower !== undefined) {
    v = await checkDefinite(lisp, res, task.value, text, task.variable, task.lower, task.upper, timeoutMs);
  } else {
    v = await checkIndefinite(lisp, text, res, task.variable, timeoutMs);
  }
  return { ...rec, verdict: v.verdict, detail: v.detail };
}

const ELEMENTARY_FUNCS = new Set(['sin', 'cos', 'tan', 'cot', 'sec', 'csc', 'asin', 'acos', 'atan', 'acot', 'asec', 'acsc',
  'sinh', 'cosh', 'tanh', 'coth', 'sech', 'csch', 'asinh', 'acosh', 'atanh', 'acoth', 'asech', 'acsch',
  'exp', 'log', 'sqrt', 'abs', 'sign', 'Pow']);

function isElementary(text) {
  if (!text) return false;
  const ids = String(text).match(/[A-Za-z_][A-Za-z_0-9]*/g) || [];
  for (const id of ids) {
    if (/^[a-z]$/.test(id) && !['e', 'x', 'y', 't'].includes(id)) continue;
    if (ELEMENTARY_FUNCS.has(id)) continue;
    if (['pi', 'oo', 'E', 'I'].includes(id)) continue;
    if (/^[A-Za-z_][A-Za-z_0-9]*$/.test(id) && id.length > 1 && !ELEMENTARY_FUNCS.has(id)) {
      // спецфункции: ei/si/erf и т. п. — не элементарны
      if (['erf', 'erfc', 'erfi', 'Ei', 'Si', 'Ci', 'li', 'gamma', 'polylog', 'LambertW', 'zeta',
        'besselj', 'bessely', 'besseli', 'besselk', 'hyper', 'uppergamma', 'fresnelc', 'fresnels',
        'RootSum', 'elliptic_f', 'elliptic_e', 'elliptic_pi'].includes(id)) return false;
    }
  }
  return true;
}

// Вторая попытка с журналом Rubi (вход workflow rubi_trace): только для неопределённых интегралов, отказанных
// интегратором integrate_rubi (UNKNOWN/TIMEOUT). Вердикт задачи не меняется — попытка нужна только ради журнала.
// Бюджет задачи 25 с, движка 20 с. Формат — как у tools/rubi/diagnose-run.lisp, с полным id задачи в первой колонке:
//   id<TAB>T<TAB>unknown|ok|parse-error|timeout|error<TAB>мс<TAB>попыток<TAB>причина
//   id<TAB>R<TAB>запись журнала (~s)
const TRACE_TASK_S = 25;
const TRACE_ENGINE_S = 20;
async function traceAttempt(task, rec) {
  if (!workerData.trace || FN !== 'integrate_rubi' || !rec.input) return null;
  if (task.lower !== null && task.lower !== undefined) return null;
  if (rec.verdict !== 'UNKNOWN' && rec.verdict !== 'TIMEOUT') return null;
  const q = (s) => String(s).replace(/\\/g, '\\\\').replace(/"/g, '\\"');
  // display в режиме --json писал бы в протокольный stdout, поэтому строка берётся из result (печать строки в кавычках)
  const code = `(rubi-trace-run "${q(rec.input)}" "${q(task.variable)}" ${TRACE_ENGINE_S}.0)`;
  const r = await lisp.askJson({ op: 'eval', code }, TRACE_TASK_S * 1000);
  if (r.timeout) return `${task.id}\tT\ttimeout\t${TRACE_TASK_S * 1000}\t0\t-\n`;
  let out = r.ans && typeof r.ans.result === 'string' ? r.ans.result : '';
  if (out.length >= 2 && out.startsWith('"') && out.endsWith('"')) out = out.slice(1, -1);
  else out = '';
  if (!out) return `${task.id}\tT\terror\t${r.ms || 0}\t0\t-\n`;
  return out.split(/\r?\n/).filter(Boolean).map((l) => `${task.id}\t${l}`).join('\n') + '\n';
}

parentPort.on('message', async ({ task, timeoutSec }) => {
  let rec;
  try {
    rec = await run(task, timeoutSec);
    try {
      const tr = await traceAttempt(task, rec);
      if (tr) rec = { ...rec, __trace: tr };
    } catch { /* журнал не обязателен */ }
  } catch (err) {
    rec = {
      id: task.id, suite: task.suite, file: task.file, index: task.index,
      integrand: task.integrand, variable: task.variable, input: null,
      status: 'error', verdict: 'ERROR', detail: String(err && err.message || err), ms: 0,
    };
  }
  parentPort.postMessage(rec);
});
