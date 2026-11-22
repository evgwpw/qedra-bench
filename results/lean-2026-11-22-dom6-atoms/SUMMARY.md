# Lean: 2026-11-22, снимок 8b9e8a4b339c63d3f96e36dd371943516aed88ca

- вход: `qedra_ref=master`, осколков 4, таймаут на пакет 900 с
- прогон: https://github.com/evgwpw/qedra-bench/actions/runs/45058267852
- всего теорем: 678
- генератор: `734ba146ffe691beb0c35eefcbeaef4a3dedd3ed`, ответов OK 1000, выборка 500 (seed 1), пакетов по 20, тактов на теорему 200000/50000
| статус | теорем |
|---|---|
| passed | 130 |
| failed | 235 |
| failed-axioms | 0 |
| timeout | 261 |
| vacuous? | 13 |
| unknown | 39 |

| осколок | всего | passed | failed | failed-axioms | timeout | vacuous? | unknown |
|---|---|---|---|---|---|---|---|
| lean-1 | 180 | 1 | 60 | 0 | 88 | 0 | 31 |
| lean-2 | 180 | 39 | 55 | 0 | 76 | 5 | 5 |
| lean-3 | 180 | 52 | 72 | 0 | 47 | 7 | 2 |
| lean-4 | 138 | 38 | 48 | 0 | 50 | 1 | 1 |
## Пилот: по наборам

Всего ответов OK: 1000 (из них не переведено генератором: 322); проценты — от проверенных.

| набор | проверено | passed | failed | failed-axioms | timeout | vacuous? | unknown | не переведено | passed, % |
|---|---|---|---|---|---|---|---|---|---|
| rubi | 219 | 1 | 72 | 0 | 111 | 0 | 35 | 281 | 0 |
| hebisch | 311 | 89 | 128 | 0 | 82 | 12 | 0 | 0 | 29 |
| blake | 67 | 5 | 15 | 0 | 47 | 0 | 0 | 0 | 7 |
| independent | 60 | 25 | 15 | 0 | 19 | 1 | 0 | 0 | 42 |
| uchebnye | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 41 | 0 |
| mit_bee | 16 | 10 | 4 | 0 | 2 | 0 | 0 | 0 | 63 |
| mit_bee_official | 5 | 0 | 1 | 0 | 0 | 0 | 4 | 0 | 0 |
| **всего** | **678** | **130** | **235** | **0** | **261** | **13** | **39** | **322** | **19** |

## Пилот: Rubi по подглавам

Всего ответов OK: 500 (из них не переведено генератором: 281); проценты — от проверенных.

| подглава | проверено | passed | failed | failed-axioms | timeout | vacuous? | unknown | не переведено | passed, % |
|---|---|---|---|---|---|---|---|---|---|
| (не переведено) | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 281 | 0 |
| t_1_1_1_3 | 26 | 0 | 10 | 0 | 12 | 0 | 4 | 0 | 0 |
| t_1_2_1_3 | 21 | 0 | 6 | 0 | 12 | 0 | 3 | 0 | 0 |
| t_1_2_1_2 | 16 | 0 | 2 | 0 | 12 | 0 | 2 | 0 | 0 |
| t_1_1_3_2 | 15 | 0 | 9 | 0 | 3 | 0 | 3 | 0 | 0 |
| t_1_1_1_2 | 14 | 0 | 10 | 0 | 3 | 0 | 1 | 0 | 0 |
| t_7_3_6 | 10 | 0 | 3 | 0 | 7 | 0 | 0 | 0 | 0 |
| t_1_2_2_2 | 7 | 0 | 2 | 0 | 4 | 0 | 1 | 0 | 0 |
| t_4_2_2_1 | 6 | 0 | 0 | 0 | 5 | 0 | 1 | 0 | 0 |
| t_4_1_3_1 | 5 | 0 | 1 | 0 | 4 | 0 | 0 | 0 | 0 |
| t_1_1_2_4 | 4 | 0 | 1 | 0 | 2 | 0 | 1 | 0 | 0 |
| t_1_1_3_4 | 4 | 0 | 1 | 0 | 2 | 0 | 1 | 0 | 0 |
| t_1_1_4_3 | 4 | 0 | 1 | 0 | 3 | 0 | 0 | 0 | 0 |
| t_1_2_2_6 | 4 | 0 | 0 | 0 | 2 | 0 | 2 | 0 | 0 |
| t_1_2_4_2 | 4 | 0 | 0 | 0 | 3 | 0 | 1 | 0 | 0 |
| t_1_3_1 | 4 | 0 | 2 | 0 | 0 | 0 | 2 | 0 | 0 |
| t_4_2_4_2 | 4 | 0 | 0 | 0 | 4 | 0 | 0 | 0 | 0 |
| t_7_3_4 | 4 | 0 | 1 | 0 | 1 | 0 | 2 | 0 | 0 |
| t_1_1_2_2 | 3 | 0 | 1 | 0 | 1 | 0 | 1 | 0 | 0 |
| t_1_2_2_4 | 3 | 0 | 0 | 0 | 3 | 0 | 0 | 0 | 0 |
| t_1_3_2 | 3 | 0 | 2 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_1_2_2 | 3 | 0 | 0 | 0 | 3 | 0 | 0 | 0 | 0 |
| t_5_3_2 | 3 | 0 | 1 | 0 | 0 | 0 | 2 | 0 | 0 |
| t_6_3_7 | 3 | 0 | 2 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_6_7_1 | 3 | 0 | 1 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_1_1_3_8 | 2 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_1_1_4_2 | 2 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_1_2_1_9 | 2 | 0 | 0 | 0 | 1 | 0 | 1 | 0 | 0 |
| t_1_2_3_2 | 2 | 0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_1_2_1 | 2 | 0 | 0 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_4_2_4_1 | 2 | 0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_7_7 | 2 | 0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_6_1_3 | 2 | 0 | 0 | 0 | 1 | 0 | 1 | 0 | 0 |
| t_6_2_5 | 2 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_7_3_2 | 2 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_1_1_2_8 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_1_1_3_3 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| t_1_2_1_1 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_1_2_1_5 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_2_1_6 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_2_2_3 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| t_1_2_3_3 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_3_3 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_3_5 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 100 |
| t_4_1_1_2 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_1_1_3 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_1_12 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_2_1_1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_2_10 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_2_12 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| t_4_3_2_1 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_7_1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_7_2 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_7_3 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_5_2_5 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_5_3_4 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| t_5_3_5 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_6_1_7 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_6_2_1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_6_2_3 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| t_6_3_2 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| **всего** | **219** | **1** | **72** | **0** | **111** | **0** | **35** | **281** | **0** |

## Пилот: почему не переведено

| причина | ответов |
|---|---|
| символьный показатель степени | 71 |
| голова sec | 50 |
| вещественная константа (не рациональная) | 26 |
| голова e1 | 20 |
| голова root-sum | 18 |
| голова EllipticF | 18 |
| голова csc | 15 |
| голова %i | 15 |
| голова EllipticE | 12 |
| голова hypergeometric-2f1 | 9 |
| голова appell-f1 | 8 |
| голова cot | 7 |
| голова sech | 7 |
| голова coth | 7 |
| голова acoth | 7 |
| голова polylog | 7 |
| голова asinh | 4 |
| unsupported error | 4 |
| голова asec | 3 |
| голова asech | 2 |
| голова lambert_w | 2 |
| голова fresnel_s | 2 |
| голова Si | 2 |
| голова acsch | 1 |
| голова erfi | 1 |
| голова gamma | 1 |
| голова csch | 1 |
| голова Ei | 1 |
| голова erf | 1 |

## Не passed

