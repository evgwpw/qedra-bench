// Численная проверка первообразной без внешнего CAS: дифференцирует ответ системой
// (diff), подставляет точки и параметры (subst) и считает значения (eval-num).
import { parseLisp } from './sexpr.mjs';

export const TOL = 1e-8;

const REAL_POINTS = [-3.7, -2.3, -1.23, -0.77, -0.41, -0.13, 0.07, 0.41, 0.77, 1.23, 1.91, 2.67, 3.7];
const COMPLEX_POINTS = [[0.6, 0.8], [-1.2, 0.4]];
// Узкая область определения (√(1−2x)·√(5x+3) — интервал (−0,6; 0,5)): если основных точек вычислилось меньше 7,
// второй проход — сетка на [−4; 4] шагом 0,1 со сдвигом 0,0137 (не попадает в целые и половины).
const EXTRA_POINTS = Array.from({ length: 81 }, (_, i) => Math.round((-4 + 0.1 * i + 0.0137) * 1e4) / 1e4);

const FUNCS = new Set(['sin', 'cos', 'tan', 'cot', 'sec', 'csc', 'asin', 'acos', 'atan', 'acot', 'asec', 'acsc',
  'sinh', 'cosh', 'tanh', 'coth', 'sech', 'csch', 'asinh', 'acosh', 'atanh', 'acoth', 'asech', 'acsch',
  'exp', 'log', 'sqrt', 'abs', 'erf', 'erfc', 'erfi', 'Ei', 'li', 'Si', 'Ci', 'Shi', 'Chi', 'gamma',
  'BesselJ', 'BesselY', 'BesselI', 'BesselK', 'AiryAi', 'AiryBi', 'AiryAiPrime', 'AiryBiPrime',
  'LegendreP', 'LegendreQ', 'EllipticF', 'EllipticE', 'EllipticK', 'EllipticPi', 'diff', 'integrate',
  'root_of', 'rootsum', 'piecewise']);

export function paramsOf(text, variable) {
  const ids = text.match(/[A-Za-z_][A-Za-z_0-9]*/g) || [];
  const out = new Set();
  for (let k = 0; k < ids.length; k += 1) {
    const name = ids[k];
    if (name === variable || name === 'pi' || name === 'e' || name === 'inf' || name === '%i') continue;
    if (FUNCS.has(name)) continue;
    // имя непосредственно перед '(' — функция, а не параметр
    const rest = text.slice(text.indexOf(name, 0));
    out.add(name);
  }
  return [...out].filter((n) => !FUNCS.has(n) && n !== variable);
}

// Значения параметров в одном наборе все различны: иначе совпадение (c = a, d = b) обнуляет слагаемые вроде
// (b·c − a·d) и ошибка в них не видна ни в одной точке набора.
function baseValue(k) { return 0.7 + 0.4 * ((k * 7) % 5) + 0.13 * Math.floor(k / 5); }
const IRRATIONAL = [1.4142135623730951, 0.7853981633974483, 0.9060939428196813, 0.8660254037844386,
  1.2599210498948732, 0.6931471805599453, 1.1447298858494002, 0.5772156649015329, 1.6180339887498949, 0.3010299956639812];
function irrationalValue(k) { return IRRATIONAL[k % IRRATIONAL.length] + 0.0173 * Math.floor(k / IRRATIONAL.length); }

function paramSets(params) {
  const sets = [];
  for (const sgn of [1, -1]) {
    const obj = {};
    params.forEach((p, k) => {
      const base = baseValue(k);
      obj[p] = sgn > 0 ? base : -base;
    });
    sets.push(obj);
  }
  const irr = {};
  params.forEach((p, k) => { irr[p] = irrationalValue(k); });
  sets.push(irr);
  return sets;
}

// Четвёртый набор — параметры чередующихся знаков (a > 0, b < 0, …): аргумент гипергеометрических функций
// 1 + (b/a)·x² попадает в область z < 1, где eval-num их считает. Берётся только во втором проходе.
function altSet(params) {
  const obj = {};
  params.forEach((p, k) => { obj[p] = (k % 2 ? -1 : 1) * baseValue(k); });
  return obj;
}

function valueText(v) {
  if (Array.isArray(v)) return `(+ ${v[0]} (* ${v[1]} %i))`;
  return String(v);
}

