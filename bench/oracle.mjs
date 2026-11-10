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

function paramSets(params) {
  const sets = [];
  for (const sgn of [1, -1]) {
    const obj = {};
    params.forEach((p, k) => {
      const base = 0.7 + 0.4 * ((k * 7) % 5);
      obj[p] = sgn > 0 ? base : -base;
    });
    sets.push(obj);
  }
  const irr = {};
  params.forEach((p, k) => { irr[p] = [1.4142135623730951, 0.7853981633974483, 0.9060939428196813, 0.8660254037844386][k % 4]; });
  sets.push(irr);
  return sets;
}

function valueText(v) {
  if (Array.isArray(v)) return `(+ ${v[0]} (* ${v[1]} %i))`;
  return String(v);
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
  const sets = paramSets(params);
  let checked = 0;
  let maxErr = 0;
  for (const pass of [0, 1]) {
  if (pass === 1 && checked >= 7) break;
  for (const values of sets) {
    const rules = [[variable, null]];
    const pts = [];
    if (pass === 0) {
      for (const p of REAL_POINTS) pts.push(p);
      for (const [re, im] of COMPLEX_POINTS) pts.push([re, im]);
    } else {
      for (const p of EXTRA_POINTS) pts.push(p);
    }
    const pointLits = pts.map(valueText).join(' ');
    const ruleLits = [`(list '${variable} p)`]
      .concat(params.map((p) => `(list '${p} ${values[p]})`)).join(' ');
    const code = `(let ((D (diff '${variable} '${F}))) `
      + `(map (lambda (p) (list p (eval-num (subst (list ${ruleLits}) '${f})) `
      + `(eval-num (subst (list ${ruleLits}) D)))) '(${pointLits})))`;
    const res = await lisp.ask(code, Math.max(timeoutMs, 15000));
    if (!res.ans || typeof res.ans.result !== 'string') continue;
    let rows;
    try { rows = parseLisp(res.ans.result); } catch { continue; }
    if (!Array.isArray(rows)) continue;
    for (const row of rows) {
      if (!Array.isArray(row) || row.length !== 3) continue;
      const fv = toComplex(row[1]);
      const dv = toComplex(row[2]);
      if (!fv || !dv) continue;
      const av = Math.hypot(fv[0], fv[1]);
      const ad = Math.hypot(dv[0], dv[1]);
      if (!Number.isFinite(av) || !Number.isFinite(ad) || av > 1e7 || ad > 1e7) continue;
      // Подынтегральное вещественно, а производная ответа комплексна: ответ в этой точке лежит на другой
      // ветви (вне рабочего интервала, напр. √(x²−1) при |x| < 1). Точка пропускается: не совпавшая и не
      // расхождение; вердикт OK требует ≥ 7 совпавших точек. Если и f, и dF вещественны — прежняя логика.
      if (Math.abs(fv[1]) <= 1e-12 * Math.max(1, av) && Math.abs(dv[1]) > 1e-9 * Math.max(1, ad)) continue;
      const err = Math.hypot(dv[0] - fv[0], dv[1] - fv[1]) / Math.max(1, av);
      checked += 1;
      maxErr = Math.max(maxErr, err);
      if (err > TOL) {
        // Расхождение в double — ещё не ложный ответ: многочлены высокой степени дают погрешность
        // 1e-5…1e-8 из-за вычитания больших слагаемых. Точка пересчитывается точно: рациональные
        // параметры и x, simplify разности D − f. 0 — точка верна; ненулевое число — ответ ложный;
        // иначе (корни, логарифмы остались символьно) проверить нечем — UNVERIFIED, а не WRONG.
        const ex = await exactDiff(lisp, F, f, variable, row[0], values, params, timeoutMs);
        if (ex === 'zero') { checked += 1; continue; }
        if (ex === 'nonzero') {
          return {
            verdict: 'WRONG',
            detail: { x: row[0], f: row[1], dF: row[2], err, points: checked, params: values, exact: true },
          };
        }
        return {
          verdict: 'UNVERIFIED',
          detail: { reason: 'расхождение в double, точная проверка неубедительна', x: row[0], f: row[1], dF: row[2], err, params: values },
        };
      }
    }
    if (checked >= 21) break;
  }
  }
  if (checked < 7) return { verdict: 'UNVERIFIED', detail: { reason: 'меньше 7 вычислимых точек', points: checked } };
  return { verdict: 'OK', detail: { points: checked, max_err: maxErr } };
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
