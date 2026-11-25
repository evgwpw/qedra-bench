# Lean: 2026-11-25, снимок 36cdcdefde02efeb6291d61a7003ef4e6951c096

- вход: `qedra_ref=rubi-pilot`, осколков 4, таймаут на пакет 900 с
- прогон: https://github.com/evgwpw/qedra-bench/actions/runs/45679539067
- всего теорем: 524
- генератор: `lean-emit (lib/lean/emit.lisp, DOMAIN.15)`, ответов OK 1000, выборка 1000 (seed 1), пакетов по 20, тактов на теорему 200000/undefined
| статус | теорем |
|---|---|
| passed | 60 |
| failed | 165 |
| failed-axioms | 0 |
| timeout | 245 |
| vacuous? | 5 |
| unknown | 49 |

| осколок | всего | passed | failed | failed-axioms | timeout | vacuous? | unknown |
|---|---|---|---|---|---|---|---|
| lean-1 | 140 | 17 | 40 | 0 | 71 | 0 | 12 |
| lean-2 | 140 | 19 | 46 | 0 | 59 | 3 | 13 |
| lean-3 | 140 | 12 | 49 | 0 | 69 | 0 | 10 |
| lean-4 | 104 | 12 | 30 | 0 | 46 | 2 | 14 |
## Пилот: по наборам

Всего ответов OK: 1000 (из них не переведено генератором: 476); проценты — от проверенных.

| набор | проверено | passed | failed | failed-axioms | timeout | vacuous? | unknown | не переведено | passed, % |
|---|---|---|---|---|---|---|---|---|---|
| rubi | 332 | 3 | 88 | 0 | 191 | 2 | 48 | 457 | 1 |
| hebisch | 137 | 42 | 60 | 0 | 33 | 2 | 0 | 0 | 31 |
| blake | 26 | 3 | 7 | 0 | 16 | 0 | 0 | 0 | 12 |
| independent | 21 | 10 | 6 | 0 | 4 | 1 | 0 | 0 | 48 |
| uchebnye | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 19 | 0 |
| mit_bee_official | 5 | 0 | 4 | 0 | 0 | 0 | 1 | 0 | 0 |
| mit_bee | 3 | 2 | 0 | 0 | 1 | 0 | 0 | 0 | 67 |
| **всего** | **524** | **60** | **165** | **0** | **245** | **5** | **49** | **476** | **11** |

## Пилот: Rubi по подглавам

Всего ответов OK: 789 (из них не переведено генератором: 457); проценты — от проверенных.

| подглава | проверено | passed | failed | failed-axioms | timeout | vacuous? | unknown | не переведено | passed, % |
|---|---|---|---|---|---|---|---|---|---|
| (не переведено) | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 457 | 0 |
| t_1_1_1_3 | 39 | 0 | 10 | 0 | 24 | 0 | 5 | 0 | 0 |
| t_1_1_3_2 | 33 | 0 | 9 | 0 | 14 | 1 | 9 | 0 | 0 |
| t_1_2_1_3 | 25 | 0 | 9 | 0 | 11 | 0 | 5 | 0 | 0 |
| t_1_2_2_2 | 20 | 0 | 7 | 0 | 10 | 0 | 3 | 0 | 0 |
| t_7_3_6 | 20 | 0 | 5 | 0 | 15 | 0 | 0 | 0 | 0 |
| t_1_1_1_2 | 17 | 0 | 5 | 0 | 8 | 0 | 4 | 0 | 0 |
| t_1_2_1_2 | 15 | 0 | 1 | 0 | 12 | 0 | 2 | 0 | 0 |
| t_1_1_3_4 | 12 | 0 | 2 | 0 | 8 | 0 | 2 | 0 | 0 |
| t_1_1_2_4 | 11 | 0 | 2 | 0 | 8 | 0 | 1 | 0 | 0 |
| t_1_1_4_2 | 6 | 0 | 1 | 0 | 3 | 0 | 2 | 0 | 0 |
| t_4_1_2_1 | 6 | 0 | 0 | 0 | 6 | 0 | 0 | 0 | 0 |
| t_1_1_2_8 | 5 | 0 | 0 | 0 | 3 | 0 | 2 | 0 | 0 |
| t_1_1_3_8 | 5 | 0 | 3 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_1_3_1 | 5 | 0 | 1 | 0 | 2 | 0 | 2 | 0 | 0 |
| t_1_3_2 | 5 | 0 | 0 | 0 | 5 | 0 | 0 | 0 | 0 |
| t_1_1_2_2 | 4 | 0 | 1 | 0 | 0 | 1 | 2 | 0 | 0 |
| t_1_1_4_3 | 4 | 0 | 0 | 0 | 3 | 0 | 1 | 0 | 0 |
| t_4_1_7 | 4 | 0 | 3 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_3_2_1 | 4 | 0 | 1 | 0 | 3 | 0 | 0 | 0 | 0 |
| t_4_3_7 | 4 | 0 | 1 | 0 | 3 | 0 | 0 | 0 | 0 |
| t_6_7_1 | 4 | 0 | 2 | 0 | 1 | 0 | 1 | 0 | 0 |
| t_7_3_2 | 4 | 0 | 1 | 0 | 3 | 0 | 0 | 0 | 0 |
| t_1_2_1_9 | 3 | 0 | 2 | 0 | 0 | 0 | 1 | 0 | 0 |
| t_3_5 | 3 | 2 | 0 | 0 | 1 | 0 | 0 | 0 | 67 |
| t_4_1_2_2 | 3 | 0 | 0 | 0 | 3 | 0 | 0 | 0 | 0 |
| t_4_7_7 | 3 | 0 | 1 | 0 | 1 | 0 | 1 | 0 | 0 |
| t_6_1_7 | 3 | 0 | 1 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_7_3_4 | 3 | 0 | 0 | 0 | 2 | 0 | 1 | 0 | 0 |
| t_1_1_2_3 | 2 | 0 | 0 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_1_1_3_3 | 2 | 0 | 0 | 0 | 1 | 0 | 1 | 0 | 0 |
| t_1_2_1_4 | 2 | 0 | 0 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_1_2_2_5 | 2 | 0 | 0 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_1_2_3_2 | 2 | 0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_2_4_2 | 2 | 0 | 0 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_2_3 | 2 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_3_3 | 2 | 1 | 0 | 0 | 1 | 0 | 0 | 0 | 50 |
| t_4_1_10 | 2 | 0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_2_2_1 | 2 | 0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_2_3_1 | 2 | 0 | 0 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_4_2_4_2 | 2 | 0 | 0 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_4_2_7 | 2 | 0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_6_2_7 | 2 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_6_3_2 | 2 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_1_1_1_4 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_1_1_5 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_1_2_5 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| t_1_2_1_1 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_1_2_1_5 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_2_2_3 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| t_1_2_2_4 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_2_2_6 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_2_2 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_1_1_2 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_1_1_3 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_1_11 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| t_4_1_12 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_1_3_1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_1_9 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_2_1_3 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_2_10 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_2_4_1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_2_9 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_3_1_2 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_3_1_3 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_3_11 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_3_3_1 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_3_4_2 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_7_1 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_7_2 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_5_2_5 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_5_3_5 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_6_1_3 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_6_2_5 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_6_3_7 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_7_2_4 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| **всего** | **332** | **3** | **88** | **0** | **191** | **2** | **48** | **457** | **1** |