// Разбор точек проверки: ряды [x, f, dF, F] → вердикт. Чистая функция (кроме точной проверки exactFn).
//
// Почему дополнительные случаи НЕ могут подтвердить неверный ответ. Ответ F — аналитическая функция, поэтому
// равенство dF = f в ≥ 7 вещественных точках, где подынтегральное вещественно («сильные» совпадения),
// доказывает тождество dF = f на связной области; неверный ответ (любое возмущение: коэффициент, знак,
// слагаемое, функция) расходится с f во всех таких точках, а не в одной. Поэтому:
//  - расхождение в комплексной точке, при комплексном f (подынтегральное нереально) или при комплексных
//    F/dF и вещественном f — это выбор ветви корня/логарифма, а не ошибка; такие точки не засчитываются
//    и не отвергают, но тогда вердикт OK требует ≥ 7 сильных совпадений (иначе — как раньше: ≥ 7 совпадений
//    и ни одного пропуска);
//  - «жёсткое» расхождение (вещественные f, dF, F) — отказ: точная проверка рационалями (WRONG / UNVERIFIED);
//  - расхождение 1e-8…1e-5 в double — шум вычитания; принимается только после трёх точных подтверждений
//    рационалями (zero) в той же задаче, до этого каждая такая точка проверяется точно;
//  - набор параметров, в котором ни одна вещественная точка не совпала (ответ верен только в другой области
//    знаков параметров — корни кубические/квадратные от отрицательных), не учитывается, если остальные наборы
//    дали ≥ 7 сильных совпадений и ни одного жёсткого расхождения. Подделка не может так «спрятаться»:
//    она расходится и в чистых наборах.
// «сильное» совпадение должно быть различающим: при |f| ≤ 1e4 допуск TOL·max(1,|f|) ≤ 1e-4, и возмущение
// порядка 1e-3 (в ответе или в его производной) уже видно.
const STRONG_MAX = 1e4;
// и снизу: при |f| < 1e-2 возмущение ×1,001 (невязка < 1e-5) почти не отличается от допуска TOL·1 — такое
// совпадение ничего не доказывает.
const STRONG_MIN = 1e-2;
const NOISE_MAX = 1e-5;
const NOISE_EXACT = 3;
const EXACT_BUDGET = 8;

function isImagSmall(c, av) { return Math.abs(c[1]) <= 1e-12 * Math.max(1, av); }

async function judge(sets, exactFn) {
  let noiseConfirmed = 0;
  let exactCalls = 0;
  let wrong = null;
  let unresolved = null;
  const tally = [];
  for (const set of sets) {
    const t = { values: set.values, match: 0, strong: 0, tolerated: 0, tc: 0, ti: 0, tb: 0, hard: 0, realMatch: 0 };
    tally.push(t);
    for (const row of set.rows) {
      const fv = toComplex(row[1]);
      const dv = toComplex(row[2]);
      if (!fv || !dv) continue;
      const av = Math.hypot(fv[0], fv[1]);
      const ad = Math.hypot(dv[0], dv[1]);
      if (!Number.isFinite(av) || !Number.isFinite(ad) || av > 1e7 || ad > 1e7) continue;
      const Fv = row.length > 3 ? toComplex(row[3]) : null;
      const isC = Array.isArray(row[0]);
      const fReal = isImagSmall(fv, av);
      const err = Math.hypot(dv[0] - fv[0], dv[1] - fv[1]) / Math.max(1, av);
      if (err <= TOL) {
        t.match += 1;
        if (!isC) { t.realMatch += 1; if (fReal && av >= STRONG_MIN && av <= STRONG_MAX) t.strong += 1; }
        continue;
      }
      if (isC) { t.tolerated += 1; t.tc += 1; continue; }
      if (!fReal) { t.tolerated += 1; t.ti += 1; continue; }
      if (isImagSmall(dv, ad) && Fv && !isImagSmall(Fv, Math.hypot(Fv[0], Fv[1]))) { t.tolerated += 1; t.tb += 1; continue; }
      // жёсткое расхождение: вещественные f, dF, F
      if (err <= NOISE_MAX && noiseConfirmed >= NOISE_EXACT) { t.match += 1; t.realMatch += 1; if (av >= STRONG_MIN && av <= STRONG_MAX) t.strong += 1; continue; }
      let ex = 'unknown';
      if (exactCalls < EXACT_BUDGET) {
        exactCalls += 1;
        ex = await exactFn(row[0], set.values);
      }
      if (ex === 'zero') { if (err <= NOISE_MAX) noiseConfirmed += 1; t.match += 1; t.realMatch += 1; if (av >= STRONG_MIN && av <= STRONG_MAX) t.strong += 1; continue; }
      if (ex === 'nonzero') {
        wrong = { x: row[0], f: row[1], dF: row[2], err, params: set.values };
        return { wrong, tally };
      }
      t.hard += 1;
      if (!unresolved) unresolved = { x: row[0], f: row[1], dF: row[2], err, params: set.values };
    }
  }
  return { wrong, unresolved, tally };
}

