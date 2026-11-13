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
  'piecewise', 'polylog',
]);
const ATOMS = { pi: 'pi', oo: 'inf', E: 'e', I: '%i' };
const UNSUPPORTED = new Set([
  'RootSum', 'Lambda', 'Sum', 'Derivative', 'Integral', 'Limit', 'Product',
  'zoo', 'nan', 'GoldenRatio', 'EulerGamma', 'Catalan',
]);
const IDENT = /[A-Za-z_][A-Za-z_0-9]*/y;

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