## Пилот: почему не переведено

| причина | ответов |
|---|---|
| символьный показатель степени | 123 |
| голова sec | 52 |
| голова %i | 50 |
| голова EllipticF | 33 |
| голова e1 | 28 |
| голова csc | 24 |
| вещественная константа (не рациональная) | 20 |
| голова root-sum | 18 |
| голова EllipticE | 17 |
| голова cot | 15 |
| голова sech | 11 |
| голова appell-f1 | 10 |
| голова acoth | 10 |
| голова coth | 9 |
| голова polylog | 8 |
| голова hypergeometric-2f1 | 8 |
| голова asinh | 8 |
| голова csch | 7 |
| голова asech | 6 |
| голова acsc | 4 |
| голова erf | 3 |
| голова asec | 2 |
| голова acsch | 2 |
| голова lambert_w | 2 |
| голова gamma | 1 |
| голова acot | 1 |
| голова erfi | 1 |
| голова fresnel_c | 1 |
| голова Ei | 1 |
| голова Ci | 1 |

## Не passed

- `blake_blake_blake_1206` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1245` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1276` — failed: unsolved goals | x : ℝ | h1 : x ^ 6 + x ^ 4 - x ^ 2 + 1 ≠ 0 | h2 : x ^ 6 + x ^ 4 + 1 ≠ 0 | h3 : 0 < x ^ 7 + x ^ 5 + x
- `blake_blake_blake_1406` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1420` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1799` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_2220` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_226` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_2684` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | 1 / 3 * 3 ^ (1 / 2) * arctan (1 / 3 * 3 ^ (1 / 2) * (1 + 2 * x / (-1 + x ^ 3) ^ (1 / 3))) - | 2 *
- `blake_blake_blake_2762` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_2786` — failed: `simp` made no progress
- `blake_blake_blake_2898` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_304` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | h3 : 0 < -1 + x ^ 3 | hp2_h1 : x ^ 2 ≠ 0
- `blake_blake_blake_307` — failed: `simp` made no progress
- `blake_blake_blake_3090` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_314` — failed: `simp` made no progress
- `blake_blake_blake_376` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_391` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_522` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_530` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_641` — failed: unsolved goals | x : ℝ | h3 : (1 + (1 + x ^ 2) ^ (1 / 2)) ^ (1 / 2) ≠ 0 | h4 : 0 < 1 + (1 + x ^ 2) ^ (1 / 2) | h5 : 0 < 1 + x ^ 2
- `blake_blake_blake_751` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_924` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_10144` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : x ≠ 0 | hq_h1_h2 : x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_10150` — failed: unsolved goals | x : ℝ | h1 : rexp 2 ≠ 0 | h : | HasDerivAt (fun x => rexp (-2) * x ^ 4 * 4 + x * (3 / 4) + x ^ 4 * 12 - x ^ 5 * 2 + x ^ 6 * (1 / 4))
- `hebisch_hebisch_hebisch_1197` — failed: unsolved goals | x : ℝ | h1 : x ^ 3 ≠ 0 | h2 : 4 + rexp 3 ≠ 0 | h3 : x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_1219` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1277` — failed: unsolved goals | x : ℝ | h1 : | (3 * x ^ 2 + 2) * log ((3 * x ^ 2 + 2) / x ^ 3) ^ 2 + (-6 * x ^ 2 - 4) * log ((3 * x ^ 2 + 2) / x ^ 3) + 3 * x ^ 2 + | 2 ≠
- `hebisch_hebisch_hebisch_1553` — failed: unsolved goals | x : ℝ | h1 : 3 * x ^ 2 + 3 * x ≠ 0 | h2 : 2 / x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_1658` — failed: unsolved goals | x : ℝ | h1 : | (x * rexp x * log (x ^ 2) + x ^ 2) * log (rexp x * log (x ^ 2) + x) ^ 2 + | ((-8 * x * log 3 - 2 * x ^ 2) * rexp x * log (x ^ 2) - 8 * x ^ 2 * log 3 - 2 * x ^ 3) *
- `hebisch_hebisch_hebisch_1684` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => x - x ^ 2 - log (3 + x ^ 2)) ?m.251 x | is not definitionally equal to target | HasDerivAt (id - id ^ 2) (1 - ↑2 * x ^ (2 - 1) * 1) x
- `hebisch_hebisch_hebisch_1805` — failed: unsolved goals | x : ℝ | h1 : log x ^ 2 - x * log x ≠ 0 | h2 : x ≠ 0 | h3 : (x - log x) / log x ≠ 0
- `hebisch_hebisch_hebisch_1879` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1941` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1980` — failed: unsolved goals | x : ℝ | h1 : x ^ 7 ≠ 0 | h2 : x ^ 6 ≠ 0 | h3 : x ^ 5 ≠ 0
- `hebisch_hebisch_hebisch_2051` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | ((-9 + 24 * x * log (2 + rexp 5) + 24 * x ^ 2 * log (2 + rexp 5) - 16 * x ^ 2 * log (2 + rexp 5) ^ 2 - | 32 * x ^ 3 * log (2 + rexp 5) ^ 2 -
- `hebisch_hebisch_hebisch_2074` — failed: unsolved goals | x : ℝ | h1 : 2 ≠ 0 | h : | HasDerivAt
- `hebisch_hebisch_hebisch_2172` — failed: unsolved goals | x : ℝ | h : HasDerivAt (fun x => x + x ^ 2 - rexp (rexp 2 * 2 + x * 2)) (1 + x * 2 - rexp (x * 2 + rexp 2 * 2) * 2) x | hs : sin x ^ 2 + cos x ^ 2 = 1 | ⊢ rexp (x + rexp 2) ^ 2 = rexp (x * 2 + rexp 2 * 2)
- `hebisch_hebisch_hebisch_2484` — failed: Application type mismatch: The argument | HasDerivAt.div | (HasDerivAt.add | (HasDerivAt.sub | (HasDerivAt.add
- `hebisch_hebisch_hebisch_2511` — failed: unsolved goals | x : ℝ | h1 : 32 * x ^ 2 * rexp 3 + 32 * x ^ 3 ≠ 0 | h2 : x ≠ 0 | h3 : x + rexp 3 ≠ 0
- `hebisch_hebisch_hebisch_2605` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : x ≠ 0 | hq_h1_h2 : x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_2617` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2632` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2792` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3062` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => 0 - x - log 2 / (x + log x) - 2 * log (2 + x) / (x + log x) - log (log x) / (x + log x)) ?m.836 x | is not definitionally equal to target | HasDerivAt ((fun x => 0) - id - (fun x => log 2) / (id + log)) | (0 - 1 - (0 * (x + log x) - log 2 * (1 + x⁻¹)) / (x + log x) ^ 2) x
- `hebisch_hebisch_hebisch_3084` — failed: unsolved goals | x : ℝ | h2 : 5 ≠ 0 | h3 : x ≠ 0 | h4 : 5 + x ≠ 0
- `hebisch_hebisch_hebisch_3264` — failed: unsolved goals | x : ℝ | h1 : 14400 * x ^ 4 * rexp 16 ^ 2 + (28800 * x ^ 4 + 240 * x ^ 3) * rexp 16 + 14400 * x ^ 4 + 240 * x ^ 3 + x ^ 2 ≠ 0 | h2 : 5 * rexp 3 ≠ 0 | h3 : x + 120 * x ^ 2 + 120 * x ^ 2 * rexp 16 ≠ 0
- `hebisch_hebisch_hebisch_3310` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : 256 ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_3492` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3498` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3510` — failed: unsolved goals | x : ℝ | hp2_h1 : 6561 + x * 8748 + x ^ 2 * 4374 + x ^ 3 * 972 + x ^ 4 * 81 ≠ 0 | hp2_h2 hp2_h3 hq_h2_h3 : 729 + x * 486 + x ^ 2 * 81 ≠ 0 | hq_h1_h3 hq_h1_h2 : 2187 + x * 2187 + x ^ 2 * 729 + x ^ 3 * 81 ≠ 0
- `hebisch_hebisch_hebisch_3596` — failed: unsolved goals | x : ℝ | h2 : x ≠ 0 | h3 : 3 + x ≠ 0 | hp2_h2 : x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_3659` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3669` — failed: Application type mismatch: The argument | HasDerivAt.div | (HasDerivAt.sub (hasDerivAt_const x 0) | (HasDerivAt.add (hasDerivAt_const x (0 - log 3)) (HasDerivAt.mul (hasDerivAt_const x 4) (hasDerivAt_log ?m.569)))) | (hasDerivAt_id x) ?m.582
- `hebisch_hebisch_hebisch_3739` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3892` — failed: unsolved goals | x : ℝ | h1 : rexp (3 + x) ≠ 0 | h : | HasDerivAt (fun x => 15684 + x * 20736 - x * rexp (-3 - x) * 5 + x ^ 2 * 6914 + x ^ 3 * 864 + x ^ 4 * 48 + x ^ 5)
- `hebisch_hebisch_hebisch_3933` — failed: unsolved goals | x : ℝ | h1 : x ^ 3 ≠ 0 | h2 : x ^ 2 ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_3971` — failed: unsolved goals | x : ℝ | h2 : x ≠ 0 | h3 : -3 + x ≠ 0 | hp2_h1 : x ^ 2 * 81 - x ^ 3 * 108 + x ^ 4 * 54 - x ^ 5 * 12 + x ^ 6 ≠ 0
- `hebisch_hebisch_hebisch_4020` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 + 4 * x + 3 ≠ 0 | h2 : (2 * x + 6) / (x ^ 2 + x) ≠ 0 | h3 : x ^ 2 + x ≠ 0
- `hebisch_hebisch_hebisch_4119` — failed: unsolved goals | x : ℝ | h1 : (x ^ 2 - 3 * x) * rexp x + 4 * x ^ 2 - 24 * x + 36 ≠ 0 | h2 : x ≠ 0 | h3 : -3 + x ≠ 0
- `hebisch_hebisch_hebisch_4140` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_4258` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4402` — failed: unsolved goals | x : ℝ | h1 : x ^ 3 ≠ 0 | h2 : x ^ 2 ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_4455` — failed: unsolved goals | x : ℝ | h2 : 1 + x + x ^ 2 ≠ 0 | h3 : -1 + x ≠ 0 | hq_h2_h3 : -1 + x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_4475` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4686` — vacuous?: страж пустых теорем: unsolved goals | ⊢ 0 < log 2
- `hebisch_hebisch_hebisch_4693` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (-12 * log 5 * log x ^ 2 - 6 * log 5 ^ 2 * log x - log 5 ^ 3 - 8 * log x ^ 3) * log (log x) / x ^ 2 + | (0 - log 5 - 2 * log x) * log (log x) ^ 3 / x ^ 2 +
- `hebisch_hebisch_hebisch_4728` — failed: Application type mismatch: The argument | HasDerivAt.add | (HasDerivAt.div (hasDerivAt_const x (-1)) (HasDerivAt.mul (hasDerivAt_const x 2) (hasDerivAt_id x)) ?m.746) | (hasDerivAt_id x) | has type
- `hebisch_hebisch_hebisch_4751` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4794` — failed: unsolved goals | x : ℝ | h2 : 8 ≠ 0 | hp2_h2 : 64 ≠ 0 | hq_h2_h3 : rexp 2 * x ^ 3 * 16 + x ^ 2 * 120 ≠ 0
- `hebisch_hebisch_hebisch_4927` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5033` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5040` — failed: unsolved goals | x : ℝ | h1 : rexp 5 ^ 2 ≠ 0 | h2 : x ^ 2 ≠ 0 | hst1 :
- `hebisch_hebisch_hebisch_5214` — failed: Type mismatch: After simplification, term | h6 | has type | 3 - 1 / 2 * x ^ 2 - x ^ 4 ≠ 0 | but is expected to have type
- `hebisch_hebisch_hebisch_5433` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => -2 / 3 * x - x ^ 2 - log x) ?m.203 x | is not definitionally equal to target | HasDerivAt ((fun x => -2 / 3) * id - id ^ 2) (0 * x + -2 / 3 * 1 - ↑2 * x ^ (2 - 1) * 1) x
- `hebisch_hebisch_hebisch_56` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5763` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => 0 - log x - log (log x - log (2 + x)) - log (log (3 + 4 * x))) ?m.528 x | is not definitionally equal to target | HasDerivAt ((fun x => 0) - log - log ∘ (log - log ∘ ((fun x => 2) + id))) | (0 - x⁻¹ - (log x - log (2 + x))⁻¹ * (x⁻¹ - (2 + x)⁻¹ * (0 + 1))) x
- `hebisch_hebisch_hebisch_5798` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5819` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6162` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_622` — failed: unsolved goals | x : ℝ | h1 : 45 * x ^ 4 + 322 * x ^ 3 + 576 * x ^ 2 ≠ 0 | h2 : (9 * x ^ 2 + 32 * x) / (10 * x + 36) ≠ 0 | h3 : 10 * x + 36 ≠ 0
- `hebisch_hebisch_hebisch_6233` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6301` — failed: unsolved goals | x : ℝ | h1 : rexp x + log 3 - 2 ≠ 0 | h2 : 3 ≠ 0 | h3 : log (-2 + rexp x + log 3) ≠ 0
- `hebisch_hebisch_hebisch_6328` — failed: unsolved goals | x : ℝ | h1 : 24 * x ^ 5 + 96 * x ^ 4 + 66 * x ^ 3 - 120 * x ^ 2 - 120 * x ≠ 0 | h2 : 3 ≠ 0 | h3 : 6 * x + 12 ≠ 0
- `hebisch_hebisch_hebisch_6498` — failed: unsolved goals | x : ℝ | h3 : -5 + x ≠ 0 | h4 : -1 + x ≠ 0 | hp2_h2 : 1 - x * 2 + x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_6566` — failed: unsolved goals | x : ℝ | h : | HasDerivAt | (fun x =>
- `hebisch_hebisch_hebisch_6607` — failed: unsolved goals | x : ℝ | h1 : rexp 3 ^ 2 ≠ 0 | h2 : x ^ 2 ≠ 0 | h3 : 5 ≠ 0
- `hebisch_hebisch_hebisch_6703` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6795` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h3 : x ≠ 0 | h4 : 3 ≠ 0
- `hebisch_hebisch_hebisch_6955` — failed: unsolved goals | x : ℝ | h1 : | (x * log x + rexp x * x + x ^ 2 + 5 * x) * log (log x + rexp x + 5 + x) ^ 4 + 4 * x * log x + 4 * rexp x * x + | 4 * x ^ 2 +
- `hebisch_hebisch_hebisch_7139` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | h : | HasDerivAt
- `hebisch_hebisch_hebisch_7279` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7295` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_738` — failed: unsolved goals | x : ℝ | h1 : x ^ 3 - 3 ≠ 0 | h2 : (0 - x ^ 3 + 3) / x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_742` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7705` — failed: Application type mismatch: The argument | HasDerivAt.div | (HasDerivAt.add (HasDerivAt.add (hasDerivAt_const x 2) (HasDerivAt.mul (hasDerivAt_const x 2) (hasDerivAt_id x))) | (HasDerivAt.mul (HasDerivAt.add (hasDerivAt_const x 1) (hasDerivAt_id x)) (Real.hasDerivAt_exp x))) | (hasDerivAt_id x) ?m.485
- `hebisch_hebisch_hebisch_7869` — failed: unsolved goals | x : ℝ | h3 : x ≠ 0 | h4 : 1 + x ≠ 0 | hq_h1_h3 : x + x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_7965` — failed: unsolved goals | x : ℝ | h1 : | (x ^ 4 + 2 * x ^ 3 + x ^ 2) * log (1 / x) ^ 2 + (4 * x ^ 3 + 8 * x ^ 2 + 4 * x) * log (1 / x) + 4 * x ^ 2 + 8 * x + | 4 ≠
- `hebisch_hebisch_hebisch_8001` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8031` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8076` — failed: unsolved goals | x : ℝ | h1 : x ^ 3 ≠ 0 | h2 : 2 ≠ 0 | h3 : x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_8252` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_839` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8564` — failed: unsolved goals | x : ℝ | h1 : 5 * x / rexp (x ^ 2) ≠ 0 | h2 : rexp (x ^ 2) ≠ 0 | h3 : 4 * log 2 ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_8650` — failed: unsolved goals | x : ℝ | h3 : -25 + x ≠ 0 | hp2_h2 : 390625 - x * 62500 + x ^ 2 * 3750 - x ^ 3 * 100 + x ^ 4 ≠ 0 | hp2_h3 : 625 - x * 50 + x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_8715` — failed: unsolved goals | x : ℝ | h1 : | (x ^ 4 + 4 * x ^ 3 + 3 * x ^ 2 - 2 * x) * log x ^ 3 + | ((-3 * x ^ 4 - 12 * x ^ 3 - 9 * x ^ 2 + 6 * x) * rexp (4 * x) - 9 * x ^ 4 - 36 * x ^ 3 -
- `hebisch_hebisch_hebisch_8802` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8881` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8951` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : x ≠ 0 | hq_h1_h2 : x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_9167` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9299` — failed: Application type mismatch: The argument | Real.hasDerivAt_exp (1 - 4 * log 15 / x - rexp (2 / x)) | has type | HasDerivAt rexp (rexp (1 - 4 * log 15 / x - rexp (2 / x))) (1 - 4 * log 15 / x - rexp (2 / x)) | but is expected to have type
- `hebisch_hebisch_hebisch_9301` — failed: unsolved goals | x : ℝ | h1 : log (-54 * x ^ 2 / (rexp 1 ^ 2 - 2 * x * rexp 1 + x ^ 2)) ^ 2 ≠ 0 | h2 : -54 * x ^ 2 / (rexp 1 ^ 2 - 2 * x * rexp 1 + x ^ 2) ≠ 0 | h3 : rexp 1 ^ 2 - 2 * x * rexp 1 + x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_9371` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9452` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9780` — failed: unsolved goals | x : ℝ | h1 : rexp (3 + x) * x + x ≠ 0 | h2 : x ≠ 0 | h3 : rexp (-3) + rexp x ≠ 0
- `hebisch_hebisch_hebisch_9791` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | h2 : 5 ≠ 0 | hp2_h1 : x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_9795` — failed: unsolved goals | x : ℝ | h1 : rexp 3 ^ 2 ≠ 0 | h : | HasDerivAt
- `hebisch_hebisch_hebisch_9889` — failed: Application type mismatch: The argument | HasDerivAt.div | (HasDerivAt.add | (HasDerivAt.add | (HasDerivAt.sub (HasDerivAt.pow (hasDerivAt_id x) 2)
- `independent_independent_apostol_problems_144` — failed: linarith failed to find a contradiction | case h1 | x a b : ℝ | h1 : a ^ 2 * sin x ^ 2 + b ^ 2 * cos x ^ 2 ≠ 0 | h2 : a ≠ 0
- `independent_independent_hearn_problems_228` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => 1 / 4 * x * sin 3 - 1 / 4 * cos (3 + 2 * x) - 1 / 16 * cos (3 + 4 * x)) ?m.328 x | is not definitionally equal to target | HasDerivAt (((fun x => 1 / 4) * id * fun x => sin 3) - (fun x => 1 / 4) * cos ∘ ((fun x => 3) + (fun x => 2) * id)) | ((0 * x + 1 / 4 * 1) * sin 3 + 1 / 4 * x * 0 -
- `independent_independent_moses_problems_64` — vacuous?: страж пустых теорем: unsolved goals | ⊢ False
- `independent_independent_stewart_problems_42` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h : | HasDerivAt (fun x => sin (x * 2) * (1 / 4) + sin (x * 6) * (-1 / 12)) (cos (x * 2) * (1 / 2) + cos (x * 6) * (-1 / 2))
- `independent_independent_stewart_problems_75` — failed: `simp` made no progress
- `independent_independent_timofeev_problems_105` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_timofeev_problems_345` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (0 - sin x ^ 2) / (2 * (1 + cos x) ^ 2) - (1 + cos x) ^ 2 / (2 * sin x ^ 2) - 8 * log (sin x / (1 + cos x)) - | 16 * log (cos (1 / 2 * x)))
- `independent_independent_timofeev_problems_358` — failed: unsolved goals | x : ℝ | h1 : sin (4 * x) ≠ 0 | h2 : 0 < 2 | h3 : (-1 / 2 * 2 ^ (1 / 2) + sin x) / (1 / 2 * 2 ^ (1 / 2) + sin x) ≠ 0
- `independent_independent_timofeev_problems_621` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_welz_problems_35` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_welz_problems_56` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `mit_bee_mit_bee_mit_bee_142` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `mit_bee_official_mit_bee_official_mit_bee_official_162` — failed: `simp` made no progress
- `mit_bee_official_mit_bee_official_mit_bee_official_192` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h1 : 2 - cos x ^ 2 ≠ 0 | h : HasDerivAt (fun x => π * (1 / 4)) 0 x
- `mit_bee_official_mit_bee_official_mit_bee_official_34` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `mit_bee_official_mit_bee_official_mit_bee_official_519` — failed: unsolved goals | x : ℝ | h1 : (1 + x ^ 2) ^ 2 ≠ 0 | h2 : 1 + sin x ^ 2 / (1 + cos x) ^ 2 ≠ 0 | h3 : (1 + cos x) ^ 2 ≠ 0
- `mit_bee_official_mit_bee_official_mit_bee_official_536` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1001` — failed: unsolved goals | x a b d : ℝ | h1 : a + b * x ≠ 0 | h2 : (a * d / b + d * x) ^ 3 ≠ 0 | h3 : b ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1052` — failed: unsolved goals | x a b c : ℝ | h1 : a + b * x ≠ 0 | h2 : (a * c - b * c * x) ^ 3 ≠ 0 | h3 : 4 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1129` — failed: unsolved goals | x : ℝ | h1 : (1 - x) ^ (3 / 2) ≠ 0 | h3 : 0 < 1 - x | h5 : 3 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_118` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | -7 * a * b ^ 6 / (6 * x ^ 6) - 3 * a ^ 2 * b ^ 5 / x ^ 7 - 35 * a ^ 3 * b ^ 4 / (8 * x ^ 8) - | 35 * a ^ 4 * b ^ 3 / (9 * x ^ 9) -
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1243` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1598` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (a + b * x) ^ (5 / 3) * (c + d * x) ^ (1 / 3) / (2 * d) + | 5 * (a * d - b * c) *
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_160` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_188` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_193` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_203` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_218` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_228` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_243` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_305` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_57` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_652` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_815` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1015` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1036` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_11` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1102` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1182` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1294` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1341` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1395` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1502` — failed: unsolved goals | x : ℝ | h3 : 110 ≠ 0 | h5 : 121 ≠ 0 | hp2_h1 : 1 - x * 4 + x ^ 2 * 4 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1542` — failed: unsolved goals | x : ℝ | h3 : 28 ≠ 0 | hp2_h1 : 1 - x * 8 + x ^ 2 * 24 - x ^ 3 * 32 + x ^ 4 * 16 ≠ 0 | hp2_h2 : 4 + x * 12 + x ^ 2 * 9 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1585` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_159` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1598` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1610` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1645` — failed: unsolved goals | x : ℝ | h3 : 112 ≠ 0 | h5 : 49 ≠ 0 | hp2_h1 : 1 - x * 12 + x ^ 2 * 60 - x ^ 3 * 160 + x ^ 4 * 240 - x ^ 5 * 192 + x ^ 6 * 64 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1680` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1773` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1982` — failed: unsolved goals | x : ℝ | h : | HasDerivAt | (fun x =>
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1992` — failed: unsolved goals | x : ℝ | h : | HasDerivAt | (fun x =>
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2271` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2303` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2372` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2384` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2396` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_249` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2531` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_255` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2577` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2588` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2593` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_263` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_286` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_308` — failed: unsolved goals | x A B a b : ℝ | h1 : x ^ (1 / 2) ≠ 0 | h2 : 0 < x | h :
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_40` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_556` — failed: unsolved goals | x a b c d : ℝ | h1 : x ^ 4 ≠ 0 | h2 : 0 < a + b * x | h3 : 0 < c + d * x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_61` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_610` — failed: unsolved goals | x a b c d : ℝ | h1 : (c + d * x) ^ (1 / 2) ≠ 0 | h2 : 0 < c + d * x | h3 : 0 < a + b * x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_815` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_887` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_4_28` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_5_15` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_2_1` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_2_131` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_2_401` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_2_476` — vacuous?: страж пустых теорем: unsolved goals | ⊢ False
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_3_12` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_3_93` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_1022` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_136` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_169` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_191` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_206` — failed: unsolved goals | x a b c d : ℝ | h1 : x ^ 4 ≠ 0 | h3 : 3 ≠ 0 | h4 : a ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_308` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_41` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_45` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (0 - A) * a ^ 5 / (13 * x ^ 13) - B * b ^ 5 / x - (5 * A * a ^ 4 * b + B * a ^ 5) / (11 * x ^ 11) - | (10 * A * a ^ 3 * b ^ 2 + 5 * B * a ^ 4 * b) / (9 * x ^ 9) -
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_600` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_615` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_71` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_5_9` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_8_107` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_8_76` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_8_82` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_8_87` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_8_93` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1153` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1375` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1404` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1425` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1621` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => -4 * a * b / (3 * x ^ (3 / 2)) - 2 * a ^ 2 / x ^ (1 / 2) - 2 * b ^ 2 / (5 * x ^ (5 / 2))) ?m.514 | x | is not definitionally equal to target | HasDerivAt
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1654` — failed: unsolved goals | x a b : ℝ | h1 : x ^ (13 / 2) ≠ 0 | h2 : (a + b / x) ^ 3 ≠ 0 | h3 : 0 < x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1684` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1806` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => (0 - a) * b ^ 2 / (3 * x ^ 9) - 3 * a ^ 2 * b / (7 * x ^ 7) - a ^ 3 / (5 * x ^ 5) - b ^ 3 / (11 * x ^ 11)) | ?m.779 x | is not definitionally equal to target
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1876` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1932` — failed: unsolved goals | x a b : ℝ | h1 : a + b / x ^ 3 ≠ 0 | h2 : x ^ 3 ≠ 0 | h3 : 3 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_210` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_2129` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_2173` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_2249` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_2252` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_2322` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_234` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_2397` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_254` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_2706` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_298` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_438` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_439` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_455` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_457` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_53` — failed: unsolved goals | x b : ℝ | h3 : b ^ 2 ≠ 0 | hp2_h3 : b ^ 4 ≠ 0 | h :
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_58` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_584` — failed: unsolved goals | x a b : ℝ | h1 : x ^ 4 ≠ 0 | h2 : 3 ≠ 0 | h3 : x ^ 3 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_661` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_690` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_691` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_735` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_845` — failed: unsolved goals | x : ℝ | h1 : (1 - x ^ 4) ^ (1 / 2) ≠ 0 | h2 : 0 < 1 - x ^ 4 | h :
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_3_152` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_3_51` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_0` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_10` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_121` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_137` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_173` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_370` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_412` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_416` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_5` — failed: unsolved goals | x A B a b : ℝ | h1 : x ^ 3 ≠ 0 | h2 : 2 ≠ 0 | h3 : x ^ 2 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_772` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_80` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_98` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_8_175` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_8_217` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_8_300` — failed: Tactic `simp` failed with a nested error: | Tactic `simp` failed with a nested error: | maximum recursion depth has been reached | use `set_option maxRecDepth <num>` to increase limit | use `set_option diagnostics true` to get diagnostic information
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_8_390` — failed: Application type mismatch: The argument | h | has type | HasDerivAt | (((((fun x => 2) * fun x => a) * fun x => b) * fun x => d) * id +
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_8_391` — failed: Application type mismatch: The argument | h | has type | HasDerivAt | (((((fun x => 2) * fun x => a) * fun x => b) * fun x => e1) * id +
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_2_116` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_2_381` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_2_4` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_2_431` — failed: unsolved goals | x : ℝ | h1 : x ^ (3 / 2) + x ^ (1 / 2) ≠ 0 | h2 : 0 < x | h : HasDerivAt (fun x => arctan (x ^ (1 / 2)) * 2) ((1 + (x ^ (1 / 2)) ^ 2)⁻¹ * x ^ (-1 / 2)) x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_2_8` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_2_86` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_3_151` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_3_277` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_3_86` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_3_91` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_1_25` — failed: unsolved goals | x b : ℝ | h1 : (b ^ 2 * x ^ 2 + b * x) ^ (1 / 2) ≠ 0 | h2 : 0 < b ^ 2 * x ^ 2 + b * x | h3 : b ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1093` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1095` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1148` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1192` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1250` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_160` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1865` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | e1 ^ 3 * log (a * e1 + c * d * x) / (c ^ 4 * d ^ 4) - | (-6 * a * c * d ^ 2 * e1 ^ 3 + 3 * a ^ 2 * e1 ^ 5 + 3 * c ^ 2 * d ^ 4 * e1) /
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_2284` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_247` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_248` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_288` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_504` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_91` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_934` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_971` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_1128` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_124` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_1505` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_1565` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_166` — failed: unsolved goals | x A B b c : ℝ | h1 : x ^ (11 / 2) ≠ 0 | h2 : 0 < x | h3 : 3 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_1703` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (-1 / 3 * A * b - 1 / 6 * B * a - 1 / 2 * B * b * x) / | (3 * a * b ^ 4 * x ^ 2 + 3 * a ^ 2 * b ^ 3 * x + a ^ 3 * b ^ 2 + b ^ 5 * x ^ 3))
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_185` — failed: Tactic `simp` failed with a nested error: | maximum recursion depth has been reached | use `set_option maxRecDepth <num>` to increase limit | use `set_option diagnostics true` to get diagnostic information
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_1899` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_2131` — failed: unsolved goals | x a b d e1 : ℝ | h1 : (a ^ 2 + 2 * a * b * x + b ^ 2 * x ^ 2) ^ (3 / 2) ≠ 0 | h2 : 0 < a ^ 2 + 2 * a * b * x + b ^ 2 * x ^ 2 | h3 : 0 < d + e1 * x
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_228` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_2314` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (-1 / 6 * A * a * e1 ^ 3 - 1 / 30 * A * b * d * e1 ^ 2 - 1 / 5 * A * b * e1 ^ 3 * x - | 1 / 10 * A * c * d * e1 ^ 2 * x -
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_2384` — failed: unsolved goals | x : ℝ | h2 : 1 + x ≠ 0 | h3 : 81 ≠ 0 | hp2_h2 : 1 + x * 2 + x ^ 2 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_2389` — failed: unsolved goals | x : ℝ | h3 : 1 + x ≠ 0 | h4 : 5 ≠ 0 | hp2_h1 : 9 + x * 12 + x ^ 2 * 4 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_2500` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_36` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_40` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (0 - A) * b ^ 3 / (6 * x ^ 6) - B * c ^ 3 / (2 * x ^ 2) - (3 * A * b ^ 2 * c + B * b ^ 3) / (5 * x ^ 5) - | (3 * A * b * c ^ 2 + 3 * B * b ^ 2 * c) / (4 * x ^ 4) -
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_407` — failed: unsolved goals | x A B a c : ℝ | h1 : x ^ (5 / 2) ≠ 0 | h2 : 0 < x | h3 : 3 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_510` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_587` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_686` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_76` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_77` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_800` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_89` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_950` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_4_579` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_4_737` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_5_33` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_9_233` — failed: Application type mismatch: The argument | qedra_hasDerivAt_atanh | ((2 * a * h - b * g - x * ((0 - b) * h + 2 * c * g)) / | ((4 * a * h ^ 2 - 4 * b * g * h + 4 * c * g ^ 2) ^ (1 / 2) * (a + b * x + c * x ^ 2) ^ (1 / 2))) | h11 h10
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_9_33` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_9_393` — failed: Application type mismatch: The argument | qedra_hasDerivAt_atanh | ((-84 - x * (28 + 10 * (4 - 2 * 11 ^ (1 / 2))) - 2 * (4 - 2 * 11 ^ (1 / 2))) / | ((4000 - 544 * 11 ^ (1 / 2)) ^ (1 / 2) * (3 + 2 * x + 5 * x ^ 2) ^ (1 / 2))) | h16 h15
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_1007` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_1052` — failed: unsolved goals | x a b c : ℝ | h1 : x ^ (3 / 2) ≠ 0 | h2 : 0 < x | h3 : x ^ (1 / 2) ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_148` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_182` — failed: unsolved goals | x b c : ℝ | h1 : x ^ 2 ≠ 0 | h3 : b ≠ 0 | h4 : b ^ (3 / 2) ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_240` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_290` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_444` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_453` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_482` — failed: unsolved goals | x a b : ℝ | h1 : a ^ 2 + 2 * a * b * x ^ 2 + b ^ 2 * x ^ 4 ≠ 0 | h2 : a ^ 2 ≠ 0 | h3 : 2 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_494` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_509` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_523` — failed: unsolved goals | x a b : ℝ | h1 : (a ^ 2 + 2 * a * b * x ^ 2 + b ^ 2 * x ^ 4) ^ 3 ≠ 0 | h2 : a ^ 6 ≠ 0 | h3 : 10 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_544` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_674` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_721` — failed: unsolved goals | x a b d : ℝ | h1 : (d * x) ^ (7 / 2) ≠ 0 | h2 : (a ^ 2 + 2 * a * b * x ^ 2 + b ^ 2 * x ^ 4) ^ 3 ≠ 0 | h3 : 0 < d * x
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_736` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_848` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_858` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_896` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_961` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_3_89` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_4_287` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_5_109` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_5_19` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_6_63` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_2_60` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_2_92` — failed: Type mismatch: After simplification, term | h15 | has type | 4 ^ (1 / 3) * a ^ (1 / 3) * b * x - 4 ^ (1 / 3) * a ^ (2 / 3) * b ^ (2 / 3) - 4 ^ (1 / 3) * b ^ (4 / 3) * x ^ 2 ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_4_improper_t_1_2_4_2_10` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_4_improper_t_1_2_4_2_57` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_1_222` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_1_362` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_1_406` — failed: unsolved goals | x : ℝ | h2 : 0 < 3 | h3 : 1 - x + x ^ 2 ≠ 0 | hp2_h1 hp2_h3 hq_h1_h3 : 1 - x * 2 + x ^ 2 * 3 - x ^ 3 * 2 + x ^ 4 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_1_409` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_1_453` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_213` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_247` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_452` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_477` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_764` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_2_exponentials_t_2_2_7` — failed: unsolved goals | x a b c d : ℝ | h1 : a + b * rexp (0 - c - d * x) ≠ 0 | h2 : a ≠ 0 | h3 : d ≠ 0
- `rubi_rubi_t_2_exponentials_t_2_3_694` — failed: unsolved goals | x a b : ℝ | h : | HasDerivAt | (fun x =>
- `rubi_rubi_t_2_exponentials_t_2_3_720` — failed: unsolved goals | x : ℝ | h : | HasDerivAt (fun x => x * 3 + rexp (-(x * 2)) * (1 / 2) + rexp (x * 2) * (-3 / 2) + rexp (x * 4) * (1 / 4)) | (3 - rexp (-(x * 2)) - rexp (x * 2) * 3 + rexp (x * 4)) x
- `rubi_rubi_t_3_logarithms_t_3_3_1` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_3_logarithms_t_3_5_106` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_1_2_423` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_1_3_171` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_10_15` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_10_17` — failed: linarith failed to find a contradiction | case h1 | x a b c d : ℝ | h1 : b ≠ 0 | h2 : 9 ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_11_2` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_12_67` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_1_31` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_1_358` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_1_528` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_1_541` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_1_662` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_1_675` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_33` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_388` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_618` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_3_1_180` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_7_0` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_7_114` — failed: unsolved goals | x a : ℝ | h1 : 0 < (0 - a) * sin x ^ 2 + a | h2 : 5 ≠ 0 | h3 : (1 + sin x ^ 2 / cos x ^ 2) ^ 2 ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_7_284` — failed: linarith failed to find a contradiction | case h1 | x a b e1 f : ℝ | h1 : f ≠ 0 | hp2_h1 : f ^ 2 ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_7_33` — failed: linarith failed to find a contradiction | case h1 | x a : ℝ | h : | HasDerivAt
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_9_4` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_1_3_2` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_10_91` — failed: unsolved goals | x : ℝ | h1 : 5 ≠ 0 | h2 : 0 < cos x | h3 : cos x ^ (7 / 2) ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_2_1_398` — failed: linarith failed to find a contradiction | case h1 | x a b c d : ℝ | h1 : d ≠ 0 | hp2_h1 : d ^ 2 ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_2_1_91` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_3_1_3` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_3_1_63` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_1_97` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_2_66` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_2_91` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_7_11` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_7_19` — failed: unsolved goals | x a b : ℝ | h1 : a + b * cos x ^ 2 ≠ 0 | h2 : a ^ (1 / 2) ≠ 0 | h3 : (a + b) ^ (1 / 2) ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_9_2` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_1_2_525` — failed: linarith failed to find a contradiction | case h1 | x a b c d : ℝ | h1 : cos (c + d * x) ≠ 0 | h2 : 3 ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_1_3_21` — failed: unsolved goals | x a b c d : ℝ | h1 : cos (c + d * x) ≠ 0 | h2 : 2 ≠ 0 | h3 : d ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_11_20` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_2_1_1183` — failed: unsolved goals | x a b c d e1 f : ℝ | h1 : (a + b * (sin (e1 + f * x) / cos (e1 + f * x))) ^ 2 ≠ 0 | h2 : cos (e1 + f * x) ≠ 0 | h3 :
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_2_1_341` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_2_1_400` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_2_1_467` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_3_1_306` — failed: unsolved goals | x B a b c d : ℝ | h1 : (a + b * (sin (c + d * x) / cos (c + d * x))) ^ 2 ≠ 0 | h2 : cos (c + d * x) ≠ 0 | h3 : b ^ 2 ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_4_2_60` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_7_294` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_7_334` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_7_388` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_7_74` — failed: unsolved goals | x a b e1 f : ℝ | h1 : (a + b * (sin (e1 + f * x) / cos (e1 + f * x)) ^ 2) ^ 2 ≠ 0 | h2 : cos (e1 + f * x) ≠ 0 | h3 : 2 ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_1_133` — failed: linarith failed to find a contradiction | case h1 | x a b : ℝ | h1 : 2 ≠ 0 | h2 : b ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_2_275` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (0 - a) * b * | (a * b * qedra_artanh (((0 - a) * sin x + b * cos x) / (a ^ 2 + b ^ 2) ^ (1 / 2)) /
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_7_678` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h : | HasDerivAt (fun x => rexp (cos x * sin x)) (-(sin x ^ 2 * rexp (sin x * cos x)) + cos x ^ 2 * rexp (sin x * cos x)) x
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_7_773` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_7_781` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_5_inverse_trig_functions_t_5_2_inverse_cosine_t_5_2_5_45` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_5_inverse_trig_functions_t_5_3_inverse_tangent_t_5_3_5_50` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | 1 / 3 * b ^ 3 * | (-1 / (2 * b ^ 2 * x ^ 2 * (1 + a ^ 2)) +
- `rubi_rubi_t_6_hyperbolic_functions_t_6_1_hyperbolic_sine_t_6_1_3_21` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_6_hyperbolic_functions_t_6_1_hyperbolic_sine_t_6_1_7_12` — failed: linarith failed to find a contradiction | case h1 | x a b c d : ℝ | h1 : 8 ≠ 0 | h2 : d ≠ 0
- `rubi_rubi_t_6_hyperbolic_functions_t_6_1_hyperbolic_sine_t_6_1_7_206` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_6_hyperbolic_functions_t_6_1_hyperbolic_sine_t_6_1_7_302` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_6_hyperbolic_functions_t_6_2_hyperbolic_cosine_t_6_2_5_329` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_6_hyperbolic_functions_t_6_2_hyperbolic_cosine_t_6_2_7_1` — failed: linarith failed to find a contradiction | case h1 | x a : ℝ | h2 : 2 ≠ 0 | h3 : a ≠ 0
- `rubi_rubi_t_6_hyperbolic_functions_t_6_2_hyperbolic_cosine_t_6_2_7_74` — failed: unsolved goals | x : ℝ | h1 : cosh x ^ 2 + 1 ≠ 0 | h2 : cosh x ≠ 0 | h3 : 1 + 6 * rexp (2 * x) + rexp (4 * x) ≠ 0
- `rubi_rubi_t_6_hyperbolic_functions_t_6_3_hyperbolic_tangent_t_6_3_2_112` — failed: unsolved goals | x : ℝ | h1 : sinh x / cosh x + 1 ≠ 0 | h2 : cosh x ≠ 0 | h3 : 1 + 3 * rexp (2 * x) + 3 * rexp (4 * x) + rexp (6 * x) ≠ 0
- `rubi_rubi_t_6_hyperbolic_functions_t_6_3_hyperbolic_tangent_t_6_3_2_4` — failed: linarith failed to find a contradiction | case h1 | x a b : ℝ | h1 : cosh (a + b * x) ≠ 0 | h2 : b ≠ 0
- `rubi_rubi_t_6_hyperbolic_functions_t_6_3_hyperbolic_tangent_t_6_3_7_83` — failed: linarith failed to find a contradiction | case h1 | x a b c d : ℝ | h1 : cosh (c + d * x) ≠ 0 | h2 : 8 ≠ 0
- `rubi_rubi_t_6_hyperbolic_functions_t_6_7_miscellaneous_t_6_7_1_17` — failed: linarith failed to find a contradiction | case h1 | x a b : ℝ | h1 : 384 ≠ 0 | h2 : b ≠ 0
- `rubi_rubi_t_6_hyperbolic_functions_t_6_7_miscellaneous_t_6_7_1_180` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_6_hyperbolic_functions_t_6_7_miscellaneous_t_6_7_1_308` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_6_hyperbolic_functions_t_6_7_miscellaneous_t_6_7_1_740` — failed: linarith failed to find a contradiction | case h1 | x a c : ℝ | h : | HasDerivAt
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_2_inverse_hyperbolic_cosine_t_7_2_4_3` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_2_148` — failed: unsolved goals | x a b c : ℝ | h1 : x ^ 3 ≠ 0 | h2 : 1 - c / x ≠ 0 | h3 : 1 + c / x ≠ 0
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_2_40` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_2_41` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_2_8` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_4_222` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_4_259` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_4_397` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_1086` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_1105` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_176` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_186` — failed: unsolved goals | x a c : ℝ | h1 : 1 - a * x ≠ 0 | h2 : 1 + a * x ≠ 0 | hq_h1_h2 : 1 - a ^ 2 * x ^ 2 ≠ 0
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_256` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_295` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_307` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_337` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_371` — failed: unsolved goals | x : ℝ | h2 : 1 - x ≠ 0 | h3 : 1 + x ≠ 0 | h4 : 0 < 1 - x
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_377` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | 2 * 2 ^ (1 / 2) * qedra_artanh (1 / 2 * 2 ^ (1 / 2) * (1 + x) ^ (1 / 2)) - 2 * (1 + x) ^ (1 / 2) - | 2 / 3 * (1 + x) ^ (3 / 2))
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_39` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_393` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_463` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_468` — failed: unsolved goals | x a c : ℝ | h1 : (c - c / (a * x)) ^ 3 ≠ 0 | h2 : a ≠ 0 | h3 : x ≠ 0
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_724` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_743` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | -2 * | ((0 - c ^ (1 / 2)) * arctan (c ^ (1 / 2) / (a * x * (c - c / (a ^ 2 * x ^ 2)) ^ (1 / 2))) / a +
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_758` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_882` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_899` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_94` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
