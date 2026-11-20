# Lean: 2026-11-20, снимок 8b9e8a4b339c63d3f96e36dd371943516aed88ca

- вход: `qedra_ref=master`, осколков 4, таймаут на пакет 900 с
- прогон: https://github.com/evgwpw/qedra-bench/actions/runs/44807513987
- всего теорем: 675
- генератор: `260c5800d4820a8a888aea5cdc86310f19fcd847`, ответов OK 1000, выборка 500 (seed 1), пакетов по 20, тактов на теорему 200000/50000
| статус | теорем |
|---|---|
| passed | 143 |
| failed | 221 |
| failed-axioms | 0 |
| timeout | 267 |
| vacuous? | 8 |
| unknown | 36 |

| осколок | всего | passed | failed | failed-axioms | timeout | vacuous? | unknown |
|---|---|---|---|---|---|---|---|
| lean-1 | 180 | 0 | 52 | 0 | 98 | 0 | 30 |
| lean-2 | 180 | 41 | 64 | 0 | 66 | 4 | 5 |
| lean-3 | 180 | 55 | 56 | 0 | 67 | 2 | 0 |
| lean-4 | 135 | 47 | 49 | 0 | 36 | 2 | 1 |
## Пилот: по наборам

Всего ответов OK: 1000 (из них не переведено генератором: 325); проценты — от проверенных.

| набор | проверено | passed | failed | failed-axioms | timeout | vacuous? | unknown | не переведено | passed, % |
|---|---|---|---|---|---|---|---|---|---|
| rubi | 210 | 0 | 66 | 0 | 111 | 0 | 33 | 290 | 0 |
| hebisch | 349 | 115 | 126 | 0 | 100 | 8 | 0 | 0 | 33 |
| blake | 62 | 4 | 8 | 0 | 50 | 0 | 0 | 0 | 6 |
| independent | 35 | 18 | 12 | 0 | 5 | 0 | 0 | 0 | 51 |
| uchebnye | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 35 | 0 |
| mit_bee | 11 | 6 | 4 | 0 | 1 | 0 | 0 | 0 | 55 |
| mit_bee_official | 8 | 0 | 5 | 0 | 0 | 0 | 3 | 0 | 0 |
| **всего** | **675** | **143** | **221** | **0** | **267** | **8** | **36** | **325** | **21** |

## Пилот: Rubi по подглавам

Всего ответов OK: 500 (из них не переведено генератором: 290); проценты — от проверенных.

| подглава | проверено | passed | failed | failed-axioms | timeout | vacuous? | unknown | не переведено | passed, % |
|---|---|---|---|---|---|---|---|---|---|
| (не переведено) | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 290 | 0 |
| t_1_1_3_2 | 19 | 0 | 8 | 0 | 6 | 0 | 5 | 0 | 0 |
| t_1_2_1_3 | 18 | 0 | 5 | 0 | 10 | 0 | 3 | 0 | 0 |
| t_1_1_1_3 | 17 | 0 | 5 | 0 | 9 | 0 | 3 | 0 | 0 |
| t_1_1_1_2 | 14 | 0 | 6 | 0 | 6 | 0 | 2 | 0 | 0 |
| t_1_2_1_2 | 14 | 0 | 2 | 0 | 10 | 0 | 2 | 0 | 0 |
| t_7_3_6 | 11 | 0 | 3 | 0 | 8 | 0 | 0 | 0 | 0 |
| t_1_1_2_4 | 8 | 0 | 1 | 0 | 4 | 0 | 3 | 0 | 0 |
| t_1_2_2_2 | 6 | 0 | 3 | 0 | 2 | 0 | 1 | 0 | 0 |
| t_1_1_3_4 | 5 | 0 | 3 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_1_1_3_8 | 5 | 0 | 1 | 0 | 2 | 0 | 2 | 0 | 0 |
| t_4_1_2_2 | 5 | 0 | 1 | 0 | 4 | 0 | 0 | 0 | 0 |
| t_4_1_3_1 | 5 | 0 | 0 | 0 | 5 | 0 | 0 | 0 | 0 |
| t_6_1_7 | 5 | 0 | 2 | 0 | 3 | 0 | 0 | 0 | 0 |
| t_1_1_4_2 | 4 | 0 | 0 | 0 | 3 | 0 | 1 | 0 | 0 |
| t_1_3_2 | 4 | 0 | 2 | 0 | 1 | 0 | 1 | 0 | 0 |
| t_4_7_7 | 4 | 0 | 2 | 0 | 1 | 0 | 1 | 0 | 0 |
| t_1_1_2_8 | 3 | 0 | 1 | 0 | 1 | 0 | 1 | 0 | 0 |
| t_1_2_1_4 | 3 | 0 | 1 | 0 | 1 | 0 | 1 | 0 | 0 |
| t_1_2_1_9 | 3 | 0 | 0 | 0 | 3 | 0 | 0 | 0 | 0 |
| t_1_2_3_2 | 3 | 0 | 2 | 0 | 0 | 0 | 1 | 0 | 0 |
| t_5_3_7 | 3 | 0 | 1 | 0 | 1 | 0 | 1 | 0 | 0 |
| t_1_1_2_2 | 2 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_1_1_2_3 | 2 | 0 | 0 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_1_2_1_5 | 2 | 0 | 1 | 0 | 0 | 0 | 1 | 0 | 0 |
| t_1_2_1_6 | 2 | 0 | 0 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_1_2_2_4 | 2 | 0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_2_4_2 | 2 | 0 | 0 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_2_3 | 2 | 0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_2_10 | 2 | 0 | 1 | 0 | 0 | 0 | 1 | 0 | 0 |
| t_4_2_2_1 | 2 | 0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_2_3_1 | 2 | 0 | 0 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_4_3_2_1 | 2 | 0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_3_3_1 | 2 | 0 | 0 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_4_7_2 | 2 | 0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_6_3_7 | 2 | 0 | 0 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_6_7_1 | 2 | 0 | 0 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_1_1_1_4 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_1_4_3 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| t_1_2_1_1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_2_2_6 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_2_3_4 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| t_1_3_1 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| t_2_1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_3_1_2 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_1_1_2 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_1_10 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_1_2_1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_1_7 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_2_4_2 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_2_7 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_3_7 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_7_1 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_5_2_5 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_6_1_3 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_6_2_5 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_6_3_1 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_7_3_7 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| **всего** | **210** | **0** | **66** | **0** | **111** | **0** | **33** | **290** | **0** |

## Пилот: почему не переведено

| причина | ответов |
|---|---|
| символьный показатель степени | 69 |
| голова sec | 54 |
| голова %i | 39 |
| голова e1 | 23 |
| голова EllipticF | 20 |
| вещественная константа (не рациональная) | 18 |
| голова root-sum | 16 |
| голова EllipticE | 14 |
| голова appell-f1 | 11 |
| голова hypergeometric-2f1 | 9 |
| голова csc | 8 |
| голова acoth | 8 |
| голова coth | 7 |
| голова sech | 4 |
| голова asinh | 4 |
| голова csch | 3 |
| голова lambert_w | 3 |
| голова polylog | 3 |
| голова cot | 3 |
| голова asec | 2 |
| голова asech | 2 |
| голова acot | 1 |
| голова fresnel_c | 1 |
| голова erfi | 1 |
| голова Ei | 1 |
| голова fresnel_s | 1 |

## Не passed

