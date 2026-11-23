// Перевод записи корпуса (синтаксис SymPy) во входной язык.
const NAME_MAP = {
  ln: 'log', Abs: 'abs', Max: 'max', Min: 'min',
  elliptic_f: 'EllipticF', elliptic_e: 'EllipticE', elliptic_pi: 'EllipticPi',
  LambertW: 'lambert_w',
};
const KEEP = new Set([
  'sqrt', 'exp', 'log', 'sin', 'cos', 'tan', 'cot', 'sec', 'csc',
  'asin', 'acos', 'atan', 'acot', 'asec', 'acsc',
  'sinh', 'cosh', 'tanh', 'coth', 'sech', 'csch',
  'asinh', 'acosh', 'atanh', 'acoth', 'asech', 'acsch',
  'erf', 'erfc', 'erfi', 'Ei', 'li', 'Si', 'Ci', 'Shi', 'Chi',
  'gamma', 'abs', 'BesselJ', 'BesselY', 'BesselI', 'BesselK',
  'AiryAi', 'AiryBi', 'AiryAiPrime', 'AiryBiPrime',
  'LegendreP', 'LegendreQ', 'EllipticF', 'EllipticE', 'EllipticK', 'EllipticPi',
  'piecewise', 'polylog', 'binomial', 'floor', 'ceiling',
]);
const ATOMS = { pi: 'pi', oo: 'inf', E: 'e', I: '%i' };
const UNSUPPORTED = new Set([
  'RootSum', 'Lambda', 'Sum', 'Integral', 'Limit', 'Product',
  'zoo', 'nan', 'GoldenRatio', 'EulerGamma', 'Catalan',
]);
const IDENT = /[A-Za-z_][A-Za-z_0-9]*/y;

// Вызовы, переводимые построением текста из уже переведённых аргументов (parts) и исходных (raw); null — отказ.
const SPECIAL = {
  // log(a, b) с вложенными скобками (простой случай разобран регулярным выражением выше): log(a)/log(b)
  log: (p) => (p.length === 1 ? `log(${p[0]})` : p.length === 2 ? `(log(${p[0]})/log(${p[1]}))` : null),
  // Rational(p, q) → p/q
  Rational: (p) => (p.length === 2 ? `((${p[0]})/(${p[1]}))` : null),
  // cbrt(x) в SymPy — главная ветвь x^(1/3)
  cbrt: (p) => (p.length === 1 ? `((${p[0]})^(1/3))` : null),
  // real_root(x, n) — вещественный корень: для нечётного целого n sign(x)·|x|^(1/n); иначе отказ
  real_root: (p, raw) => {
    if (p.length !== 2 || !/^\s*[1-9]\d*\s*$/.test(raw[1])) return null;
    const n = Number(raw[1]);
    if (n % 2 === 0) return null;
    return n === 1 ? `(${p[0]})` : `(sign(${p[0]})*abs(${p[0]})^(1/${n}))`;
  },
  // Derivative(f, x) → diff(f, x); Derivative(f, (x, n)) → diff(f, x, n)
  Derivative: (p, raw) => {
    if (p.length !== 2) return null;
    const m = /^\s*\(\s*([A-Za-z_]\w*)\s*,\s*(\d+)\s*\)\s*$/.exec(raw[1]);
    if (m) return `diff(${p[0]}, ${m[1]}, ${m[2]})`;
    return /^\s*[A-Za-z_]\w*\s*$/.test(raw[1]) ? `diff(${p[0]}, ${p[1]})` : null;
  },
};

// Разбор вызова f(a, b, ...) с позиции открывающей скобки: → { args, end } | null (end — после закрывающей).
function callArgs(s, open) {
  const args = [];
  let depth = 0;
  let from = open + 1;
  for (let k = open; k < s.length; k += 1) {
    const c = s[k];
    if (c === '(') depth += 1;
    else if (c === ')') {
      depth -= 1;
      if (depth === 0) { args.push(s.slice(from, k)); return { args, end: k + 1 }; }
    } else if (c === ',' && depth === 1) { args.push(s.slice(from, k)); from = k + 1; }
  }
  return null;
}

// → { text | null, why | null }
export function translate(expr) {
  if (typeof expr !== 'string' || !expr.trim()) return { text: null, why: 'пустое выражение', renames: {} };
  return translateWith(expr.trim(), null);
}

function translateWith(s, aliasIn) {
  // логарифм по основанию: log(a, b) → log(a)/log(b)
  s = s.replace(/\blog\(([^(),]+),\s*([^(),]+)\)/g, '(log($1)/log($2))');
  s = s.replace(/\*\*/g, '^');
  // параметр e корпуса не должен стать числом Эйлера; имя выбирается без коллизии
  const alias = /\be1\b/.test(s) ? 'e2' : 'e1';
  let out = '';
  let i = 0;
  const renames = {};
  while (i < s.length) {
    IDENT.lastIndex = i;
    const m = IDENT.exec(s);
    if (!m) { out += s[i]; i += 1; continue; }
    const name = m[0];
    const j = IDENT.lastIndex;
    const nxt = s[j] || '';
    if (UNSUPPORTED.has(name)) return { text: null, why: `конструкция ${name}`, renames: {} };
    if (nxt === '(' && (name === 'polygamma' || name === 'zeta')) {
      const call = callArgs(s, j);
      if (!call) return { text: null, why: `функция ${name}`, renames: {} };
      // zeta(s, a) (Гурвица) в системе нет: ни значения, ни производной; zeta(s) — как есть
      if (name === 'zeta' && call.args.length !== 1) return { text: null, why: 'функция zeta(s, a)', renames: {} };
      if (name === 'polygamma' && call.args.length !== 2) return { text: null, why: 'функция polygamma', renames: {} };
      const parts = [];
      for (const a of call.args) {
        const r = translateWith(a, alias);
        if (r.text === null) return r;
        Object.assign(renames, r.renames);
        parts.push(r.text);
      }
      // polygamma(n, x) → psi(x, n): порядок аргументов обратный
      out += name === 'zeta' ? `zeta(${parts[0]})` : `psi(${parts[1]}, ${parts[0]})`;
      i = call.end;
      continue;
    }
    if (nxt === '(' && SPECIAL[name]) {
      const call = callArgs(s, j);
      if (!call) return { text: null, why: `функция ${name}`, renames: {} };
      const parts = [];
      for (const a of call.args) {
        const r = translateWith(a, alias);
        if (r.text === null) return r;
        Object.assign(renames, r.renames);
        parts.push(r.text.trim());
      }
      const built = SPECIAL[name](parts, call.args);
      if (built === null) return { text: null, why: `функция ${name}`, renames: {} };
      out += built;
      i = call.end;
      continue;
    }
    if (ATOMS[name]) out += ATOMS[name];
    else if (NAME_MAP[name]) out += NAME_MAP[name];
    else if (KEEP.has(name)) out += name;
    else if (nxt === '(') return { text: null, why: `функция ${name}`, renames: {} };
    else if (name === 'e') { out += alias; renames.e = alias; }
    else out += name;
    i = j;
  }
  return { text: out, why: null, renames };
}