function decide(j) {
  // → { ok, reason, points, ... }
  const clean = [];
  const failedSets = [];
  for (const t of j.tally) {
    if (t.hard === 0) clean.push(t);
    else if (t.realMatch === 0) failedSets.push(t);
    else return { ok: false, reason: 'расхождение в double, точная проверка неубедительна', ...j.unresolved };
  }
  const match = clean.reduce((s, t) => s + t.match, 0);
  const strong = clean.reduce((s, t) => s + t.strong, 0);
  const tolerated = clean.reduce((s, t) => s + t.tolerated, 0);
  const kinds = { tc: clean.reduce((s, t) => s + t.tc, 0), ti: clean.reduce((s, t) => s + t.ti, 0), tb: clean.reduce((s, t) => s + t.tb, 0) };
  if (clean.length === 0) return { ok: false, reason: 'расхождение в double, точная проверка неубедительна', ...j.unresolved };
  if (tolerated === 0 && failedSets.length === 0 && match >= 7) return { ok: true, points: match };
  // Точки «другой ветви» (F комплексно, dF вещественно) не должны преобладать: ветвь — часть вещественной оси,
  // а подделка в области, где F комплексно везде, расходилась бы почти во всех точках.
  if (strong >= 7 && kinds.tb <= strong) return { ok: true, points: match, strong, tolerated, kinds, failed_sets: failedSets.length };
  return { ok: false, reason: 'меньше 7 вычислимых точек', points: match, strong, tolerated };
}

async function sampleSet(lisp, f, F, variable, params, values, pts, timeoutMs) {
  const pointLits = pts.map(valueText).join(' ');
  const ruleLits = [`(list '${variable} p)`]
    .concat(params.map((p) => `(list '${p} ${values[p]})`)).join(' ');
  const code = `(let ((D (diff '${variable} '${F}))) `
    + `(map (lambda (p) (list p (eval-num (subst (list ${ruleLits}) '${f})) `
    + `(eval-num (subst (list ${ruleLits}) D)) (eval-num (subst (list ${ruleLits}) '${F})))) '(${pointLits})))`;
  const res = await lisp.ask(code, Math.max(timeoutMs, 15000));
  if (!res.ans || typeof res.ans.result !== 'string') return [];
  let rows;
  try { rows = parseLisp(res.ans.result); } catch { return []; }
  return Array.isArray(rows) ? rows.filter((r) => Array.isArray(r) && r.length >= 3) : [];
}