- `blake_blake_blake_1016` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1041` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | h2 : 0 < 2 * x ^ 8 + 1 | h3 : 0 < 2
- `blake_blake_blake_1065` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1096` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1126` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1174` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1193` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1227` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1228` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1232` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1233` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1254` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1279` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (0 - 1 / 2) * (1 - 1 / x ^ 3) ^ (2 / 3) - | 1 / 3 *
- `blake_blake_blake_1468` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1480` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1502` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1511` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1547` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1549` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_155` — failed: `simp` made no progress
- `blake_blake_blake_1580` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1639` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1675` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1744` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1855` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1913` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1998` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_202` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_2025` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_2077` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_210` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_2187` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_224` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_2292` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_2319` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_235` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_2495` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_251` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_2548` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_2561` — failed: unsolved goals | x : ℝ | h1 : 1 + x ≠ 0 | h2 : (0 - x ^ 2 + x ^ 3) ^ (1 / 3) ≠ 0 | h3 : 0 < 0 - x ^ 2 + x ^ 3
- `blake_blake_blake_2740` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (0 - 1 / 4) * (1 - 1 / x ^ 3) ^ (2 / 3) - 2 / 5 * (1 - 1 / x ^ 3) ^ (5 / 3) - | 1 / 2 *
- `blake_blake_blake_3070` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_341` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_410` — failed: unsolved goals | x a b : ℝ | h1 : (a * x ^ 4 - b) ^ (1 / 2) ≠ 0 | h2 : 0 < a * x ^ 4 - b | h3 : 2 ≠ 0
- `blake_blake_blake_420` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_435` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_451` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_468` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_50` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_511` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_577` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_60` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | h2 : 0 - 1 + (1 + x ^ 6) ^ (1 / 2) ≠ 0 | h3 : 0 < 1 + x ^ 6
- `blake_blake_blake_759` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_765` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_866` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_909` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_946` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_98` — failed: unsolved goals | x a b : ℝ | h1 : (a * x ^ 5 + b) ^ (1 / 2) ≠ 0 | h2 : 0 < a * x ^ 5 + b | h3 : (b + a * x ^ 5) ^ (1 / 2) ≠ 0
- `hebisch_hebisch_hebisch_10000` — failed: Application type mismatch: The argument | HasDerivAt.div | (HasDerivAt.add (HasDerivAt.sub (hasDerivAt_const x 0) (HasDerivAt.pow (hasDerivAt_id x) 4)) | (HasDerivAt.comp x (Real.hasDerivAt_exp (0 - x - 4 * x ^ 4 + rexp (x ^ 2))) | (HasDerivAt.add
- `hebisch_hebisch_hebisch_10030` — failed: unsolved goals | x : ℝ | hp2_h1 : 36100 - x * 27740 + x ^ 2 * 7989 - x ^ 3 * 1022 + x ^ 4 * 49 ≠ 0 | hp2_h3 : 25 - x * 10 + x ^ 2 ≠ 0 | hp2_h4 : 1444 - x * 532 + x ^ 2 * 49 ≠ 0
- `hebisch_hebisch_hebisch_10081` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_101` — failed: unsolved goals | x : ℝ | h : | HasDerivAt (fun x => x ^ 2 * rexp (2 + x * 2) + x ^ 3 + x ^ 3 * rexp (x * 2)) | (x * rexp (2 + x * 2) * 2 + x ^ 2 * 3 + x ^ 2 * rexp (2 + x * 2) * 2 + x ^ 2 * rexp (x * 2) * 3 +
- `hebisch_hebisch_hebisch_1010` — failed: Application type mismatch: The argument | HasDerivAt.div | (HasDerivAt.mul (hasDerivAt_const x 4) | (HasDerivAt.comp x (Real.hasDerivAt_exp (0 - x)) (HasDerivAt.sub (hasDerivAt_const x 0) (hasDerivAt_id x)))) | (hasDerivAt_id x) ?m.1347
- `hebisch_hebisch_hebisch_10114` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_10134` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_10175` — failed: unsolved goals | x : ℝ | h1 : log (x * rexp (x ^ 2 * rexp (x ^ 2) ^ 4)) ^ 2 ≠ 0 | h2 : x * rexp (x ^ 2 * rexp (x ^ 2) ^ 4) ≠ 0 | h3 : x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_10279` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => (0 - 20) * x - 10 * x * log x - 2 * log 105 * log x) ?m.225 x | is not definitionally equal to target | HasDerivAt ((fun x => 0 - 20) * id - (fun x => 10) * id * log) | (0 * x + (0 - 20) * 1 - ((0 * x + 10 * 1) * log x + 10 * x * x⁻¹)) x
- `hebisch_hebisch_hebisch_10316` — failed: unsolved goals | x : ℝ | h : | HasDerivAt | (fun x =>
- `hebisch_hebisch_hebisch_10318` — failed: unsolved goals | x : ℝ | h1 : rexp x ≠ 0 | h2 : x ^ 2 ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_116` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1167` — failed: unsolved goals | x : ℝ | h1 : | ((5 * x ^ 4 - x ^ 3) * rexp x - 10 * x ^ 4 + 2 * x ^ 3) * log ((0 - 5) * x ^ 3 + x ^ 2) + | ((0 - 15) * x ^ 4 + 3 * x ^ 3) * rexp x +
- `hebisch_hebisch_hebisch_1182` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1204` — failed: unsolved goals | x : ℝ | h : | HasDerivAt (fun x => x ^ 2 * rexp (8 + x * rexp (4 + x) * 2 + x ^ 2 * rexp (4 + x) * 2) * 4) | (x * rexp (8 + x * rexp (4 + x) * 2 + x ^ 2 * rexp (4 + x) * 2) * 8 +
- `hebisch_hebisch_hebisch_1332` — failed: unsolved goals | x : ℝ | h1 : 81 * rexp 1 + 27 * x ≠ 0 | h2 : rexp 1 + 1 / 3 * x ≠ 0 | h3 : 3 ≠ 0
- `hebisch_hebisch_hebisch_1336` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1342` — failed: unsolved goals | x : ℝ | h1 : rexp x ^ 2 ≠ 0 | h2 : x ≠ 0 | h :
- `hebisch_hebisch_hebisch_1441` — failed: unsolved goals | x : ℝ | h1 : log 2 ^ 2 ≠ 0 | h2 : 2 ≠ 0 | h3 : log 2 ≠ 0
- `hebisch_hebisch_hebisch_1471` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1488` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | x - x ^ 4 - 9 * x ^ 2 * rexp (8 * x) - 6 * x ^ 3 * rexp (4 * x) - 18 * x ^ 3 * rexp (8 * x) - | 6 * x ^ 4 * rexp (4 * x) -
- `hebisch_hebisch_hebisch_1491` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1535` — failed: unsolved goals | x : ℝ | h1 : 6 * rexp x * x - 72 * x - 8 ≠ 0 | h2 : ((0 - 3) * rexp x * x + 36 * x + 4) / x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_1576` — failed: unsolved goals | x : ℝ | h1 : x * log (rexp x * x ^ 2) + x ^ 2 ≠ 0 | h2 : rexp x * x ^ 2 ≠ 0 | h3 : 2 ≠ 0
- `hebisch_hebisch_hebisch_1623` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1729` — failed: unsolved goals | x : ℝ | h1 : x * rexp 1 + x ^ 2 ≠ 0 | h2 : x ≠ 0 | h3 : x + rexp 1 ≠ 0
- `hebisch_hebisch_hebisch_1784` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1788` — failed: unsolved goals | x : ℝ | h1 : (rexp x - x) * log (rexp x - x) ^ 2 + 625 * rexp x * x - 625 * x ^ 2 ≠ 0 | h2 : rexp x - x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_1838` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1879` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1919` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1953` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => 5 / x - 2 * x - x * rexp 1 - rexp x) ?m.355 x | is not definitionally equal to target | HasDerivAt ((fun x => 5) / id - (fun x => 2) * id) ((0 * x - 5 * 1) / x ^ 2 - (0 * x + 2 * 1)) x
- `hebisch_hebisch_hebisch_1970` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1982` — failed: unsolved goals | x : ℝ | h1 : x * rexp x * log x + 1 ≠ 0 | h2 : x ≠ 0 | h3 : 2 / (x ^ 4 * rexp x ^ 2 * log x ^ 2 + 2 * x ^ 3 * rexp x * log x + x ^ 2) ≠ 0
- `hebisch_hebisch_hebisch_2090` — failed: unsolved goals | x : ℝ | h1 : 4 * x ^ 3 * rexp (x + log x) - 20 * x ≠ 0 | h2 : x ≠ 0 | h3 : (0 - 5) / x ^ 3 + rexp x ≠ 0
- `hebisch_hebisch_hebisch_2121` — failed: unsolved goals | x : ℝ | h2 : x ≠ 0 | h3 : 7 ≠ 0 | h4 : x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_2129` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2141` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2161` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2163` — failed: Type mismatch: After simplification, term | h9 | has type | ((0 - log 2) * log 5 - log 5 - log x) / (1 + log 2) + log (5 + x) ≠ 0 | but is expected to have type
- `hebisch_hebisch_hebisch_2195` — failed: unsolved goals | x : ℝ | h1 : 25 * x ^ 10 * rexp x ^ 2 - 20 * x ^ 5 * rexp x + 4 ≠ 0 | h2 : 5 ≠ 0 | h3 : x ^ 7 ≠ 0
- `hebisch_hebisch_hebisch_2220` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | 2 * rexp (12 + 3 * x - 12 * x ^ 2 - 3 * x ^ 3) * log x * log (log x) - | rexp (24 + 6 * x - 24 * x ^ 2 - 6 * x ^ 3) * log x -
- `hebisch_hebisch_hebisch_2248` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2282` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : x ≠ 0 | hq_h1_h2 : x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_2331` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2347` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2364` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2397` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2410` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2438` — failed: unsolved goals | x : ℝ | h1 : 12 * x ^ 6 - 180 * x ^ 5 + 900 * x ^ 4 - 1560 * x ^ 3 + 900 * x ^ 2 - 4500 * x + 7500 ≠ 0 | h2 : (0 - x ^ 3 + 5) / x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_2482` — failed: unsolved goals | x : ℝ | h1 : | (2 * x ^ 7 - 3 * x ^ 6) * log x ^ 3 + | ((6 * x ^ 5 - 9 * x ^ 4) * log (1 / (2 * x - 3)) + (6 * x ^ 5 - 9 * x ^ 4) * rexp x +
- `hebisch_hebisch_hebisch_2483` — failed: unsolved goals | x : ℝ | h1 : rexp x ^ 2 * x ^ 3 - 2 * x ^ 2 ≠ 0 | h2 : (x * rexp x ^ 2 - 2) / rexp x ^ 2 ≠ 0 | h3 : rexp x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_2491` — failed: unsolved goals | x : ℝ | h1 : | (rexp x * x - x ^ 3 - x ^ 2 + 2 * x) * log x + ((0 - rexp x) * x + x ^ 3 + x ^ 2 - 2 * x) * rexp (3 * x) - | rexp x * x ^ 2 +
- `hebisch_hebisch_hebisch_2598` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : x ≠ 0 | hq_h1_h2 : x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_2743` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 * log 3 ^ 2 + 8 * x ^ 4 * log 3 + 16 * x ^ 6 ≠ 0 | h2 : 3 ≠ 0 | h3 : rexp 2 - 3 ≠ 0
- `hebisch_hebisch_hebisch_2806` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_2834` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => (0 - 3) / x - x - rexp ((4 * x + 4 * x ^ 2) / (0 - 3 + x + x ^ 2))) ?m.713 x | is not definitionally equal to target | HasDerivAt ((fun x => 0 - 3) / id - id) ((0 * x - (0 - 3) * 1) / x ^ 2 - 1) x
- `hebisch_hebisch_hebisch_2897` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_294` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_296` — failed: unsolved goals | x : ℝ | h2 : 3 ≠ 0 | h5 : log (1 - x) ≠ 0 | h6 : 1 - x ≠ 0
- `hebisch_hebisch_hebisch_3045` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3047` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3078` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_309` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3094` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3136` — failed: unsolved goals | x : ℝ | h1 : rexp x + 6 * x + 8 ≠ 0 | h2 : 8 + 6 * x + rexp x ≠ 0 | h : HasDerivAt (fun x => log (8 + 6 * x + rexp x)) ((8 + 6 * x + rexp x)⁻¹ * (0 + (0 * x + 6 * 1) + rexp x)) x
- `hebisch_hebisch_hebisch_3201` — failed: unsolved goals | x : ℝ | h1 : | (x + 1) * log (1 / 9 * (x ^ 2 + 2 * x + 1) / x ^ 4) ^ 2 + | (2 * x + 2) * rexp (5 * x ^ 2) * log (1 / 9 * (x ^ 2 + 2 * x + 1) / x ^ 4) +
- `hebisch_hebisch_hebisch_3206` — failed: unsolved goals | x : ℝ | h1 : | x ^ 2 * rexp 1 ^ 2 * rexp 3 * log (8 * rexp (1 / x) / x) ^ 2 + | 10 * x ^ 2 * rexp 1 * rexp 3 * log (8 * rexp (1 / x) / x) +
- `hebisch_hebisch_hebisch_3316` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3337` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_3530` — failed: unsolved goals | x : ℝ | h2 : log 2 ≠ 0 | h3 : 2 ≠ 0 | h4 : 1 / 625 ≠ 0
- `hebisch_hebisch_hebisch_3557` — failed: unsolved goals | x : ℝ | h : | HasDerivAt | (fun x =>
- `hebisch_hebisch_hebisch_3560` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3601` — failed: unsolved goals | x : ℝ | h1 : (x ^ 3 - 6 * x ^ 2 + 9 * x) * log x + x ^ 4 - 7 * x ^ 3 + 12 * x ^ 2 ≠ 0 | h2 : x ≠ 0 | h3 : (log x * (x - 3) + x ^ 2 - 4 * x) / (x - 3) ≠ 0
- `hebisch_hebisch_hebisch_361` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3669` — failed: Application type mismatch: The argument | HasDerivAt.div | (HasDerivAt.sub (hasDerivAt_const x 0) | (HasDerivAt.add (hasDerivAt_const x (0 - log 3)) (HasDerivAt.mul (hasDerivAt_const x 4) (hasDerivAt_log ?m.620)))) | (hasDerivAt_id x) ?m.633
- `hebisch_hebisch_hebisch_3702` — failed: unsolved goals | x : ℝ | h1 : log (x ^ 2) ^ 2 ≠ 0 | h2 : x ^ 2 ≠ 0 | h3 : 2 ≠ 0
- `hebisch_hebisch_hebisch_3710` — failed: unsolved goals | x : ℝ | h2 : x ≠ 0 | hp2_h2 : x ^ 2 ≠ 0 | hp2_h3 : 9 + x * 12 + x ^ 2 * 10 + x ^ 3 * 4 + x ^ 4 ≠ 0
- `hebisch_hebisch_hebisch_3856` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3868` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | 3 / 2 * x - 20 * x * rexp x / (log 3 + log (0 - 1 + 4 * x)) - 10 * x ^ 2 / (log 3 + log (0 - 1 + 4 * x)) - | 10 * rexp (2 * x) / (log 3 + log (0 - 1 + 4 * x)))
- `hebisch_hebisch_hebisch_3902` — failed: unsolved goals | x : ℝ | h2 : 2 ≠ 0 | h4 : log 2 ≠ 0 | h5 : x ≠ 0
- `hebisch_hebisch_hebisch_3921` — failed: unsolved goals | x : ℝ | h1 : x * rexp 5 - 2 * x ^ 2 + x ≠ 0 | h2 : 3 / 2 * x ≠ 0 | h3 : rexp 5 + 1 - 2 * x ≠ 0
- `hebisch_hebisch_hebisch_3966` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3976` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | hp2_h1 : x ^ 2 ≠ 0 | h :
- `hebisch_hebisch_hebisch_4004` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4050` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4068` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => x + (4 - 9 * x - 3 * x ^ 2) / (3 * x * (25 + log x))) ?m.566 x | is not definitionally equal to target | HasDerivAt (id + ((fun x => 4) - (fun x => 9) * id) / ((fun x => 3) * id * ((fun x => 25) + log))) | (1 +
- `hebisch_hebisch_hebisch_4071` — failed: unsolved goals | x : ℝ | h2 : 2 ≠ 0 | h4 : x ≠ 0 | h5 : 3 ≠ 0
- `hebisch_hebisch_hebisch_4206` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4240` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4478` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_4497` — failed: unsolved goals | x : ℝ | h1 : | (6 * rexp x ^ 2 + ((0 - 12) * x ^ 2 + 48 * x + 12) * rexp x + 6 * x ^ 4 - 48 * x ^ 3 + 84 * x ^ 2 + 48 * x + 6) * | log (2 * log 2) +
- `hebisch_hebisch_hebisch_4510` — failed: unsolved goals | x : ℝ | h2 : 5 ≠ 0 | h4 : x ≠ 0 | hp2_h1 : x ^ 2 - x ^ 3 * 4 + x ^ 4 * 6 - x ^ 5 * 4 + x ^ 6 ≠ 0
- `hebisch_hebisch_hebisch_4530` — failed: unsolved goals | x : ℝ | h1 : log x ^ 2 - 2 * x * rexp (1 / 5) * log x + x ^ 2 * rexp (1 / 5) ^ 2 ≠ 0 | h2 : x ≠ 0 | h3 : 0 - 1 + x * rexp (1 / 5) ≠ 0
- `hebisch_hebisch_hebisch_4548` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4624` — failed: unsolved goals | x : ℝ | h : | HasDerivAt | (fun x =>
- `hebisch_hebisch_hebisch_4678` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4685` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4688` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | hp2_h1 : x ^ 2 ≠ 0 | h : HasDerivAt (fun x => -(rexp (x * 2) * log x)) (-(log x * rexp (x * 2) * 2) - x⁻¹ * rexp (x * 2)) x
- `hebisch_hebisch_hebisch_47` — failed: unsolved goals | x : ℝ | h1 : rexp 1 ≠ 0 | h : | HasDerivAt
- `hebisch_hebisch_hebisch_4718` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_476` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4762` — failed: unsolved goals | x : ℝ | h1 : x ^ 3 ≠ 0 | h2 : x ^ 2 ≠ 0 | hq_h1_h2 : x ^ 5 ≠ 0
- `hebisch_hebisch_hebisch_4764` — failed: unsolved goals | x : ℝ | h1 : rexp x ^ 4 ≠ 0 | h2 : log 5 ^ 2 ≠ 0 | h3 : 5 ≠ 0
- `hebisch_hebisch_hebisch_4775` — failed: unsolved goals | x : ℝ | h : | HasDerivAt (fun x => -(rexp (-2) * log (-(rexp (-2) * x * 2) + rexp x) * 4)) | (-(rexp (-2) * rexp x * (-(x * rexp (-2) * 2) + rexp x)⁻¹ * 4) +
- `hebisch_hebisch_hebisch_4807` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4850` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4881` — failed: unsolved goals | x : ℝ | h1 : | (5 * rexp x + 10) * log (9 * rexp x + 18) * log (log (9 * rexp x + 18)) ^ 2 + | ((10 * x + 40) * rexp x + 20 * x + 80) * log (9 * rexp x + 18) * log (log (9 * rexp x + 18)) +
- `hebisch_hebisch_hebisch_4907` — failed: Type mismatch: After simplification, term | mul_ne_zero h4 h5 | has type | (4 + 4 * x * log 2 + x ^ 2 * log 2 ^ 2) * | (((0 - 30) * x * log 2 - 9 * x ^ 2 * log 2 - x ^ 2 * log 2 * log x - 25 * log 2) / (2 * x + x ^ 2 * log 2) +
- `hebisch_hebisch_hebisch_4942` — failed: unsolved goals | x : ℝ | h2 : x ^ 2 ≠ 0 | h3 : x ≠ 0 | hq_h2_h3 : x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_4943` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4970` — failed: unsolved goals | x : ℝ | h2 : x ≠ 0 | hq_h2_h4 : x * rexp (-3) + x * rexp x ≠ 0 | hp2_h2 : x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_4992` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | x ^ 2 + | (25 * x ^ 2 - 10 * x ^ 3 - 20 * x ^ 2 * log 3 + 4 * x ^ 2 * log 3 * log (1 + 3 * x + x ^ 2) +
- `hebisch_hebisch_hebisch_4997` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (0 - 45 - 10 * x - 40 * x * rexp 3 - 25 * x * rexp 6 - 150 * rexp 3 - 125 * rexp 6) / | (15 + 8 * x + x ^ 2 + 15 * x * rexp 3 + 5 * x * rexp 6 + x ^ 2 * rexp 3 + 40 * rexp 3 + 25 * rexp 6) -
- `hebisch_hebisch_hebisch_5013` — failed: unsolved goals | x : ℝ | h1 : rexp (rexp x) ≠ 0 | h2 : x ≠ 0 | hq_h1_h2 : x * rexp (rexp x) ≠ 0
- `hebisch_hebisch_hebisch_5072` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5102` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => 16 * x + 8 * x ^ 2 + (0 - 1044 - 2088 * x - 1044 * x ^ 2) / (5 * (261 / 10 + log x))) ?m.656 x | is not definitionally equal to target | HasDerivAt | ((fun x => 16) * id + (fun x => 8) * id ^ 2 +
- `hebisch_hebisch_hebisch_5154` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_516` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5192` — failed: unsolved goals | x : ℝ | h1 : rexp x * x ^ 2 + x ^ 3 ≠ 0 | h2 : x ≠ 0 | h3 : x + rexp x ≠ 0
- `hebisch_hebisch_hebisch_5281` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5299` — failed: unsolved goals | x : ℝ | h1 : rexp x ≠ 0 | h : | HasDerivAt (fun x => x + rexp (x * rexp (-x)) * 3)
- `hebisch_hebisch_hebisch_532` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5337` — failed: Application type mismatch: The argument | Real.hasDerivAt_exp ((4 - 117 * x - 154 * x ^ 2) / (11 * x + 11 * x ^ 2)) | has type | HasDerivAt rexp (rexp ((4 - 117 * x - 154 * x ^ 2) / (11 * x + 11 * x ^ 2))) | ((4 - 117 * x - 154 * x ^ 2) / (11 * x + 11 * x ^ 2))
- `hebisch_hebisch_hebisch_5511` — failed: unsolved goals | x : ℝ | h2 : 5 ≠ 0 | h5 : log 5 ≠ 0 | hp2_h2 : 25 ≠ 0
- `hebisch_hebisch_hebisch_5515` — failed: unsolved goals | x : ℝ | h1 : log 2 ≠ 0 | h2 : 2 ≠ 0 | h3 : rexp 3 ≠ 0
- `hebisch_hebisch_hebisch_5553` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5554` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_556` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5573` — failed: unsolved goals | x : ℝ | h1 : 5 * x ^ 2 * log x ^ 2 + 2 * x ≠ 0 | h2 : x ≠ 0 | h3 : 2 / (5 * x) + log x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_5599` — failed: Application type mismatch: The argument | HasDerivAt.div | (HasDerivAt.mul | (HasDerivAt.comp x (Real.hasDerivAt_exp (0 - x)) (HasDerivAt.sub (hasDerivAt_const x 0) (hasDerivAt_id x))) | (hasDerivAt_const x (log 2)))
- `hebisch_hebisch_hebisch_5612` — failed: unsolved goals | x : ℝ | h1 : (400 * x - 1600) * rexp x ^ 2 + ((0 - 120) * x + 480) * rexp x + 9 * x - 36 ≠ 0 | h2 : 0 - x + 4 ≠ 0 | h3 : 20 * rexp x - 3 ≠ 0
- `hebisch_hebisch_hebisch_5638` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5736` — failed: Application type mismatch: The argument | HasDerivAt.sub | (HasDerivAt.add | (HasDerivAt.add (hasDerivAt_const x 9) | (HasDerivAt.div (hasDerivAt_const x 49)
- `hebisch_hebisch_hebisch_5771` — failed: unsolved goals | x : ℝ | h3 : x ≠ 0 | h4 : 3 + x ≠ 0 | hp2_h1 : 81 + x * 54 + x ^ 2 * 9 ≠ 0
- `hebisch_hebisch_hebisch_5819` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5994` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_602` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6060` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_6092` — failed: unsolved goals | x : ℝ | h1 : rexp 2 * x - 3 * x ^ 2 - x ≠ 0 | h2 : x ≠ 0 | h3 : 0 - 1 + rexp 2 ≠ 0
- `hebisch_hebisch_hebisch_6095` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6167` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6237` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6298` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | 36 * x ^ 2 + (9 - 36 * x ^ 2 - 36 * x ^ 3) / (x ^ 2 + 2 * x ^ 3 + x ^ 4) + | (18 - 36 * x ^ 2 - 36 * x ^ 3) * rexp x / (x + x ^ 2) +
- `hebisch_hebisch_hebisch_6371` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6372` — failed: unsolved goals | x : ℝ | h1 : 2 * x ^ 4 + 4 * x ^ 3 ≠ 0 | h2 : (2 + x) / x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_6450` — failed: unsolved goals | x : ℝ | h1 : (5 + x) * rexp x + 5 + x ≠ 0 | h2 : 3 * rexp x + 3 ≠ 0 | h3 : x + log (5 + x) + log (log 3 + log (1 + rexp x)) ≠ 0
- `hebisch_hebisch_hebisch_6471` — failed: unsolved goals | x : ℝ | hp2_h2 : 25 - x * 10 - x ^ 2 * 39 + x ^ 3 * 8 + x ^ 4 * 16 ≠ 0 | h : | HasDerivAt (fun x => -(rexp (rexp (-4 + x * 2)) * (-5 + x + x ^ 2 * 4)⁻¹))
- `hebisch_hebisch_hebisch_6486` — failed: unsolved goals | x : ℝ | h : | HasDerivAt (fun x => rexp (x * 2) - rexp (x * 3) * 32 + rexp (x * 6)) | (-(rexp (x * 3) * 96) + rexp (x * 2) * 2 + rexp (x * 6) * 6) x
- `hebisch_hebisch_hebisch_649` — failed: unsolved goals | x : ℝ | h : HasDerivAt (fun x => rexp 6 * x * 2) (rexp 6 * 2) x | hs : sin x ^ 2 + cos x ^ 2 = 1 | ⊢ rexp 3 ^ 2 = rexp 6
- `hebisch_hebisch_hebisch_6548` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6562` — failed: unsolved goals | x : ℝ | h1 : 6 * x - 12 ≠ 0 | h2 : 1 / 5 * (x - 2) / x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_6612` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6635` — failed: unsolved goals | x : ℝ | h1 : log (rexp (3 / x) + x) ^ 2 ≠ 0 | h2 : rexp (3 / x) + x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_6671` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | h3 : 2 ≠ 0 | h4 : 3 ≠ 0
- `hebisch_hebisch_hebisch_6692` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => log (2 + x) / log 3 - 2 * rexp (1 + 5 / x) - log x) ?m.436 x | is not definitionally equal to target | HasDerivAt ((log ∘ ((fun x => 2) + id) / fun x => log 3) - (fun x => 2) * rexp ∘ ((fun x => 1) + (fun x => 5) / id)) | (((2 + x)⁻¹ * (0 + 1) * log 3 - log (2 + x) * 0) / log 3 ^ 2 -
- `hebisch_hebisch_hebisch_6744` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6807` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6835` — failed: unsolved goals | x : ℝ | h1 : x * rexp 8 * log (4 / x) - x ≠ 0 | h2 : 4 / x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_6855` — failed: Type mismatch: After simplification, term | mul_ne_zero h3 h4 | has type | (0 - 128 - 32 * x + 8 * x ^ 2 + 2 * x ^ 3) * ((0 - 5 - 4 * x - x ^ 2) / (4 + x) + log x) ≠ 0 | but is expected to have type
- `hebisch_hebisch_hebisch_688` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6891` — failed: unsolved goals | x : ℝ | h1 : log x ^ 3 ≠ 0 | h2 : x ≠ 0 | h3 : rexp 2 ≠ 0
- `hebisch_hebisch_hebisch_69` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | hp2_h1 : x ^ 2 ≠ 0 | h :
- `hebisch_hebisch_hebisch_6995` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7165` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_7254` — failed: unsolved goals | x : ℝ | h3 : 1 + x ≠ 0 | hp2_h1 : 625 + x * 1250 + x ^ 2 * 625 ≠ 0 | hp2_h2 hp2_h3 hq_h2_h3 : 1 + x * 2 + x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_7343` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => 12 / x ^ 2 - 2 * log x - 2 * log (1 - 9 / x + x + log x)) ?m.517 x | is not definitionally equal to target | HasDerivAt ((fun x => 12) / id ^ 2 - (fun x => 2) * log) | ((0 * x ^ 2 - 12 * (↑2 * x ^ (2 - 1) * 1)) / (x ^ 2) ^ 2 - (0 * log x + 2 * x⁻¹)) x
- `hebisch_hebisch_hebisch_7348` — failed: Type mismatch: After simplification, term | mul_ne_zero h2 h3 | has type | (2 + x) * ((0 - 30 - 6 * x - 2 * x ^ 2 - 4 * x ^ 3) / (6 * x + 3 * x ^ 2) + rexp x) ≠ 0 | but is expected to have type
- `hebisch_hebisch_hebisch_7372` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7381` — failed: unsolved goals | x : ℝ | h1 : x ^ 3 ≠ 0 | h2 : x ^ 2 ≠ 0 | hq_h1_h2 : x ^ 5 ≠ 0
- `hebisch_hebisch_hebisch_7462` — failed: unsolved goals | x : ℝ | h1 : rexp x * x - x ^ 3 + x ^ 2 + 2 * x ≠ 0 | h2 : x ≠ 0 | h3 : 2 + x - x ^ 2 + rexp x ≠ 0
- `hebisch_hebisch_hebisch_7483` — failed: unsolved goals | x : ℝ | h1 : 8 * rexp x * x - 8 * x ^ 2 - 9 * x + 8 ≠ 0 | h2 : 4 * rexp x * x - 4 * x ^ 2 - 9 / 2 * x + 4 ≠ 0 | h3 : 2 ≠ 0
- `hebisch_hebisch_hebisch_7485` — failed: unsolved goals | x : ℝ | h2 : 1 + x ≠ 0 | hp2_h1 : 1 + x * 4 + x ^ 2 * 6 + x ^ 3 * 4 + x ^ 4 ≠ 0 | hp2_h2 : 1 + x * 2 + x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_7494` — failed: unsolved goals | x : ℝ | h2 : 5 ≠ 0 | h4 : 2 ≠ 0 | hq_h2_h4 : 10 ≠ 0
- `hebisch_hebisch_hebisch_7497` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7499` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7617` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7673` — failed: unsolved goals | x : ℝ | h : HasDerivAt (fun x => x * rexp (-(x * 2))) (-(x * rexp (-(x * 2)) * 2) + rexp (-(x * 2))) x | hs : sin x ^ 2 + cos x ^ 2 = 1 | ⊢ -(x * rexp (-(x * 3)) * rexp x * 2) + rexp (-(x * 3)) * rexp x = -(x * rexp (-(x * 2)) * 2) + rexp (-(x * 2))
- `hebisch_hebisch_hebisch_7697` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | 0 - x ^ 2 + x * log x + ((0 - x) * rexp x * log x + x ^ 2 * rexp x) * log (log x) + | (0 - x ^ 2 + 2 * x * log x ^ 2 + x ^ 2 * log 5 + (x - 2 * x ^ 2 - x * log 5) * log x) * rexp x)
- `hebisch_hebisch_hebisch_7725` — failed: unsolved goals | x : ℝ | h1 : 2 * rexp x * x - 2 * x ^ 5 + 160 * x ^ 2 ≠ 0 | h2 : 1 / 5 * (rexp x - x ^ 4 + 80 * x) / x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_7882` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_789` — failed: unsolved goals | x : ℝ | h2 : x ≠ 0 | h3 : 5 - x + log x ≠ 0 | hp2_h2 : x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_7913` — failed: unsolved goals | x : ℝ | h1 : x * log 24 ^ 2 - 2 * x ^ 2 * log 24 + x ^ 3 ≠ 0 | h2 : 24 ≠ 0 | h3 : 3 / x ≠ 0
- `hebisch_hebisch_hebisch_7991` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8083` — failed: unsolved goals | x : ℝ | h1 : (rexp x * x + 11 * x) * log x ^ 2 - 2 * x * log x ≠ 0 | h2 : x ≠ 0 | h3 : 11 + rexp x - 2 / log x ≠ 0
- `hebisch_hebisch_hebisch_8091` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | 1 / (25 * x ^ 2) + | ((2 - 2 * x) * log x / (625 * x ^ 2) + (31249 - 28748 * x - 2451 * x ^ 2 - 50 * x ^ 3) / (15625 * x ^ 2)) /
- `hebisch_hebisch_hebisch_8146` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8227` — failed: unsolved goals | x : ℝ | h2 : x ≠ 0 | hp2_h2 : x ^ 2 ≠ 0 | hp2_h3 : 81 - x * 54 + x ^ 2 * 9 ≠ 0
- `hebisch_hebisch_hebisch_8236` — failed: unsolved goals | x : ℝ | h4 : x ≠ 0 | hp2_h4 : x ^ 2 ≠ 0 | hp2_h5 : 49 - x * 56 + x ^ 2 * 16 ≠ 0
- `hebisch_hebisch_hebisch_8285` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8337` — failed: unsolved goals | x : ℝ | h1 : rexp 3 - 2 ≠ 0 | h2 : 0 - 2 + rexp 3 ≠ 0 | h : HasDerivAt (fun x => x / (0 - 2 + rexp 3)) ((1 * (0 - 2 + rexp 3) - x * 0) / (0 - 2 + rexp 3) ^ 2) x
- `hebisch_hebisch_hebisch_8353` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8360` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8403` — failed: unsolved goals | x : ℝ | h2 : x ≠ 0 | h4 : 3 + x ≠ 0 | h5 : 1 + log x ≠ 0
- `hebisch_hebisch_hebisch_8448` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_847` — failed: unsolved goals | x : ℝ | h2 : 3 ≠ 0 | h3 : x ≠ 0 | h4 : 2 ≠ 0
- `hebisch_hebisch_hebisch_8472` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 - 16 * x ≠ 0 | h2 : 16 ≠ 0 | h3 : log ((16 - x) / (4 * x)) ≠ 0
- `hebisch_hebisch_hebisch_8522` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8619` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8819` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8860` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8867` — failed: Type mismatch: After simplification, term | h5 | has type | 5 - x - log (log x) ≠ 0 | but is expected to have type
- `hebisch_hebisch_hebisch_8907` — failed: unsolved goals | x : ℝ | h1 : 65536 * rexp 3 - 65536 * x + 65536 ≠ 0 | h2 : rexp 3 - x + 1 ≠ 0 | h3 : 1 - x + rexp 3 ≠ 0
- `hebisch_hebisch_hebisch_8911` — failed: unsolved goals | x : ℝ | h2 : 2 ≠ 0 | h4 : x ≠ 0 | hp2_h1 : x ^ 2 * 81 - x ^ 3 * 108 + x ^ 4 * 54 - x ^ 5 * 12 + x ^ 6 ≠ 0
- `hebisch_hebisch_hebisch_8914` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => 5 / (2 * x) - 8 * rexp (3 * x) - rexp (6 * x)) ?m.336 x | is not definitionally equal to target | HasDerivAt ((fun x => 5) / ((fun x => 2) * id) - (fun x => 8) * rexp ∘ HMul.hMul 3) | ((0 * (2 * x) - 5 * (0 * x + 2 * 1)) / (2 * x) ^ 2 - (0 * rexp (3 * x) + 8 * (rexp (3 * x) * (0 * x + 3 * 1)))) x
- `hebisch_hebisch_hebisch_8915` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8958` — failed: unsolved goals | x : ℝ | h1 : rexp 5 ^ 2 ≠ 0 | h : | HasDerivAt
- `hebisch_hebisch_hebisch_898` — failed: unsolved goals | x : ℝ | h1 : | ((x ^ 6 - 2 * x ^ 5 + x ^ 4) * rexp x + x ^ 7 - 7 * x ^ 6 + 11 * x ^ 5 - 5 * x ^ 4) * log (rexp x + x - 5) ^ 2 * | rexp (((0 - 2) * x ^ 2 + 2 * x) / log (rexp x + x - 5)) ^ 2 +
- `hebisch_hebisch_hebisch_9038` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9098` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9105` — failed: unsolved goals | x : ℝ | h1 : x * rexp (log (x ^ 2 / rexp x) + x) - x ≠ 0 | h2 : x ^ 2 / rexp x ≠ 0 | h3 : rexp x ≠ 0
- `hebisch_hebisch_hebisch_914` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9193` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9209` — failed: unsolved goals | x : ℝ | h1 : rexp 4 + 3 + x ≠ 0 | h2 : 5 ≠ 0 | h3 : 3 + x + rexp 4 ≠ 0
- `hebisch_hebisch_hebisch_921` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9289` — failed: unsolved goals | x : ℝ | h1 : x ^ 4 ≠ 0 | h2 : x ^ 3 ≠ 0 | h3 : 3 ≠ 0
- `hebisch_hebisch_hebisch_9296` — failed: unsolved goals | x : ℝ | h1 : | (27 * x ^ 2 - 2 * x) * log (((0 - 27) * x + 2) / x) * log (log (((0 - 27) * x + 2) / x)) + | ((0 - 108) * x ^ 2 + 8 * x) * log (((0 - 27) * x + 2) / x) ≠
- `hebisch_hebisch_hebisch_9386` — failed: unsolved goals | x : ℝ | h1 : x ^ 5 ≠ 0 | h2 : x ≠ 0 | h3 : x ^ 4 ≠ 0
- `hebisch_hebisch_hebisch_9389` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9391` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9446` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9491` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9502` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9528` — failed: Application type mismatch: The argument | HasDerivAt.div | (HasDerivAt.sub (HasDerivAt.add (hasDerivAt_const x 15) (HasDerivAt.mul (hasDerivAt_const x 3) (hasDerivAt_id x))) | (HasDerivAt.mul (hasDerivAt_const x 3) | (HasDerivAt.comp x (hasDerivAt_log ?m.752)
- `hebisch_hebisch_hebisch_9542` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | 1 / 10 * | (10 * x ^ 2 +
- `hebisch_hebisch_hebisch_9573` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9735` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9882` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9929` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_9931` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_9934` — failed: Application type mismatch: The argument | HasDerivAt.div (HasDerivAt.comp x ?m.593 (HasDerivAt.sub (hasDerivAt_const x 0) (HasDerivAt.pow (hasDerivAt_id x) 5))) | (hasDerivAt_id x) ?m.635 | has type | HasDerivAt (?m.590 ∘ ((fun x => 0) - id ^ 5) / id)
- `hebisch_hebisch_hebisch_9966` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9982` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_apostol_problems_149` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_hearn_problems_118` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h1 : 1 - cos x ≠ 0 | h2 : sin x ≠ 0
- `independent_independent_hearn_problems_180` — failed: unsolved goals | x a b : ℝ | h1 : x ^ 2 ≠ 0 | h2 : 0 < a + b * x | h3 : a ^ (1 / 2) ≠ 0
- `independent_independent_hearn_problems_206` — failed: Type mismatch: After simplification, term | mul_ne_zero (mul_ne_zero h5 h4) h2 | has type | 2 * alpha * (0 - alpha ^ 2 + 2 * h * r ^ 2 - 2 * k * r) ^ (1 / 2) ≠ 0 | but is expected to have type
- `independent_independent_hearn_problems_236` — failed: unsolved goals | x : ℝ | h : | HasDerivAt (fun x => -(cos (π * (1 / 2) + x) * ((1 + sin (π * (1 / 2) + x)) ^ (1 / 2))⁻¹ * 2)) | (cos (π * (1 / 2) + x) ^ 2 * (1 + sin (π * (1 / 2) + x)) ^ (-1 / 2) *
- `independent_independent_hearn_problems_267` — failed: `simp` made no progress
- `independent_independent_jeffrey_problems_3` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_stewart_problems_107` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h : HasDerivAt (fun x => sin x * (1 / 2) + sin (x * 7) * (1 / 14)) (cos x * (1 / 2) + cos (x * 7) * (1 / 2)) x | hs : sin x ^ 2 + cos x ^ 2 = 1
- `independent_independent_stewart_problems_110` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h : | HasDerivAt
- `independent_independent_stewart_problems_124` — failed: `simp` made no progress
- `independent_independent_stewart_problems_202` — failed: unsolved goals | x : ℝ | h2 : 0 < 3 | h3 : 1 + x + x ^ 2 ≠ 0 | hp2_h1 : 1 - x ^ 3 * 2 + x ^ 6 ≠ 0
- `independent_independent_stewart_problems_318` — failed: Application type mismatch: The argument | hasDerivAt_rpow_const (Or.inl (ne_of_gt h2)) | has type | HasDerivAt (fun x => x ^ (1 / 6)) (1 / 6 * t ^ (1 / 6 - 1)) t | but is expected to have type
- `independent_independent_timofeev_problems_13` — failed: unsolved goals | x a b : ℝ | h1 : a ^ 2 + b ^ 2 * sin x ^ 2 ≠ 0 | h2 : b ^ 2 ≠ 0 | h3 :
- `independent_independent_timofeev_problems_443` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_timofeev_problems_502` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h2 : 1 + sin x ≠ 0 | hq_h1_h2 : 1 + sin x * 2 + sin x ^ 2 ≠ 0
- `independent_independent_timofeev_problems_90` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_welz_problems_54` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `mit_bee_mit_bee_mit_bee_191` — failed: unsolved goals | x : ℝ | h1 : x + x ^ 2 * log x ≠ 0 | h2 : x ≠ 0 | h3 : 1 / x + log x ≠ 0
- `mit_bee_mit_bee_mit_bee_213` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | h3 : 2 ≠ 0 | h4 : log x ≠ 0
- `mit_bee_mit_bee_mit_bee_307` — failed: `simp` made no progress
- `mit_bee_mit_bee_mit_bee_47` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `mit_bee_mit_bee_mit_bee_84` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h : | HasDerivAt (fun x => x * (1 / 8) + cos (x * 2) * sin (x * 2) * (-1 / 16))
- `mit_bee_official_mit_bee_official_mit_bee_official_110` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `mit_bee_official_mit_bee_official_mit_bee_official_134` — failed: unsolved goals | x : ℝ | h1 : 1 - rexp x ≠ 0 | h2 : 0 - 1 + rexp x ≠ 0 | h :
- `mit_bee_official_mit_bee_official_mit_bee_official_168` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `mit_bee_official_mit_bee_official_mit_bee_official_206` — failed: `simp` made no progress
- `mit_bee_official_mit_bee_official_mit_bee_official_267` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h : HasDerivAt (fun x => π * (-1 / 16)) 0 x | hs : sin x ^ 2 + cos x ^ 2 = 1
- `mit_bee_official_mit_bee_official_mit_bee_official_319` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `mit_bee_official_mit_bee_official_mit_bee_official_47` — failed: unsolved goals | x : ℝ | h2 : 2 ≠ 0 | hp2_h2 : 4 ≠ 0 | hq_h1_h2 : 2 + x * 8 + x ^ 2 * 12 + x ^ 3 * 8 + x ^ 4 * 2 ≠ 0
- `mit_bee_official_mit_bee_official_mit_bee_official_84` — failed: linarith failed to find a contradiction | case h2 | x : ℝ | h : HasDerivAt (fun x => π * (1 / 8)) 0 x | hs : sin x ^ 2 + cos x ^ 2 = 1
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1017` — failed: unsolved goals | x a b c : ℝ | h2 : c ^ 2 ≠ 0 | hp2_h2 : c ^ 4 ≠ 0 | hq_h1_h2 : a * b * x * c ^ 4 * 2 + a ^ 2 * c ^ 4 + b ^ 2 * x ^ 2 * c ^ 4 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1020` — failed: unsolved goals | x a b c : ℝ | h2 : c ^ 5 ≠ 0 | hp2_h2 : c ^ 10 ≠ 0 | hq_h1_h2 :
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1059` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_115` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_116` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_119` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (0 - a) * b ^ 6 / x ^ 7 - 21 * a ^ 2 * b ^ 5 / (8 * x ^ 8) - 35 * a ^ 3 * b ^ 4 / (9 * x ^ 9) - | 7 * a ^ 4 * b ^ 3 / (2 * x ^ 10) -
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1353` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_141` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1412` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1422` — failed: unsolved goals | x a b c d : ℝ | h1 : (c + d * x) ^ (3 / 2) ≠ 0 | h2 : 0 < c + d * x | h3 : 7 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1435` — failed: unsolved goals | x a b c d : ℝ | h1 : (c + d * x) ^ (5 / 2) ≠ 0 | h2 : 0 < c + d * x | h3 : d ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_177` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_430` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_476` — failed: unsolved goals | x a b : ℝ | h1 : (0 - a + b * x) ^ 2 ≠ 0 | h2 : 0 < x | h3 : a ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1016` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1144` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1214` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1239` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1379` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1478` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1805` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (50000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2275` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2327` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2428` — failed: unsolved goals | x : ℝ | h1 : (5 * x + 3) ^ (5 / 2) ≠ 0 | h2 : 0 < 5 * x + 3 | h3 : 0 < 1 - 2 * x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2469` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2474` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2508` — failed: unsolved goals | x : ℝ | h1 : (1 - 2 * x) ^ (3 / 2) ≠ 0 | h2 : 0 < 1 - 2 * x | h3 : 0 < 5 * x + 3
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_468` — failed: unsolved goals | x A B a b : ℝ | h1 : x ^ (5 / 2) ≠ 0 | h2 : 0 < x | h3 : 0 < a + b * x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_510` — failed: unsolved goals | x A B a b : ℝ | h1 : (a + b * x) ^ (3 / 2) ≠ 0 | h2 : 0 < a + b * x | h3 : 0 < x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_514` — failed: unsolved goals | x A B a b : ℝ | h1 : x ^ (1 / 2) ≠ 0 | h2 : (a + b * x) ^ (3 / 2) ≠ 0 | h3 : 0 < x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_630` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_4_1` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_2_277` — failed: unsolved goals | x a b : ℝ | h1 : x ^ (5 / 2) ≠ 0 | h2 : 0 < x | h3 : 3 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_2_320` — failed: unsolved goals | x : ℝ | h1 : (x ^ 2 + 1) ^ 2 ≠ 0 | h2 : 0 < x | h3 : 0 < 2
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_3_41` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (50000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_3_88` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_148` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_199` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_52` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (0 - A) * a ^ 5 / (20 * x ^ 20) - B * b ^ 5 / (8 * x ^ 8) - (5 * A * a ^ 4 * b + B * a ^ 5) / (18 * x ^ 18) - | (10 * A * a ^ 3 * b ^ 2 + 5 * B * a ^ 4 * b) / (16 * x ^ 16) -
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_606` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_610` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_62` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_66` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_7` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_8_164` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_8_77` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_8_89` — failed: unsolved goals | x A B C D a b : ℝ | h1 : a + b * x ^ 2 ≠ 0 | h2 : 2 ≠ 0 | h3 : b ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1041` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1166` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1262` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1314` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1511` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1552` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1615` — failed: unsolved goals | x a b : ℝ | h1 : x ^ (3 / 2) ≠ 0 | h2 : 0 < x | h3 : x ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1711` — failed: unsolved goals | x a b : ℝ | h1 : x ^ 3 ≠ 0 | h2 : (a + b / x) ^ (5 / 2) ≠ 0 | h3 : x ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1762` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1870` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_2001` — failed: unsolved goals | x a b : ℝ | h1 : (a + b / x ^ 3) ^ (3 / 2) ≠ 0 | h2 : x ^ 3 ≠ 0 | h3 : 0 < a + b / x ^ 3
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_202` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_2104` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (0 - 3) * a * b ^ 2 / (4 * x ^ 4) - 2 * a ^ 2 * b / (3 * x ^ (9 / 2)) - a ^ 3 / (5 * x ^ 5) - | 2 * b ^ 3 / (7 * x ^ (7 / 2)))
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_2185` — failed: unsolved goals | x a b : ℝ | h1 : x ^ 2 ≠ 0 | h2 : (a + b * x ^ (1 / 2)) ^ 5 ≠ 0 | h3 : 0 < x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_2351` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_417` — failed: unsolved goals | x a b : ℝ | h1 : (a + b * x ^ 3) ^ (3 / 2) ≠ 0 | h2 : 0 < a + b * x ^ 3 | h3 : 3 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_544` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_688` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_784` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_140` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_199` — failed: unsolved goals | x A B a b : ℝ | h1 : x ^ 4 ≠ 0 | h2 : 0 < a + b * x ^ 3 | h3 : a ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_631` — failed: unsolved goals | x a b c d : ℝ | h1 : a + b * x ^ 4 ≠ 0 | h2 : (c + d * x ^ 4) ^ (1 / 2) ≠ 0 | h3 : 0 < c + d * x ^ 4
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_784` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_798` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_8_222` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_8_255` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_8_309` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_8_325` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_8_393` — failed: Application type mismatch: The argument | h | has type | HasDerivAt | ((((((((((((fun x => 1 / 4) * fun x => a ^ 3) * fun x => c) * id ^ 4 +
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_2_211` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_2_227` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_2_238` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_2_310` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_3_1` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_1_82` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1123` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1427` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1490` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_167` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_2114` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_2147` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_2204` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_2375` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_2379` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_280` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_285` — failed: unsolved goals | x b c : ℝ | h1 : 0 < b * x + c * x ^ 2 | h2 : 4 ≠ 0 | h3 : c ^ (3 / 2) ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_461` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_970` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_989` — failed: unsolved goals | x c d e1 : ℝ | h2 : c ^ 2 ≠ 0 | hp2_h2 : c ^ 4 ≠ 0 | hq_h1_h2 :
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_1207` — failed: unsolved goals | x A B b c d e1 : ℝ | h1 : (b * x + c * x ^ 2) ^ (5 / 2) ≠ 0 | h2 : 0 < b * x + c * x ^ 2 | h3 : 3 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_1302` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_22` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_2384` — failed: unsolved goals | x : ℝ | h2 : 1 + x ≠ 0 | h3 : 81 ≠ 0 | hp2_h2 : 1 + x * 2 + x ^ 2 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_2403` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_2405` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_2542` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_2558` — failed: Tactic `simp` failed with a nested error: | Tactic `simp` failed with a nested error: | maximum recursion depth has been reached | use `set_option maxRecDepth <num>` to increase limit | use `set_option diagnostics true` to get diagnostic information
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_46` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_553` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_594` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_674` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_700` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (a ^ 2 + 2 * a * b * x + b ^ 2 * x ^ 2) ^ (1 / 2) * | ((0 - A) * a ^ 5 * b ^ 5 / (11 * x ^ 11) - B * b ^ 10 / (5 * x ^ 5) -
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_888` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (50000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_904` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_919` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_959` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_965` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_4_222` — failed: unsolved goals | x a : ℝ | h1 : 0 < x | h2 : 0 < (0 - a) * x + 1 | h3 : 0 < 1 - a * x
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_4_55` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_4_728` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_5_1` — failed: unsolved goals | x a b d e1 f : ℝ | h1 : a + b * x + b * f * x ^ 2 / e1 ≠ 0 | h2 : (d + e1 * x + f * x ^ 2) ^ (1 / 2) ≠ 0 | h3 : e1 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_5_32` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_6_27` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (50000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_6_84` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_9_143` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_9_181` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_9_308` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_237` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_295` — failed: unsolved goals | x b c : ℝ | h1 : x ^ (7 / 2) ≠ 0 | h2 : 0 < x | h3 : x ^ (1 / 2) ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_458` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_659` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_765` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_899` — failed: unsolved goals | x a b : ℝ | h1 : a * x ^ 4 + 2 * a * x ^ 2 + a + b ≠ 0 | h2 : a ≠ 0 | h3 : 2 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_4_108` — failed: unsolved goals | x A B a b c : ℝ | h1 : a + b * x ^ 2 + c * x ^ 4 ≠ 0 | h2 : 2 ≠ 0 | h3 : c ^ (1 / 2) ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_4_140` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_6_83` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_2_275` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_2_392` — failed: unsolved goals | x : ℝ | h1 : x ^ 8 - 3 * x ^ 4 + 1 ≠ 0 | h2 : 0 < 5 | h3 : 0 < 0 - 1 / 40 + 1 / 40 * 5 ^ (1 / 2)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_2_406` — failed: unsolved goals | x a b c : ℝ | h1 : a / x ^ 2 + b / x + c ≠ 0 | h2 : x ^ 2 ≠ 0 | h3 : x ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_4_102` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_4_improper_t_1_2_4_2_131` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_4_improper_t_1_2_4_2_63` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_1_452` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_368` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_384` — failed: unsolved goals | x a b c d : ℝ | h3 : 3 ≠ 0 | h4 : b ≠ 0 | h5 : c ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_564` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_810` — failed: unsolved goals | x : ℝ | h1 : x ^ (1 / 2) + 1 ≠ 0 | h2 : 0 < x | h3 : 0 < 3
- `rubi_rubi_t_2_exponentials_t_2_1_58` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_2_exponentials_t_2_3_24` — failed: unsolved goals | x a b : ℝ | h1 : (a + b * rexp (2 * x)) ^ 4 ≠ 0 | h2 : 2 ≠ 0 | h3 : 3 * a * b ^ 4 * rexp (4 * x) + 3 * a ^ 2 * b ^ 3 * rexp (2 * x) + a ^ 3 * b ^ 2 + b ^ 5 * rexp (6 * x) ≠ 0
- `rubi_rubi_t_2_exponentials_t_2_3_546` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_3_logarithms_t_3_1_2_39` — failed: unsolved goals | x c : ℝ | h1 : x ≠ 0 | h4 : 2 ≠ 0 | hp2_h1 : x ^ 2 ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_1_2_524` — failed: unsolved goals | x a b c d : ℝ | h1 : (a + b * sin (c + d * x)) ^ (5 / 2) ≠ 0 | h2 : 0 < a + b * sin (c + d * x) | h3 : b ^ 5 ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_10_129` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_1_693` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_1069` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_1278` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_41` — failed: unsolved goals | x a c e1 f : ℝ | h1 : ((0 - c) * sin (e1 + f * x) + c) ^ (15 / 2) ≠ 0 | h2 : 0 < (0 - c) * sin (e1 + f * x) + c | h3 : 0 < a * sin (e1 + f * x) + a
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_717` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_949` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_3_1_116` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_3_1_158` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_3_1_160` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_3_1_22` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_3_1_223` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_7_428` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_10_2` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_10_24` — failed: linarith failed to find a contradiction | case h1 | x a b : ℝ | h1 : 16 ≠ 0 | h2 : b ^ 2 ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_2_1_44` — failed: linarith failed to find a contradiction | case h1 | x a c d : ℝ | h2 : a ≠ 0 | h3 : d ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_2_1_852` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_3_1_54` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_3_1_75` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_2_279` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_7_9` — failed: unsolved goals | x a b : ℝ | h1 : a + b * cos x ^ 2 ≠ 0 | h2 : a ^ (1 / 2) ≠ 0 | h3 : b ^ (7 / 2) ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_2_1_1238` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (50000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_2_1_435` — failed: unsolved goals | x a b c d : ℝ | h1 : cos (c + d * x) ≠ 0 | h2 : d ≠ 0 | h3 : cos (c + d * x) ^ 3 ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_3_1_380` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (50000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_3_1_381` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_7_271` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_1_153` — failed: linarith failed to find a contradiction | case h1 | x a b : ℝ | h1 : b ≠ 0 | hp2_h1 : b ^ 2 ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_2_260` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_2_274` — failed: unsolved goals | x a b : ℝ | h1 : a * cos x + b * sin x ≠ 0 | h2 : a ^ 2 + b ^ 2 ≠ 0 | h3 : 2 ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_7_223` — failed: linarith failed to find a contradiction | case h1 | x a b c d : ℝ | h1 : 2 ≠ 0 | h2 : d ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_7_653` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_7_805` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h : | HasDerivAt (fun x => x ^ 2 * (1 / 2) + sin x ^ 5 * 12 + sin x ^ 7 * (-120 / 7) + sin x ^ 9 * (20 / 3))
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_7_904` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_5_inverse_trig_functions_t_5_2_inverse_cosine_t_5_2_5_142` — failed: linarith failed to find a contradiction | case h1 | x a : ℝ | h2 : 2 ≠ 0 | h3 : a ^ 2 ≠ 0
- `rubi_rubi_t_5_inverse_trig_functions_t_5_3_inverse_tangent_t_5_3_7_116` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => x - arctan (rexp x) * rexp (0 - x) - 1 / 2 * log (1 + rexp (2 * x))) ?m.194 x | is not definitionally equal to target | HasDerivAt (id - arctan ∘ rexp * rexp ∘ HSub.hSub 0) | (1 - (1 / (1 + rexp x ^ 2) * rexp x * rexp (0 - x) + arctan (rexp x) * (rexp (0 - x) * (0 - 1)))) x
- `rubi_rubi_t_5_inverse_trig_functions_t_5_3_inverse_tangent_t_5_3_7_136` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_5_inverse_trig_functions_t_5_3_inverse_tangent_t_5_3_7_38` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_6_hyperbolic_functions_t_6_1_hyperbolic_sine_t_6_1_3_92` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_6_hyperbolic_functions_t_6_1_hyperbolic_sine_t_6_1_7_104` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_6_hyperbolic_functions_t_6_1_hyperbolic_sine_t_6_1_7_140` — failed: linarith failed to find a contradiction | case h1 | x a b c d : ℝ | h1 : 8 ≠ 0 | h2 : d ≠ 0
- `rubi_rubi_t_6_hyperbolic_functions_t_6_1_hyperbolic_sine_t_6_1_7_239` — failed: unsolved goals | x a b c d : ℝ | h1 : (a - b * sinh (c + d * x) ^ 4) ^ 2 ≠ 0 | h2 : d ≠ 0 | h3 : 2 ≠ 0
- `rubi_rubi_t_6_hyperbolic_functions_t_6_1_hyperbolic_sine_t_6_1_7_302` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_6_hyperbolic_functions_t_6_1_hyperbolic_sine_t_6_1_7_476` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_6_hyperbolic_functions_t_6_2_hyperbolic_cosine_t_6_2_5_155` — failed: linarith failed to find a contradiction | case h1 | x a : ℝ | h2 : 2 ≠ 0 | h3 : a ≠ 0
- `rubi_rubi_t_6_hyperbolic_functions_t_6_3_hyperbolic_tangent_t_6_3_1_42` — failed: unsolved goals | x a c d e1 f : ℝ | h1 : (a * (sinh (e1 + f * x) / cosh (e1 + f * x)) + a) ^ 3 ≠ 0 | h2 : cosh (e1 + f * x) ≠ 0 | h3 : a ^ 3 ≠ 0
- `rubi_rubi_t_6_hyperbolic_functions_t_6_3_hyperbolic_tangent_t_6_3_7_11` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_6_hyperbolic_functions_t_6_3_hyperbolic_tangent_t_6_3_7_32` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_6_hyperbolic_functions_t_6_7_miscellaneous_t_6_7_1_563` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_6_hyperbolic_functions_t_6_7_miscellaneous_t_6_7_1_939` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_1093` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_1104` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_1285` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_192` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_370` — failed: `simp` made no progress
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_371` — failed: unsolved goals | x : ℝ | h2 : 1 - x ≠ 0 | h3 : 1 + x ≠ 0 | h4 : 0 < 1 - x
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_545` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_847` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_86` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_893` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_926` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | log (0 - 1 + a * x) / (4 * a ^ 2) - log (1 + a * x) / (4 * a ^ 2) - a * x / (2 * (0 - a ^ 2 + a ^ 4 * x ^ 2)) - | 1 / (2 * (0 - a ^ 2 + a ^ 4 * x ^ 2)))
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_7_112` — failed: unsolved goals | x a b : ℝ | h1 : 0 < qedra_artanh (sinh (a + b * x) / cosh (a + b * x)) | h2 : 1 - sinh (a + b * x) / cosh (a + b * x) ≠ 0 | h3 : 1 + sinh (a + b * x) / cosh (a + b * x) ≠ 0
