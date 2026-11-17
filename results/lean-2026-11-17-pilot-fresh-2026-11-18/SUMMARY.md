# Lean: 2026-11-17, снимок 8b9e8a4b339c63d3f96e36dd371943516aed88ca

- вход: `qedra_ref=master`, осколков 4, таймаут на пакет 900 с
- прогон: https://github.com/evgwpw/qedra-bench/actions/runs/44185462564
- всего теорем: 120
- генератор: `0f0045a4011703fb939053cc73e9a71b92fb83d6`, ответов OK 1000, выборка 500 (seed 1), пакетов по 20, тактов на теорему 200000/50000
| статус | теорем |
|---|---|
| passed | 12 |
| failed | 52 |
| failed-axioms | 0 |
| timeout | 49 |
| vacuous? | 1 |
| unknown | 6 |

| осколок | всего | passed | failed | failed-axioms | timeout | vacuous? | unknown |
|---|---|---|---|---|---|---|---|
| lean-1 | 20 | 0 | 12 | 0 | 6 | 0 | 2 |
| lean-2 | 20 | 0 | 6 | 0 | 11 | 0 | 3 |
| lean-3 | 40 | 5 | 14 | 0 | 20 | 1 | 0 |
| lean-4 | 40 | 7 | 20 | 0 | 12 | 0 | 1 |
## Пилот: по наборам

Всего ответов OK: 454 (из них не переведено генератором: 334); проценты — от проверенных.

| набор | проверено | passed | failed | failed-axioms | timeout | vacuous? | unknown | не переведено | passed, % |
|---|---|---|---|---|---|---|---|---|---|
| rubi | 40 | 0 | 18 | 0 | 17 | 0 | 5 | 279 | 0 |
| hebisch | 64 | 10 | 28 | 0 | 25 | 1 | 0 | 0 | 16 |
| uchebnye | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 55 | 0 |
| blake | 7 | 0 | 1 | 0 | 6 | 0 | 0 | 0 | 0 |
| independent | 5 | 2 | 2 | 0 | 1 | 0 | 0 | 0 | 40 |
| mit_bee_official | 4 | 0 | 3 | 0 | 0 | 0 | 1 | 0 | 0 |
| **всего** | **120** | **12** | **52** | **0** | **49** | **1** | **6** | **334** | **10** |

## Пилот: Rubi по подглавам

Всего ответов OK: 319 (из них не переведено генератором: 279); проценты — от проверенных.

| подглава | проверено | passed | failed | failed-axioms | timeout | vacuous? | unknown | не переведено | passed, % |
|---|---|---|---|---|---|---|---|---|---|
| (не переведено) | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 279 | 0 |
| t_1_1_1_2 | 5 | 0 | 2 | 0 | 2 | 0 | 1 | 0 | 0 |
| t_1_1_1_3 | 5 | 0 | 2 | 0 | 2 | 0 | 1 | 0 | 0 |
| t_7_3_6 | 5 | 0 | 3 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_1_1_2_4 | 3 | 0 | 1 | 0 | 1 | 0 | 1 | 0 | 0 |
| t_1_1_2_3 | 2 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_1_1_3_2 | 2 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_1_2_1_2 | 2 | 0 | 1 | 0 | 0 | 0 | 1 | 0 | 0 |
| t_1_3_2 | 2 | 0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_7_7 | 2 | 0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_1_3_4 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_2_1_3 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_1_2_2_4 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_2_3_2 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_3_1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_3_1_2 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_1_1_2 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_2_2_1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_3_4_2 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_3_7 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_5_2_5 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_5_3_4 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| **всего** | **40** | **0** | **18** | **0** | **17** | **0** | **5** | **279** | **0** |

## Пилот: почему не переведено

| причина | ответов |
|---|---|
| символьный показатель степени | 92 |
| голова sec | 51 |
| голова root-sum | 23 |
| голова e1 | 22 |
| голова %i | 21 |
| вещественная константа (не рациональная) | 20 |
| голова EllipticF | 16 |
| голова csc | 11 |
| голова EllipticE | 11 |
| голова polylog | 9 |
| голова appell-f1 | 8 |
| голова hypergeometric-2f1 | 7 |
| голова sech | 7 |
| голова csch | 6 |
| голова acoth | 5 |
| голова cot | 5 |
| голова asec | 4 |
| голова fresnel_s | 3 |
| голова acsc | 2 |
| unsupported error | 2 |
| голова Si | 1 |
| голова asech | 1 |
| голова gamma | 1 |
| голова acsch | 1 |
| голова asinh | 1 |
| голова coth | 1 |
| голова Ei | 1 |
| голова lambert_w | 1 |
| голова erf | 1 |