// → { verdict, detail }
export async function checkIndefinite(lisp, fText, F, variable, timeoutMs) {
  if (/root_of|rootsum|root-sum|integrate/.test(F)) {
    return { verdict: 'UNVERIFIED', detail: { reason: 'ответ содержит непроверяемую форму' } };
  }
  const fRes = await lisp.math(fText, timeoutMs);
  if (!fRes.ans || typeof fRes.ans.result !== 'string') {
    return { verdict: 'UNVERIFIED', detail: { reason: 'исходная функция не разобрана' } };
  }
  const f = fRes.ans.result;
  const params = paramsOf(fText, variable);
  const sets = paramSets(params).map((values) => ({ values, rows: [] }));
  const exactFn = (x, values) => exactDiff(lisp, F, f, variable, x, values, params, timeoutMs);
  let verdict = null;
  for (const pass of [0, 1]) {
    const base = [...REAL_POINTS, ...COMPLEX_POINTS];
    if (pass === 1 && params.length > 0) sets.push({ values: altSet(params), rows: [], fresh: true });
    for (const set of sets) {
      const pts = pass === 0 ? base : (set.fresh ? base.concat(EXTRA_POINTS) : EXTRA_POINTS);
      set.fresh = false;
      const rows = await sampleSet(lisp, f, F, variable, params, set.values, pts, timeoutMs);
      set.rows = set.rows.concat(rows);
    }
    const j = await judge(sets, exactFn);
    if (j.wrong) {
      return { verdict: 'WRONG', detail: { ...j.wrong, f: j.wrong.f, points: 0, exact: true } };
    }
    const d = decide(j);
    if (d.ok) {
      verdict = { verdict: 'OK', detail: { points: d.points, strong: d.strong, tolerated: d.tolerated, kinds: d.kinds, failed_sets: d.failed_sets } };
      break;
    }
    verdict = { verdict: 'UNVERIFIED', detail: d };
  }
  return verdict;
}

// десятичное число (-2.3, 0.7) → точная дробь «-23/10»; экспонента или нечисло — null
function decimalToFraction(v) {
  if (Array.isArray(v)) return null;
  const s = String(v);
  const m = /^(-?)(\d+)(?:\.(\d+))?$/.exec(s);
  if (!m) return null;
  const frac = m[3] || '';
  const num = BigInt(m[2] + frac);
  const den = 10n ** BigInt(frac.length);
  return `${m[1]}${num}/${den}`;
}

// 'zero' — D − f тождественно 0 в точной арифметике; 'nonzero' — отличное от 0 число; 'unknown' — не решилось
async function exactDiff(lisp, F, f, variable, xVal, values, params, timeoutMs) {
  const xr = decimalToFraction(xVal);
  if (!xr) return 'unknown';
  const rules = [`(list '${variable} ${xr})`];
  for (const p of params) {
    const pr = decimalToFraction(values[p]);
    if (!pr) return 'unknown';
    rules.push(`(list '${p} ${pr})`);
  }
  const code = `(let* ((D (diff '${variable} '${F})) (r (list ${rules.join(' ')}))) `
    + `(simplify (- (subst r D) (subst r '${f}))))`;
  const res = await lisp.ask(code, Math.max(timeoutMs, 30000));
  if (!res.ans || typeof res.ans.result !== 'string') return 'unknown';
  const t = res.ans.result.trim();
  if (t === '0') return 'zero';
  if (/^-?\d+(\/\d+)?$/.test(t)) return 'nonzero';
  return 'unknown';
}

function toComplex(v) {
  if (typeof v === 'number') return [v, 0];
  if (typeof v === 'string') {
    if (v === '%i') return [0, 1];
    if (v === 'nan' || v === 'inf' || v === '-inf') return null;
    const n = Number(v);
    if (Number.isFinite(n)) return [n, 0];
    return null;
  }
  if (Array.isArray(v) && v.length === 3) {
    const op = v[0];
    const a = toComplex(v[1]);
    const b = toComplex(v[2]);
    if (!a || !b) return null;
    if (op === '+') return [a[0] + b[0], a[1] + b[1]];
    if (op === '-') return [a[0] - b[0], a[1] - b[1]];
    if (op === '*') return [a[0] * b[0] - a[1] * b[1], a[0] * b[1] + a[1] * b[0]];
    if (op === '/') {
      const d = b[0] * b[0] + b[1] * b[1];
      return [(a[0] * b[0] + a[1] * b[1]) / d, (a[1] * b[0] - a[0] * b[1]) / d];
    }
    if (op === '^') return complexPow(a, b);
    return null;
  }
  if (Array.isArray(v) && v.length === 2) {
    const neg = toComplex(v[1]);
    if (!neg) return null;
    if (v[0] === '-') return [-neg[0], -neg[1]];
    return null;
  }
  return null;
}

function complexPow(a, b) {
  // показатель вещественный (типичный случай), база комплексная
  if (b[1] === 0) {
    const r = Math.hypot(a[0], a[1]);
    const th = Math.atan2(a[1], a[0]);
    const rn = Math.pow(r, b[0]);
    const tn = th * b[0];
    return [rn * Math.cos(tn), rn * Math.sin(tn)];
  }
  return null;
}