- `blake_blake_blake_100` — failed: `simp` made no progress
- `blake_blake_blake_1030` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1056` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1191` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1205` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1216` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1236` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1255` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1278` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1354` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_146` — failed: unsolved goals | x : ℝ | h1 : (x ^ 5 - x) ^ (1 / 4) ≠ 0 | h2 : 0 < x ^ 5 - x | h3 : x ^ 6 ≠ 0
- `blake_blake_blake_1469` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1502` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1620` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1643` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1709` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1803` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1992` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1994` — failed: unsolved goals | x : ℝ | h1 : (x ^ 3 + x ^ 2 - x - 1) ^ (1 / 3) ≠ 0 | h2 : 0 < x ^ 3 + x ^ 2 - x - 1 | h3 : (0 - 1 - x + x ^ 2 + x ^ 3) ^ (1 / 3) ≠ 0
- `blake_blake_blake_2` — failed: unsolved goals | x : ℝ | h1 : (x ^ 4 - 1) ^ (1 / 2) ≠ 0 | h2 : 0 < x ^ 4 - 1 | h3 : (0 - 1 + x ^ 4) ^ (1 / 2) ≠ 0
- `blake_blake_blake_2003` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_2022` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_2061` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_209` — failed: `simp` made no progress
- `blake_blake_blake_228` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_236` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_2362` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_241` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_2424` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_2444` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_2447` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_251` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_259` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_2911` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_2958` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_2996` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_3070` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_311` — failed: unsolved goals | x : ℝ | h1 : 0 - 1 + x ≠ 0 | h2 : (0 - x ^ 2 + x ^ 3) ^ (1 / 4) ≠ 0 | h3 : 0 < 0 - x ^ 2 + x ^ 3
- `blake_blake_blake_315` — failed: `simp` made no progress
- `blake_blake_blake_318` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_328` — failed: `simp` made no progress
- `blake_blake_blake_331` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | h2 : 0 < 1 + x ^ 6 | h3 : 0 - 1 + (1 + x ^ 6) ^ (1 / 2) ≠ 0
- `blake_blake_blake_345` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_396` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_409` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_430` — failed: Application type mismatch: The argument | hasDerivAt_rpow_const (Or.inl (ne_of_gt h5)) | has type | HasDerivAt (fun x => x ^ (1 / 2)) (1 / 2 * (0 - 1 - 4 * x - 5 * x ^ 2 - 4 * x ^ 3 - x ^ 4) ^ (1 / 2 - 1)) | (0 - 1 - 4 * x - 5 * x ^ 2 - 4 * x ^ 3 - x ^ 4)
- `blake_blake_blake_449` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_48` — failed: `simp` made no progress
- `blake_blake_blake_504` — failed: unsolved goals | x : ℝ | h1 : 0 < x ^ 4 - 1 | h2 : 0 < 0 - 1 + x ^ 4 | h3 : 1 - x ^ 2 / (0 - 1 + x ^ 4) ^ (1 / 2) ≠ 0
- `blake_blake_blake_536` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | h2 : 0 < x ^ 3 + 1 | h3 : 0 < 1 + x ^ 3
- `blake_blake_blake_550` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_563` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_570` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_649` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_652` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_681` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_707` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_733` — failed: Application type mismatch: The argument | hasDerivAt_rpow_const (Or.inl (ne_of_gt h2)) | has type | HasDerivAt (fun x => x ^ (1 / 2)) (1 / 2 * (1 - x ^ 2 - y ^ 4) ^ (1 / 2 - 1)) (1 - x ^ 2 - y ^ 4) | but is expected to have type
- `blake_blake_blake_870` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_959` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_973` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_974` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : 0 < x ^ 4 - x ^ 3 | h3 : x ^ (3 / 4) ≠ 0
- `hebisch_hebisch_hebisch_10000` — failed: Application type mismatch: The argument | HasDerivAt.div | (HasDerivAt.add (HasDerivAt.sub (hasDerivAt_const x 0) (HasDerivAt.pow (hasDerivAt_id x) 4)) | (HasDerivAt.comp x (Real.hasDerivAt_exp (0 - x - 4 * x ^ 4 + rexp (x ^ 2))) | (HasDerivAt.add
- `hebisch_hebisch_hebisch_10023` — failed: Application type mismatch: The argument | HasDerivAt.div (HasDerivAt.add (hasDerivAt_const x 4) (HasDerivAt.pow (hasDerivAt_id x) 2)) (hasDerivAt_id x) (id h3) | has type | HasDerivAt (((fun x => 4) + id ^ 2) / id) | (((0 + ↑2 * id x ^ (2 - 1) * 1) * id x - ((fun x => 4) + id ^ 2) x * 1) / id x ^ 2) x
- `hebisch_hebisch_hebisch_10025` — failed: unsolved goals | x : ℝ | h1 : 3 ≠ 0 | h : | HasDerivAt
- `hebisch_hebisch_hebisch_10115` — failed: Application type mismatch: The argument | Real.hasDerivAt_exp | ((0 - 942080000 - 1040384000 * x - 455411200 * x ^ 2 - 98920960 * x ^ 3 - 10674689 * x ^ 4 - 458240 * x ^ 5) / | (40960000 + 32768000 * x + 9830400 * x ^ 2 + 1310720 * x ^ 3 + 65536 * x ^ 4)) | has type
- `hebisch_hebisch_hebisch_10134` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_10162` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1018` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_10249` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_10252` — failed: unsolved goals | x : ℝ | h : | HasDerivAt (fun x => x * rexp (-11 / 4 + rexp x) * (1 / 2) + rexp x * 10 + rexp (x * 2)) | (rexp x * 10 + rexp x * x * rexp (-11 / 4 + rexp x) * (1 / 2) + rexp (-11 / 4 + rexp x) * (1 / 2) +
- `hebisch_hebisch_hebisch_10264` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_10281` — failed: Type mismatch: After simplification, term | h8 | has type | x - log 2 - log x ≠ 0 | but is expected to have type
- `hebisch_hebisch_hebisch_10289` — failed: unsolved goals | x : ℝ | h1 : x ^ 3 - x ^ 2 ≠ 0 | h2 : (0 - x + 1) / x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_10303` — failed: unsolved goals | x : ℝ | h1 : log x ^ 3 ≠ 0 | h2 : x ≠ 0 | h3 : log x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_10333` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1070` — failed: Application type mismatch: The argument | Real.hasDerivAt_exp (2 - x - log (46 + x + log (3 + rexp x))) | has type | HasDerivAt rexp (rexp (2 - x - log (46 + x + log (3 + rexp x)))) (2 - x - log (46 + x + log (3 + rexp x))) | but is expected to have type
- `hebisch_hebisch_hebisch_1074` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1133` — failed: unsolved goals | x : ℝ | h1 : rexp 3 ≠ 0 | hp2_h2 : x ^ 2 * 4 ≠ 0 | hq_h1_h2 : x * rexp 3 * 2 ≠ 0
- `hebisch_hebisch_hebisch_1167` — failed: unsolved goals | x : ℝ | h1 : | ((5 * x ^ 4 - x ^ 3) * rexp x - 10 * x ^ 4 + 2 * x ^ 3) * log ((0 - 5) * x ^ 3 + x ^ 2) + | ((0 - 15) * x ^ 4 + 3 * x ^ 3) * rexp x +
- `hebisch_hebisch_hebisch_1225` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 * log x ^ 2 + (2 * rexp x * x ^ 2 - 2 * x ^ 2) * log x + rexp x ^ 2 * x ^ 2 - 2 * rexp x * x ^ 2 + x ^ 2 ≠ 0 | h2 : x ≠ 0 | h3 : rexp x * x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_1246` — failed: unsolved goals | x : ℝ | h1 : rexp 4 ≠ 0 | h : HasDerivAt (fun x => rexp (-4) * x - x * 11 - x ^ 2 * 5) (-11 - x * 10 + rexp (-4)) x | hs : sin x ^ 2 + cos x ^ 2 = 1
- `hebisch_hebisch_hebisch_1290` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | hp2_h1 : x ^ 2 ≠ 0 | h :
- `hebisch_hebisch_hebisch_13` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | 4 * x - x ^ 2 * rexp (2 * x) + | (0 - 4 - 4 * x ^ 3 - 4 * x ^ 2 * rexp x) / (x ^ 2 + 2 * x * rexp x + rexp (2 * x)) -
- `hebisch_hebisch_hebisch_1325` — failed: Application type mismatch: The argument | HasDerivAt.div | (HasDerivAt.mul (hasDerivAt_log ?m.938) | (HasDerivAt.comp x (hasDerivAt_log ?m.950) | (HasDerivAt.add (HasDerivAt.pow (hasDerivAt_id x) 2) (Real.hasDerivAt_exp x))))
- `hebisch_hebisch_hebisch_1400` — failed: unsolved goals | x : ℝ | h1 : rexp 5 ≠ 0 | h2 : x ≠ 0 | hq_h1_h2 : x * rexp 5 ≠ 0
- `hebisch_hebisch_hebisch_1424` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1477` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1485` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1495` — failed: unsolved goals | x : ℝ | h1 : rexp x ≠ 0 | h2 : x ≠ 0 | hq_h1_h2 : x * rexp x ≠ 0
- `hebisch_hebisch_hebisch_1527` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1551` — failed: unsolved goals | x : ℝ | h1 : (4 * x ^ 2 + 4 * x) * log ((3 * x + 3) / x) + x ^ 3 - 3 * x ^ 2 - 4 * x ≠ 0 | h2 : (3 * x + 3) / x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_1620` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1639` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1746` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : x ≠ 0 | hq_h1_h2 : x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_1823` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1881` — failed: unsolved goals | x : ℝ | h : | HasDerivAt (fun x => -rexp (1 - x * rexp x * 2 + x * rexp (x * 2 + x * rexp (x * 4)))) | (x * rexp x * rexp (1 - x * rexp x * 2 + x * rexp (x * 2 + x * rexp (x * 4))) * 2 -
- `hebisch_hebisch_hebisch_1920` — failed: unsolved goals | x : ℝ | h : | HasDerivAt (fun x => rexp (rexp (5 + x + rexp (-3 + x ^ 2) * 3))) | (x * rexp (-3 + x ^ 2) * rexp (rexp (5 + x + rexp (-3 + x ^ 2) * 3)) * rexp (5 + x + rexp (-3 + x ^ 2) * 3) * 6 +
- `hebisch_hebisch_hebisch_1981` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1996` — failed: unsolved goals | x : ℝ | h1 : 4 * rexp x ^ 2 * x ^ 2 - 12 * rexp x * x + 9 ≠ 0 | h2 : x ≠ 0 | h3 : x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_2013` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2034` — failed: unsolved goals | x : ℝ | h1 : rexp 4 ≠ 0 | h : HasDerivAt (fun x => rexp (-4) * x + rexp x) (rexp x + rexp (-4)) x | hs : sin x ^ 2 + cos x ^ 2 = 1
- `hebisch_hebisch_hebisch_2109` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_2130` — failed: unsolved goals | x : ℝ | h1 : 10 * rexp x * x ^ 3 + 80 * x ^ 3 ≠ 0 | h2 : 1 / 4 * rexp x + 2 ≠ 0 | h3 : log (1 / 4 * rexp x + 2) ≠ 0
- `hebisch_hebisch_hebisch_2136` — failed: unsolved goals | x : ℝ | h2 : 2 ≠ 0 | h3 : log 2 ≠ 0 | hp2_h2 : 4 ≠ 0
- `hebisch_hebisch_hebisch_221` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_231` — failed: unsolved goals | x : ℝ | h1 : (x - 2) * log (x - 2) * log (log (x - 2) ^ 2 / x ^ 2) + (4 - 2 * x) * log (x - 2) ≠ 0 | h2 : x - 2 ≠ 0 | h3 : log (x - 2) ^ 2 / x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_2322` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2375` — failed: unsolved goals | x : ℝ | h2 : 2 ≠ 0 | hp2_h2 : 4 ≠ 0 | hq_h1_h2 : rexp (2 - log 2 + x) * 2 ≠ 0
- `hebisch_hebisch_hebisch_2482` — failed: unsolved goals | x : ℝ | h1 : | (2 * x ^ 7 - 3 * x ^ 6) * log x ^ 3 + | ((6 * x ^ 5 - 9 * x ^ 4) * log (1 / (2 * x - 3)) + (6 * x ^ 5 - 9 * x ^ 4) * rexp x +
- `hebisch_hebisch_hebisch_2559` — failed: unsolved goals | x : ℝ | h1 : 15 * x + 65 ≠ 0 | h2 : 8 / (3 * x + 13) ≠ 0 | h3 : 3 * x + 13 ≠ 0
- `hebisch_hebisch_hebisch_2574` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_2587` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2752` — failed: unsolved goals | x : ℝ | h2 : 3 ≠ 0 | h3 : 2 ≠ 0 | h4 : x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_2779` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_2794` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => 1 / 4 * x - 1 / 4 * log x - 1 / 4 * log (2 * rexp 5 / x + rexp x)) ?m.296 x | is not definitionally equal to target | HasDerivAt ((fun x => 1 / 4) * id - (fun x => 1 / 4) * log) (0 * x + 1 / 4 * 1 - (0 * log x + 1 / 4 * x⁻¹)) x
- `hebisch_hebisch_hebisch_2815` — failed: unsolved goals | x : ℝ | h1 : x ^ 3 - x ≠ 0 | h2 : 2 ≠ 0 | h3 : (x ^ 2 - 1) / x ≠ 0
- `hebisch_hebisch_hebisch_2837` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2926` — failed: unsolved goals | x : ℝ | h2 : x ≠ 0 | h3 : 2 ≠ 0 | h5 : 4 ≠ 0
- `hebisch_hebisch_hebisch_3014` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | ((0 - 37500) * log x - 1500 * log x ^ 2 - 20 * log x ^ 3) * log (4 + log x) + | ((0 - 7500) * log x - 150 * log x ^ 2) * log (4 + log x) ^ 2 -
- `hebisch_hebisch_hebisch_3027` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | hp2_h1 : x ^ 2 ≠ 0 | h :
- `hebisch_hebisch_hebisch_3084` — failed: unsolved goals | x : ℝ | h2 : 5 ≠ 0 | h3 : x ≠ 0 | h4 : 5 + x ≠ 0
- `hebisch_hebisch_hebisch_316` — failed: unsolved goals | x : ℝ | h1 : x ^ 3 ≠ 0 | h2 : rexp x ≠ 0 | h3 : 3 ≠ 0
- `hebisch_hebisch_hebisch_3176` — failed: unsolved goals | x : ℝ | h2 : x ≠ 0 | hp2_h2 : x ^ 2 ≠ 0 | hq_h1_h2 : x ^ 2 * rexp (-3 + x * (-1 / 2)) - x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_3298` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3329` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3344` — failed: unsolved goals | x : ℝ | h2 : 3 ≠ 0 | h3 : 5 ≠ 0 | hq_h2_h3 : 15 ≠ 0
- `hebisch_hebisch_hebisch_3471` — failed: unsolved goals | x : ℝ | h4 : x ≠ 0 | h5 : 2 ≠ 0 | h6 : 5 ≠ 0
- `hebisch_hebisch_hebisch_3496` — failed: unsolved goals | x : ℝ | h2 : 2 ≠ 0 | h3 : 4 + log 2 ≠ 0 | hp2_h2 : 4 ≠ 0
- `hebisch_hebisch_hebisch_3545` — failed: unsolved goals | x : ℝ | h4 : 1 + x ≠ 0 | h5 : 1 - x ≠ 0 | h6 : 5 ≠ 0
- `hebisch_hebisch_hebisch_3653` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3697` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => 0 - x - 5 * x * rexp (2 * x) - log x - log (log (log x))) ?m.273 x | is not definitionally equal to target | HasDerivAt ((fun x => 0) - id - (fun x => 5) * id * rexp ∘ HMul.hMul 2) | (0 - 1 - ((0 * x + 5 * 1) * rexp (2 * x) + 5 * x * (rexp (2 * x) * (0 * x + 2 * 1)))) x
- `hebisch_hebisch_hebisch_3702` — failed: unsolved goals | x : ℝ | h1 : log (x ^ 2) ^ 2 ≠ 0 | h2 : x ^ 2 ≠ 0 | h3 : 2 ≠ 0
- `hebisch_hebisch_hebisch_3743` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_3757` — failed: unsolved goals | x : ℝ | h1 : log 3 ≠ 0 | h2 : 3 ≠ 0 | h3 : 2 ≠ 0
- `hebisch_hebisch_hebisch_3780` — failed: unsolved goals | x : ℝ | h2 : 2 ≠ 0 | hp2_h2 : 4 ≠ 0 | h :
- `hebisch_hebisch_hebisch_3787` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3806` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_384` — failed: unsolved goals | x : ℝ | h1 : | 16 * x ^ 3 * log (1 / x) ^ 2 * log x ^ 2 - 320 * x ^ 3 * log (1 / x) ^ 2 * log x + 1600 * x ^ 3 * log (1 / x) ^ 2 - | x ^ 4 +
- `hebisch_hebisch_hebisch_3846` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3883` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3909` — failed: Application type mismatch: The argument | Real.hasDerivAt_exp ((45 * x ^ 3 + (15 - 10 * x - x ^ 3) * rexp x) * rexp (0 - x) / (0 - 15 + x ^ 3)) | has type | HasDerivAt rexp (rexp ((45 * x ^ 3 + (15 - 10 * x - x ^ 3) * rexp x) * rexp (0 - x) / (0 - 15 + x ^ 3))) | ((45 * x ^ 3 + (15 - 10 * x - x ^ 3) * rexp x) * rexp (0 - x) / (0 - 15 + x ^ 3))
- `hebisch_hebisch_hebisch_397` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3997` — failed: unsolved goals | x : ℝ | h1 : rexp (rexp (x ^ 2)) * x + x ^ 2 - 5 * x ≠ 0 | h2 : x ≠ 0 | h3 : 0 - 5 + x + rexp (rexp (x ^ 2)) ≠ 0
- `hebisch_hebisch_hebisch_4022` — failed: unsolved goals | x : ℝ | h1 : rexp x ^ 2 ≠ 0 | h : HasDerivAt (fun x => -(rexp (-(x * 2)) * 5)) (rexp (-(x * 2)) * 10) x | hs : sin x ^ 2 + cos x ^ 2 = 1
- `hebisch_hebisch_hebisch_4029` — failed: unsolved goals | x : ℝ | h1 : 2 * x * log (1 / 3 * x / rexp 5) - rexp x * x ^ 3 - 2 * x ^ 2 ≠ 0 | h2 : 1 / 3 * x / rexp 5 ≠ 0 | h3 : rexp 5 ≠ 0
- `hebisch_hebisch_hebisch_4040` — failed: unsolved goals | x : ℝ | h4 : 5 + x ^ 2 ≠ 0 | hp2_h2 : 625 + x ^ 2 * 500 + x ^ 4 * 150 + x ^ 6 * 20 + x ^ 8 ≠ 0 | hp2_h4 : 25 + x ^ 2 * 10 + x ^ 4 ≠ 0
- `hebisch_hebisch_hebisch_4190` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4219` — failed: unsolved goals | x : ℝ | h1 : rexp x * x ^ 2 + 5 * x ^ 3 ≠ 0 | h2 : x ≠ 0 | h3 : 5 * x + rexp x ≠ 0
- `hebisch_hebisch_hebisch_4226` — failed: unsolved goals | x : ℝ | h : | HasDerivAt | (fun x =>
- `hebisch_hebisch_hebisch_4234` — failed: unsolved goals | x : ℝ | h1 : 29 ≠ 0 | h : | HasDerivAt
- `hebisch_hebisch_hebisch_4257` — failed: unsolved goals | x : ℝ | h1 : rexp (x ^ 2 * log 5 ^ 2 * log x ^ 4) ^ 2 ≠ 0 | h2 : 5 ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_4321` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4356` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4391` — failed: unsolved goals | x : ℝ | h1 : x ^ 3 ≠ 0 | h2 : 2 ≠ 0 | h3 : x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_4409` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | h2 : x ^ 2 ≠ 0 | hq_h1_h2 : x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_4454` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_4459` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_4466` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_447` — failed: unsolved goals | x : ℝ | h1 : log 2 ^ 2 + (2 * x ^ 2 - 2 * x) * log 2 + x ^ 4 - 2 * x ^ 3 + x ^ 2 ≠ 0 | h2 : 2 ≠ 0 | h3 : 5 / x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_4550` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4559` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4631` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4651` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : x ≠ 0 | hq_h1_h2 : x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_4687` — failed: unsolved goals | x : ℝ | h1 : (12 * x + 16) * rexp x - 3 * x ^ 2 - 4 * x ≠ 0 | h2 : ((0 - 4) * rexp x + x) / (12 * x + 16) ≠ 0 | h3 : 12 * x + 16 ≠ 0
- `hebisch_hebisch_hebisch_4712` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => x ^ 2 - 9 / 256 * x ^ 3 - 9 / 256 * x * rexp (2 * x) - 9 / 128 * x ^ 2 * rexp x) ?m.448 x | is not definitionally equal to target | HasDerivAt (id ^ 2 - (fun x => 9 / 256) * id ^ 3) | (↑2 * x ^ (2 - 1) * 1 - (0 * x ^ 3 + 9 / 256 * (↑3 * x ^ (3 - 1) * 1))) x
- `hebisch_hebisch_hebisch_4713` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4752` — failed: unsolved goals | x : ℝ | h3 : 2 ≠ 0 | h5 : x ^ 2 ≠ 0 | h7 : x ≠ 0
- `hebisch_hebisch_hebisch_4753` — failed: Application type mismatch: The argument | HasDerivAt.div | (HasDerivAt.mul | (HasDerivAt.mul (hasDerivAt_const x 2) | (HasDerivAt.comp x ?m.572 (HasDerivAt.add (hasDerivAt_const x (0 - 3)) (HasDerivAt.pow (hasDerivAt_id x) 2))))
- `hebisch_hebisch_hebisch_4780` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4785` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4945` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4956` — failed: unsolved goals | x : ℝ | hp2_h1 : 1 - x * 4 + x ^ 2 * 6 - x ^ 3 * 4 + x ^ 4 ≠ 0 | hp2_h2 : 1 - x * 2 + x ^ 2 ≠ 0 | hq_h1_h2 : -1 + x * 3 - x ^ 2 * 3 + x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_4957` — failed: unsolved goals | x : ℝ | h2 : rexp x ≠ 0 | h : | HasDerivAt (fun x => x ^ 2 * rexp (-(x * 2) + x * rexp (-x) * (8 / 5) - rexp x * 2) * 4)
- `hebisch_hebisch_hebisch_4967` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4971` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_5024` — failed: unsolved goals | x : ℝ | h1 : rexp x ≠ 0 | h3 : x ≠ 0 | hq_h1_h3 : x * rexp x ≠ 0
- `hebisch_hebisch_hebisch_504` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5040` — failed: unsolved goals | x : ℝ | h1 : rexp 5 ^ 2 ≠ 0 | h2 : x ^ 2 ≠ 0 | h :
- `hebisch_hebisch_hebisch_5047` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5072` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5132` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_519` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | hp2_h1 : x ^ 2 ≠ 0 | h : HasDerivAt (fun x => x + rexp (10 - x * 2) - log x * 2) (1 - x⁻¹ * 2 - rexp (10 - x * 2) * 2) x
- `hebisch_hebisch_hebisch_5201` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5267` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5298` — failed: unsolved goals | x : ℝ | h2 : x ≠ 0 | h3 : log x ≠ 0 | hq_h2_h3 : x * log x ≠ 0
- `hebisch_hebisch_hebisch_5318` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5320` — failed: unsolved goals | x : ℝ | h1 : x ^ 3 ≠ 0 | h2 : log 5 ≠ 0 | h3 : 5 ≠ 0
- `hebisch_hebisch_hebisch_5375` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_543` — failed: unsolved goals | x : ℝ | h1 : | ((x ^ 3 - 8 * x ^ 2) * rexp x ^ 2 - 4 * rexp x * x ^ 3) * log (((8 - x) * rexp x + 4 * x) / x) ^ 2 + | ((8 * x ^ 3 - 64 * x ^ 2) * rexp x ^ 2 - 32 * rexp x * x ^ 3) * log (((8 - x) * rexp x + 4 * x) / x) +
- `hebisch_hebisch_hebisch_5436` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5449` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5468` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : 2 * (x + 1) * log 2 / rexp (2 + x) ≠ 0 | h3 : rexp (2 + x) ≠ 0
- `hebisch_hebisch_hebisch_5512` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_5519` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_5643` — failed: unsolved goals | x : ℝ | h1 : rexp x ^ 2 ≠ 0 | h2 : x ≠ 0 | h :
- `hebisch_hebisch_hebisch_5661` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5696` — failed: unsolved goals | x : ℝ | hp2_h3 : 16 - x * 8 + x ^ 2 ≠ 0 | hq_h2_h3 : x * 20 + x * rexp x - x ^ 2 * 5 - rexp x * 4 ≠ 0 | h :
- `hebisch_hebisch_hebisch_5763` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => 0 - log x - log (log x - log (2 + x)) - log (log (3 + 4 * x))) ?m.533 x | is not definitionally equal to target | HasDerivAt ((fun x => 0) - log - log ∘ (log - log ∘ ((fun x => 2) + id))) | (0 - x⁻¹ - (log x - log (2 + x))⁻¹ * (x⁻¹ - (2 + x)⁻¹ * (0 + 1))) x
- `hebisch_hebisch_hebisch_5771` — failed: unsolved goals | x : ℝ | h3 : x ≠ 0 | h4 : 3 + x ≠ 0 | hp2_h1 : 81 + x * 54 + x ^ 2 * 9 ≠ 0
- `hebisch_hebisch_hebisch_5865` — failed: unsolved goals | x : ℝ | h2 : 2 ≠ 0 | h3 : x ≠ 0 | hp2_h2 : 4 ≠ 0
- `hebisch_hebisch_hebisch_5969` — failed: unsolved goals | x : ℝ | h1 : rexp (4 * x) ^ 2 + (2 * x ^ 2 + 2 * x) * rexp (4 * x) + x ^ 4 + 2 * x ^ 3 + x ^ 2 ≠ 0 | h2 : rexp (4 * x) + x ^ 2 + x ≠ 0 | h3 : x + x ^ 2 + rexp (4 * x) ≠ 0
- `hebisch_hebisch_hebisch_5972` — failed: unsolved goals | x : ℝ | h1 : log (x ^ 2) ^ 3 ≠ 0 | h2 : x ^ 2 ≠ 0 | h4 : x ≠ 0
- `hebisch_hebisch_hebisch_6031` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6090` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6112` — failed: unsolved goals | x : ℝ | h1 : log 2 ≠ 0 | h2 : 2 ≠ 0 | hq_h1_h2 : log 2 * 2 ≠ 0
- `hebisch_hebisch_hebisch_6128` — failed: unsolved goals | x : ℝ | h : | HasDerivAt (fun x => rexp (1 - rexp (5 + rexp 4 + x))) (-(rexp (5 + x + rexp 4) * rexp (1 - rexp (5 + x + rexp 4)))) x | hs : sin x ^ 2 + cos x ^ 2 = 1
- `hebisch_hebisch_hebisch_613` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6141` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6323` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6392` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_6436` — failed: unsolved goals | x : ℝ | h1 : log (rexp (1 / 4 * (16 * rexp (x ^ 2) * x + 3 * x ^ 2) / rexp (x ^ 2)) / rexp 1) ≠ 0 | h2 : rexp (1 / 4 * (16 * rexp (x ^ 2) * x + 3 * x ^ 2) / rexp (x ^ 2)) / rexp 1 ≠ 0 | h3 : rexp 1 ≠ 0
- `hebisch_hebisch_hebisch_6443` — failed: unsolved goals | x : ℝ | h1 : log x ≠ 0 | h2 : x ≠ 0 | h3 : log 5 ≠ 0
- `hebisch_hebisch_hebisch_6520` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_6625` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_666` — failed: unsolved goals | x : ℝ | h3 : 2 ≠ 0 | hp2_h1 : 400 - x * 800 + x ^ 2 * 600 - x ^ 3 * 200 + x ^ 4 * 25 ≠ 0 | hp2_h2 : 64 - x * 64 + x ^ 2 * 16 ≠ 0
- `hebisch_hebisch_hebisch_6671` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | h3 : 2 ≠ 0 | h4 : 3 ≠ 0
- `hebisch_hebisch_hebisch_6682` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6720` — failed: unsolved goals | x : ℝ | h1 : rexp x ≠ 0 | h : | HasDerivAt (fun x => -15 / 2 + x ^ 2 * (15 / 4) + x ^ 3 * rexp (5 - x) * (5 / 4) + x ^ 4 * rexp (-x) * (5 / 2))
- `hebisch_hebisch_hebisch_6754` — failed: unsolved goals | x : ℝ | h1 : 3 * x * rexp x ^ 2 + 6 * rexp x * x ^ 2 + 3 * x ^ 3 ≠ 0 | h2 : 3 ≠ 0 | h3 : rexp x + x ≠ 0
- `hebisch_hebisch_hebisch_6889` — failed: unsolved goals | x : ℝ | h1 : rexp x ^ 2 - 3 * rexp x * x + 2 * x ^ 2 ≠ 0 | h2 : x ≠ 0 | h3 : (x * rexp x ^ 2 - 2 * rexp x * x ^ 2) / (rexp x ^ 2 - 2 * rexp x * x + x ^ 2) ≠ 0
- `hebisch_hebisch_hebisch_6890` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6956` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6988` — failed: unsolved goals | x : ℝ | h1 : rexp (x ^ 2) ^ 2 - 4 * rexp (x ^ 2) + 4 ≠ 0 | h2 : 0 - 2 + rexp (x ^ 2) ≠ 0 | h :
- `hebisch_hebisch_hebisch_7075` — failed: unsolved goals | x : ℝ | h1 : log x ≠ 0 | h2 : x ≠ 0 | h3 : rexp x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_7186` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : 5 ≠ 0 | hp2_h1 : x ^ 4 ≠ 0
- `hebisch_hebisch_hebisch_7241` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : x ≠ 0 | hq_h1_h2 : x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_7295` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7326` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_737` — failed: unsolved goals | x : ℝ | h1 : rexp x * rexp (x + 1) ^ 4 - 256 * rexp x * x ≠ 0 | h2 : 1 / 256 * rexp (x + 1) ^ 4 - x ≠ 0 | h3 : (0 - 8) * log 2 + log ((0 - 256) * x + rexp (4 + 4 * x)) ≠ 0
- `hebisch_hebisch_hebisch_740` — failed: Application type mismatch: The argument | Real.hasDerivAt_exp (0 - 59 - 16 * x - x ^ 2) | has type | HasDerivAt rexp (rexp (0 - 59 - 16 * x - x ^ 2)) (0 - 59 - 16 * x - x ^ 2) | but is expected to have type
- `hebisch_hebisch_hebisch_7406` — failed: unsolved goals | x : ℝ | h1 : | (x * rexp (3 - x) + 3 * x) * log (rexp (3 - x) + 3) ^ 8 + | ((0 - 4) * x ^ 2 * rexp (3 - x) - 12 * x ^ 2) * log (rexp (3 - x) + 3) ^ 4 +
- `hebisch_hebisch_hebisch_7442` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7461` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7631` — failed: unsolved goals | x : ℝ | h1 : rexp (x + log x) ^ 2 ≠ 0 | h2 : x ≠ 0 | h :
- `hebisch_hebisch_hebisch_7703` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7748` — failed: Application type mismatch: The argument | HasDerivAt.add (HasDerivAt.div (hasDerivAt_const x 1) (hasDerivAt_id x) ?m.525) (hasDerivAt_id x) | has type | HasDerivAt ((fun x => 1) / id + id) ((0 * id x - 1 * 1) / id x ^ 2 + 1) x | but is expected to have type
- `hebisch_hebisch_hebisch_7780` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7867` — failed: unsolved goals | x : ℝ | h1 : x ^ 3 ≠ 0 | h2 : rexp x ≠ 0 | h3 : 2 ≠ 0
- `hebisch_hebisch_hebisch_8015` — failed: unsolved goals | x : ℝ | h2 : x ^ 3 ≠ 0 | h3 : x + x ^ 2 ≠ 0 | hq_h2_h3 : x ^ 4 + x ^ 5 ≠ 0
- `hebisch_hebisch_hebisch_8027` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8052` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | h2 : x ^ 2 ≠ 0 | hq_h1_h2 : x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_8070` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8092` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => 8 * x - 16 * x * rexp (2 * rexp x) - rexp x) ?m.213 x | is not definitionally equal to target | HasDerivAt ((fun x => 8) * id - (fun x => 16) * id * rexp ∘ ((fun x => 2) * rexp)) | (0 * x + 8 * 1 - ((0 * x + 16 * 1) * rexp (2 * rexp x) + 16 * x * (rexp (2 * rexp x) * (0 * rexp x + 2 * rexp x))))
- `hebisch_hebisch_hebisch_8130` — failed: unsolved goals | x : ℝ | h1 : x ^ 3 + 2 * x ≠ 0 | h2 : (x ^ 2 + 2) / x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_8202` — failed: unsolved goals | x : ℝ | h1 : x ^ 3 ≠ 0 | h2 : x ^ 2 ≠ 0 | hq_h1_h2 : x ^ 5 ≠ 0
- `hebisch_hebisch_hebisch_8256` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8296` — failed: unsolved goals | x : ℝ | h1 : x * rexp 4 * rexp 5 + 5 * x * rexp 4 ≠ 0 | h2 : 5 * rexp (3 / (x * rexp 4 * rexp 5 + 5 * x * rexp 4)) ≠ 0 | h3 : 5 * rexp 4 + rexp 9 ≠ 0
- `hebisch_hebisch_hebisch_8343` — failed: unsolved goals | x : ℝ | h2 : 2 ≠ 0 | hp2_h1 : 64 - x * 512 + x ^ 2 * 1536 - x ^ 3 * 2048 + x ^ 4 * 1024 ≠ 0 | hp2_h2 : 4 ≠ 0
- `hebisch_hebisch_hebisch_8366` — failed: unsolved goals | x : ℝ | h2 : x ≠ 0 | hp2_h2 : x ^ 2 ≠ 0 | hp2_h3 hp2_h5 : 4 + x * 12 + x ^ 2 * 9 ≠ 0
- `hebisch_hebisch_hebisch_839` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8412` — failed: unsolved goals | x : ℝ | h1 : rexp x ^ 2 ≠ 0 | h2 : x ^ 19 - 30 * x ^ 18 + 225 * x ^ 17 ≠ 0 | h3 : x ^ 17 - 15 * x ^ 16 ≠ 0
- `hebisch_hebisch_hebisch_8522` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8552` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | h2 : 2 ≠ 0 | hp2_h1 : x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_8613` — failed: unsolved goals | x : ℝ | h2 : x ≠ 0 | h3 : 2 ≠ 0 | hp2_h2 : x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_8651` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8746` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8762` — failed: unsolved goals | x : ℝ | h1 : 5 / 4 ≠ 0 | h2 : x ^ 3 ≠ 0 | hq_h1_h2 : x ^ 3 * (5 / 4) ≠ 0
- `hebisch_hebisch_hebisch_8888` — failed: unsolved goals | x : ℝ | h1 : x * rexp (5 * x) - x ^ 2 - 4 ≠ 0 | h2 : x ≠ 0 | h3 : (0 - 4) / x - x + rexp (5 * x) ≠ 0
- `hebisch_hebisch_hebisch_8918` — failed: unsolved goals | x : ℝ | h1 : x ^ 3 ≠ 0 | h2 : x ^ 2 ≠ 0 | hq_h1_h2 : x ^ 5 ≠ 0
- `hebisch_hebisch_hebisch_8927` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (0 - (126 + 63 * log 2)) / (32 * x ^ 2) - (126 - 63 * log 2) / (128 * x) - | (0 - 2686 + 1343 * log 2) / (128 * (4 + x)))
- `hebisch_hebisch_hebisch_9056` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9174` — failed: unsolved goals | x : ℝ | h2 : x ≠ 0 | h3 : 1 + log x ≠ 0 | h4 : x ^ 3 + log x ≠ 0
- `hebisch_hebisch_hebisch_9178` — failed: unsolved goals | x : ℝ | h1 : rexp (rexp 5) + rexp 4 ≠ 0 | h2 : 3 ≠ 0 | h3 : rexp 4 + rexp (rexp 5) ≠ 0
- `hebisch_hebisch_hebisch_9260` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9342` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9363` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9377` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9381` — failed: Application type mismatch: The argument | Real.hasDerivAt_exp (5 - x - rexp x) | has type | HasDerivAt rexp (rexp (5 - x - rexp x)) (5 - x - rexp x) | but is expected to have type
- `hebisch_hebisch_hebisch_9451` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | h2 : x ^ 2 ≠ 0 | hq_h1_h2 : x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_9454` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_9492` — failed: Application type mismatch: The argument | HasDerivAt.div | (HasDerivAt.mul (hasDerivAt_const x 8) | (HasDerivAt.comp x (Real.hasDerivAt_exp (0 - x)) (HasDerivAt.sub (hasDerivAt_const x 0) (hasDerivAt_id x)))) | (hasDerivAt_id x) ?m.756
- `hebisch_hebisch_hebisch_9605` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9657` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | h3 : 5 ≠ 0 | hp2_h1 : x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_9708` — failed: unsolved goals | x : ℝ | h1 : | (625 * x ^ 4 * rexp 3 ^ 2 - 2500 * x ^ 4 * rexp 3 + 2500 * x ^ 4) * rexp x ^ 2 + | (5000 * x ^ 3 * rexp 3 ^ 2 - 20000 * x ^ 3 * rexp 3 + 20000 * x ^ 3) * rexp x +
- `hebisch_hebisch_hebisch_9724` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9768` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 * log x ^ 2 + (x ^ 2 + 4 * x) * log x ≠ 0 | h2 : x ≠ 0 | h3 : 1 + 4 / x + log x ≠ 0
- `hebisch_hebisch_hebisch_9781` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9783` — failed: unsolved goals | x : ℝ | h1 : (x ^ 3 - 3 * x ^ 2) * rexp x - 3 * x ^ 2 + 9 * x ≠ 0 | h2 : (rexp x * x - 3) / rexp x ≠ 0 | h3 : rexp x ≠ 0
- `hebisch_hebisch_hebisch_979` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9801` — failed: unsolved goals | x : ℝ | h1 : x + rexp 1 ≠ 0 | h : | HasDerivAt
- `hebisch_hebisch_hebisch_9830` — failed: unsolved goals | x : ℝ | h3 : 125 ≠ 0 | hp2_h1 : 1 - x * 20 + x ^ 2 * 150 - x ^ 3 * 500 + x ^ 4 * 625 ≠ 0 | hp2_h2 : 1 - x * 10 + x ^ 2 * 25 ≠ 0
- `hebisch_hebisch_hebisch_9850` — failed: unsolved goals | x : ℝ | h2 : x ≠ 0 | h3 : 33 ≠ 0 | hp2_h2 : x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_9988` — failed: unsolved goals | x : ℝ | h2 : x ≠ 0 | h3 : log x ≠ 0 | hq_h2_h3 : x * log x ≠ 0
- `independent_independent_apostol_problems_1` — failed: `simp` made no progress
- `independent_independent_apostol_problems_152` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_apostol_problems_79` — failed: unsolved goals | x a b : ℝ | h1 : 1 + b ^ 2 / a ^ 2 ≠ 0 | h2 : a ^ 2 ≠ 0 | h3 : a ≠ 0
- `independent_independent_apostol_problems_85` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_bronstein_problems_5` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_charlwood_problems_15` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | h2 : 0 < x ^ 3 + 1 | h3 : 0 < 1 + x ^ 3
- `independent_independent_hearn_problems_232` — failed: linarith failed to find a contradiction | case h1 | x a : ℝ | h : | HasDerivAt (fun x => sin a * x * (1 / 2) + cos (a + x * 2) * (-1 / 4)) (sin a * (1 / 2) + sin (a + x * 2) * (1 / 2)) x
- `independent_independent_hearn_problems_269` — failed: unsolved goals | x : ℝ | h2 : 0 < 6 | hp2_h1 : 100 - x * 240 + x ^ 2 * 324 - x ^ 3 * 216 + x ^ 4 * 81 ≠ 0 | h :
- `independent_independent_hearn_problems_37` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_jeffrey_problems_6` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_jeffrey_problems_7` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_jeffrey_problems_8` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_moses_problems_2` — failed: `simp` made no progress
- `independent_independent_moses_problems_30` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_moses_problems_66` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `independent_independent_moses_problems_89` — failed: unsolved goals | x : ℝ | h1 : rexp x + 1 ≠ 0 | h2 : 1 + rexp x ≠ 0 | h : HasDerivAt (fun x => log (1 + rexp x)) ((1 + rexp x)⁻¹ * (0 + rexp x)) x
- `independent_independent_stewart_problems_173` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_stewart_problems_203` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_stewart_problems_27` — failed: Application type mismatch: The argument | hasDerivAt_sin t | has type | HasDerivAt sin (cos t) t | but is expected to have type
- `independent_independent_stewart_problems_305` — failed: `simp` made no progress
- `independent_independent_stewart_problems_333` — failed: unsolved goals | x : ℝ | h1 : rexp (3 * x) - rexp x ≠ 0 | h2 : 0 - 1 + rexp x ≠ 0 | h3 : 1 + rexp x ≠ 0
- `independent_independent_stewart_problems_345` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_stewart_problems_365` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `independent_independent_timofeev_problems_110` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_timofeev_problems_170` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_timofeev_problems_253` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_timofeev_problems_300` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_timofeev_problems_432` — failed: unsolved goals | x : ℝ | h1 : (2 * x ^ 2 - 8 * x + 1) ^ (5 / 2) ≠ 0 | h2 : 0 < 2 * x ^ 2 - 8 * x + 1 | h3 : 84 ≠ 0
- `independent_independent_timofeev_problems_435` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h : | HasDerivAt
- `independent_independent_timofeev_problems_474` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_timofeev_problems_493` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h1 : 2 ≠ 0 | hp2_h1 : 4 ≠ 0
- `independent_independent_timofeev_problems_592` — failed: `simp` made no progress
- `independent_independent_timofeev_problems_97` — failed: unsolved goals | x : ℝ | h2 : 2 ≠ 0 | h3 : x ^ 2 ≠ 0 | h4 : x ≠ 0
- `independent_independent_welz_problems_25` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `independent_independent_wester_problems_4` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `mit_bee_mit_bee_mit_bee_115` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `mit_bee_mit_bee_mit_bee_167` — failed: `simp` made no progress
- `mit_bee_mit_bee_mit_bee_256` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `mit_bee_mit_bee_mit_bee_291` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h : | HasDerivAt (fun x => cos (x * 3) * (1 / 2) + cos (x * 43) * (-1 / 2))
- `mit_bee_mit_bee_mit_bee_310` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => 1 / (4 * cos x ^ 4) - 1 / cos x ^ 2 - log (cos x)) ?m.302 x | is not definitionally equal to target | HasDerivAt ((fun x => 1) / ((fun x => 4) * cos ^ 4) - (fun x => 1) / cos ^ 2) | ((0 * (4 * cos x ^ 4) - 1 * (0 * cos x ^ 4 + 4 * (↑4 * cos x ^ (4 - 1) * -sin x))) / (4 * cos x ^ 4) ^ 2 -
- `mit_bee_mit_bee_mit_bee_32` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h : | HasDerivAt
- `mit_bee_official_mit_bee_official_mit_bee_official_154` — failed: unsolved goals | x : ℝ | h : | HasDerivAt | (fun x =>
- `mit_bee_official_mit_bee_official_mit_bee_official_5` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `mit_bee_official_mit_bee_official_mit_bee_official_74` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `mit_bee_official_mit_bee_official_mit_bee_official_90` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `mit_bee_official_mit_bee_official_mit_bee_official_92` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1051` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | log (a + b * x) / (4 * a ^ 2 * b * c ^ 2) - log (0 - a + b * x) / (4 * a ^ 2 * b * c ^ 2) - | 1 / (2 * (a * b ^ 2 * c ^ 2 * x - a ^ 2 * b * c ^ 2)))
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1155` — failed: unsolved goals | x : ℝ | h1 : (3 - 6 * x) ^ (5 / 2) ≠ 0 | h2 : (4 * x + 2) ^ (5 / 2) ≠ 0 | h3 : 0 < 3 - 6 * x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1385` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1450` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1485` — failed: unsolved goals | x a b c d : ℝ | h1 : (a + b * x) ^ (9 / 2) ≠ 0 | h2 : 0 < a + b * x | h3 : 0 < c + d * x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1714` — failed: unsolved goals | x a b c d : ℝ | h1 : (c + d * x) ^ (5 / 4) ≠ 0 | h2 : 0 < c + d * x | h3 : 0 < a + b * x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_312` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_333` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_349` — failed: unsolved goals | x a b : ℝ | h1 : (a + b * x) ^ (5 / 2) ≠ 0 | h2 : 0 < a + b * x | h3 : b ^ 5 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_5` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_516` — failed: unsolved goals | x b : ℝ | h1 : x ^ (5 / 2) ≠ 0 | h2 : 0 < x | h3 : 0 < (0 - b) * x + 2
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_603` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_677` — failed: unsolved goals | x a b : ℝ | h1 : x ^ (2 / 3) ≠ 0 | h2 : a + b * x ≠ 0 | h3 : 0 < x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_94` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (0 - 5) * a * b ^ 4 / (7 * x ^ 7) - 5 * a ^ 2 * b ^ 3 / (4 * x ^ 8) - 10 * a ^ 3 * b ^ 2 / (9 * x ^ 9) - | a ^ 4 * b / (2 * x ^ 10) -
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1145` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1166` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1332` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1356` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1390` — failed: unsolved goals | x : ℝ | h3 : 9 ≠ 0 | h5 : 25 ≠ 0 | hq_h3_h5 : 225 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1445` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1629` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1870` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (50000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1961` — failed: unsolved goals | x : ℝ | h1 : (5 * x + 3) ^ 2 ≠ 0 | h2 : 0 < 1 - 2 * x | h3 : 0 < 55
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2029` — failed: Tactic `simp` failed with a nested error: | Tactic `simp` failed with a nested error: | maximum recursion depth has been reached | use `set_option maxRecDepth <num>` to increase limit | use `set_option diagnostics true` to get diagnostic information
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2149` — failed: unsolved goals | x : ℝ | h1 : (1 - 2 * x) ^ (5 / 2) ≠ 0 | h2 : 5 * x + 3 ≠ 0 | h3 : 0 < 1 - 2 * x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_220` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2257` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2356` — failed: unsolved goals | x : ℝ | h1 : (3 * x + 2) ^ 4 ≠ 0 | h2 : (5 * x + 3) ^ (3 / 2) ≠ 0 | h3 : 0 < 5 * x + 3
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2389` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2400` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_267` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2994` — failed: unsolved goals | x a b c d : ℝ | h1 : (a + b * x) ^ (1 / 3) ≠ 0 | h2 : (c + d * x) ^ (2 / 3) ≠ 0 | h3 : 0 < a + b * x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_38` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_384` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_453` — failed: unsolved goals | x a b c d : ℝ | h1 : (a + b * x) ^ 2 ≠ 0 | h2 : 0 < c + d * x | h3 : b ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_50` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_582` — failed: unsolved goals | x a b c d : ℝ | h1 : 0 < a + b * x | h2 : 0 < c + d * x | h3 : 5 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_76` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_780` — failed: unsolved goals | x a b c d : ℝ | h1 : (a + b * x) ^ (5 / 2) ≠ 0 | h2 : 0 < a + b * x | h3 : 0 < c + d * x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_876` — failed: unsolved goals | x : ℝ | h1 : (1 - x) ^ (1 / 4) ≠ 0 | h2 : 0 < 1 - x | h3 : 0 < x + 1
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_2_258` — failed: unsolved goals | x b : ℝ | h1 : x ≠ 0 | h3 : 2 ≠ 0 | hp2_h1 : x ^ 2 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_2_8` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_2_913` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_1043` — failed: unsolved goals | x : ℝ | h1 : 3 * x ^ 2 - 2 ≠ 0 | h2 : (3 * x ^ 2 - 1) ^ (1 / 4) ≠ 0 | h3 : 0 < 3 * x ^ 2 - 1
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_110` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_611` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_772` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_8_38` — failed: unsolved goals | x A B a b : ℝ | h1 : (a + b * x ^ 2) ^ (5 / 2) ≠ 0 | h2 : 0 < a + b * x ^ 2 | h3 : 3 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1112` — failed: unsolved goals | x a b : ℝ | h1 : (a + b * x ^ 4) ^ (5 / 4) ≠ 0 | h2 : 0 < a + b * x ^ 4 | h3 : b ^ 3 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_113` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1152` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1318` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1441` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1574` — failed: unsolved goals | x a b : ℝ | h1 : a + b / x ≠ 0 | h2 : x ≠ 0 | h3 : a ^ 3 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1578` — failed: unsolved goals | x a b : ℝ | h1 : x ^ 3 ≠ 0 | h2 : a + b / x ≠ 0 | h3 : x ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1587` — failed: unsolved goals | x a b : ℝ | h1 : (a + b / x) ^ 2 ≠ 0 | h2 : x ≠ 0 | h3 : a ^ 4 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_2` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_270` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (0 - 5) * a * b ^ 4 / (18 * x ^ 18) - 10 * a ^ 2 * b ^ 3 / (21 * x ^ 21) - 5 * a ^ 3 * b ^ 2 / (12 * x ^ 24) - | 5 * a ^ 4 * b / (27 * x ^ 27) -
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_2775` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (2 * b * log (a + b * (c + d * x) ^ 3) / a ^ 3 - 2 * b * log ((c + d * x) ^ 3) / a ^ 3 - | b / (a ^ 2 * (a + b * (c + d * x) ^ 3)) -
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_279` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_325` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_695` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_826` — failed: unsolved goals | x a b : ℝ | h1 : x ^ 5 ≠ 0 | h2 : (a + b * x ^ 4) ^ (3 / 2) ≠ 0 | h3 : 0 < a + b * x ^ 4
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_3_9` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_324` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_428` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_6` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_672` — failed: unsolved goals | x a b c d : ℝ | h1 : a + b * x ^ 6 ≠ 0 | h2 : (c + d * x ^ 6) ^ (1 / 2) ≠ 0 | h3 : 0 < c + d * x ^ 6
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_8_31` — failed: unsolved goals | x C a : ℝ | h1 : a - 8 * x ^ 3 ≠ 0 | h2 : 0 < 0 - a | h3 : 0 < 3
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_8_76` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (0 - 1 / 2) * x ^ 2 - 1 / 3 * 3 ^ (1 / 2) * arctan (2 / 3 * 3 ^ (1 / 2) * (1 / 2 + x)) - log (0 - 1 + x) - | 1 / 2 * log (1 + x + x ^ 2))
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_2_107` — failed: unsolved goals | x a b : ℝ | h1 : x ^ 3 ≠ 0 | h2 : (a * x + b * x ^ (1 / 2)) ^ (1 / 2) ≠ 0 | h3 : 0 < a * x + b * x ^ (1 / 2)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_2_113` — failed: unsolved goals | x a b : ℝ | h1 : x ≠ 0 | h2 : (a * x + b * x ^ (1 / 2)) ^ (3 / 2) ≠ 0 | h3 : 0 < x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_3_105` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_3_132` — failed: unsolved goals | x A B b c : ℝ | h1 : (b * x ^ 2 + c * x ^ 4) ^ (1 / 2) ≠ 0 | h2 : 0 < b * x ^ 2 + c * x ^ 4 | h3 : c ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_3_56` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_3_78` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_1_114` — failed: unsolved goals | x : ℝ | h3 : 0 < 3 | h5 : 0 < 10 | h :
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1026` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1112` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1137` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1163` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1212` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1227` — failed: unsolved goals | x a b c d : ℝ | h1 : (b * d + 2 * c * d * x) ^ 2 ≠ 0 | h2 : (a + b * x + c * x ^ 2) ^ (3 / 2) ≠ 0 | h3 : 0 < a + b * x + c * x ^ 2
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1237` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_185` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_2026` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_2156` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (50000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_257` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_58` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_744` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => (0 - 2) * a * b * x ^ 2 - 7 * a ^ 2 * x - 8 * a ^ 3 * log (0 - a + b * x) / b - 1 / 3 * b ^ 2 * x ^ 3) | ?m.632 x | is not definitionally equal to target
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_766` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_780` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_970` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_1006` — failed: unsolved goals | x A B a b c : ℝ | h1 : x ^ (9 / 2) ≠ 0 | h2 : 0 < x | h3 : 7 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_14` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_145` — failed: unsolved goals | x A B b c : ℝ | h1 : x ^ (5 / 2) ≠ 0 | h2 : 0 < x | h3 : x ^ (1 / 2) ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_1505` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_153` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_1681` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_1729` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_1911` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_217` — failed: unsolved goals | x A B b c : ℝ | h1 : x ^ (5 / 2) ≠ 0 | h2 : 0 < x | h3 : 0 < b * x + c * x ^ 2
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_23` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_2408` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_2447` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_320` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_346` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_373` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_596` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_696` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_757` — failed: unsolved goals | x A B a b : ℝ | h1 : a ^ 2 + 2 * a * b * x + b ^ 2 * x ^ 2 ≠ 0 | h2 : 0 < x | h3 : a ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_816` — failed: unsolved goals | x A B a b : ℝ | h1 : x ^ (9 / 2) ≠ 0 | h2 : (a ^ 2 + 2 * a * b * x + b ^ 2 * x ^ 2) ^ (1 / 2) ≠ 0 | h3 : 0 < x
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_912` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_941` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_5_37` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_6_30` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_9_138` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_9_357` — timeout: Tactic `simp` failed with a nested error: | Tactic `simp` failed with a nested error: | Tactic `simp` failed with a nested error: | (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_181` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_202` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_212` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_288` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_472` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_5` — failed: unsolved goals | x a : ℝ | h1 : a ^ 2 + 2 * a * x ^ 2 + x ^ 4 - 1 ≠ 0 | h2 : 2 ≠ 0 | h3 : (1 + a) ^ (1 / 2) ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_752` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_3_127` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_4_244` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_4_269` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_4_83` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_6_15` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_6_21` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_6_52` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (50000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_6_7` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_2_0` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_2_366` — failed: unsolved goals | x : ℝ | h1 : x ^ 8 + 3 * x ^ 4 + 1 ≠ 0 | h2 : 0 < 5 | h3 : (0 - 5 ^ (1 / 2)) / (3 + 5 ^ (1 / 2)) - 1 / (3 + 5 ^ (1 / 2)) ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_3_32` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_4_improper_t_1_2_4_2_0` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_4_improper_t_1_2_4_2_119` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_4_improper_t_1_2_4_2_132` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_4_improper_t_1_2_4_2_21` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_1_286` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_1_371` — failed: unsolved goals | x : ℝ | h1 : 15 * x + 13 + 2 / x ≠ 0 | h2 : x ≠ 0 | h3 : 1 + 5 * x ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_1_376` — failed: unsolved goals | x : ℝ | h1 : x ^ 4 ≠ 0 | h2 : 15 * x + 13 + 2 / x ≠ 0 | h3 : x ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_1_472` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_58` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_712` — failed: unsolved goals | x : ℝ | h1 : 0 - x ^ (1 / 2) + (2 - x) ^ (1 / 2) ≠ 0 | h2 : 0 < x | h3 : 0 < 2 - x
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_755` — failed: unexpected token at this precedence level; consider parenthesizing the term | Try this: | [apply] ring_nf
- `rubi_rubi_t_3_logarithms_t_3_3_81` — failed: unsolved goals | x a b e1 : ℝ | h1 : x ≠ 0 | h2 : e1 * x ≠ 0 | hq_h1_h2 : e1 * x ^ 2 ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_1_2_77` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_1_3_7` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_12_42` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_1_339` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_1_546` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_30` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_699` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_731` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_3_1_108` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_3_1_136` — failed: unsolved goals | x A B a c e1 f : ℝ | h1 : ((0 - c) * sin (e1 + f * x) + c) ^ (7 / 2) ≠ 0 | h2 : 0 < (0 - c) * sin (e1 + f * x) + c | h3 : 0 < a * sin (e1 + f * x) + a
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_3_1_159` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_3_1_315` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_3_1_47` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_1_1_3` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_10_124` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_12_96` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_2_1_239` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_2_1_31` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_2_1_430` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_2_1_471` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_2_1_5` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_2_1_870` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_1_1` — failed: linarith failed to find a contradiction | case h1 | x A C c d : ℝ | h1 : d ≠ 0 | hp2_h1 : d ^ 2 ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_1_330` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_2_347` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_2_373` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_2_530` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_2_570` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_2_1_1180` — failed: linarith failed to find a contradiction | case h1 | x a b c d e1 f : ℝ | h1 : cos (e1 + f * x) ≠ 0 | h2 : f ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_1_243` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_2_41` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (50000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_3_156` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_7_669` — failed: `simp` made no progress
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_7_930` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_5_inverse_trig_functions_t_5_2_inverse_cosine_t_5_2_5_105` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_5_inverse_trig_functions_t_5_3_inverse_tangent_t_5_3_2_16` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_5_inverse_trig_functions_t_5_3_inverse_tangent_t_5_3_2_22` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | 1 / 2 * b * c * | (1 / 6 * b * c * ((0 - 1) / x ^ 2 - c ^ 2 * log (x ^ 2) + c ^ 2 * log (1 + c ^ 2 * x ^ 2)) -
- `rubi_rubi_t_5_inverse_trig_functions_t_5_3_inverse_tangent_t_5_3_2_64` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_5_inverse_trig_functions_t_5_3_inverse_tangent_t_5_3_4_388` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_5_inverse_trig_functions_t_5_3_inverse_tangent_t_5_3_5_44` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_6_hyperbolic_functions_t_6_1_hyperbolic_sine_t_6_1_3_97` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_6_hyperbolic_functions_t_6_1_hyperbolic_sine_t_6_1_3_98` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_6_hyperbolic_functions_t_6_1_hyperbolic_sine_t_6_1_7_31` — failed: unsolved goals | x a b c d : ℝ | h1 : a + b * sinh (c + d * x) ^ 2 ≠ 0 | h2 : b ^ (1 / 2) ≠ 0 | h3 : d ≠ 0
- `rubi_rubi_t_6_hyperbolic_functions_t_6_2_hyperbolic_cosine_t_6_2_1_71` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_6_hyperbolic_functions_t_6_2_hyperbolic_cosine_t_6_2_3_0` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_6_hyperbolic_functions_t_6_2_hyperbolic_cosine_t_6_2_5_141` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h2 : 1 + rexp x ≠ 0 | hq_h1_h2 : 1 + cosh x * 2 + cosh x * rexp x * 2 + cosh x ^ 2 + cosh x ^ 2 * rexp x + rexp x ≠ 0
- `rubi_rubi_t_6_hyperbolic_functions_t_6_2_hyperbolic_cosine_t_6_2_5_146` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h2 : 2 ≠ 0 | hp2_h2 : 4 ≠ 0
- `rubi_rubi_t_6_hyperbolic_functions_t_6_3_hyperbolic_tangent_t_6_3_2_27` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_6_hyperbolic_functions_t_6_3_hyperbolic_tangent_t_6_3_7_129` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_6_hyperbolic_functions_t_6_3_hyperbolic_tangent_t_6_3_7_168` — failed: unsolved goals | x a b c d : ℝ | h1 : a + b * (sinh (c + d * x) / cosh (c + d * x)) ^ 2 ≠ 0 | h2 : cosh (c + d * x) ≠ 0 | h3 : a + b ≠ 0
- `rubi_rubi_t_6_hyperbolic_functions_t_6_3_hyperbolic_tangent_t_6_3_7_76` — failed: linarith failed to find a contradiction | case h1 | x a b c d : ℝ | h1 : cosh (c + d * x) ≠ 0 | h2 : 8 ≠ 0
- `rubi_rubi_t_6_hyperbolic_functions_t_6_7_miscellaneous_t_6_7_1_742` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_6_hyperbolic_functions_t_6_7_miscellaneous_t_6_7_1_801` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h1 : sinh x ^ 2 + cosh x ^ 2 ≠ 0 | h : HasDerivAt (fun x => -arctan (rexp (-(x * 2)))) (rexp (-(x * 2)) * (1 + rexp (-(x * 2)) ^ 2)⁻¹ * 2) x
- `rubi_rubi_t_6_hyperbolic_functions_t_6_7_miscellaneous_t_6_7_1_871` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_2_135` — failed: unsolved goals | x a b c : ℝ | h1 : 1 - c / x ≠ 0 | h2 : 1 + c / x ≠ 0 | h3 : x ≠ 0
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_2_9` — failed: unsolved goals | x a b c : ℝ | h1 : x ^ 4 ≠ 0 | h2 : 1 - c * x ≠ 0 | h3 : 1 + c * x ≠ 0
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_4_235` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_4_251` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_4_302` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_4_381` — failed: unsolved goals | x a : ℝ | h1 : ((0 - a ^ 2) * x ^ 2 + 1) ^ (3 / 2) ≠ 0 | h2 : 0 < (0 - a ^ 2) * x ^ 2 + 1 | h3 : 1 - a * x ≠ 0
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_1297` — failed: unsolved goals | x a c : ℝ | h1 : ((0 - a ^ 2) * c * x ^ 2 + c) ^ (9 / 8) ≠ 0 | h2 : 0 < (0 - a ^ 2) * c * x ^ 2 + c | h3 : 2 ≠ 0
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_1360` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_159` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_160` — failed: unsolved goals | x a c : ℝ | h1 : 1 - a * x ≠ 0 | h2 : 1 + a * x ≠ 0 | h3 : 2 ≠ 0
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_312` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_326` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_493` — failed: unsolved goals | x a c : ℝ | h1 : a ≠ 0 | h2 : x ≠ 0 | h3 : 1 - a * x ≠ 0
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_542` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_910` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_971` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
