// Численная проверка первообразной без внешнего CAS: дифференцирует ответ системой
// (diff), подставляет точки и параметры (subst) и считает значения (eval-num).
import { parseLisp } from './sexpr.mjs';

export const TOL = 1e-8;

const REAL_POINTS = [-3.7, -2.3, -1.23, -0.77, -0.41, -0.13, 0.07, 0.41, 0.77, 1.23, 1.91, 2.67, 3.7];
const COMPLEX_POINTS = [[0.6, 0.8], [-1.2, 0.4]];
// Узкая область определения (√(1−2x)·√(5x+3) — интервал (−0,6; 0,5)): если основных точек вычислилось меньше 7,
// второй проход — сетка на [−4; 4] шагом 0,1 со сдвигом 0,0137 (не попадает в целые и половины).
// Дальше сетки — несколько точек с большим |x|: log(x − 5), √(x − ln 3) и т. п. вещественны только при больших x
// (значения, где double переполняется, пропускаются как и прочие невычислимые).
// exp(exp(c − x)) с c ≈ 55 и т. п. не переполняются только при x ≳ 50; exp(x⁸·e³²) — только при |x| ≲ 0,05.
const FAR_POINTS = [4.37, 5.13, 6.21, 7.77, 9.3, 12.9, 17.3, 24.1, -4.9, -6.1, -8.3, -12.7,
  35.3, 44.9, 47.7, 52.6, 58.1, 66.9, 75.1, 83.3, 98.4, 121.3, 150.7, 210.3, 0.0031, 0.0113, 0.0297, 0.0471, -0.0031, -0.0113, -0.0297, -0.0471];
const EXTRA_POINTS = Array.from({ length: 81 }, (_, i) => Math.round((-4 + 0.1 * i + 0.0137) * 1e4) / 1e4).concat(FAR_POINTS);

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
// округление до сотых: двоичный шум (1.9000000000000001) делает точную проверку рационалями неподъёмной
function baseValue(k) { return Math.round((0.7 + 0.4 * ((k * 7) % 5) + 0.13 * Math.floor(k / 5)) * 100) / 100; }
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

