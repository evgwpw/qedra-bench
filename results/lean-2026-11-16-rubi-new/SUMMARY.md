# Lean: 2026-11-16, снимок 8b9e8a4b339c63d3f96e36dd371943516aed88ca

- вход: `qedra_ref=master`, осколков 4, таймаут на пакет 900 с
- прогон: https://github.com/evgwpw/qedra-bench/actions/runs/43966994519
- всего теорем: 281
- генератор: `1a030340eb9f10bf48c33e0f57109172873a0d38`, ответов OK 500, выборка 500 (seed 1), пакетов по 20, тактов на теорему 200000/50000
| статус | теорем |
|---|---|
| passed | 1 |
| failed | 166 |
| failed-axioms | 0 |
| timeout | 89 |
| vacuous? | 0 |
| unknown | 25 |

| осколок | всего | passed | failed | failed-axioms | timeout | vacuous? | unknown |
|---|---|---|---|---|---|---|---|
| lean-1 | 80 | 1 | 49 | 0 | 25 | 0 | 5 |
| lean-2 | 80 | 0 | 41 | 0 | 29 | 0 | 10 |
| lean-3 | 80 | 0 | 47 | 0 | 24 | 0 | 9 |
| lean-4 | 41 | 0 | 29 | 0 | 11 | 0 | 1 |
## Пилот: по наборам

Всего ответов OK: 500 (из них не переведено генератором: 219); проценты — от проверенных.

| набор | проверено | passed | failed | failed-axioms | timeout | vacuous? | unknown | не переведено | passed, % |
|---|---|---|---|---|---|---|---|---|---|
| rubi | 281 | 1 | 166 | 0 | 89 | 0 | 25 | 219 | 0 |
| **всего** | **281** | **1** | **166** | **0** | **89** | **0** | **25** | **219** | **0** |

## Пилот: Rubi по подглавам

Всего ответов OK: 500 (из них не переведено генератором: 219); проценты — от проверенных.

| подглава | проверено | passed | failed | failed-axioms | timeout | vacuous? | unknown | не переведено | passed, % |
|---|---|---|---|---|---|---|---|---|---|
| (не переведено) | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 219 | 0 |
| t_1_1_1_3 | 29 | 0 | 17 | 0 | 10 | 0 | 2 | 0 | 0 |
| t_1_2_1_3 | 19 | 0 | 12 | 0 | 6 | 0 | 1 | 0 | 0 |
| t_1_1_3_2 | 18 | 0 | 13 | 0 | 3 | 0 | 2 | 0 | 0 |
| t_1_1_1_2 | 17 | 0 | 10 | 0 | 5 | 0 | 2 | 0 | 0 |
| t_1_2_1_2 | 15 | 0 | 6 | 0 | 6 | 0 | 3 | 0 | 0 |
| t_4_1_2_2 | 15 | 0 | 10 | 0 | 5 | 0 | 0 | 0 | 0 |
| t_7_3_6 | 14 | 0 | 9 | 0 | 5 | 0 | 0 | 0 | 0 |
| t_1_1_2_4 | 12 | 0 | 8 | 0 | 3 | 0 | 1 | 0 | 0 |
| t_1_2_2_2 | 10 | 0 | 7 | 0 | 3 | 0 | 0 | 0 | 0 |
| t_1_2_1_9 | 7 | 0 | 5 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_6_7_1 | 7 | 0 | 7 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_1_1_2_2 | 6 | 0 | 1 | 0 | 3 | 0 | 2 | 0 | 0 |
| t_1_3_1 | 6 | 0 | 2 | 0 | 0 | 0 | 4 | 0 | 0 |
| t_4_2_4_2 | 6 | 0 | 3 | 0 | 3 | 0 | 0 | 0 | 0 |
| t_1_2_1_4 | 5 | 0 | 4 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_2_3_2 | 5 | 0 | 2 | 0 | 3 | 0 | 0 | 0 | 0 |
| t_1_1_3_4 | 4 | 0 | 2 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_1_3_2 | 4 | 0 | 2 | 0 | 1 | 0 | 1 | 0 | 0 |
| t_4_1_2_1 | 4 | 0 | 2 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_1_1_2_3 | 3 | 0 | 3 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_1_0 | 3 | 0 | 3 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_1_3_1 | 3 | 0 | 1 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_4_1_7 | 3 | 0 | 3 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_2_2_1 | 3 | 0 | 0 | 0 | 3 | 0 | 0 | 0 | 0 |
| t_4_2_3_1 | 3 | 0 | 2 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_7_1 | 3 | 0 | 1 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_4_7_7 | 3 | 0 | 2 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_6_1_7 | 3 | 0 | 1 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_6_3_2 | 3 | 0 | 3 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_1_1_2_8 | 2 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_1_1_3_3 | 2 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_1_1_3_8 | 2 | 0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_1_4_2 | 2 | 0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_1_4_3 | 2 | 0 | 0 | 0 | 1 | 0 | 1 | 0 | 0 |
| t_1_2_1_6 | 2 | 0 | 0 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_1_2_2_3 | 2 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_1_2_2_6 | 2 | 0 | 0 | 0 | 1 | 0 | 1 | 0 | 0 |
| t_2_3 | 2 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_1_1_2 | 2 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_1_12 | 2 | 0 | 0 | 0 | 1 | 0 | 1 | 0 | 0 |
| t_4_3_7 | 2 | 0 | 0 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_5_3_4 | 2 | 0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_6_3_7 | 2 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_1_1_1_6 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_1_2_5 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| t_1_2_1_5 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_1_2_2_4 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| t_3_1_2 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_3_5 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 100 |
| t_4_1_1_3 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_1_10 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| t_4_2_0 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_2_12 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| t_4_5_1_2 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_5_2_1 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_5_4_2 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_6_0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_7_5 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_6_1_1 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_6_1_5 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_6_2_5 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_7_3_4 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_7_3_7 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| **всего** | **281** | **1** | **166** | **0** | **89** | **0** | **25** | **219** | **0** |