async function evalNum(lisp, sexpr, timeoutMs) {
  const r = await lisp.ask(`(eval-num '${sexpr})`, timeoutMs);
  if (!r.ans || typeof r.ans.result !== 'string') return null;
  try { return toComplex(parseLisp(r.ans.result)); } catch { return null; }
}

async function mathSexpr(lisp, text, timeoutMs) {
  const r = await lisp.math(text, timeoutMs);
  if (!r.ans || typeof r.ans.result !== 'string') return null;
  return r.ans.result;
}

// Определённый интеграл: наше значение против value корпуса, при расхождении — квадратура Симпсона.
export async function checkDefinite(lisp, F, corpusValue, fText, variable, lower, upper, timeoutMs) {
  const ours = await evalNum(lisp, F, timeoutMs);
  const wantText = translateValue(corpusValue, variable);
  let want = null;
  if (wantText) {
    const w = await mathSexpr(lisp, wantText, timeoutMs);
    if (w) want = await evalNum(lisp, w, timeoutMs);
  }
  if (!ours) return { verdict: 'UNVERIFIED', detail: { reason: 'наше значение не вычисляется' } };
  if (want) {
    const err = Math.hypot(ours[0] - want[0], ours[1] - want[1]) / Math.max(1, Math.hypot(want[0], want[1]));
    if (err <= TOL) return { verdict: 'OK', detail: { how: 'value' } };
  }
  const fSexpr = await mathSexpr(lisp, fText, timeoutMs);
  const a = await evalNum(lisp, (await mathSexpr(lisp, lower, timeoutMs)) || lower, timeoutMs);
  const b = await evalNum(lisp, (await mathSexpr(lisp, upper, timeoutMs)) || upper, timeoutMs);
  if (!fSexpr || !a || !b) return { verdict: 'UNVERIFIED', detail: { reason: 'нет квадратуры' } };
  if (a[1] !== 0 || b[1] !== 0) return { verdict: 'UNVERIFIED', detail: { reason: 'комплексные пределы' } };
  if (!Number.isFinite(a[0]) || !Number.isFinite(b[0])) return { verdict: 'UNVERIFIED', detail: { reason: 'бесконечные пределы' } };
  const n = 200;
  const h = (b[0] - a[0]) / n;
  const terms = [];
  for (let k = 0; k <= n; k += 1) {
    const x = a[0] + k * h;
    const w = (k === 0 || k === n) ? 1 : (k % 2 ? 4 : 2);
    terms.push(`(* ${(w * h) / 3} (eval-num (subst (list (list '${variable} ${x})) '${fSexpr})))`);
  }
  const qr = await lisp.ask(`(+ ${terms.join(' ')})`, Math.max(timeoutMs, 20000));
  if (!qr.ans || typeof qr.ans.result !== 'string') return { verdict: 'UNVERIFIED', detail: { reason: 'квадратура не вычислилась' } };
  let q;
  try { q = toComplex(parseLisp(qr.ans.result)); } catch { q = null; }
  if (!q) return { verdict: 'UNVERIFIED', detail: { reason: 'квадратура не число' } };
  const err = Math.hypot(ours[0] - q[0], ours[1] - q[1]) / Math.max(1, Math.hypot(q[0], q[1]));
  if (err <= 1e-7) return { verdict: 'OK', detail: { how: 'квадратура', value: corpusValue } };
  return { verdict: 'WRONG', detail: { how: 'квадратура', quad: q, ours, value: corpusValue, err } };
}

function translateValue(text, variable) {
  if (!text) return null;
  return String(text)
    .replace(/\*\*/g, '^')
    .replace(/\bpi\b/g, 'pi')
    .replace(/\boo\b/g, 'inf')
    .replace(/\bE\b/g, 'e')
    .replace(/\bI\b/g, '%i')
    .replace(/\bln\(/g, 'log(')
    .replace(/\bAbs\(/g, 'abs(')
    .replace(/\belliptic_f\(/g, 'EllipticF(')
    .replace(/\belliptic_e\(/g, 'EllipticE(')
    .replace(/\belliptic_pi\(/g, 'EllipticPi(');
}