## Не passed

- `blake_blake_blake_1029` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_105` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1752` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_529` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_613` — failed: unsolved goals | x : ℝ | h1 : 0 < x ^ 6 - 1 | h2 : 0 < 0 - 1 + x ^ 6 | h3 : 1 - x ^ 3 / (0 - 1 + x ^ 6) ^ (1 / 2) ≠ 0
- `blake_blake_blake_736` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_79` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_10051` — failed: `simp` made no progress
- `hebisch_hebisch_hebisch_10155` — failed: `simp` made no progress
- `hebisch_hebisch_hebisch_10169` — failed: `simp` made no progress
- `hebisch_hebisch_hebisch_10231` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_10246` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1080` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1630` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | ((0 - 256) * x ^ 4 - 256 * x ^ 5 - 64 * x ^ 6) / | (x ^ 2 - 2 * x * log (x + rexp x) + (2 * x - 2 * log (x + rexp x)) * log x + log x ^ 2 + log (x + rexp x) ^ 2))
- `hebisch_hebisch_hebisch_1855` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2042` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2182` — failed: `simp` made no progress
- `hebisch_hebisch_hebisch_234` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => 10 * x - rexp x - rexp ((0 - rexp (rexp x)) * log x / x ^ 4)) ?m.297 x | is not definitionally equal to target | HasDerivAt ((fun x => 10) * id - rexp) (0 * x + 10 * 1 - rexp x) x
- `hebisch_hebisch_hebisch_2351` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2451` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2643` — failed: unsolved goals | x : ℝ | h1 : | (25 * x ^ 6 + 100 * x ^ 5 + 100 * x ^ 4) * log (10 / x) ^ 4 + (160 * x ^ 3 + 320 * x ^ 2) * log (10 / x) ^ 2 + 256 ≠ 0 | h2 : 10 / x ≠ 0
- `hebisch_hebisch_hebisch_2722` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2975` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3176` — failed: `simp` made no progress
- `hebisch_hebisch_hebisch_3260` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3892` — failed: `simp` made no progress
- `hebisch_hebisch_hebisch_394` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4043` — failed: unsolved goals | x : ℝ | h1 : | x ^ 2 * log (9 * rexp 3 ^ 2) ^ 2 + ((0 - 2) * x ^ 2 * rexp 2 + 2 * x ^ 3 + 2 * x ^ 2) * log (9 * rexp 3 ^ 2) + | x ^ 2 * rexp 2 ^ 2 +
- `hebisch_hebisch_hebisch_4620` — failed: unsolved goals | x : ℝ | h1 : | 9 * rexp x ^ 2 * rexp (2 * x) ^ 3 + 27 * x * rexp x ^ 2 * rexp (2 * x) ^ 2 + 27 * x ^ 2 * rexp x ^ 2 * rexp (2 * x) + | 9 * rexp x ^ 2 * x ^ 3 ≠
- `hebisch_hebisch_hebisch_4664` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => (0 - 4) * x - 2 * x ^ 2 - 2 * x * log x - 4 * log x) ?m.280 x | is not definitionally equal to target | HasDerivAt ((fun x => 0 - 4) * id - (fun x => 2) * id ^ 2) | (0 * x + (0 - 4) * 1 - (0 * x ^ 2 + 2 * (↑2 * x ^ (2 - 1) * 1))) x
- `hebisch_hebisch_hebisch_4823` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4839` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4867` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4937` — failed: `simp` made no progress
- `hebisch_hebisch_hebisch_5002` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_5157` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5266` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5328` — failed: unsolved goals | x : ℝ | h1 : log x ≠ 0 | h2 : x ≠ 0 | h3 : 2 * x / log x ≠ 0
- `hebisch_hebisch_hebisch_5447` — failed: Application type mismatch: The argument | HasDerivAt.div | (HasDerivAt.add (hasDerivAt_const x 2) | (HasDerivAt.comp x ?m.240 | (HasDerivAt.sub (HasDerivAt.mul (hasDerivAt_const x 30) (hasDerivAt_id x)) (hasDerivAt_const x (9 * log 3)))))
- `hebisch_hebisch_hebisch_5609` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5949` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6242` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6445` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => (16 - 2 * x - 2 * log 5) / (0 - 8 + 2 * x + rexp x) + 3 * log x) ?m.650 x | is not definitionally equal to target | HasDerivAt (((fun x => 16) - (fun x => 2) * id) / ((fun x => 0 - 8) + (fun x => 2) * id + rexp) + (fun x => 3) * log) | (((0 - (0 * x + 2 * 1)) * (0 - 8 + 2 * x + rexp x) - (16 - 2 * x) * (0 + (0 * x + 2 * 1) + rexp x)) /
- `hebisch_hebisch_hebisch_6625` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6778` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6804` — failed: `simp` made no progress
- `hebisch_hebisch_hebisch_6809` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7069` — failed: unsolved goals | x : ℝ | h1 : (x ^ 2 - 4) * rexp x - x ^ 4 + 4 * x ^ 2 ≠ 0 | h2 : (0 - x ^ 2 + 4) / x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_7613` — failed: unsolved goals | x : ℝ | h1 : rexp ((x - 3) / x) ≠ 0 | h2 : x ≠ 0 | h3 : x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_7874` — failed: Application type mismatch: The argument | Real.hasDerivAt_exp (8 * log 3 * log (0 - 15 + x ^ 2) - 4 * log 3 ^ 2 - 4 * log (0 - 15 + x ^ 2) ^ 2) | has type | HasDerivAt rexp (rexp (8 * log 3 * log (0 - 15 + x ^ 2) - 4 * log 3 ^ 2 - 4 * log (0 - 15 + x ^ 2) ^ 2)) | (8 * log 3 * log (0 - 15 + x ^ 2) - 4 * log 3 ^ 2 - 4 * log (0 - 15 + x ^ 2) ^ 2)
- `hebisch_hebisch_hebisch_8222` — failed: `simp` made no progress
- `hebisch_hebisch_hebisch_853` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8671` — failed: unsolved goals | x : ℝ | h1 : x ^ 4 + 2 * x ^ 2 + x ≠ 0 | h2 : (2 * x ^ 3 + 4 * x + 2) / x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_8770` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8867` — failed: Type mismatch: After simplification, term | h5 | has type | 5 - x - log (log x) ≠ 0 | but is expected to have type
- `hebisch_hebisch_hebisch_9337` — failed: `simp` made no progress
- `hebisch_hebisch_hebisch_945` — failed: unsolved goals | x : ℝ | h1 : | ((x ^ 2 + x) * rexp x + x ^ 2 + x) * log (rexp x + 1) + ((0 - x ^ 2 - x) * rexp x - x ^ 2 - x) * log (x + 1) ^ 2 + | ((x ^ 2 + x) * rexp x + x ^ 2 + x) * log x +
- `hebisch_hebisch_hebisch_9515` — failed: `simp` made no progress
- `hebisch_hebisch_hebisch_9695` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => x - 1 / 4 * x ^ 2 - x ^ 2 * rexp x / (4 * (1 + 2 * x - x ^ 2 - 2 * x ^ 3 + x ^ 4))) ?m.911 x | is not definitionally equal to target | HasDerivAt (id - (fun x => 1 / 4) * id ^ 2) (1 - (0 * x ^ 2 + 1 / 4 * (↑2 * x ^ (2 - 1) * 1))) x
- `hebisch_hebisch_hebisch_9723` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9804` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 - 2 * x ≠ 0 | h2 : log ((2 - x) / x ^ 2) ≠ 0 | h3 : (2 - x) / x ^ 2 ≠ 0
- `independent_independent_hearn_problems_142` — failed: `simp` made no progress
- `independent_independent_timofeev_problems_14` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_timofeev_problems_45` — failed: unsolved goals | x a b : ℝ | h1 : x ^ (1 / 2) ≠ 0 | h2 : a * x + b ≠ 0 | h3 : 0 < x
- `mit_bee_official_mit_bee_official_mit_bee_official_260` — failed: `simp` made no progress
- `mit_bee_official_mit_bee_official_mit_bee_official_508` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `mit_bee_official_mit_bee_official_mit_bee_official_59` — failed: `simp` made no progress
- `mit_bee_official_mit_bee_official_mit_bee_official_85` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1073` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_351` — failed: unsolved goals | x a b : ℝ | h1 : (a + b * x) ^ (5 / 2) ≠ 0 | h2 : 0 < a + b * x | h3 : b ^ 3 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_356` — failed: unsolved goals | x a b : ℝ | h1 : x ^ 3 ≠ 0 | h2 : (a + b * x) ^ (5 / 2) ≠ 0 | h3 : 0 < a + b * x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_815` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_877` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1058` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1194` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1427` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_332` — failed: unsolved goals | x A B a b : ℝ | h1 : (a + b * x) ^ 3 ≠ 0 | h2 : 0 < x | h3 : 2 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_64` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_3_19` — failed: unsolved goals | x a b c d : ℝ | h1 : a + b * x ^ 2 ≠ 0 | h2 : a ^ (1 / 2) ≠ 0 | h3 : b ^ (9 / 2) ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_3_28` — failed: unsolved goals | x a b c d : ℝ | h1 : (a + b * x ^ 2) ^ 2 ≠ 0 | h2 : b ^ 3 ≠ 0 | h3 : 2 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_156` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_716` — failed: unsolved goals | x a b c d : ℝ | h1 : a + b * x ^ 2 ≠ 0 | h2 : (c + d * x ^ 2) ^ (3 / 2) ≠ 0 | h3 : 0 < c + d * x ^ 2
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_947` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_2372` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (0 - 9) * a * b ^ 2 / (5 * x ^ (5 / 3)) - 9 * a ^ 2 * b / (4 * x ^ (4 / 3)) - a ^ 3 / x - b ^ 3 / (2 * x ^ 2)) | ?m.711 x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_29` — failed: unsolved goals | x b : ℝ | h1 : x ^ 6 ≠ 0 | h2 : 0 < b * x ^ 2 | h3 : x ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_783` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1011` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_77` — failed: unsolved goals | x b c : ℝ | h1 : x ^ (5 / 2) ≠ 0 | h2 : 0 < x | h3 : 0 < b * x + c * x ^ 2
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_307` — failed: unsolved goals | x a c d e1 : ℝ | h1 : (a ^ 2 - c ^ 2 * x ^ 2) ^ 2 ≠ 0 | h2 : 2 ≠ 0 | h3 : a ^ 2 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_4_269` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_2_15` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_1_473` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_554` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_92` — failed: unsolved goals | x : ℝ | h1 : (0 - x ^ 3 - 1) ^ (1 / 2) ≠ 0 | h2 : x + 1 + 3 ^ (1 / 2) ≠ 0 | h3 : 0 < 0 - x ^ 3 - 1
- `rubi_rubi_t_3_logarithms_t_3_1_2_16` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_1_2_43` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_2_1_843` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_4_2_39` — failed: unsolved goals | x B C a b c d : ℝ | h1 : (a + b * (sin (c + d * x) / cos (c + d * x))) ^ 3 ≠ 0 | h2 : cos (c + d * x) ≠ 0 | h3 :
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_7_279` — failed: unsolved goals | x a : ℝ | h1 : (a * (sin x / cos x) ^ 2 + a) ^ (3 / 2) ≠ 0 | h2 : cos x ≠ 0 | h3 : 0 < a * (sin x / cos x) ^ 2 + a
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_7_669` — failed: `simp` made no progress
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_7_921` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (50000) has been reached
- `rubi_rubi_t_5_inverse_trig_functions_t_5_2_inverse_cosine_t_5_2_5_58` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_5_inverse_trig_functions_t_5_3_inverse_tangent_t_5_3_4_189` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_1019` — failed: `simp` made no progress
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_262` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_48` — failed: `simp` made no progress
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_72` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_818` — failed: Type mismatch: After simplification, term | mul_ne_zero h14 h15 | has type | (1 + a) ^ (1 / 2) * (1 - a - b * x) ^ (1 / 2) ≠ 0 | but is expected to have type