## Пилот: почему не переведено

| причина | ответов |
|---|---|
| символьный показатель степени | 66 |
| вещественная константа (не рациональная) | 23 |
| голова EllipticF | 15 |
| голова hypergeometric-2f1 | 15 |
| голова e1 | 14 |
| голова EllipticE | 14 |
| голова sec | 14 |
| голова root-sum | 11 |
| голова %i | 11 |
| голова appell-f1 | 6 |
| голова acoth | 5 |
| голова asinh | 4 |
| голова Si | 3 |
| голова asech | 3 |
| голова fresnel_s | 3 |
| голова sech | 2 |
| голова asec | 2 |
| голова csc | 2 |
| голова acsch | 1 |
| голова cot | 1 |
| голова erf | 1 |
| голова acsc | 1 |
| голова coth | 1 |
| голова lambert_w | 1 |

## Не passed

- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1034` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1259` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1419` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1469` — failed: unsolved goals | x a b c d : ℝ | h1 : 0 < a + b * x | h2 : 0 < c + d * x | h3 : 4 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1471` — failed: unsolved goals | x a b c d : ℝ | h1 : (a + b * x) ^ (1 / 2) ≠ 0 | h2 : 0 < a + b * x | h3 : 0 < c + d * x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1479` — failed: unsolved goals | x a b c d : ℝ | h1 : 0 < a + b * x | h2 : 0 < c + d * x | h3 : 5 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_159` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_240` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_282` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_493` — failed: unsolved goals | x a b : ℝ | h1 : x ^ (7 / 2) ≠ 0 | h2 : 0 < x | h3 : 0 < a + b * x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_515` — failed: unsolved goals | x b : ℝ | h1 : x ^ (3 / 2) ≠ 0 | h2 : 0 < x | h3 : 0 < (0 - b) * x + 2
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_570` — failed: Application type mismatch: The argument | h2 | has type | (a + b * x) ^ (1 / 2) ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_59` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => (0 - 2) * a * b / (3 * x ^ 3) - a ^ 2 / (4 * x ^ 4) - b ^ 2 / (2 * x ^ 2)) ?m.564 x | is not definitionally equal to target | HasDerivAt ((fun x => (0 - 2) * a * b) / ((fun x => 3) * id ^ 3) - (fun x => a ^ 2) / ((fun x => 4) * id ^ 4)) | ((0 * (3 * x ^ 3) - (0 - 2) * a * b * (0 * x ^ 3 + 3 * (↑3 * x ^ (3 - 1) * 1))) / (3 * x ^ 3) ^ 2 -
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_695` — failed: unsolved goals | x a b : ℝ | h1 : x ^ (5 / 3) ≠ 0 | h2 : (a + b * x) ^ 3 ≠ 0 | h3 : 0 < x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_795` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_805` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_907` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_114` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1146` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1211` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1326` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1349` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1417` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (0 - 24875 / 32) * x - 18987 / 32 * x ^ 2 - 3321 / 8 * x ^ 3 - 3051 / 16 * x ^ 4 - 81 / 2 * x ^ 5 - | 26411 / 64 * log (0 - 1 + 2 * x))
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1473` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1490` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1588` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1598` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1626` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1852` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1910` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1979` — failed: unsolved goals | x : ℝ | h : | HasDerivAt | (fun x =>
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2095` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2130` — failed: Application type mismatch: The argument | h6 | has type | 0 - 9 / 10 + 1 / 10 * 21 ^ (1 / 2) + (3 + (1 - 2 * x) ^ (1 / 2)) / (4 + x) ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2294` — failed: unsolved goals | x : ℝ | h1 : (3 * x + 2) ^ 3 ≠ 0 | h2 : (5 * x + 3) ^ (3 / 2) ≠ 0 | h3 : 0 < 5 * x + 3
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2300` — failed: unsolved goals | x : ℝ | h1 : (5 * x + 3) ^ (5 / 2) ≠ 0 | h2 : 0 < 5 * x + 3 | h3 : 0 < 1 - 2 * x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2423` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_471` — failed: unsolved goals | x A B a b : ℝ | h1 : x ^ (11 / 2) ≠ 0 | h2 : 0 < x | h3 : 0 < a + b * x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_488` — failed: Application type mismatch: The argument | h10 | has type | (a + b * x) ^ (1 / 2) ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_523` — failed: Application type mismatch: The argument | h13 | has type | (a + b * x) ^ (1 / 2) ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_531` — failed: unsolved goals | x a b c d : ℝ | h1 : 0 < a + b * x | h2 : 0 < c + d * x | h3 : 5 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_533` — failed: unsolved goals | x a b c d : ℝ | h1 : 0 < a + b * x | h2 : 0 < c + d * x | h3 : 3 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_635` — failed: unsolved goals | x a b c d : ℝ | h1 : x ^ 2 ≠ 0 | h2 : 0 < a + b * x | h3 : 0 < c + d * x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_772` — failed: unsolved goals | x a b c d : ℝ | h1 : (a + b * x) ^ (3 / 2) ≠ 0 | h2 : (c + d * x) ^ (5 / 2) ≠ 0 | h3 : 0 < a + b * x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_789` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | 2 * a * x ^ 4 / (3 * b * (a + b * x) ^ (3 / 2) * (c + d * x) ^ (3 / 2) * ((0 - a) * d + b * c)) - | 2 *
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_868` — failed: unsolved goals | x a b c d : ℝ | h1 : (c + d * x) ^ (1 / 4) ≠ 0 | h2 : 0 < c + d * x | h3 : 0 < a + b * x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_889` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_6_35` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_2_109` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_2_148` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_2_188` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_2_367` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_2_430` — failed: Application type mismatch: The argument | h8 | has type | (a + b * x ^ 2) ^ (1 / 2) ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_2_532` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_3_103` — failed: unsolved goals | x b c d : ℝ | h1 : (c + d * x ^ 2) ^ (1 / 2) ≠ 0 | h2 : b * c / d + b * x ^ 2 ≠ 0 | h3 : 0 < c + d * x ^ 2
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_3_46` — failed: Application type mismatch: The argument | h9 | has type | (a + b * x ^ 2) ^ (1 / 2) ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_3_80` — failed: Application type mismatch: The argument | h13 | has type | (a + b * x ^ 2) ^ (1 / 2) ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_1084` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_1094` — failed: Function expected at | e1 | but this term has type | ℝ
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_162` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_175` — failed: unsolved goals | x a b c d : ℝ | h1 : x ^ 4 ≠ 0 | h2 : c + d * x ^ 2 ≠ 0 | h3 : 3 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_286` — failed: Application type mismatch: The argument | HasDerivAt.pow (hasDerivAt_id x) 2 | has type | HasDerivAt (id ^ 2) (↑2 * id x ^ (2 - 1) * 1) x | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_293` — failed: Application type mismatch: The argument | HasDerivAt.pow (hasDerivAt_id x) 2 | has type | HasDerivAt (id ^ 2) (↑2 * id x ^ (2 - 1) * 1) x | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_590` — failed: unsolved goals | x A B a b : ℝ | h1 : (a + b * x ^ 2) ^ (5 / 2) ≠ 0 | h2 : 0 < a + b * x ^ 2 | h3 : 3 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_639` — failed: Application type mismatch: The argument | h1 | has type | (c + d * x ^ 2) ^ (1 / 2) ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_672` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_688` — failed: Application type mismatch: The argument | h11 | has type | (c + d * x ^ 2) ^ (1 / 2) ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_732` — failed: Application type mismatch: The argument | h12 | has type | (c + d * x ^ 2) ^ (1 / 2) ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_964` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_5_8` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_8_28` — failed: Application type mismatch: The argument | h12 | has type | (a + b * x ^ 2) ^ (1 / 2) ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_8_39` — failed: unsolved goals | x A B a b : ℝ | h1 : x ≠ 0 | h2 : (a + b * x ^ 2) ^ (5 / 2) ≠ 0 | h3 : 0 < a + b * x ^ 2
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_102` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1246` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1505` — failed: Application type mismatch: The argument | h3 | has type | (1 - x ^ 10) ^ (1 / 2) ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1626` — failed: unsolved goals | x a b : ℝ | h1 : x ^ (1 / 2) ≠ 0 | h2 : 0 < x | h3 : x ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1631` — failed: unsolved goals | x a b : ℝ | h1 : a + b / x ≠ 0 | h2 : x ≠ 0 | h3 : 0 < x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1667` — failed: unsolved goals | x a b : ℝ | h1 : x ≠ 0 | h2 : 0 < a + b / x | h3 : a ^ (1 / 2) ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1746` — failed: unsolved goals | x a b : ℝ | h1 : x ^ (3 / 2) ≠ 0 | h2 : (a + b / x) ^ (1 / 2) ≠ 0 | h3 : 0 < x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1776` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1792` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => (0 - a) * b / (3 * x ^ 6) - a ^ 2 / (4 * x ^ 4) - b ^ 2 / (8 * x ^ 8)) ?m.571 x | is not definitionally equal to target | HasDerivAt ((fun x => (0 - a) * b) / ((fun x => 3) * id ^ 6) - (fun x => a ^ 2) / ((fun x => 4) * id ^ 4)) | ((0 * (3 * x ^ 6) - (0 - a) * b * (0 * x ^ 6 + 3 * (↑6 * x ^ (6 - 1) * 1))) / (3 * x ^ 6) ^ 2 -
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1890` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_2163` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_2234` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_2314` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_25` — failed: unsolved goals | x b : ℝ | h1 : x ^ 2 ≠ 0 | h2 : 0 < b * x ^ 2 | h :
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_271` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_704` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_79` — failed: unsolved goals | x b : ℝ | h2 : x ≠ 0 | h : | HasDerivAt (fun x => x * (b * x⁻¹) ^ (1 / 2) * 2)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_830` — failed: Application type mismatch: The argument | h6 | has type | (b + a / x ^ 4) ^ (1 / 2) ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_3_20` — failed: unsolved goals | x a b c d : ℝ | h1 : (a + b * x ^ 3) ^ 2 ≠ 0 | h2 : b ^ 4 ≠ 0 | h3 : 3 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_3_264` — failed: unsolved goals | x a b c d : ℝ | h1 : (0 - c + d * x) ^ (3 / 2) ≠ 0 | h2 : (c + d * x) ^ (3 / 2) ≠ 0 | h3 : 0 < 0 - c + d * x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_140` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_150` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_40` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_445` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_8_30` — failed: unsolved goals | x C b : ℝ | h1 : b * x ^ 3 - 8 ≠ 0 | h2 : 0 < 0 - b | h3 : 3 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_8_562` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_2_331` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_2_336` — failed: unsolved goals | x a b : ℝ | h1 : a * x + b / x ≠ 0 | h2 : x ≠ 0 | h3 : 2 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_3_134` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_3_277` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1011` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1144` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1239` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_160` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_17` — failed: Application type mismatch: The argument | h6 | has type | (b * x + c * x ^ 2) ^ (1 / 2) ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1728` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_2047` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_2199` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_2315` — failed: Function expected at | e1 | but this term has type | ℝ
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_2316` — failed: Function expected at | e1 | but this term has type | ℝ
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_2383` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (0 - 1 / 4) * (2 - 2 * x) * (8 + 2 * x - x ^ 2) ^ (1 / 2) - 1 / 3 * (8 + 2 * x - x ^ 2) ^ (3 / 2) - | 9 / 2 * arcsin (1 / 6 * (2 - 2 * x)))
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_513` — failed: unsolved goals | x a c d e1 : ℝ | h1 : (a + c * x ^ 2) ^ 3 ≠ 0 | h2 : 4 ≠ 0 | h3 : a ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_76` — failed: unsolved goals | x b c : ℝ | h1 : x ^ (3 / 2) ≠ 0 | h2 : 0 < x | h3 : 0 < b * x + c * x ^ 2
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_782` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_877` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_126` — failed: unsolved goals | x A B b c : ℝ | h1 : x ^ 3 ≠ 0 | h2 : (b * x + c * x ^ 2) ^ (3 / 2) ≠ 0 | h3 : 0 < b * x + c * x ^ 2
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_132` — failed: unsolved goals | x A B b c : ℝ | h1 : (b * x + c * x ^ 2) ^ (5 / 2) ≠ 0 | h2 : 0 < b * x + c * x ^ 2 | h3 : 3 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_141` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_1528` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (50000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_204` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_2209` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (0 - | (3 / 2 * b ^ 2 * e1 ^ 5 * g - 2 * c * e1 ^ 2 * (b * e1 ^ 2 * (d * g + e1 * f) - 2 * c * d * e1 ^ 2 * f) +
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_2337` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_2433` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_2464` — failed: unsolved goals | x A B a b c d e1 : ℝ | h1 : (a + b * x + c * x ^ 2) ^ (1 / 2) ≠ 0 | h2 : 0 < a + b * x + c * x ^ 2 | h3 : 4 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_2543` — failed: unsolved goals | x : ℝ | h : | HasDerivAt | (fun x =>
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_2552` — failed: Application type mismatch: The argument | h6 | has type | 0 - 3 + 15 ^ (1 / 2) + (1 + (3 + 2 * x) ^ (1 / 2)) / (1 + x) ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_2554` — failed: Application type mismatch: The argument | h6 | has type | 0 - 3 + 15 ^ (1 / 2) + (1 + (3 + 2 * x) ^ (1 / 2)) / (1 + x) ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_527` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_704` — failed: Application type mismatch: The argument | h3 | has type | (a ^ 2 + 2 * a * b * x + b ^ 2 * x ^ 2) ^ (1 / 2) ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_738` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_745` — failed: unsolved goals | x A B a b : ℝ | h1 : x ^ (9 / 2) ≠ 0 | h2 : 0 < x | h3 : x ^ (1 / 2) ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_803` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_947` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_953` — failed: unsolved goals | x A B a b c : ℝ | h1 : (a + b * x + c * x ^ 2) ^ (1 / 2) ≠ 0 | h2 : 0 < a + b * x + c * x ^ 2 | h3 : c ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_4_150` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_4_164` — failed: Application type mismatch: The argument | h6 | has type | (d ^ 2 - e1 ^ 2 * x ^ 2) ^ (1 / 2) ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_4_611` — failed: unexpected token '%'; expected '_' or identifier
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_4_77` — failed: Function expected at | e1 | but this term has type | ℝ
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_4_78` — failed: Function expected at | e1 | but this term has type | ℝ
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_5_103` — failed: Tactic `simp` failed with a nested error: | Tactic `simp` failed with a nested error: | maximum recursion depth has been reached | use `set_option maxRecDepth <num>` to increase limit | use `set_option diagnostics true` to get diagnostic information
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_6_116` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_6_133` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_9_15` — failed: unsolved goals | x A B C d e1 : ℝ | h1 : (d + e1 * x) ^ 3 ≠ 0 | h2 : (d ^ 2 - e1 ^ 2 * x ^ 2) ^ (1 / 2) ≠ 0 | h3 : 0 < d ^ 2 - e1 ^ 2 * x ^ 2
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_9_222` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_9_276` — failed: Tactic `simp` failed with a nested error: | Tactic `simp` failed with a nested error: | maximum recursion depth has been reached | use `set_option maxRecDepth <num>` to increase limit | use `set_option diagnostics true` to get diagnostic information
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_9_308` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_9_78` — failed: Application type mismatch: The argument | h12 | has type | (a + c * x ^ 2) ^ (1 / 2) ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_9_85` — failed: Application type mismatch: The argument | h12 | has type | (a + c * x ^ 2) ^ (1 / 2) ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_9_88` — failed: Application type mismatch: The argument | h13 | has type | (a + c * x ^ 2) ^ (1 / 2) ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_1036` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_171` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_236` — failed: Application type mismatch: The argument | h8 | has type | (b * x ^ 2 + c * x ^ 4) ^ (1 / 2) ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_290` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_474` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_513` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | 1 / 2 * | (a / (2 * b ^ 3 * (a + b * x ^ 2) ^ 4) - a ^ 2 / (5 * b ^ 3 * (a + b * x ^ 2) ^ 5) -
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_614` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (a ^ 2 + 2 * a * b * x ^ 2 + b ^ 2 * x ^ 4) ^ (1 / 2) * | ((0 - 5) * a * b ^ 9 / (7 * x ^ 7) - 10 * a ^ 2 * b ^ 8 / (9 * x ^ 9) - 10 * a ^ 3 * b ^ 7 / (11 * x ^ 11) -
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_625` — failed: Application type mismatch: The argument | h3 | has type | (a ^ 2 + 2 * a * b * x ^ 2 + b ^ 2 * x ^ 4) ^ (1 / 2) ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_679` — failed: unsolved goals | x a b d : ℝ | h1 : (d * x) ^ (7 / 2) ≠ 0 | h2 : 0 < d * x | h3 : 5 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_857` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_3_196` — failed: Application type mismatch: The argument | h1 | has type | (d + e1 * x ^ 2) ^ (1 / 2) ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_3_201` — failed: Application type mismatch: The argument | h12 | has type | (a - b * x ^ 2) ^ (1 / 2) ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_4_68` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_6_75` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_6_85` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_2_164` — failed: unsolved goals | x : ℝ | h1 : x ^ 5 ≠ 0 | h2 : x ^ 6 + 4 * x ^ 3 + 3 ≠ 0 | h3 : x ^ 4 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_2_286` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_2_29` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_2_63` — failed: Application type mismatch: The argument | HasDerivAt.pow (hasDerivAt_id x) 3 | has type | HasDerivAt (id ^ 3) (↑3 * id x ^ (3 - 1) * 1) x | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_2_99` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_1_10` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_1_206` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_1_309` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_1_340` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_1_407` — failed: unsolved goals | x : ℝ | h2 : 0 < 3 | h3 : 1 - x + x ^ 2 ≠ 0 | hq_h1_h3 : 1 - x + x ^ 2 + x ^ 3 - x ^ 4 + x ^ 5 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_1_94` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_298` — failed: unsolved goals | x : ℝ | h : | HasDerivAt | (fun x =>
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_435` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_528` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_769` — failed: Application type mismatch: The argument | HasDerivAt.add (hasDerivAt_rpow_const (Or.inl (ne_of_gt h2))) (hasDerivAt_id x) | has type | HasDerivAt ((fun x => x ^ (1 / 4)) + id) (1 / 4 * x ^ (1 / 4 - 1) + 1) x | but is expected to have type
- `rubi_rubi_t_2_exponentials_t_2_3_652` — failed: `simp` made no progress
- `rubi_rubi_t_2_exponentials_t_2_3_694` — failed: `simp` made no progress
- `rubi_rubi_t_3_logarithms_t_3_1_2_16` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_0_108` — failed: Function expected at | sec | but this term has type | ?m.1
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_0_50` — failed: Function expected at | sec | but this term has type | ?m.1
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_0_95` — failed: `simp` made no progress
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_1_2_136` — failed: Function expected at | sec | but this term has type | ?m.1
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_1_2_8` — failed: Function expected at | sec | but this term has type | ?m.1
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_1_3_165` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_10_95` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_12_12` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_12_55` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_1_156` — failed: `simp` made no progress
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_1_264` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_1_353` — failed: unsolved goals | x a c e1 f : ℝ | h1 : ((0 - c) * sin (e1 + f * x) + c) ^ (11 / 2) ≠ 0 | h2 : 0 < (0 - c) * sin (e1 + f * x) + c | h3 : 0 < a * sin (e1 + f * x) + a
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_1_445` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_1116` — failed: Application type mismatch: The argument | h11 | has type | cos (1 / 2 * (c + d * x)) ≠ 0 | but is expected to have type
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_1185` — failed: Function expected at | csc | but this term has type | ?m.1
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_1291` — failed: Function expected at | csc | but this term has type | ?m.1
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_207` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_310` — failed: Function expected at | csc | but this term has type | ?m.1
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_33` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_437` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_523` — failed: Function expected at | csc | but this term has type | ?m.1
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_633` — failed: Function expected at | csc | but this term has type | ?m.1
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_729` — failed: Function expected at | csc | but this term has type | ?m.1
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_762` — failed: Function expected at | csc | but this term has type | ?m.1
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_766` — failed: Function expected at | sec | but this term has type | ?m.1
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_819` — failed: Function expected at | csc | but this term has type | ?m.1
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_950` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_959` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_3_1_227` — failed: Function expected at | csc | but this term has type | ?m.1
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_3_1_274` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_3_1_281` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_7_207` — failed: Function expected at | csc | but this term has type | ?m.1
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_7_345` — failed: Function expected at | sec | but this term has type | ?m.1
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_7_439` — failed: unsolved goals | x a b c d : ℝ | h1 : a + b * sin (c + d * x) ^ 2 ≠ 0 | h2 : d ≠ 0 | h3 : a ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_0_6` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_12_46` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_2_1_231` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_2_1_275` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_2_1_61` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_3_1_212` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_3_1_215` — failed: `simp` made no progress
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_3_1_35` — failed: Function expected at | sec | but this term has type | ?m.1
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_2_1000` — failed: Application type mismatch: The argument | h14 | has type | cos (1 / 2 * (c + 1 / 2 * π + d * x)) ≠ 0 | but is expected to have type
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_2_327` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_2_45` — failed: Function expected at | sec | but this term has type | ?m.1
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_2_513` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_2_952` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_2_999` — failed: Application type mismatch: The argument | h13 | has type | cos (1 / 2 * (c + 1 / 2 * π + d * x)) ≠ 0 | but is expected to have type
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_7_2` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_7_201` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_5_secant_t_4_5_1_2_88` — failed: Function expected at | sec | but this term has type | ?m.1
- `rubi_rubi_t_4_trig_functions_t_4_5_secant_t_4_5_2_1_32` — failed: Function expected at | sec | but this term has type | ?m.1
- `rubi_rubi_t_4_trig_functions_t_4_5_secant_t_4_5_4_2_696` — failed: Function expected at | sec | but this term has type | ?m.1
- `rubi_rubi_t_4_trig_functions_t_4_6_cosecant_t_4_6_0_61` — failed: Function expected at | csc | but this term has type | ?m.1
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_1_128` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_1_6` — failed: `simp` made no progress
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_1_72` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_5_102` — failed: Application type mismatch: The argument | h3 | has type | (1 + cos (log 3 + log (2 + x))) ^ 2 ≠ 0 | but is expected to have type
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_7_147` — failed: unsolved goals | x : ℝ | h1 : cos x ≠ 0 | h2 : 0 < sin x * (sin x / cos x) | h3 : sin x ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_7_368` — failed: Application type mismatch: The argument | h6 | has type | 1 + cos (d + e1 * x) ≠ 0 | but is expected to have type
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_7_760` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_5_inverse_trig_functions_t_5_3_inverse_tangent_t_5_3_4_197` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_5_inverse_trig_functions_t_5_3_inverse_tangent_t_5_3_4_450` — failed: unsolved goals | x a c : ℝ | h1 : (a ^ 2 * c * x ^ 2 + c) ^ (5 / 2) ≠ 0 | h2 : 0 < a ^ 2 * c * x ^ 2 + c | h3 : 3 ≠ 0
- `rubi_rubi_t_6_hyperbolic_functions_t_6_1_hyperbolic_sine_t_6_1_1_67` — failed: Application type mismatch: The argument | h4 | has type | (1 / 2 * (rexp x - rexp (0 - x))) ^ (1 / 2) ≠ 0 | but is expected to have type
- `rubi_rubi_t_6_hyperbolic_functions_t_6_1_hyperbolic_sine_t_6_1_5_316` — failed: `simp` made no progress
- `rubi_rubi_t_6_hyperbolic_functions_t_6_1_hyperbolic_sine_t_6_1_7_19` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_6_hyperbolic_functions_t_6_1_hyperbolic_sine_t_6_1_7_331` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_6_hyperbolic_functions_t_6_1_hyperbolic_sine_t_6_1_7_469` — failed: Function expected at | coth | but this term has type | ?m.1
- `rubi_rubi_t_6_hyperbolic_functions_t_6_2_hyperbolic_cosine_t_6_2_5_263` — failed: `simp` made no progress
- `rubi_rubi_t_6_hyperbolic_functions_t_6_3_hyperbolic_tangent_t_6_3_2_120` — failed: Function expected at | coth | but this term has type | ?m.1
- `rubi_rubi_t_6_hyperbolic_functions_t_6_3_hyperbolic_tangent_t_6_3_2_44` — failed: unsolved goals | x a c d : ℝ | h1 : a * (sinh (c + d * x) / cosh (c + d * x)) + a ≠ 0 | h2 : cosh (c + d * x) ≠ 0 | h3 : 4 ≠ 0
- `rubi_rubi_t_6_hyperbolic_functions_t_6_3_hyperbolic_tangent_t_6_3_2_58` — failed: Application type mismatch: The argument | h4 | has type | rexp ((0 - 4) * c) + rexp (4 * d * x) + 2 * rexp ((0 - 2) * c + 2 * d * x) ≠ 0 | but is expected to have type
- `rubi_rubi_t_6_hyperbolic_functions_t_6_3_hyperbolic_tangent_t_6_3_7_6` — failed: Function expected at | csch | but this term has type | ?m.1
- `rubi_rubi_t_6_hyperbolic_functions_t_6_3_hyperbolic_tangent_t_6_3_7_82` — failed: Function expected at | sech | but this term has type | ?m.1
- `rubi_rubi_t_6_hyperbolic_functions_t_6_7_miscellaneous_t_6_7_1_124` — failed: Function expected at | coth | but this term has type | ?m.1
- `rubi_rubi_t_6_hyperbolic_functions_t_6_7_miscellaneous_t_6_7_1_185` — failed: Application type mismatch: The argument | Real.hasDerivAt_exp ((0 - 3) * a - 2 * c - 3 * b * x - 2 * d * x) | has type | HasDerivAt rexp (rexp ((0 - 3) * a - 2 * c - 3 * b * x - 2 * d * x)) ((0 - 3) * a - 2 * c - 3 * b * x - 2 * d * x) | but is expected to have type
- `rubi_rubi_t_6_hyperbolic_functions_t_6_7_miscellaneous_t_6_7_1_363` — failed: Function expected at | sech | but this term has type | ?m.1
- `rubi_rubi_t_6_hyperbolic_functions_t_6_7_miscellaneous_t_6_7_1_424` — failed: Function expected at | csch | but this term has type | ?m.1
- `rubi_rubi_t_6_hyperbolic_functions_t_6_7_miscellaneous_t_6_7_1_672` — failed: Function expected at | csch | but this term has type | ?m.1
- `rubi_rubi_t_6_hyperbolic_functions_t_6_7_miscellaneous_t_6_7_1_977` — failed: Function expected at | sech | but this term has type | ?m.1
- `rubi_rubi_t_6_hyperbolic_functions_t_6_7_miscellaneous_t_6_7_1_979` — failed: Function expected at | sech | but this term has type | ?m.1
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_4_17` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_107` — failed: Application type mismatch: The argument | h12 | has type | (1 - a * x) ^ (1 / 4) ≠ 0 | but is expected to have type
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_1176` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_1367` — failed: unsolved goals | x a c : ℝ | h1 : ((0 - a ^ 2) * c * x ^ 2 + c) ^ (3 / 2) ≠ 0 | h2 : 0 < (0 - a ^ 2) * c * x ^ 2 + c | h3 : 1 - a * x ≠ 0
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_178` — failed: unsolved goals | x a c : ℝ | h1 : 1 - a * x ≠ 0 | h2 : 1 + a * x ≠ 0 | h3 : 3 ≠ 0
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_209` — failed: `simp` made no progress
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_221` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_241` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_338` — failed: Application type mismatch: The argument | h10 | has type | (1 - a * x) ^ (1 / 2) ≠ 0 | but is expected to have type
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_397` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_422` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_460` — failed: unsolved goals | x a c : ℝ | h1 : (c - c / (a * x)) ^ 3 ≠ 0 | h2 : a ≠ 0 | h3 : x ≠ 0
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_759` — failed: Application type mismatch: The argument | HasDerivAt.pow (hasDerivAt_id x) 2 | has type | HasDerivAt (id ^ 2) (↑2 * id x ^ (2 - 1) * 1) x | but is expected to have type
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_825` — failed: `simp` made no progress
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_972` — failed: Application type mismatch: The argument | h6 | has type | (c - a ^ 2 * c * x ^ 2) ^ (5 / 2) ≠ 0 | but is expected to have type
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_7_9` — failed: Application type mismatch: The argument | h14 | has type | (d + e1 * x ^ 2) ^ (1 / 2) ≠ 0 | but is expected to have type
