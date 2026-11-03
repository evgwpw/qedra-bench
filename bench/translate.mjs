// Перевод записи корпуса (синтаксис SymPy) во входной язык.
const NAME_MAP = {
  ln: 'log', Abs: 'abs', Max: 'max', Min: 'min',
  elliptic_f: 'EllipticF', elliptic_e: 'EllipticE', elliptic_pi: 'EllipticPi',
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
  'piecewise',
]);
const ATOMS = { pi: 'pi', oo: 'inf', E: 'e', I: '%i' };
const UNSUPPORTED = new Set([
  'RootSum', 'Lambda', 'Sum', 'Derivative', 'Integral', 'Limit', 'Product',
  'zoo', 'nan', 'GoldenRatio', 'EulerGamma', 'Catalan',
]);
const IDENT = /[A-Za-z_][A-Za-z_0-9]*/y;

// → { text | null, why | null }
export function translate(expr) {
  if (typeof expr !== 'string' || !expr.trim()) return { text: null, why: 'пустое выражение', renames: {} };
  let s = expr.trim();
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