// Производная ответа системой. Производная polylog содержит нераскрытые узлы (diff u x) — вычисление давало nil и
// ответ с polylog оставался UNVERIFIED; узлы раскрываются тем же diff (аргументы узла: выражение, затем переменная).
function derivCode(variable, F) {
  const fx = `(letrec ((fx (lambda (e) (cond ((not (pair? e)) e) ((and (equal? (car e) 'diff) (= (length e) 3)) `
    + `(fx (diff (caddr e) (cadr e)))) (else (map fx e)))))) (fx (diff '${variable} '${F})))`;
  return /polylog/.test(F) ? fx : `(diff '${variable} '${F})`;
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
// Допуск TOL·max(1,|f|) — относительный при |f| ≥ 1, поэтому большие значения не мешают различать возмущение 1e-3:
// верхней границы «сильного» совпадения нет, кроме границы double (BIG; пилот hebisch: exp(2·e³)-множители ~1e17…1e180).
const STRONG_MAX = 1e100;
const BIG = 1e100;
// Снизу: при |f| < 1e-2 возмущение ×1,001 (невязка < 1e-5) почти не отличается от допуска TOL·1, поэтому там
// совпадение «сильное» только по относительной невязке |dF − f| ≤ TOL·|f| (и |f| ≥ 1e-200, чтобы не считать нули).
const STRONG_MIN = 1e-2;
const TINY_MIN = 1e-200;
// Маскировка: при |f| ~ 1e40 (exp(e⁶/4 + …)) слагаемое порядка 1 (потерянное «+x», знак у «x») лежит ниже относительной
// точности double и не видно ни в одной точке. Поэтому хотя бы LOW_NEEDED сильных совпадений должны быть при |f| ≤ LOW_MAX
// (там возмущение 1e-3 видно); если таких нет, ответ принимает только точная проверка (exactPoints), иначе UNVERIFIED.
const LOW_MAX = 1e4;
const LOW_NEEDED = 3;
function isStrong(av, absErr) {
  if (av > STRONG_MAX) return false;
  if (av >= STRONG_MIN) return true;
  return av >= TINY_MIN && absErr <= TOL * av;
}
// порог «достаточно точных совпадений»: по данным пилота верные ответы с ветвями имеют ≥ 21, подделки — 0
const STRONG_SURE = 20;
const NOISE_MAX = 1e-5;
const SOFT_NOISE = 1e-4;
const NOISE_EXACT = 3;
const EXACT_BUDGET = 40;

function isImagSmall(c, av) { return Math.abs(c[1]) <= 1e-12 * Math.max(1, av); }

async function judge(sets, exactFn) {
  let noiseConfirmed = 0;
  let exactCalls = 0;
  let wrong = null;
  let unresolved = null;
  const tally = [];
  for (const set of sets) {
    const t = { values: set.values, noise: 0, low: 0, match: 0, strong: 0, tolerated: 0, tc: 0, ti: 0, tb: 0, hard: 0, realMatch: 0 };
    tally.push(t);
    for (const row of set.rows) {
      const fv = toComplex(row[1]);
      const dv = toComplex(row[2]);
      if (!fv || !dv) continue;
      const av = Math.hypot(fv[0], fv[1]);
      const ad = Math.hypot(dv[0], dv[1]);
      if (!Number.isFinite(av) || !Number.isFinite(ad) || av > BIG || ad > BIG) continue;
      const Fv = row.length > 3 ? toComplex(row[3]) : null;
      const isC = Array.isArray(row[0]);
      const fReal = isImagSmall(fv, av);
      const err = Math.hypot(dv[0] - fv[0], dv[1] - fv[1]) / Math.max(1, av);
      const absErr = err * Math.max(1, av);
      // «сильным» может быть и совпадение комплексных f, dF (подынтегральное комплексно на всей оси, напр. log(log(x/eˣ))):
      // равенство двух комплексных чисел до 1e-8 различает подделку не слабее вещественного.
      if (err <= TOL) {
        t.match += 1;
        if (!isC) { t.realMatch += 1; if (isStrong(av, absErr)) { t.strong += 1; if (av <= LOW_MAX) t.low += 1; } }
        continue;
      }
      if (isC) { t.tolerated += 1; t.tc += 1; continue; }
      if (!fReal) { t.tolerated += 1; t.ti += 1; continue; }
      // другая ветвь: f вещественно, а F комплексно (log/корень отрицательного, log(x)+log(1+x) при x<0 и т. п.);
      // dF при этом комплексно или вещественно — не важно: решает число сильных совпадений там, где всё вещественно
      if (Fv && !isImagSmall(Fv, Math.hypot(Fv[0], Fv[1]))) { t.tolerated += 1; t.tb += 1; continue; }
      // жёсткое расхождение: вещественные f, dF, F
      if (err <= NOISE_MAX && noiseConfirmed >= NOISE_EXACT) { t.match += 1; t.realMatch += 1; if (isStrong(av, absErr)) { t.strong += 1; if (av <= LOW_MAX) t.low += 1; } continue; }
      let ex = 'unknown';
      if (exactCalls < EXACT_BUDGET) {
        exactCalls += 1;
        ex = await exactFn(row[0], set.values);
      }
      if (ex === 'zero') { if (err <= NOISE_MAX) noiseConfirmed += 1; t.match += 1; t.realMatch += 1; if (isStrong(av, absErr)) { t.strong += 1; if (av <= LOW_MAX) t.low += 1; } continue; }
      if (ex === 'nonzero') {
        wrong = { x: row[0], f: row[1], dF: row[2], err, params: set.values };
        return { wrong, tally };
      }
      // Малое расхождение (< 1e-4, тысячной доли подделки), которое ни точная проверка, ни центральная разность не
      // подтвердили и не опровергли: шум double у полюса/при сокращении больших слагаемых. Такая точка ничего не
      // доказывает и не отвергает; ответ принимается только при ≥ 7 сильных совпадениях в остальных точках, а подделка
      // сильных совпадений (≤ 1e-8) не даёт.
      if (err <= SOFT_NOISE) { t.noise += 1; continue; }
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
  const noise = clean.reduce((s, t) => s + t.noise, 0);
  const low = clean.reduce((s, t) => s + t.low, 0);
  if (low < LOW_NEEDED) return { ok: false, reason: 'меньше 7 различающих точек: сильных совпадений при |f| ≤ 1e4 — ' + low + ' (из ' + strong + ')', points: match, strong, low, noise };
  // Шумовых точек должно быть мало (≤ ¼ сильных): настоящая малая ошибка (убывающая с |x|, вроде O(e⁻¹⁰)·log) даёт
  // много неподтверждённых точек вблизи и сильные совпадения лишь вдали.
  if (noise > 0 && (strong < 7 || noise * 4 > strong)) return { ok: false, reason: 'расхождение в double, точная проверка неубедительна: шумовых точек ' + noise + ', сильных совпадений ' + strong, points: match, strong, noise, ...j.unresolved };
  // ≥ 3 сильных совпадения обязательны и здесь: если |f| < 1e-2 во всех точках (exp(−20)·…), допуск TOL·max(1,|f|) абсолютный,
  // и «совпадают» любые ответы, включая подделку ×1,001; сильное совпадение при малом |f| — относительное (1e-8).
  if (tolerated === 0 && failedSets.length === 0 && match >= 7 && strong >= 3) return { ok: true, points: match, strong, noise };
  if (tolerated === 0 && match < 7) return { ok: false, reason: 'меньше 7 вычислимых точек', points: match, strong, tolerated };
  // Точки «другой ветви» (F комплексно, dF вещественно) не должны преобладать: ветвь — часть вещественной оси,
  // а подделка в области, где F комплексно везде, расходилась бы почти во всех точках.
  if (strong >= 7 && kinds.tb <= strong) return { ok: true, points: match, strong, tolerated, kinds, failed_sets: failedSets.length };
  // Достаточно много точных совпадений (≥ STRONG_SURE различных точек и наборов параметров, где f, dF, F вещественны
  // и dF = f до 1e-8) доказывают тождество dF = f на интервале, а значит и на всей связной области аналитичности;
  // перевес точек другой ветви (область, где F комплексно, — типично эллиптические интегралы) тогда не мешает.
  // Подделка с возмущением ≥ 1e-3 расходится во всех таких точках, а не в части.
  if (strong >= STRONG_SURE) return { ok: true, points: match, strong, tolerated, kinds, failed_sets: failedSets.length };
  if (strong < 7) return { ok: false, reason: 'правило числа точных совпадений: strong < 7 (точных совпадений мало: ' + strong + ')', points: match, strong, tolerated, kinds };
  return { ok: false, reason: 'правило ветвей: точек другой ветви (' + kinds.tb + ') больше точных совпадений (' + strong + '), а их меньше ' + STRONG_SURE, points: match, strong, tolerated, kinds };
}

async function sampleSet(lisp, f, F, variable, params, values, pts, timeoutMs) {
  const pointLits = pts.map(valueText).join(' ');
  const ruleLits = [`(list '${variable} p)`]
    .concat(params.map((p) => `(list '${p} ${values[p]})`)).join(' ');
  // eval-num не считает polylog и lambert_w (их значения — в модуле polylog, polylog-evalf: вещественные аргументы);
  // для остальных выражений вычисление прежнее
  const ev = /polylog|lambert_w/.test(f + F) ? 'num*' : 'eval-num';
  const code = `(let ((D ${derivCode(variable, F)}) (num* (lambda (e) (or (polylog-evalf e) (eval-num e))))) `
    + `(map (lambda (p) (list p (${ev} (subst (list ${ruleLits}) '${f})) `
    + `(${ev} (subst (list ${ruleLits}) D)) (${ev} (subst (list ${ruleLits}) '${F})))) '(${pointLits})))`;
  const res = await lisp.ask(code, Math.max(timeoutMs, 15000));
  if (!res.ans || typeof res.ans.result !== 'string') return [];
  let rows;
  try { rows = parseLisp(res.ans.result); } catch { return []; }
  return Array.isArray(rows) ? rows.filter((r) => Array.isArray(r) && r.length >= 3) : [];
}

// → { verdict, detail }
export async function checkIndefinite(lisp, fText, F, variable, timeoutMs) {
  if (/integrate/.test(F)) {
    return { verdict: 'UNVERIFIED', detail: { reason: 'ответ содержит непроверяемую форму' } };
  }
  const fRes = await lisp.math(fText, timeoutMs);
  if (!fRes.ans || typeof fRes.ans.result !== 'string') {
    return { verdict: 'UNVERIFIED', detail: { reason: 'исходная функция не разобрана' } };
  }
  const f = fRes.ans.result;
  const params = paramsOf(fText, variable);
  const sets = paramSets(params).map((values) => ({ values, rows: [] }));
  // Ответ с суммой по корням: точная проверка рационалями (simplify) на root-sum не решается, а производная root-sum
  // в eval-num иногда вычисляется неточно (0 или отклонение 1e-3 у верного ответа). Независимая сверка — центральная
  // разность самого F (значения F в x±h), без дифференцирования root-sum.
  const hasRoots = /root_of|rootsum|root-sum/.test(F);
  const exactFn = hasRoots
    ? (x, values) => fdDiff(lisp, F, f, variable, x, values, params, timeoutMs)
    : async (x, values) => {
      // Шум вычитания в double у верного ответа (производная — сумма больших слагаемых) не должен делать задачу
      // непроверяемой: независимая сверка — центральная разность самого F (она не использует diff); «zero» — F′ = f
      // до 1e-6, подделка с возмущением 1e-3 дала бы «nonzero»/«unknown». Опровергает (WRONG) только точная проверка.
      if (await fdDiff(lisp, F, f, variable, x, values, params, timeoutMs, 0, FD_MAX) === 'zero') return 'zero';
      return exactDiff(lisp, F, f, variable, x, values, params, timeoutMs);
    };
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
      verdict = { verdict: 'OK', detail: { points: d.points, strong: d.strong, tolerated: d.tolerated, kinds: d.kinds, failed_sets: d.failed_sets, noise: d.noise } };
      break;
    }
    verdict = { verdict: 'UNVERIFIED', detail: d };
  }
  // Значения двойной точности переполняются во всех точках (exp(exp(16)), exp(x⁸·e³²), exp((2e²⁵/x)²) …): число
  // доказывается точно — D − f тождественно 0 при подстановке рациональной точки (simplify, а при остатке — expand).
  // Нужно ≥ 5 различных точек с точным нулём; любой точный ненуль — WRONG. Подделка в такой точке не обнуляется.
  if (verdict && verdict.verdict === 'UNVERIFIED' && /^меньше 7/.test(verdict.detail.reason || '')) {
    const ex = await exactPoints(lisp, F, f, variable, params, exactFn0(lisp, F, f, variable, params, timeoutMs));
    if (ex.wrong) return { verdict: 'WRONG', detail: { x: ex.wrong, exact: true, points: 0 } };
    if (ex.zeros >= EXACT_POINTS_NEEDED) return { verdict: 'OK', detail: { how: 'exact', exact_zeros: ex.zeros, points: verdict.detail.points } };
    verdict.detail.exact_zeros = ex.zeros;
  }
  // Остались неразрешённые «жёсткие» точки (шум double у полюса, сокращение больших слагаемых, D вычисляется как 0 при
  // переполнении промежуточных величин). Независимая сверка без diff: центральная разность самого F в 12 точках;
  // принимается при ≥ 8 «zero» (F′ = f до 1e-6) и ни одном «nonzero». Подделка с возмущением 1e-3 даёт «nonzero».
  if (verdict && verdict.verdict === 'UNVERIFIED' && /^расхождение/.test(verdict.detail.reason || '')) {
    const values = paramSets(params)[0];
    let zeros = 0;
    let nonzero = 0;
    for (const x of FD_X) {
      const r = await fdDiff(lisp, F, f, variable, x, values, params, timeoutMs, STRONG_MIN, FD_MAX);
      if (r === 'zero') zeros += 1; else if (r === 'nonzero') nonzero += 1;
    }
    if (nonzero === 0 && zeros >= 8) return { verdict: 'OK', detail: { how: 'fd', fd_zeros: zeros, points: verdict.detail.points } };
    verdict.detail.fd_zeros = zeros;
    verdict.detail.fd_nonzero = nonzero;
  }
  return verdict;
}

const FD_MAX = 100;
const FD_X = [0.31, 0.77, 1.23, 1.7, 1.91, 2.9, 0.41, 2.67, 3.7, 5.5, 9.1, 0.07];

const EXACT_POINTS_NEEDED = 5;
const EXACT_X = [0.77, 1.23, 1.91, 0.41, 2.67, 3.7, 0.07, 1.57];
function exactFn0(lisp, F, f, variable, params, timeoutMs) {
  const values = paramSets(params)[0];
  return (x) => exactDiff(lisp, F, f, variable, x, values, params, timeoutMs);
}
async function exactPoints(lisp, F, f, variable, params, fn) {
  if (/root_of|rootsum|root-sum/.test(F)) return { zeros: 0 };
  let zeros = 0;
  let unknownRun = 0;
  for (const x of EXACT_X) {
    const r = await fn(x);
    if (r === 'zero') { zeros += 1; unknownRun = 0; } else if (r === 'nonzero') return { zeros, wrong: x };
    else { unknownRun += 1; if (unknownRun >= 3 && zeros === 0) break; }
    if (zeros >= EXACT_POINTS_NEEDED) break;
  }
  return { zeros };
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
  const code = `(let* ((D ${derivCode(variable, F)}) (r (list ${rules.join(' ')}))) `
    + `(let ((s (simplify (- (subst r D) (subst r '${f}))))) (if (pair? s) (simplify (expand s)) s)))`;
  const res = await lisp.ask(code, Math.max(timeoutMs, 30000));
  if (!res.ans || typeof res.ans.result !== 'string') return 'unknown';
  const t = res.ans.result.trim();
  if (t === '0') return 'zero';
  if (/^-?\d+(\/\d+)?$/.test(t)) return 'nonzero';
  return 'unknown';
}

// Для ответов с root-sum: (F(x+h) − F(x−h))/(2h) против f(x). 'zero' — совпали до 1e-6, 'nonzero' — расходятся
// больше чем на 1e-3 (отн. к max(1,|f|)), иначе / комплексные значения / нет значений — 'unknown'.
async function fdDiff(lisp, F, f, variable, xVal, values, params, timeoutMs, minAbsF = 0, maxAbsF = Infinity) {
  if (typeof xVal !== 'number') return 'unknown';
  const h = 1e-4;
  const rules = (xv) => `(list ${[`(list '${variable} ${xv})`].concat(params.map((p) => `(list '${p} ${values[p]})`)).join(' ')})`;
  const code = `(let ((num* (lambda (e) (or (polylog-evalf e) (eval-num e))))) `
    + `(list (num* (subst ${rules(xVal)} '${f})) (num* (subst ${rules(xVal + h)} '${F})) `
    + `(num* (subst ${rules(xVal - h)} '${F}))))`;
  const res = await lisp.ask(code, Math.max(timeoutMs, 30000));
  if (!res.ans || typeof res.ans.result !== 'string') return 'unknown';
  let rows;
  try { rows = parseLisp(res.ans.result); } catch { return 'unknown'; }
  if (!Array.isArray(rows) || rows.length !== 3) return 'unknown';
  const [fv, a, b] = rows.map(toComplex);
  if (!fv || !a || !b) return 'unknown';
  const av = Math.hypot(a[0], a[1]);
  const bv = Math.hypot(b[0], b[1]);
  if (!isImagSmall(fv, Math.hypot(fv[0], fv[1])) || !isImagSmall(a, av) || !isImagSmall(b, bv)) return 'unknown';
  // при малом |f| допуск max(1,|f|) абсолютный и ничего не различает: такая точка «unknown»
  if (Math.abs(fv[0]) < minAbsF) return 'unknown';
  // при большом |f| допуск 1e-6·|f| шире возмущения 1e-3 (абсолютного): центральная разность там ничего не доказывает
  if (Math.abs(fv[0]) > maxAbsF) return 'unknown';
  const fd = (a[0] - b[0]) / (2 * h);
  const err = Math.abs(fd - fv[0]) / Math.max(1, Math.abs(fv[0]));
  if (err <= 1e-6) return 'zero';
  if (err >= 1e-3) return 'nonzero';
  return 'unknown';
}

export { judge, decide, sampleSet, paramSets, altSet, exactDiff, fdDiff, toComplex, REAL_POINTS, COMPLEX_POINTS, EXTRA_POINTS };

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
