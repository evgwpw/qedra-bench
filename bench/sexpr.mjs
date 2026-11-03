// Разбор S-выражения: списки → массивы, числа → number, символы → строки.
export function parseLisp(text) {
  const toks = String(text).match(/\(|\)|[^\s()]+/g) || [];
  let i = 0;
  function expr() {
    const t = toks[i]; i += 1;
    if (t === '(') {
      const arr = [];
      while (i < toks.length && toks[i] !== ')') arr.push(expr());
      i += 1;
      return arr;
    }
    if (t === ')') throw new Error('unexpected )');
    if (/^-?\d+(\.\d*)?([eE][-+]?\d+)?$/.test(t)) return Number(t);
    if (/^-?\d+\/\d+$/.test(t)) {
      const [a, b] = t.split('/').map(Number);
      return a / b;
    }
    return t;
  }
  const v = expr();
  if (i !== toks.length) throw new Error('trailing tokens');
  return v;
}
