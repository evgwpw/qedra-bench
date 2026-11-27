# Lean: 2026-11-27, снимок d666e707621e2173d3a0757abb9376b4abeb52df

- вход: `qedra_ref=rubi-pilot`, осколков 4, таймаут на пакет 900 с
- прогон: https://github.com/evgwpw/qedra-bench/actions/runs/46069251302
- всего теорем: 653
- генератор: `e7f48e39d66c1180c49ad50136c29172b2130d33`, ответов OK 1000, выборка 500 (seed 1), пакетов по 20, тактов на теорему 200000/undefined
| статус | теорем |
|---|---|
| passed | 164 |
| failed | 287 |
| failed-axioms | 0 |
| timeout | 192 |
| vacuous? | 10 |
| unknown | 0 |

| осколок | всего | passed | failed | failed-axioms | timeout | vacuous? | unknown |
|---|---|---|---|---|---|---|---|
| lean-1 | 161 | 21 | 68 | 0 | 72 | 0 | 0 |
| lean-2 | 180 | 50 | 77 | 0 | 50 | 3 | 0 |
| lean-3 | 180 | 53 | 86 | 0 | 36 | 5 | 0 |
| lean-4 | 132 | 40 | 56 | 0 | 34 | 2 | 0 |
## Пилот: по наборам

Всего ответов OK: 1000 (из них не переведено генератором: 347); проценты — от проверенных.

| набор | проверено | passed | failed | failed-axioms | timeout | vacuous? | unknown | не переведено | passed, % |
|---|---|---|---|---|---|---|---|---|---|
| rubi | 211 | 27 | 89 | 0 | 95 | 0 | 0 | 289 | 13 |
| hebisch | 331 | 98 | 153 | 0 | 74 | 6 | 0 | 0 | 30 |
| uchebnye | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 58 | 0 |
| blake | 47 | 9 | 27 | 0 | 10 | 1 | 0 | 0 | 19 |
| independent | 45 | 21 | 9 | 0 | 12 | 3 | 0 | 0 | 47 |
| mit_bee | 11 | 6 | 4 | 0 | 1 | 0 | 0 | 0 | 55 |
| mit_bee_official | 8 | 3 | 5 | 0 | 0 | 0 | 0 | 0 | 38 |
| **всего** | **653** | **164** | **287** | **0** | **192** | **10** | **0** | **347** | **25** |

## Пилот: Rubi по подглавам

Всего ответов OK: 500 (из них не переведено генератором: 289); проценты — от проверенных.

| подглава | проверено | passed | failed | failed-axioms | timeout | vacuous? | unknown | не переведено | passed, % |
|---|---|---|---|---|---|---|---|---|---|
| (не переведено) | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 289 | 0 |
| t_1_1_1_3 | 24 | 0 | 10 | 0 | 14 | 0 | 0 | 0 | 0 |
| t_1_2_1_3 | 15 | 5 | 2 | 0 | 8 | 0 | 0 | 0 | 33 |
| t_1_1_3_2 | 13 | 1 | 8 | 0 | 4 | 0 | 0 | 0 | 8 |
| t_1_2_2_2 | 12 | 3 | 3 | 0 | 6 | 0 | 0 | 0 | 25 |
| t_1_1_1_2 | 9 | 2 | 3 | 0 | 4 | 0 | 0 | 0 | 22 |
| t_1_1_2_4 | 9 | 1 | 5 | 0 | 3 | 0 | 0 | 0 | 11 |
| t_1_1_3_4 | 9 | 2 | 6 | 0 | 1 | 0 | 0 | 0 | 22 |
| t_1_2_1_2 | 8 | 0 | 7 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_3_2 | 8 | 1 | 4 | 0 | 3 | 0 | 0 | 0 | 13 |
| t_7_3_6 | 8 | 0 | 2 | 0 | 6 | 0 | 0 | 0 | 0 |
| t_1_1_2_2 | 6 | 2 | 2 | 0 | 2 | 0 | 0 | 0 | 33 |
| t_1_2_3_2 | 6 | 0 | 5 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_1_2_1 | 5 | 0 | 0 | 0 | 5 | 0 | 0 | 0 | 0 |
| t_4_2_4_2 | 5 | 0 | 3 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_1_1_3_8 | 4 | 0 | 1 | 0 | 3 | 0 | 0 | 0 | 0 |
| t_1_2_2_3 | 4 | 1 | 2 | 0 | 1 | 0 | 0 | 0 | 25 |
| t_1_3_1 | 4 | 2 | 0 | 0 | 2 | 0 | 0 | 0 | 50 |
| t_4_3_3_1 | 4 | 0 | 1 | 0 | 3 | 0 | 0 | 0 | 0 |
| t_1_1_2_3 | 3 | 0 | 2 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_1_3_3 | 3 | 0 | 2 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_2_1_4 | 3 | 0 | 1 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_1_2_1_5 | 3 | 1 | 1 | 0 | 1 | 0 | 0 | 0 | 33 |
| t_4_1_2_2 | 3 | 0 | 0 | 0 | 3 | 0 | 0 | 0 | 0 |
| t_4_2_2_1 | 3 | 0 | 0 | 0 | 3 | 0 | 0 | 0 | 0 |
| t_1_1_2_8 | 2 | 2 | 0 | 0 | 0 | 0 | 0 | 0 | 100 |
| t_1_1_4_3 | 2 | 0 | 0 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_2_3 | 2 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 50 |
| t_4_1_0 | 2 | 0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_2_3_1 | 2 | 0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_5_3_4 | 2 | 1 | 0 | 0 | 1 | 0 | 0 | 0 | 50 |
| t_1_1_1_4 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_1_1_6 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_1_2_5 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_1_1_4_2 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_2_1_6 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_2_1_9 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 100 |
| t_1_2_2_4 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_1_2_3_3 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_1_2_3_4 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_2_4_2 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_2_2 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_1_1_2 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_1_3_1 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_1_7 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_2_1_1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_3_2_1 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_7_1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_7_7 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_5_2_5 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_5_3_2 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 100 |
| t_6_1_5 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_6_2_1 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_6_2_2 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_6_2_5 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_6_3_1 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_6_3_2 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_6_7_1 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_7_3_7 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| **всего** | **211** | **27** | **89** | **0** | **95** | **0** | **0** | **289** | **13** |

## Пилот: почему не переведено

| причина | ответов |
|---|---|
| символьный показатель степени | 94 |
| голова sec | 59 |
| голова %i | 36 |
| голова e1 | 17 |
| голова EllipticF | 15 |
| голова EllipticE | 13 |
| голова root-sum | 13 |
| голова csc | 9 |
| голова appell-f1 | 9 |
| вещественная константа (не рациональная) | 8 |
| голова polylog | 8 |
| голова cot | 8 |
| голова acoth | 7 |
| голова fresnel_s | 5 |
| голова sech | 5 |
| unsupported error | 5 |
| голова Ci | 4 |
| голова lambert_w | 4 |
| голова hypergeometric-2f1 | 4 |
| голова csch | 4 |
| голова coth | 3 |
| голова asec | 2 |
| голова fresnel_c | 2 |
| голова acsc | 2 |
| голова asinh | 2 |
| голова erf | 2 |
| голова floor | 2 |
| голова gamma | 2 |
| голова Si | 1 |
| голова ceiling | 1 |
| голова acot | 1 |

## Не passed

- `blake_blake_blake_1102` — failed: unsolved goals | case e'_9 | x a b : ℝ | h1 : a * x + b ≠ 0 | h2 : x ≠ 0
- `blake_blake_blake_112` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : x ^ 6 - x ^ 4 - 1 ≠ 0 | h2 : (x ^ 6 - 1) ^ (1 / 2) ≠ 0
- `blake_blake_blake_1193` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : 1 - (1 + x) ^ (1 / 2) ≠ 0 | h2 : 0 < 1 + x
- `blake_blake_blake_1222` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1243` — failed: unsolved goals | x : ℝ | h1 : x ^ 5 - x ^ 3 - 1 ≠ 0 | h2 : x ^ 3 ≠ 0 | h3 : 0 < x ^ 5 - 1
- `blake_blake_blake_1254` — failed: unsolved goals | x : ℝ | h1 : x ^ 6 + x ^ 3 - 1 ≠ 0 | h2 : x ^ 2 ≠ 0 | h3 : 0 < x ^ 6 - 1
- `blake_blake_blake_1264` — failed: unsolved goals | case e'_9 | x a b : ℝ | h1 : x ^ 7 ≠ 0 | h2 : 8 ≠ 0
- `blake_blake_blake_1274` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1461` — failed: unsolved goals | case e'_9 | x a b : ℝ | h1 : 0 < a * x ^ 4 + b | h2 : 8 ≠ 0
- `blake_blake_blake_1481` — failed: unsolved goals | case e'_9 | x a b : ℝ | h1 : x ^ 4 ≠ 0 | h2 : 4 ≠ 0
- `blake_blake_blake_1614` — failed: unsolved goals | case e'_9 | x a b : ℝ | h1 : x ^ 6 ≠ 0 | h2 : 9 ≠ 0
- `blake_blake_blake_1625` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : x ≠ 0 | h2 : 0 < 1 + x
- `blake_blake_blake_1727` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : 2 * x ^ 10 - 2 * x ^ 8 - x ^ 6 + 4 * x ^ 5 - 2 * x ^ 3 + 2 ≠ 0 | h2 : x ^ 2 ≠ 0
- `blake_blake_blake_1780` — failed: Application type mismatch: The argument | qedra_hasDerivAt_atanh | (2 * 3 ^ (1 / 2) * x * (114688 - 32768 * 13 ^ (1 / 2) - 16384 * (-2 + x + 2 * x ^ 2) / x) / | ((-77309411328 + 25769803776 * 13 ^ (1 / 2)) ^ (1 / 2) * (1 - x - x ^ 2 + x ^ 3 + x ^ 4) ^ (1 / 2))) | h8 h7
- `blake_blake_blake_1801` — failed: unsolved goals | case e'_9 | x a b : ℝ | h1 : x ^ 2 ≠ 0 | h2 : 0 < a * x ^ 4 + b * x ^ 2
- `blake_blake_blake_1802` — failed: unsolved goals | case e'_9 | x a b : ℝ | h1 : a * x ^ 4 - b ≠ 0 | h2 : (a * x ^ 4 - b * x ^ 2) ^ (1 / 4) ≠ 0
- `blake_blake_blake_2136` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | 3 * (-2 + x ^ 2 + 2 * x ^ 3) ^ (4 / 3) / (4 * x ^ 4) - | 2 * (-2 + x ^ 2 + 2 * x ^ 3) ^ (4 / 3) / (x ^ 4 * (-1 + (-2 + x ^ 2 + 2 * x ^ 3) / x ^ 3)) -
- `blake_blake_blake_2281` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : -1 + 6 * x ≠ 0 | h2 : 0 < 6 * x ^ 2 - 2 * x - 1
- `blake_blake_blake_2594` — failed: unsolved goals | case e'_9 | x a b : ℝ | h1 : x ≠ 0 | h2 : 3 ≠ 0
- `blake_blake_blake_2720` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_286` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_2896` — failed: unsolved goals | case e'_9 | x a b : ℝ | h1 : a * x - b ≠ 0 | h2 : (a ^ 3 * x ^ 3 - b ^ 2 * x ^ 2) ^ (1 / 3) ≠ 0
- `blake_blake_blake_332` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | h3 : 0 < 1 + x ^ 6 | h4 : -1 + (1 + x ^ 6) ^ (1 / 2) ≠ 0
- `blake_blake_blake_333` — failed: `simp` made no progress
- `blake_blake_blake_369` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : x ^ 6 - x ^ 4 - 1 ≠ 0 | h2 : x ^ 3 ≠ 0
- `blake_blake_blake_385` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_399` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_527` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_60` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `blake_blake_blake_681` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_705` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : 0 < x ^ 4 - x | h2 : (0 - x + x ^ 4) ^ (3 / 4) ≠ 0
- `blake_blake_blake_758` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : 0 < x ^ 4 + x ^ 2 | h2 : 4 ≠ 0
- `blake_blake_blake_806` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : x ^ 9 ≠ 0 | h2 : 0 < x ^ 10 + x ^ 8 - 2 * x ^ 5 + 1
- `blake_blake_blake_866` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_929` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : 0 < x ^ 4 + 1
- `blake_blake_blake_954` — failed: unsolved goals | case e'_9 | x a b c : ℝ | h1 : 0 < a * x ^ 2 + b * x + c | h2 : 8 ≠ 0
- `blake_blake_blake_977` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_988` — failed: Type mismatch: After simplification, term | h5 | has type | (2 - x ^ 2 - 4 * x ^ 4) ^ (1 / 2) ≠ 0 | but is expected to have type
- `hebisch_hebisch_hebisch_10028` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | hp2_h1 : x ^ 2 ≠ 0 | h hst8 :
- `hebisch_hebisch_hebisch_10033` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : log x ^ 2 + (4 - 2 * x) * log x + x ^ 2 - 4 * x + 4 ≠ 0 | h2 : x ≠ 0
- `hebisch_hebisch_hebisch_10150` — failed: unsolved goals | x : ℝ | h1 : rexp 2 ≠ 0 | h : | HasDerivAt (fun x => rexp (-2) * x ^ 4 * 4 + x * (3 / 4) + x ^ 4 * 12 - x ^ 5 * 2 + x ^ 6 * (1 / 4))
- `hebisch_hebisch_hebisch_10158` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | h2 : 4 / (x ^ 2 + x) ≠ 0 | h3 : x ^ 2 + x ≠ 0
- `hebisch_hebisch_hebisch_10249` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_10270` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => x ^ 2 - x * rexp 5 - 1 / log x) ?m.559 x | is not definitionally equal to target | HasDerivAt (id ^ 2 - fun x => x * rexp 5) (↑2 * x ^ (2 - 1) * 1 - (1 * rexp 5 + x * 0)) x
- `hebisch_hebisch_hebisch_10304` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1033` — failed: unsolved goals | x : ℝ | h1 : rexp (5 * x) + 4 * x + 16 ≠ 0 | h2 : 1 / 4 * rexp (5 * x) + x + 4 ≠ 0 | h3 : 2 ≠ 0
- `hebisch_hebisch_hebisch_1059` — failed: unsolved goals | case e'_8 | x : ℝ | h1 : 2 * log 5 + rexp 1 ≠ 0 | h2 : 5 ≠ 0
- `hebisch_hebisch_hebisch_1069` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1074` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1092` — failed: unsolved goals | x : ℝ | h hst2 : | HasDerivAt (fun x => x - rexp (158 - x * 1000080 + x ^ 2 * 1562750010) * 2) | (1 - x * rexp (158 - x * 1000080 + x ^ 2 * 1562750010) * 6251000040 +
- `hebisch_hebisch_hebisch_1135` — failed: unsolved goals | x : ℝ | h1 : log (2 * x) ≠ 0 | h2 : 2 * x ≠ 0 | h3 : rexp 6 ≠ 0
- `hebisch_hebisch_hebisch_1146` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : (rexp x + x ^ 2 + x + 1) * log x ^ 2 + x ^ 2 * log x ≠ 0 | h2 : x ≠ 0
- `hebisch_hebisch_hebisch_1210` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | hp2_h1 : x ^ 2 ≠ 0 | h hst4 :
- `hebisch_hebisch_hebisch_1286` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | hp2_h1 : x ^ 2 ≠ 0 | h :
- `hebisch_hebisch_hebisch_1287` — failed: unsolved goals | x : ℝ | h1 : rexp x + x ≠ 0 | h2 : x + rexp x ≠ 0 | hst1 : HasDerivAt (fun x => 0 - x) (0 - 1) x
- `hebisch_hebisch_hebisch_130` — failed: unsolved goals | x : ℝ | h2 : 2 ≠ 0 | hp2_h2 : 4 ≠ 0 | h :
- `hebisch_hebisch_hebisch_1331` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => 2 * x - x ^ 2 - 1 / (x * (1 / 4 * x + log x))) ?m.860 x | is not definitionally equal to target | HasDerivAt ((fun x => 2 * x) - id ^ 2) (0 * x + 2 * 1 - ↑2 * x ^ (2 - 1) * 1) x
- `hebisch_hebisch_hebisch_1409` — failed: unsolved goals | x : ℝ | h1 : (x ^ 3 + 4 * x ^ 2) * rexp x - x ^ 5 + 2 * x ^ 4 + 15 * x ^ 3 - 37 * x ^ 2 - 4 * x ≠ 0 | h2 : -9 - 1 / x + 6 * x - x ^ 2 + rexp x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_1458` — failed: unsolved goals | x : ℝ | h1 : rexp x ^ 2 ≠ 0 | h2 : x ≠ 0 | hst1 : HasDerivAt (fun x => -1 / x) ((0 * x - -1 * 1) / x ^ 2) x
- `hebisch_hebisch_hebisch_1501` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : 3 ≠ 0 | h3 : x * rexp (rexp x) ≠ 0
- `hebisch_hebisch_hebisch_1518` — failed: unsolved goals | x : ℝ | h1 : x * log x ^ 2 - rexp x * x ^ 2 - 7 * x ^ 2 ≠ 0 | h2 : x ≠ 0 | h3 : 7 - log x ^ 2 / x + rexp x ≠ 0
- `hebisch_hebisch_hebisch_1531` — failed: unsolved goals | x : ℝ | h1 : rexp 9 ≠ 0 | h2 : x ≠ 0 | hp2_h2 : x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_1607` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : x ^ 4 * rexp (2 * x) ^ 4 - 3 * rexp 4 + 4 ≠ 0 | h2 :
- `hebisch_hebisch_hebisch_1620` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1687` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : 4 / x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_1736` — failed: unsolved goals | x : ℝ | h1 : 3 * rexp 2 - 1 ≠ 0 | h2 : -1 + 3 * rexp 2 ≠ 0 | hst1 : HasDerivAt (fun x => 3 * x) (0 * x + 3 * 1) x
- `hebisch_hebisch_hebisch_1786` — failed: Type mismatch: After simplification, term | h3 | has type | -5 - 2 * x - 16 * x ^ 2 - 8 * x ^ 4 - x ^ 6 - rexp 2 ≠ 0 | but is expected to have type
- `hebisch_hebisch_hebisch_1796` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1806` — failed: unsolved goals | x : ℝ | h1 : x * rexp 1 - 144 * x ≠ 0 | h2 : -144 + rexp 1 ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_1832` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 * rexp (log (5 / rexp (rexp x)) - x) - x ^ 4 + x ^ 3 ≠ 0 | h2 : 5 / rexp (rexp x) ≠ 0 | h3 : rexp (rexp x) ≠ 0
- `hebisch_hebisch_hebisch_1886` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1908` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_1974` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => 0 - x ^ 2 - x ^ 8 - x * log (2 * log 5) - x ^ 8 * rexp (5 / x)) ?m.752 x | is not definitionally equal to target | HasDerivAt ((fun x => 0 - x ^ 2) - id ^ 8) (0 - 2 * x ^ 1 * 1 - ↑8 * x ^ (8 - 1) * 1) x
- `hebisch_hebisch_hebisch_217` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_219` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : log (((0 - rexp x) * x + 4 - 2 * x) / x) ≠ 0 | h2 : ((0 - rexp x) * x + 4 - 2 * x) / x ≠ 0
- `hebisch_hebisch_hebisch_2195` — failed: unsolved goals | x : ℝ | h1 : 25 * x ^ 10 * rexp x ^ 2 - 20 * x ^ 5 * rexp x + 4 ≠ 0 | h2 : 5 ≠ 0 | h3 : x ^ 7 ≠ 0
- `hebisch_hebisch_hebisch_2205` — failed: unsolved goals | x : ℝ | h2 : 5 ≠ 0 | h3 : x ≠ 0 | h4 : 5 + x ≠ 0
- `hebisch_hebisch_hebisch_2284` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2306` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2342` — failed: unsolved goals | x : ℝ | h : | HasDerivAt (fun x => rexp (-23 - rexp 3 * 10 - rexp 6) * x * (1 / 2) + x * (-5 / 2) + x ^ 2 * (1 / 4)) | (-5 / 2 + x * (1 / 2) + rexp (-23 - rexp 3 * 10 - rexp 6) * (1 / 2)) x
- `hebisch_hebisch_hebisch_2356` — failed: Application type mismatch: The argument | Real.hasDerivAt_exp (0 - x - rexp (2 * x) - rexp (2 * x ^ 2) - 2 * rexp (x + x ^ 2)) | has type | HasDerivAt rexp (rexp (0 - x - rexp (2 * x) - rexp (2 * x ^ 2) - 2 * rexp (x + x ^ 2))) | (0 - x - rexp (2 * x) - rexp (2 * x ^ 2) - 2 * rexp (x + x ^ 2))
- `hebisch_hebisch_hebisch_2361` — failed: unsolved goals | case e'_8 | x : ℝ | h1 : x ^ 2 + 4 ≠ 0 | h2 : x ≠ 0
- `hebisch_hebisch_hebisch_2436` — failed: unsolved goals | case e'_8 | x : ℝ | h1 : x ^ 3 ≠ 0 | h2 : x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_2490` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2564` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : x ^ 3 * rexp (x ^ 2) + 7 * x ^ 4 + 4 * x ^ 3 - 8 * x ^ 2 - 16 * x ≠ 0 | h2 : 4 - 16 / x ^ 2 - 8 / x + 7 * x + rexp (x ^ 2) ≠ 0
- `hebisch_hebisch_hebisch_2594` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : | (x * log (4 * x) + x ^ 4 + 4 * x ^ 3 + 4 * x ^ 2 + x - 1) *
- `hebisch_hebisch_hebisch_2617` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2621` — failed: unsolved goals | x : ℝ | h2 : 2 ≠ 0 | h3 : x ≠ 0 | hp2_h2 : 4 ≠ 0
- `hebisch_hebisch_hebisch_2699` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2905` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2911` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2945` — failed: unsolved goals | case e'_8 | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : x ≠ 0
- `hebisch_hebisch_hebisch_2983` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : x ^ 4 - 12 * x ^ 2 - 16 * x ≠ 0 | h2 : 2 + x ≠ 0
- `hebisch_hebisch_hebisch_3005` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_3012` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3142` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3150` — failed: Application type mismatch: The argument | HasDerivAt.div | (HasDerivAt.comp x ?m.884 | (HasDerivAt.add | (HasDerivAt.sub (hasDerivAt_const x (-5 / 2)) (HasDerivAt.mul (hasDerivAt_const x (3 / 2)) (hasDerivAt_id x)))
- `hebisch_hebisch_hebisch_3174` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3221` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3249` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => x - 3 * rexp (-1) * log 2 / (-3 + 4 * x) - rexp x) ?m.1191 x | is not definitionally equal to target | HasDerivAt (id - fun x => 3 * rexp (-1) * log 2 / (-3 + 4 * x)) | (1 - (0 * (-3 + 4 * x) - 3 * rexp (-1) * log 2 * (0 + (0 * x + 4 * 1))) / (-3 + 4 * x) ^ 2) x
- `hebisch_hebisch_hebisch_3302` — failed: unsolved goals | x : ℝ | h3 : log 2 ≠ 0 | h4 : 2 ≠ 0 | h5 : x ≠ 0
- `hebisch_hebisch_hebisch_3335` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : | (8 * x ^ 3 - 72 * x ^ 2 + 160 * x) * log (0 - x + 4) + (x ^ 2 - 9 * x + 20) * rexp 2 + 8 * x ^ 4 - 39 * x ^ 3 -
- `hebisch_hebisch_hebisch_3339` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : | ((x ^ 2 + 9 * x) * log x - x ^ 4 - 8 * x ^ 3 + 11 * x ^ 2 + 18 * x) * log (x + 9) * log (log (x + 9)) ^ 2 +
- `hebisch_hebisch_hebisch_3344` — failed: unsolved goals | x : ℝ | h2 : 3 ≠ 0 | h3 : 5 ≠ 0 | hq_h2_h3 : 15 ≠ 0
- `hebisch_hebisch_hebisch_3381` — failed: unsolved goals | x : ℝ | h1 : x * rexp (3 * log x + 3 * x + 12) ^ 2 + 2 * x * rexp (3 * log x + 3 * x + 12) + x ≠ 0 | h2 : x ≠ 0 | h3 : x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_339` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : log x ≠ 0 | h2 : x ≠ 0
- `hebisch_hebisch_hebisch_342` — failed: unsolved goals | x : ℝ | h1 : rexp x * x - 2 * x ≠ 0 | h2 : x ≠ 0 | h3 : 0 - rexp x + 2 ≠ 0
- `hebisch_hebisch_hebisch_3429` — failed: unsolved goals | case e'_8 | x : ℝ | h1 : 5 * x ^ 3 + 15 * x ^ 2 - 20 ≠ 0 | h2 : x ≠ 0
- `hebisch_hebisch_hebisch_3524` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3554` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3607` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : 4 * x * rexp x ^ 2 + (4 * x ^ 2 - 20 * x) * rexp x + x ^ 3 - 10 * x ^ 2 + 25 * x ≠ 0 | h2 : 4 / x ≠ 0
- `hebisch_hebisch_hebisch_3682` — failed: unsolved goals | x : ℝ | h1 : x * log x ^ 2 + (rexp x * x + x ^ 3 - x ^ 2) * log x - rexp x * x ^ 2 - x ^ 4 ≠ 0 | h2 : x ≠ 0 | h3 : log x + x ^ 2 + rexp x ≠ 0
- `hebisch_hebisch_hebisch_3733` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3834` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : log x ^ 2 ≠ 0 | h2 : x ≠ 0
- `hebisch_hebisch_hebisch_3843` — failed: unsolved goals | x : ℝ | h1 : rexp (x ^ 2) ≠ 0 | h hst3 : HasDerivAt (fun x => x + x ^ 2 + x ^ 3 - rexp (-x ^ 2) * 5) (1 + x * 2 + x * rexp (-x ^ 2) * 10 + x ^ 2 * 3) x | hst2 : HasDerivAt (fun x => rexp (-x ^ 2)) (-(x * rexp (-x ^ 2) * 2)) x
- `hebisch_hebisch_hebisch_3871` — failed: Type mismatch: After simplification, term | h7 | has type | log ((3 * x - 3 * x ^ 2 - x ^ 3) / (-2 + 3 * x + x ^ 2)) ≠ 0 | but is expected to have type
- `hebisch_hebisch_hebisch_3884` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_393` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : x ≠ 0 | hq_h1_h2 : x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_3938` — failed: Application type mismatch: The argument | Real.hasDerivAt_exp (-2 - x - rexp (4 - x / log (x ^ 3) - log 3)) | has type | HasDerivAt rexp (rexp (-2 - x - rexp (4 - x / log (x ^ 3) - log 3))) (-2 - x - rexp (4 - x / log (x ^ 3) - log 3)) | but is expected to have type
- `hebisch_hebisch_hebisch_3941` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : x ^ 4 ≠ 0 | h2 : x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_3965` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3980` — failed: Type mismatch: After simplification, term | h4 | has type | log (4 - x - x ^ 2 * rexp 1 - log x) ≠ 0 | but is expected to have type
- `hebisch_hebisch_hebisch_4038` — failed: unsolved goals | x : ℝ | h1 : x ^ 6 * log x ^ 2 - 2 * x ^ 5 * log x + x ^ 4 ≠ 0 | h2 : x ≠ 0 | h3 : x ^ 4 ≠ 0
- `hebisch_hebisch_hebisch_4057` — failed: unsolved goals | case e'_8 | x : ℝ | h1 : (x ^ 2 + 5 * x) * rexp (log (5 + x) - 3 * x - 1) ^ 2 - x ^ 2 - 5 * x ≠ 0 | h2 : 5 + x ≠ 0
- `hebisch_hebisch_hebisch_4063` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4154` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : x ^ 2 / rexp (2 / 5 / x) ≠ 0 | h3 : rexp (2 / 5 / x) ≠ 0
- `hebisch_hebisch_hebisch_4199` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : x ^ 3 ≠ 0 | h3 : 2 ≠ 0
- `hebisch_hebisch_hebisch_4237` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4256` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4282` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : x ≠ 0 | hq_h1_h2 : x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_4373` — failed: unsolved goals | x : ℝ | h : | HasDerivAt (fun x => rexp (4 + x * (-43 / 3) + x ^ 2 * 4) * 4) | (x * rexp (4 + x * (-43 / 3) + x ^ 2 * 4) * 32 + rexp (4 + x * (-43 / 3) + x ^ 2 * 4) * (-172 / 3)) x
- `hebisch_hebisch_hebisch_4399` — failed: unsolved goals | x : ℝ | h1 : x ^ 5 ≠ 0 | h2 : log 3 ≠ 0 | h3 : 3 ≠ 0
- `hebisch_hebisch_hebisch_4562` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4708` — failed: unsolved goals | x : ℝ | h : | HasDerivAt | (fun x =>
- `hebisch_hebisch_hebisch_4830` — failed: Application type mismatch: The argument | HasDerivAt.div (HasDerivAt.add (hasDerivAt_const x 2) (hasDerivAt_id x)) (hasDerivAt_id x) ?m.1692 | has type | HasDerivAt (((fun x => 2) + id) / id) (((0 + 1) * id x - ((fun x => 2) + id) x * 1) / id x ^ 2) x | but is expected to have type
- `hebisch_hebisch_hebisch_4916` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => x - ((0 - rexp 2) * log 3 - 16 * log 3) / (5 * x) - (rexp 2 * log 3 + 16 * log 3) / (5 * (5 + x))) ?m.1243 | x | is not definitionally equal to target
- `hebisch_hebisch_hebisch_4946` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4977` — failed: unsolved goals | x : ℝ | h1 : | (x ^ 4 + 6 * x ^ 3 + 9 * x ^ 2) * log x ^ 2 + (-2 * x ^ 3 - 12 * x ^ 2 - 18 * x) * rexp 4 * log x + | (x ^ 2 + 6 * x + 9) * rexp 4 ^ 2 ≠
- `hebisch_hebisch_hebisch_5077` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5117` — failed: unsolved goals | x : ℝ | h2 : x ≠ 0 | h4 : 5 ≠ 0 | hp2_h2 : x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_5145` — failed: unsolved goals | x : ℝ | h1 : rexp (4 * x - 16) + 3 ≠ 0 | h2 : 3 + rexp (-16 + 4 * x) ≠ 0 | hst1 h :
- `hebisch_hebisch_hebisch_5157` — failed: unsolved goals | x : ℝ | h5 : log 5 + log x ≠ 0 | h6 : 5 ≠ 0 | h7 : x ≠ 0
- `hebisch_hebisch_hebisch_5188` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5216` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5234` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : | ((3 * x ^ 2 + 15 * x) * log x - 3 * x ^ 3 - 15 * x ^ 2) * log (5 + x) +
- `hebisch_hebisch_hebisch_5241` — failed: Application type mismatch: The argument | Real.hasDerivAt_exp (-1 - 4 * x - x ^ 2) | has type | HasDerivAt rexp (rexp (-1 - 4 * x - x ^ 2)) (-1 - 4 * x - x ^ 2) | but is expected to have type
- `hebisch_hebisch_hebisch_5263` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5305` — failed: unsolved goals | x : ℝ | h1 : 4 * x ^ 2 * rexp 8 ^ 2 - 4 * x ^ 3 + x ^ 2 ≠ 0 | h2 : 0 - rexp 8 ^ 2 + x - 1 / 4 ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_5317` — failed: unsolved goals | case e'_8 | x : ℝ | h1 : | 9 * log x ^ 4 + (24 * x ^ 2 + 12 * x) * log x ^ 3 + (16 * x ^ 4 + 16 * x ^ 3 - 20 * x ^ 2 - 60 * x - 24) * log x ^ 2 +
- `hebisch_hebisch_hebisch_5337` — failed: Application type mismatch: The argument | Real.hasDerivAt_exp ((4 - 117 * x - 154 * x ^ 2) / (11 * x + 11 * x ^ 2)) | has type | HasDerivAt rexp (rexp ((4 - 117 * x - 154 * x ^ 2) / (11 * x + 11 * x ^ 2))) | ((4 - 117 * x - 154 * x ^ 2) / (11 * x + 11 * x ^ 2))
- `hebisch_hebisch_hebisch_5353` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5361` — failed: Application type mismatch: The argument | Real.hasDerivAt_exp (1 + (2 * x * log x ^ 2 - 2 * log 2 * log x ^ 2 - 2 * log x ^ 3) / x ^ 2) | has type | HasDerivAt rexp (rexp (1 + (2 * x * log x ^ 2 - 2 * log 2 * log x ^ 2 - 2 * log x ^ 3) / x ^ 2)) | (1 + (2 * x * log x ^ 2 - 2 * log 2 * log x ^ 2 - 2 * log x ^ 3) / x ^ 2)
- `hebisch_hebisch_hebisch_5449` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_547` — failed: unsolved goals | x : ℝ | h1 : rexp 2 ≠ 0 | h : HasDerivAt (fun x => -(rexp (-2) * x * 5) + x * (-11 / 5)) (-11 / 5 - rexp (-2) * 5) x | hst2 : HasDerivAt (fun x => rexp (-2) * x * 5) (rexp (-2) * 5) x
- `hebisch_hebisch_hebisch_5529` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5551` — failed: unsolved goals | x : ℝ | h1 : 6 * x - 25 ≠ 0 | h2 : 15 * x / (6 * x - 25) ≠ 0 | h3 : 3 ≠ 0
- `hebisch_hebisch_hebisch_5553` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5588` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5590` — failed: unsolved goals | x : ℝ | h1 : 25 + 5 * x ≠ 0 | h2 : 1 / x * (5 + x) ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_572` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5781` — failed: unsolved goals | x : ℝ | h1 : rexp (x ^ 2) * x - 3 * x ≠ 0 | h2 : rexp x * x ≠ 0 | h3 : -3 + rexp (x ^ 2) ≠ 0
- `hebisch_hebisch_hebisch_5852` — failed: unsolved goals | x : ℝ | h1 : 5 ≠ 0 | h hst1 : | HasDerivAt
- `hebisch_hebisch_hebisch_5870` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : rexp (rexp 1) ≠ 0 | h3 : 10 ≠ 0
- `hebisch_hebisch_hebisch_5937` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : | x * log (4 * x * log 2 + 3 * x) ^ 2 * rexp (9 / log (4 * x * log 2 + 3 * x)) +
- `hebisch_hebisch_hebisch_5965` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 + 5 * x ≠ 0 | h2 : x ≠ 0 | h3 : 1 / x * (5 + x) ≠ 0
- `hebisch_hebisch_hebisch_597` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6038` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6053` — failed: unsolved goals | x : ℝ | h1 : log 7 ^ 2 * log (4 / x) ^ 2 + (-2 * x + 8) * log 7 * log (4 / x) + x ^ 2 - 8 * x + 16 ≠ 0 | h2 : 7 ≠ 0 | h3 : 4 / x ≠ 0
- `hebisch_hebisch_hebisch_6054` — failed: unsolved goals | x : ℝ | h1 : 3 + x ≠ 0 | h2 : x ≠ 0 | h3 : log x ≠ 0
- `hebisch_hebisch_hebisch_6057` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6141` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6174` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => 3 * x ^ 2 - 3 * x ^ 3 - 3 * x * log (20 - 5 * x)) ?m.1172 x | is not definitionally equal to target | HasDerivAt ((fun x => 3 * x ^ 2) - fun x => 3 * x ^ 3) | (0 * x ^ 2 + 3 * (2 * x ^ 1 * 1) - (0 * x ^ 3 + 3 * (3 * x ^ 2 * 1))) x
- `hebisch_hebisch_hebisch_6183` — failed: unsolved goals | x : ℝ | h1 : x - 1 ≠ 0 | h2 : (x - 1) / x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_6235` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => 3 / 2 * x - 9 / 2 * x ^ 2 - 3 / 2 * x ^ 3 - x * rexp 1 - x ^ 2 * rexp 1) ?m.1177 x | is not definitionally equal to target | HasDerivAt ((fun x => 3 / 2 * x) - fun x => 9 / 2 * x ^ 2) (0 * x + 3 / 2 * 1 - (0 * x ^ 2 + 9 / 2 * (2 * x ^ 1 * 1))) | x
- `hebisch_hebisch_hebisch_6259` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : x * log x - x ^ 2 ≠ 0 | h2 : x ≠ 0
- `hebisch_hebisch_hebisch_6262` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : (30 * x ^ 3 - 300 * x ^ 2 + 750 * x) * rexp (-1 / (6 * x - 30)) + 30 * x ^ 3 - 294 * x ^ 2 + 690 * x + 150 ≠ 0 | h2 : 6 * x - 30 ≠ 0
- `hebisch_hebisch_hebisch_6281` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6283` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_630` — failed: unsolved goals | x : ℝ | h2 : x ≠ 0 | h3 : -1 + x ≠ 0 | h4 : 1 + x + x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_6324` — failed: Application type mismatch: The argument | Real.hasDerivAt_exp | ((0 - x ^ 3 - x ^ 4 - 2 * x ^ 5 - x ^ 6) / (-5 * x + x ^ 2 + x ^ 3 + 2 * x ^ 4 + x ^ 5 + 15 * rexp 3)) | has type | HasDerivAt rexp
- `hebisch_hebisch_hebisch_6328` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : 24 * x ^ 5 + 96 * x ^ 4 + 66 * x ^ 3 - 120 * x ^ 2 - 120 * x ≠ 0 | h2 : 3 ≠ 0
- `hebisch_hebisch_hebisch_635` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6359` — failed: unsolved goals | x : ℝ | h1 : | 390625 * rexp 4 ^ 2 * log (1 / x) ^ 2 + (4687500 * x + 3750) * rexp 4 * log (1 / x) + 14062500 * x ^ 2 + 22500 * x + | 9 ≠
- `hebisch_hebisch_hebisch_6378` — failed: unsolved goals | case e'_8 | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : 3 ≠ 0
- `hebisch_hebisch_hebisch_6413` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6435` — failed: unsolved goals | x : ℝ | h1 : x ^ 7 ≠ 0 | h2 : x ^ 6 ≠ 0 | hq_h1_h2 : x ^ 13 ≠ 0
- `hebisch_hebisch_hebisch_6470` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | hp2_h1 : x ^ 2 ≠ 0 | h :
- `hebisch_hebisch_hebisch_6481` — failed: unsolved goals | x : ℝ | h1 : rexp (log (2 / x) - 1 / 5 * rexp (1 / 4 * x) + 1 / 10 * x) ≠ 0 | h2 : 2 / x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_6550` — failed: unsolved goals | x : ℝ | h1 : (4 * x ^ 2 - x) * rexp x - 8 * x ^ 2 + 2 * x ≠ 0 | h2 : rexp x - 2 ≠ 0 | h3 : 4 * x ^ 2 - x ≠ 0
- `hebisch_hebisch_hebisch_6570` — failed: unsolved goals | x : ℝ | h1 : rexp (log 3 + x) ≠ 0 | h2 : 3 ≠ 0 | hp2_h2 : 9 ≠ 0
- `hebisch_hebisch_hebisch_6584` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_666` — failed: unsolved goals | x : ℝ | h3 : 2 ≠ 0 | hp2_h1 : 400 - x * 800 + x ^ 2 * 600 - x ^ 3 * 200 + x ^ 4 * 25 ≠ 0 | hp2_h2 : 64 - x * 64 + x ^ 2 * 16 ≠ 0
- `hebisch_hebisch_hebisch_6770` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : | (2 * x * log (4 / x) + 2 * x ^ 2) * log (log (4 / x) + x) ^ 2 + (x * log (4 / x) + x ^ 2) * log (log (4 / x) + x) ≠ 0
- `hebisch_hebisch_hebisch_6829` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : x ^ 2 * log (16 / x ^ 2) ^ 2 - 2 * x ^ 2 * log 5 * log (16 / x ^ 2) + x ^ 2 * log 5 ^ 2 ≠ 0 | h2 : 16 / x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_6844` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : rexp (-3 * rexp x * x + 6 * x - 12) - rexp x ^ 2 ≠ 0 | h2 : 0 - rexp (-3 * rexp x * x + 6 * x - 12) + rexp x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_6905` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | -4 / (x * (2 + 4 * x + 16 * x ^ 2 + 16 * x ^ 3 + log (x ^ 2)) ^ 2) - | 2 * log (x ^ 2) / (x * (2 + 4 * x + 16 * x ^ 2 + 16 * x ^ 3 + log (x ^ 2)) ^ 2) -
- `hebisch_hebisch_hebisch_6958` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : (x ^ 2 + x) * log x + 20 * x * rexp (-2 / 5 * x + 1) - x ^ 2 - x ≠ 0 | h2 : x ≠ 0
- `hebisch_hebisch_hebisch_6962` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : | (4 * rexp x * x - 2 * rexp 2 * x + 4 * x ^ 2 + 4 * x) *
- `hebisch_hebisch_hebisch_7032` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => x - log x - log ((-2 - 15 * x ^ 2 + 8 * x ^ 3 - x ^ 4) / (-3 * x ^ 2 + x ^ 3) + rexp x)) ?m.1075 | x | is not definitionally equal to target | HasDerivAt (id - fun x => log x) (1 - 1 / x) x
- `hebisch_hebisch_hebisch_708` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7099` — failed: unsolved goals | x : ℝ | hp2_h2 : 169 - x * 312 + x ^ 2 * 300 - x ^ 3 * 144 + x ^ 4 * 36 ≠ 0 | h hst4 : | HasDerivAt (fun x => rexp 4 * (13 - x * 12 + x ^ 2 * 6)⁻¹ * 6)
- `hebisch_hebisch_hebisch_7195` — failed: unsolved goals | x : ℝ | h1 : (x ^ 2 * rexp 5 + x ^ 3 + 3 * x ^ 2) * log (rexp 5 + 3 + x) - x ^ 3 * rexp 5 - x ^ 4 - 3 * x ^ 3 ≠ 0 | h2 : rexp 5 + 3 + x ≠ 0 | h3 : log (rexp 5 + 3 + x) ^ 2 - 2 * x * log (rexp 5 + 3 + x) + x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_7239` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7257` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : x ^ 2 - 4 * x + 4 ≠ 0 | h2 : 2 * rexp (rexp (rexp 3 * rexp (rexp (x + 6)))) ≠ 0
- `hebisch_hebisch_hebisch_7267` — failed: unsolved goals | x : ℝ | h hst15 : | HasDerivAt | (fun x =>
- `hebisch_hebisch_hebisch_7281` — failed: unsolved goals | case e'_8 | x : ℝ | h1 : 3 * x ^ 3 * rexp 2 ^ 2 - 72 * x ^ 4 * rexp 2 + 432 * x ^ 5 ≠ 0 | h2 : 12 * x ^ 3 - x ^ 2 * rexp 2 ≠ 0
- `hebisch_hebisch_hebisch_7315` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7338` — failed: unsolved goals | x : ℝ | h1 : x ^ 3 + x ^ 2 ≠ 0 | h2 : x ≠ 0 | h3 : 5 * log x ^ 3 / (x ^ 2 + x) ≠ 0
- `hebisch_hebisch_hebisch_7385` — failed: unsolved goals | x : ℝ | h1 : rexp 2 * rexp 4 + 3 * rexp 2 ≠ 0 | h2 : rexp 2 ≠ 0 | h3 : 3 * rexp 2 + rexp 6 ≠ 0
- `hebisch_hebisch_hebisch_7394` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : 9 * x ^ 2 * log (3 * x) ^ 3 * rexp (-1 / 3 * rexp (1 / 3 * x * rexp 3)) + 9 * x ^ 3 * log (3 * x) ≠ 0 | h2 : 3 * x ≠ 0
- `hebisch_hebisch_hebisch_741` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7457` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7531` — failed: unsolved goals | x : ℝ | h1 : rexp x * x ^ 2 + x ≠ 0 | h2 : log (1 / x + rexp x) ≠ 0 | h3 : 1 / x + rexp x ≠ 0
- `hebisch_hebisch_hebisch_7559` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7590` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7621` — failed: Application type mismatch: The argument | HasDerivAt.sub | (HasDerivAt.add (hasDerivAt_const x 3) (HasDerivAt.div (hasDerivAt_const x 1) (hasDerivAt_id x) ?m.669)) | (hasDerivAt_id x) | has type
- `hebisch_hebisch_hebisch_7657` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7693` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7766` — failed: unsolved goals | x : ℝ | h2 : 2 ≠ 0 | hp2_h2 : 4 ≠ 0 | hq_h2_h3 : x * log 2 * 8 + x ^ 2 * 2 ≠ 0
- `hebisch_hebisch_hebisch_7791` — failed: unsolved goals | x : ℝ | h3 : 2 ≠ 0 | hp2_h1 : 121 - x * 66 + x ^ 2 * 9 ≠ 0 | hp2_h2 : 14641 - x * 15972 + x ^ 2 * 6534 - x ^ 3 * 1188 + x ^ 4 * 81 ≠ 0
- `hebisch_hebisch_hebisch_7896` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7917` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7924` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7961` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_804` — failed: Application type mismatch: The argument | Real.hasDerivAt_exp | ((25 * x ^ 2 + (x ^ 2 + 2 * x ^ 3 + x ^ 4 + x ^ 4 * rexp 8 + (2 * x ^ 3 + 2 * x ^ 4) * rexp 4) * rexp (2 * x) + | (-10 * x ^ 2 - 10 * x ^ 3 - 10 * x ^ 3 * rexp 4) * rexp x) * | rexp (-2 * x))
- `hebisch_hebisch_hebisch_807` — failed: unsolved goals | x : ℝ | h2 : 2 ≠ 0 | h4 : log 2 ≠ 0 | hp2_h2 : 4 ≠ 0
- `hebisch_hebisch_hebisch_8074` — failed: unsolved goals | x : ℝ | h1 : x ^ 3 * rexp (rexp x) ^ 2 + x ^ 4 - 4 * x ^ 3 ≠ 0 | h2 : x ^ 2 ≠ 0 | h3 : -4 + x + rexp (2 * rexp x) ≠ 0
- `hebisch_hebisch_hebisch_8112` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : | (x ^ 3 + 3 * x ^ 2 + 3 * x + 1) * log x ^ 2 + (2 * x ^ 4 + 6 * x ^ 3 + 6 * x ^ 2 + 2 * x) * log x + x ^ 5 +
- `hebisch_hebisch_hebisch_815` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : 8 * x ^ 3 - 79 * x ^ 2 + 195 * x ≠ 0 | h2 : (256 * x ^ 2 - 2560 * x + 6400) / (4800 * x ^ 4 - 46800 * x ^ 3 + 114075 * x ^ 2) / rexp 3 ≠ 0
- `hebisch_hebisch_hebisch_8169` — failed: unsolved goals | x : ℝ | h1 : rexp (1 / x) ^ 2 ≠ 0 | h2 : x ≠ 0 | hst1 : HasDerivAt (fun x => rexp (-1 / x)) (rexp (-1 / x) * ((0 * x - -1 * 1) / x ^ 2)) x
- `hebisch_hebisch_hebisch_8276` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8282` — failed: Application type mismatch: The argument | Real.hasDerivAt_exp ((-137 - 34 * x - x ^ 2) / (5 + x)) | has type | HasDerivAt rexp (rexp ((-137 - 34 * x - x ^ 2) / (5 + x))) ((-137 - 34 * x - x ^ 2) / (5 + x)) | but is expected to have type
- `hebisch_hebisch_hebisch_8306` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8311` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_835` — failed: unsolved goals | x : ℝ | h1 : rexp (3 * rexp x) + 25 * x ≠ 0 | h2 : 25 * x + rexp (3 * rexp x) ≠ 0 | hst1 :
- `hebisch_hebisch_hebisch_8360` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8404` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_8416` — failed: unsolved goals | x : ℝ | hp2_h2 : x ^ 2 * 9 + x ^ 3 * 12 + x ^ 4 * 4 ≠ 0 | hq_h1_h2 : x ^ 3 * 27 + x ^ 4 * 54 + x ^ 5 * 36 + x ^ 6 * 8 ≠ 0 | h hst5 :
- `hebisch_hebisch_hebisch_843` — failed: unsolved goals | x : ℝ | h1 : rexp 5 ≠ 0 | h2 : x ^ 2 ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_8492` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : (x * log 3 ^ 2 + (-2 * x ^ 2 + 4 * x) * log 3 + x ^ 3 - 4 * x ^ 2 + 4 * x) * rexp x + x ≠ 0 | h2 : 3 ≠ 0
- `hebisch_hebisch_hebisch_8555` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h : HasDerivAt (fun x => x + x * log (x ^ 2) * (1 / 2)) (1 + x ^ 2 * x⁻¹ ^ 2 + log (x ^ 2) * (1 / 2)) x | hst2 : HasDerivAt (fun x => x * log (x ^ 2) * (1 / 2)) (x ^ 2 * x⁻¹ ^ 2 + log (x ^ 2) * (1 / 2)) x
- `hebisch_hebisch_hebisch_8667` — failed: unsolved goals | x : ℝ | h1 : 8 * rexp x ^ 2 + 432 * rexp x + 5832 ≠ 0 | h2 : 27 + rexp x ≠ 0 | hst1 : HasDerivAt (fun x => 27 + rexp x) (0 + rexp x * 1) x
- `hebisch_hebisch_hebisch_8681` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => 118 / (25 * x) - 123 / 25 * x - 5 * log x) ?m.1315 x | is not definitionally equal to target | HasDerivAt ((fun x => 118 / (25 * x)) - fun x => 123 / 25 * x) | ((0 * (25 * x) - 118 * (0 * x + 25 * 1)) / (25 * x) ^ 2 - (0 * x + 123 / 25 * 1)) x
- `hebisch_hebisch_hebisch_8700` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8701` — failed: unsolved goals | x : ℝ | h2 : 3 + x ≠ 0 | hp2_h1 : 81 + x * 108 + x ^ 2 * 54 + x ^ 3 * 12 + x ^ 4 ≠ 0 | hp2_h2 : 9 + x * 6 + x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_8732` — failed: unsolved goals | case e'_8 | x : ℝ | h1 : log 2 ≠ 0 | h2 : 2 ≠ 0
- `hebisch_hebisch_hebisch_8754` — failed: unsolved goals | x : ℝ | h1 : x ^ 3 ≠ 0 | h2 : x ≠ 0 | h3 : 1 / x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_8903` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8929` — failed: unsolved goals | x : ℝ | h2 : x ^ 2 ≠ 0 | h3 : x ≠ 0 | h4 : -1 + x ≠ 0
- `hebisch_hebisch_hebisch_8935` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8987` — failed: unsolved goals | x : ℝ | h1 : x ^ 3 ≠ 0 | h2 : 2 ≠ 0 | h3 : x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_9001` — failed: unsolved goals | x : ℝ | h1 : x * rexp (8 * x) - 16 * x ≠ 0 | h2 : x ≠ 0 | h3 : -16 + rexp (8 * x) ≠ 0
- `hebisch_hebisch_hebisch_9006` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9077` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 + x ≠ 0 | h2 : (3 * x + 3) / x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_9147` — failed: unsolved goals | x : ℝ | h1 : | (x * rexp (4 * x) + x) * log (x ^ 2) * log (rexp (4 * x) + 1) + (2 * x ^ 2 * rexp (4 * x) + 2 * x ^ 2) * log (x ^ 2) ≠ | 0
- `hebisch_hebisch_hebisch_9234` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_9273` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | hp2_h1 : x ^ 4 ≠ 0 | h :
- `hebisch_hebisch_hebisch_9287` — failed: Application type mismatch: The argument | HasDerivAt.div | (HasDerivAt.comp x ?m.516 | (HasDerivAt.sub (hasDerivAt_const x 5) (HasDerivAt.mul (hasDerivAt_const x 6) (hasDerivAt_id x)))) | (hasDerivAt_id x) ?m.565
- `hebisch_hebisch_hebisch_933` — failed: unsolved goals | x : ℝ | h hst1 : | HasDerivAt (fun x => rexp (x * 8 + rexp (rexp 16 * x * 2 - x * 2))) | (rexp 16 * rexp (-(x * 2) + x * rexp 16 * 2) * rexp (x * 8 + rexp (-(x * 2) + x * rexp 16 * 2)) * 2 -
- `hebisch_hebisch_hebisch_9370` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : x ≠ 0 | hq_h1_h2 : x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_9398` — failed: unsolved goals | x : ℝ | h2 : x ≠ 0 | h3 : 5 ≠ 0 | h4 : x + log x ≠ 0
- `hebisch_hebisch_hebisch_9429` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9578` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_960` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9603` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9718` — failed: unsolved goals | x : ℝ | h3 : 5 ≠ 0 | hp2_h1 : 32400 + x * 3240 + x ^ 2 * 81 ≠ 0 | hp2_h3 : 25 ≠ 0
- `hebisch_hebisch_hebisch_9766` — failed: unsolved goals | x : ℝ | h3 : 2 ≠ 0 | hp2_h3 : 4 ≠ 0 | h :
- `hebisch_hebisch_hebisch_9926` — failed: unsolved goals | x : ℝ | h1 : rexp 1 + 18 ≠ 0 | h2 : 18 + rexp 1 ≠ 0 | hst1 : HasDerivAt (fun x => 14 * x ^ 2) (0 * x ^ 2 + 14 * (2 * x ^ 1 * 1)) x
- `hebisch_hebisch_hebisch_9931` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_9963` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9988` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_apostol_problems_110` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_apostol_problems_154` — failed: Type mismatch: After simplification, term | h4 | has type | (0 - 2 ^ (1 / 2)) / (2 * (1 / 2 * 2 ^ (1 / 2) + (2 - x - x ^ 2) ^ (1 / 2) / (2 + x))) + | (2 - x - x ^ 2) ^ (1 / 2) / ((2 + x) * (1 / 2 * 2 ^ (1 / 2) + (2 - x - x ^ 2) ^ (1 / 2) / (2 + x))) ≠
- `independent_independent_charlwood_problems_18` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : (x ^ 2 + 1) ^ (1 / 2) ≠ 0 | h2 : 0 < x ^ 2 + 1
- `independent_independent_charlwood_problems_31` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : (x ^ 2 + 1) ^ (1 / 2) ≠ 0 | h2 : 0 < x ^ 2 + 1
- `independent_independent_hearn_problems_132` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `independent_independent_hearn_problems_142` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h : | HasDerivAt
- `independent_independent_hearn_problems_239` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `independent_independent_hearn_problems_46` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_moses_problems_98` — failed: unsolved goals | x : ℝ | h hst4 : | HasDerivAt (fun x => arctan (rexp (x * 2)) * (-1 / 2) + rexp (x * 2) * (1 / 2)) | (rexp (x * 2) - rexp (x * 2) * (1 + rexp (x * 2) ^ 2)⁻¹) x
- `independent_independent_stewart_problems_174` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_stewart_problems_217` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_stewart_problems_335` — vacuous?: страж пустых теорем: unsolved goals | ⊢ False
- `independent_independent_timofeev_problems_116` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_timofeev_problems_172` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_timofeev_problems_203` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_timofeev_problems_254` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : x ^ 3 ≠ 0 | h2 : (x ^ 2 + x + 1) ^ (1 / 2) ≠ 0
- `independent_independent_timofeev_problems_257` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_timofeev_problems_26` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h1 : 4 ≠ 0 | hp2_h1 : 16 ≠ 0
- `independent_independent_timofeev_problems_281` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_timofeev_problems_282` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : 0 < 4 * x ^ 4 + 3
- `independent_independent_timofeev_problems_309` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | 35 / 128 * x - 35 / 128 * cos x * sin x - 35 / 192 * cos x * sin x ^ 3 - 7 / 48 * cos x * sin x ^ 5 - | 1 / 8 * cos x * sin x ^ 7)
- `independent_independent_timofeev_problems_397` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_timofeev_problems_426` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_timofeev_problems_443` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `mit_bee_mit_bee_mit_bee_131` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `mit_bee_mit_bee_mit_bee_188` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h1 : 2 - cos x ^ 2 ≠ 0 | h hst1 : HasDerivAt (fun x => arctan (sin x)) (cos x * (1 + sin x ^ 2)⁻¹) x
- `mit_bee_mit_bee_mit_bee_195` — failed: unsolved goals | x : ℝ | h hst3 : HasDerivAt (fun x => -rexp (-rexp x) + rexp (rexp x)) (rexp x * rexp (-rexp x) + rexp x * rexp (rexp x)) x | hst2 : HasDerivAt (fun x => rexp (rexp x)) (rexp x * rexp (rexp x)) x | hst1 : HasDerivAt (fun x => rexp (-rexp x)) (-(rexp x * rexp (-rexp x))) x
- `mit_bee_mit_bee_mit_bee_252` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h1 : sin x ^ 4 ≠ 0 | h2 : 3 ≠ 0
- `mit_bee_mit_bee_mit_bee_297` — failed: Application type mismatch: The argument | HasDerivAt.div (HasDerivAt.add (hasDerivAt_const x 1) (HasDerivAt.pow (hasDerivAt_id x) 2)) (hasDerivAt_id x) (id h2) | has type | HasDerivAt (((fun x => 1) + id ^ 2) / id) | (((0 + ↑2 * id x ^ (2 - 1) * 1) * id x - ((fun x => 1) + id ^ 2) x * 1) / id x ^ 2) x
- `mit_bee_official_mit_bee_official_mit_bee_official_1` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h : HasDerivAt (fun x => 16 / 35) 0 x | hs : sin x ^ 2 + cos x ^ 2 = 1
- `mit_bee_official_mit_bee_official_mit_bee_official_164` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : 1 < x | h2 : 0 < -1 + x
- `mit_bee_official_mit_bee_official_mit_bee_official_177` — failed: unsolved goals | x : ℝ | h1 : rexp x + 2 ≠ 0 | h2 : 2 + rexp x ≠ 0 | hst1 h : HasDerivAt (fun x => log (2 + rexp x)) ((0 + rexp x * 1) / (2 + rexp x)) x
- `mit_bee_official_mit_bee_official_mit_bee_official_442` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h : HasDerivAt (fun x => 2 / 9) 0 x | hs : sin x ^ 2 + cos x ^ 2 = 1
- `mit_bee_official_mit_bee_official_mit_bee_official_448` — failed: unsolved goals | x : ℝ | h3 : 0 < -1 + x ^ 2 | h4 : 0 < x + (-1 + x ^ 2) ^ (1 / 2) | h :
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1097` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1370` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1477` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_330` — failed: unsolved goals | x a b : ℝ | h1 : x ^ 2 ≠ 0 | h3 : 0 < a | h4 : a ^ (1 / 2) ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_520` — failed: unsolved goals | case e'_9 | x a b : ℝ | h1 : 0 < x | h2 : 0 < a + b * x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_579` — failed: unsolved goals | x a b : ℝ | h1 : x ^ (3 / 2) ≠ 0 | h2 : (a + b * x) ^ (3 / 2) ≠ 0 | h3 : 0 < x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_908` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_10` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1315` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1528` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1545` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1602` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1612` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1650` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1667` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_1751` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2068` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : (1 - 2 * x) ^ (3 / 2) ≠ 0 | h2 : (3 * x + 2) ^ 2 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2072` — failed: unsolved goals | x : ℝ | h3 : 128 ≠ 0 | hp2_h3 : 16384 ≠ 0 | h :
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_211` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2252` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2255` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2318` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_294` — failed: unsolved goals | x A B a b : ℝ | h1 : x ^ (5 / 2) ≠ 0 | h2 : 0 < x | h3 : 3 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_302` — failed: unsolved goals | x A B a b : ℝ | h1 : x ^ (5 / 2) ≠ 0 | h2 : 0 < x | h3 : x ^ (1 / 2) ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_41` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_463` — failed: unsolved goals | case e'_9 | x A B a b : ℝ | h1 : 0 < x | h2 : 0 < a + b * x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_594` — failed: unsolved goals | case e'_9 | x a b c d : ℝ | h1 : x ≠ 0 | h2 : 0 < a + b * x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_628` — failed: unsolved goals | case e'_9 | x a b c d : ℝ | h1 : x ≠ 0 | h2 : (c + d * x) ^ (5 / 2) ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_632` — failed: unsolved goals | case e'_9 | x a b c d : ℝ | h1 : 0 < a + b * x | h2 : 0 < c + d * x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_827` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | h4 : 0 < -1 + x | h5 : 0 < 1 + x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_83` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (0 - A) * a ^ 3 / (6 * x ^ 6) - B * b ^ 3 / (2 * x ^ 2) - (3 * A * a ^ 2 * b + B * a ^ 3) / (5 * x ^ 5) - | (3 * A * a * b ^ 2 + 3 * B * a ^ 2 * b) / (4 * x ^ 4) -
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_4_13` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_6_14` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_2_318` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_2_417` — failed: unsolved goals | case e'_9 | x a b : ℝ | h1 : x ^ 5 ≠ 0 | h2 : 0 < a + b * x ^ 2
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_2_509` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_2_529` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_3_140` — failed: unsolved goals | case e'_9 | x a b : ℝ | h1 : (a + b * x ^ 2) ^ (1 / 3) ≠ 0 | h2 : 3 * a - b * x ^ 2 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_3_29` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_3_305` — failed: unsolved goals | case e'_9 | x a b : ℝ | h1 : (a - b * x ^ 2) ^ (1 / 4) ≠ 0 | h2 : 2 * a - b * x ^ 2 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_1038` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : (2 - 3 * x ^ 2) ^ (1 / 4) ≠ 0 | h2 : 4 - 3 * x ^ 2 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_187` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_300` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_553` — failed: unsolved goals | case e'_9 | x A B a b : ℝ | h1 : x ^ 11 ≠ 0 | h2 : 0 < a + b * x ^ 2
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_556` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_566` — failed: unsolved goals | case e'_9 | x A B a b : ℝ | h1 : x ^ 7 ≠ 0 | h2 : (a + b * x ^ 2) ^ (1 / 2) ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_714` — failed: unsolved goals | case e'_9 | x a b c d : ℝ | h1 : a + b * x ^ 2 ≠ 0 | h2 : (c + d * x ^ 2) ^ (3 / 2) ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_777` — failed: unsolved goals | case e'_9 | x a b c d : ℝ | h1 : (a + b * x ^ 2) ^ 2 ≠ 0 | h2 : (c + d * x ^ 2) ^ (5 / 2) ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_5_58` — failed: unsolved goals | case e'_9 | x a b c d e1 f : ℝ | h1 : c + d * x ^ 2 ≠ 0 | h2 : (e1 + f * x ^ 2) ^ (1 / 2) ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1002` — failed: unsolved goals | case e'_9 | x a b : ℝ | h1 : 0 < a + b * x ^ 4 | h2 : 4 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1245` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1384` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1505` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1569` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | -8 * a * b ^ 7 / (13 * x ^ 13) - 7 * a ^ 2 * b ^ 6 / (3 * x ^ 12) - 56 * a ^ 3 * b ^ 5 / (11 * x ^ 11) - | 7 * a ^ 4 * b ^ 4 / x ^ 10 -
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1592` — failed: unsolved goals | x a b : ℝ | h1 : x ^ 4 ≠ 0 | h2 : (a + b / x) ^ 2 ≠ 0 | h3 : x ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_16` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1682` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1893` — failed: unsolved goals | x b : ℝ | h1 : x ^ 2 ≠ 0 | h4 : b ^ (1 / 2) ≠ 0 | h5 : 0 < b
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_2959` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_760` — failed: unsolved goals | case e'_9 | x a c : ℝ | h1 : 0 < a + c * x ^ 4 | h2 : x ^ 4 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_975` — failed: unsolved goals | case e'_9 | x a b : ℝ | h1 : x ^ 2 ≠ 0 | h2 : 0 < a + b * x ^ 4
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_3_128` — failed: unsolved goals | case e'_9 | x a b c d : ℝ | h1 : (c + d / x) ^ 3 ≠ 0 | h2 : x ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_3_135` — failed: unsolved goals | case e'_9 | x a b c d : ℝ | h1 : (c + d / x) ^ 3 ≠ 0 | h2 : x ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_3_14` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_132` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_134` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_353` — failed: unsolved goals | case e'_9 | x a b : ℝ | h1 : (a + b * x ^ 3) ^ (1 / 2) ≠ 0 | h2 : a * (10 - 6 * 3 ^ (1 / 2)) + b * x ^ 3 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_391` — failed: unsolved goals | case e'_9 | x a b c d : ℝ | h1 : x ^ 4 ≠ 0 | h2 : a + b * x ^ 3 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_427` — failed: unsolved goals | case e'_9 | x c d : ℝ | h1 : x ≠ 0 | h2 : (c + d * x ^ 3) ^ (1 / 2) ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_587` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_825` — failed: unsolved goals | x : ℝ | h1 : x ^ (5 / 2) ≠ 0 | h2 : 0 < x | h5 : 3 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_8_228` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_8_377` — failed: Application type mismatch: The argument | h | has type | HasDerivAt | (fun x =>
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_8_385` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_8_480` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_2_253` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_3_118` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_3_72` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1203` — failed: unsolved goals | case e'_9 | x a b c d : ℝ | h1 : (b * d + 2 * c * d * x) ^ 2 ≠ 0 | h2 : 0 < a + b * x + c * x ^ 2
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1240` — failed: unsolved goals | case e'_9 | x a b : ℝ | h1 : a + b * x ≠ 0 | h2 : (a ^ 2 + 2 * a * b * x + b ^ 2 * x ^ 2 + 1) ^ (1 / 2) ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1283` — failed: unsolved goals | case e'_9 | x a b c d : ℝ | h1 : (b * d + 2 * c * d * x) ^ (1 / 2) ≠ 0 | h2 : (a + b * x + c * x ^ 2) ^ 2 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_2172` — failed: unsolved goals | case e'_9 | x a b c : ℝ | h1 : (a + b * x + c * x ^ 2) ^ 4 ≠ 0 | h2 : 3 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_2283` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : (5 * x ^ 2 + 3 * x + 2) ^ 3 ≠ 0 | h2 : 0 < 2 * x + 1
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_2388` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : x ≠ 0 | h2 : (-3 * x ^ 2 + 5 * x + 2) ^ (1 / 2) ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_492` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_90` — failed: unsolved goals | case e'_9 | x b c : ℝ | h1 : x ^ (11 / 2) ≠ 0 | h2 : 0 < x
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_1141` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_1302` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_1517` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_2473` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_2556` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : (3 * x ^ 2 + 5 * x + 2) ^ 2 ≠ 0 | h2 : 0 < 2 * x + 3
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_623` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_675` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_68` — failed: unsolved goals | case e'_9 | x A B b c : ℝ | h1 : 0 < b * x + c * x ^ 2 | h2 : 8 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_723` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_818` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_4_335` — failed: unsolved goals | case e'_9 | x a c d e1 : ℝ | h1 : (a + c * x ^ 2) ^ (3 / 2) ≠ 0 | h2 : d + e1 * x ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_4_651` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_4_783` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_5_1` — failed: unsolved goals | case e'_9 | x a b d e1 f : ℝ | h1 : a + b * x + b * f * x ^ 2 / e1 ≠ 0 | h2 : (d + e1 * x + f * x ^ 2) ^ (1 / 2) ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_5_113` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_6_122` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_214` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_242` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_258` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_510` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_550` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_612` — failed: unsolved goals | case e'_8 | x a b : ℝ | h1 : x ^ 12 ≠ 0 | h2 : 0 < a ^ 2 + 2 * a * b * x ^ 2 + b ^ 2 * x ^ 4
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_678` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_758` — failed: unsolved goals | case e'_9 | x a b d : ℝ | h1 : (a ^ 2 + 2 * a * b * x ^ 2 + b ^ 2 * x ^ 4) ^ (3 / 2) ≠ 0 | h2 : 0 < a ^ 2 + 2 * a * b * x ^ 2 + b ^ 2 * x ^ 4
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_770` — failed: unsolved goals | case e'_9 | x a b d : ℝ | h1 : (a ^ 2 + 2 * a * b * x ^ 2 + b ^ 2 * x ^ 4) ^ (5 / 2) ≠ 0 | h2 : 0 < a ^ 2 + 2 * a * b * x ^ 2 + b ^ 2 * x ^ 4
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_3_145` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_3_219` — failed: unsolved goals | case e'_9 | x b c d e1 : ℝ | h1 : b * d * e1 + b * e1 ^ 2 * x ^ 2 - c * d ^ 2 + c * e1 ^ 2 * x ^ 4 ≠ 0 | h2 : 0 < d + e1 * x ^ 2
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_3_46` — failed: unsolved goals | x : ℝ | hp2_h1 : 1 + x ^ 4 * 8 + x ^ 8 * 16 ≠ 0 | h : | HasDerivAt (fun x => arctan (-1 + x * 2) * (1 / 2) + arctan (1 + x * 2) * (1 / 2))
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_4_124` — failed: unsolved goals | case e'_8 | x A B a b c : ℝ | h1 : (a + b * x ^ 2 + c * x ^ 4) ^ 3 ≠ 0 | h2 : 2 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_2_300` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_2_313` — failed: unsolved goals | case e'_9 | x a b c : ℝ | h1 : x ^ 5 ≠ 0 | h2 : a + b * x ^ 4 + c * x ^ 8 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_2_390` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : x ^ 8 - 3 * x ^ 4 + 1 ≠ 0 | h2 : 0 < 5
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_2_85` — failed: unsolved goals | case e'_8 | x a b : ℝ | h1 : x ^ 23 ≠ 0 | h2 : 0 < a ^ 2 + 2 * a * b * x ^ 3 + b ^ 2 * x ^ 6
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_2_91` — failed: Type mismatch: After simplification, term | h14 | has type | a ^ (1 / 3) * b * x - a ^ (2 / 3) * b ^ (2 / 3) - b ^ (4 / 3) * x ^ 2 ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_2_98` — failed: Type mismatch: After simplification, term | h20 | has type | a ^ (1 / 3) * b * x - a ^ (2 / 3) * b ^ (2 / 3) - b ^ (4 / 3) * x ^ 2 ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_3_18` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : x ^ 8 - 6 * x ^ 4 + 1 ≠ 0 | h2 : 0 < 2
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_4_46` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_4_improper_t_1_2_4_2_60` — failed: unsolved goals | case e'_9 | x a b c : ℝ | h1 : (a * x ^ 2 + b * x ^ 3 + c * x ^ 4) ^ (3 / 2) ≠ 0 | h2 : 0 < a * x ^ 2 + b * x ^ 3 + c * x ^ 4
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_1_162` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_1_301` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_467` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_481` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_541` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : x + (6 * x - 9) ^ (1 / 2) + 4 ≠ 0 | h2 : 0 < 6 * x - 9
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_559` — failed: unsolved goals | case e'_9 | x : ℝ | h1 : x ≠ 0 | h2 : (x + 1) ^ (1 / 2) ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_729` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_818` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_827` — failed: unsolved goals | case e'_9 | x a b : ℝ | h1 : (a * x + b * x ^ 2) ^ (1 / 2) ≠ 0 | h2 : 0 < a * x + b * x ^ 2
- `rubi_rubi_t_2_exponentials_t_2_2_3` — failed: unsolved goals | x a b c d : ℝ | h1 : a + b * rexp (c + d * x) ≠ 0 | h2 : a ≠ 0 | h3 : d ≠ 0
- `rubi_rubi_t_2_exponentials_t_2_3_663` — failed: unsolved goals | x : ℝ | h hst2 : HasDerivAt (fun x => arctan (rexp (x * 5)) * (1 / 5)) (rexp (x * 5) * (1 + rexp (x * 5) ^ 2)⁻¹) x | hst1 : HasDerivAt (fun x => arctan (rexp (x * 5))) (rexp (x * 5) * (1 + rexp (x * 5) ^ 2)⁻¹ * 5) x | h1 : 1 + rexp (x * 10) ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_0_118` — failed: unsolved goals | case e'_9 | x a b : ℝ | h1 : sin (a + b * x) ≠ 0 | h2 : b ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_0_217` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_1_2_128` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_1_232` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_1_294` — timeout: (deterministic) timeout at `«tactic execution»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_1_340` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_1_351` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_1_373` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_13` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_218` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_248` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_3_1_103` — failed: unsolved goals | case e'_9 | x A B a c e1 f : ℝ | h1 : ((0 - c) * sin (e1 + f * x) + c) ^ (7 / 2) ≠ 0 | h2 : 0 < (0 - c) * sin (e1 + f * x) + c
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_7_116` — failed: unsolved goals | x a : ℝ | h1 : 0 < (0 - a) * sin x ^ 2 + a | h2 : cos x ≠ 0 | h3 : (1 + sin x ^ 2 / cos x ^ 2) ^ (1 / 2) ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_1_1_0` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_2_1_412` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_2_1_870` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_2_1_89` — timeout: (deterministic) timeout at `«tactic execution»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_3_1_230` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_3_1_281` — failed: linarith failed to find a contradiction | case h1 | x B a b c d : ℝ | h1 : a + b * cos (c + d * x) ≠ 0 | h2 : d ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_2_2` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_2_212` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_2_215` — failed: linarith failed to find a contradiction | case h1 | x B C c d : ℝ | h1 : 4 ≠ 0 | h2 : d ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_2_412` — failed: unsolved goals | case e'_9 | x A B C a c d : ℝ | h1 : (a * cos (c + d * x) + a) ^ (3 / 2) ≠ 0 | h2 : 0 < a * cos (c + d * x) + a
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_2_418` — failed: unsolved goals | case e'_9 | x A B C a c d : ℝ | h1 : (a * cos (c + d * x) + a) ^ (5 / 2) ≠ 0 | h2 : 0 < a * cos (c + d * x) + a
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_2_1_366` — failed: unsolved goals | case e'_9 | x a d e1 f : ℝ | h1 : (d * (sin (e1 + f * x) / cos (e1 + f * x))) ^ (1 / 2) ≠ 0 | h2 : (a * (sin (e1 + f * x) / cos (e1 + f * x)) + a) ^ 2 ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_3_1_231` — failed: linarith failed to find a contradiction | case h1 | x A B a b c d : ℝ | h1 : cos (c + d * x) ≠ 0 | h2 : d ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_3_1_318` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_3_1_349` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_3_1_390` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_1_183` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_7_539` — failed: unsolved goals | case e'_9 | x A C a b c : ℝ | h1 : (a + b * cos x + c * sin x) ^ 3 ≠ 0 | h2 : 2 ≠ 0
- `rubi_rubi_t_5_inverse_trig_functions_t_5_2_inverse_cosine_t_5_2_5_40` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_5_inverse_trig_functions_t_5_3_inverse_tangent_t_5_3_4_1127` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_6_hyperbolic_functions_t_6_1_hyperbolic_sine_t_6_1_5_316` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h : | HasDerivAt (fun x => rexp x * (-1 / 2) + rexp (-(x * 7)) * (-1 / 28) + rexp (x * 9) * (1 / 36))
- `rubi_rubi_t_6_hyperbolic_functions_t_6_2_hyperbolic_cosine_t_6_2_1_99` — failed: unsolved goals | case e'_9 | x a c d e1 f : ℝ | h1 : f ^ 3 ≠ 0 | h2 : f ^ 2 ≠ 0
- `rubi_rubi_t_6_hyperbolic_functions_t_6_2_hyperbolic_cosine_t_6_2_2_0` — failed: unsolved goals | case e'_9 | x a b c d : ℝ | h1 : d ^ 4 ≠ 0 | h2 : d ^ 3 ≠ 0
- `rubi_rubi_t_6_hyperbolic_functions_t_6_2_hyperbolic_cosine_t_6_2_5_165` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_6_hyperbolic_functions_t_6_3_hyperbolic_tangent_t_6_3_1_7` — failed: linarith failed to find a contradiction | case h1 | x c d e1 f : ℝ | h2 : f ^ 2 ≠ 0 | h4 : f ≠ 0
- `rubi_rubi_t_6_hyperbolic_functions_t_6_3_hyperbolic_tangent_t_6_3_2_24` — failed: unsolved goals | case e'_9 | x a : ℝ | h1 : 0 < a * (sinh x / cosh x) ^ 2 | h2 : cosh x ≠ 0
- `rubi_rubi_t_6_hyperbolic_functions_t_6_7_miscellaneous_t_6_7_1_249` — failed: linarith failed to find a contradiction | case h1 | x a b : ℝ | h1 : 16 ≠ 0 | h2 : b ^ 3 ≠ 0
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_1024` — failed: unsolved goals | x a c : ℝ | hq_h1_h2 : 1 - x ^ 2 * a ^ 2 ≠ 0 | h : | HasDerivAt
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_327` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_353` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_542` — failed: unsolved goals | case e'_9 | x a c : ℝ | h1 : a ≠ 0 | h2 : x ≠ 0
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_781` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_821` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_822` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_927` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_7_165` — failed: unsolved goals | case e'_9 | x a b : ℝ | h1 : 0 < x | h2 : 1 - sinh (a + b * x) / cosh (a + b * x) ≠ 0
