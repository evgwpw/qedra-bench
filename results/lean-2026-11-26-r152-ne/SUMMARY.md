# Lean: 2026-11-26, снимок 300e992db2f008814985e112f7f2b51503d57bc4

- вход: `qedra_ref=rubi-pilot`, осколков 4, таймаут на пакет 900 с
- прогон: https://github.com/evgwpw/qedra-bench/actions/runs/45895515900
- всего теорем: 653
- генератор: `3a858a6fc13e6abfb1f99f7659054f399940aaf3`, ответов OK 1000, выборка 500 (seed 1), пакетов по 20, тактов на теорему 200000/undefined
| статус | теорем |
|---|---|
| passed | 0 |
| failed | 208 |
| failed-axioms | 0 |
| timeout | 263 |
| vacuous? | 12 |
| unknown | 170 |

| осколок | всего | passed | failed | failed-axioms | timeout | vacuous? | unknown |
|---|---|---|---|---|---|---|---|
| lean-1 | 161 | 0 | 35 | 0 | 105 | 0 | 21 |
| lean-2 | 180 | 0 | 59 | 0 | 66 | 3 | 52 |
| lean-3 | 180 | 0 | 72 | 0 | 46 | 7 | 55 |
| lean-4 | 132 | 0 | 42 | 0 | 46 | 2 | 42 |
## Пилот: по наборам

Всего ответов OK: 1000 (из них не переведено генератором: 347); проценты — от проверенных.

| набор | проверено | passed | failed | failed-axioms | timeout | vacuous? | unknown | не переведено | passed, % |
|---|---|---|---|---|---|---|---|---|---|
| rubi | 211 | 0 | 47 | 0 | 136 | 0 | 28 | 289 | 0 |
| hebisch | 331 | 0 | 137 | 0 | 84 | 8 | 102 | 0 | 0 |
| uchebnye | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 58 | 0 |
| blake | 47 | 0 | 9 | 0 | 28 | 1 | 9 | 0 | 0 |
| independent | 45 | 0 | 7 | 0 | 14 | 3 | 21 | 0 | 0 |
| mit_bee | 11 | 0 | 4 | 0 | 1 | 0 | 6 | 0 | 0 |
| mit_bee_official | 8 | 0 | 4 | 0 | 0 | 0 | 4 | 0 | 0 |
| **всего** | **653** | **0** | **208** | **0** | **263** | **12** | **170** | **347** | **0** |

## Пилот: Rubi по подглавам

Всего ответов OK: 500 (из них не переведено генератором: 289); проценты — от проверенных.

| подглава | проверено | passed | failed | failed-axioms | timeout | vacuous? | unknown | не переведено | passed, % |
|---|---|---|---|---|---|---|---|---|---|
| (не переведено) | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 289 | 0 |
| t_1_1_1_3 | 24 | 0 | 7 | 0 | 17 | 0 | 0 | 0 | 0 |
| t_1_2_1_3 | 15 | 0 | 1 | 0 | 9 | 0 | 5 | 0 | 0 |
| t_1_1_3_2 | 13 | 0 | 5 | 0 | 7 | 0 | 1 | 0 | 0 |
| t_1_2_2_2 | 12 | 0 | 1 | 0 | 8 | 0 | 3 | 0 | 0 |
| t_1_1_1_2 | 9 | 0 | 3 | 0 | 4 | 0 | 2 | 0 | 0 |
| t_1_1_2_4 | 9 | 0 | 0 | 0 | 8 | 0 | 1 | 0 | 0 |
| t_1_1_3_4 | 9 | 0 | 4 | 0 | 3 | 0 | 2 | 0 | 0 |
| t_1_2_1_2 | 8 | 0 | 0 | 0 | 8 | 0 | 0 | 0 | 0 |
| t_1_3_2 | 8 | 0 | 1 | 0 | 6 | 0 | 1 | 0 | 0 |
| t_7_3_6 | 8 | 0 | 1 | 0 | 7 | 0 | 0 | 0 | 0 |
| t_1_1_2_2 | 6 | 0 | 1 | 0 | 3 | 0 | 2 | 0 | 0 |
| t_1_2_3_2 | 6 | 0 | 3 | 0 | 3 | 0 | 0 | 0 | 0 |
| t_4_1_2_1 | 5 | 0 | 0 | 0 | 5 | 0 | 0 | 0 | 0 |
| t_4_2_4_2 | 5 | 0 | 1 | 0 | 4 | 0 | 0 | 0 | 0 |
| t_1_1_3_8 | 4 | 0 | 2 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_1_2_2_3 | 4 | 0 | 1 | 0 | 2 | 0 | 1 | 0 | 0 |
| t_1_3_1 | 4 | 0 | 0 | 0 | 2 | 0 | 2 | 0 | 0 |
| t_4_3_3_1 | 4 | 0 | 1 | 0 | 3 | 0 | 0 | 0 | 0 |
| t_1_1_2_3 | 3 | 0 | 0 | 0 | 3 | 0 | 0 | 0 | 0 |
| t_1_1_3_3 | 3 | 0 | 2 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_2_1_4 | 3 | 0 | 0 | 0 | 3 | 0 | 0 | 0 | 0 |
| t_1_2_1_5 | 3 | 0 | 1 | 0 | 1 | 0 | 1 | 0 | 0 |
| t_4_1_2_2 | 3 | 0 | 0 | 0 | 3 | 0 | 0 | 0 | 0 |
| t_4_2_2_1 | 3 | 0 | 1 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_1_1_2_8 | 2 | 0 | 0 | 0 | 0 | 0 | 2 | 0 | 0 |
| t_1_1_4_3 | 2 | 0 | 0 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_2_3 | 2 | 0 | 1 | 0 | 0 | 0 | 1 | 0 | 0 |
| t_4_1_0 | 2 | 0 | 0 | 0 | 2 | 0 | 0 | 0 | 0 |
| t_4_2_3_1 | 2 | 0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_5_3_4 | 2 | 0 | 0 | 0 | 1 | 0 | 1 | 0 | 0 |
| t_1_1_1_4 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_1_1_6 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_1_2_5 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_1_4_2 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_2_1_6 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_2_1_9 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| t_1_2_2_4 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_1_2_3_3 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_2_3_4 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_1_2_4_2 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_2_2 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_1_1_2 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_1_3_1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_1_7 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_4_2_1_1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_3_2_1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_7_1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_4_7_7 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_5_2_5 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_5_3_2 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| t_6_1_5 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_6_2_1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_6_2_2 | 1 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
| t_6_2_5 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
| t_6_3_1 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_6_3_2 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_6_7_1 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| t_7_3_7 | 1 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| **всего** | **211** | **0** | **47** | **0** | **136** | **0** | **28** | **289** | **0** |

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

- `blake_blake_blake_104` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `blake_blake_blake_1102` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_112` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1193` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1222` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1243` — failed: unsolved goals | x : ℝ | h1 : x ^ 5 - x ^ 3 - 1 ≠ 0 | h2 : x ^ 3 ≠ 0 | h3 : 0 < x ^ 5 - 1
- `blake_blake_blake_1254` — failed: unsolved goals | x : ℝ | h1 : x ^ 6 + x ^ 3 - 1 ≠ 0 | h2 : x ^ 2 ≠ 0 | h3 : 0 < x ^ 6 - 1
- `blake_blake_blake_1264` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1274` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1461` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1481` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1614` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1625` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_163` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `blake_blake_blake_1727` — failed: Type mismatch: After simplification, term | h14 | has type | 3 / 2 - 1 / 2 * 3 ^ (1 / 2) - (1 + x ^ 3 + x ^ 5) / x ^ 3 ≠ 0 | but is expected to have type
- `blake_blake_blake_1780` — failed: Application type mismatch: The argument | qedra_hasDerivAt_atanh | (2 * 3 ^ (1 / 2) * x * (114688 - 32768 * 13 ^ (1 / 2) - 16384 * (-2 + x + 2 * x ^ 2) / x) / | ((-77309411328 + 25769803776 * 13 ^ (1 / 2)) ^ (1 / 2) * (1 - x - x ^ 2 + x ^ 3 + x ^ 4) ^ (1 / 2))) | h8 h7
- `blake_blake_blake_1801` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_1802` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_197` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `blake_blake_blake_2136` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | 3 * (-2 + x ^ 2 + 2 * x ^ 3) ^ (4 / 3) / (4 * x ^ 4) - | 2 * (-2 + x ^ 2 + 2 * x ^ 3) ^ (4 / 3) / (x ^ 4 * (-1 + (-2 + x ^ 2 + 2 * x ^ 3) / x ^ 3)) -
- `blake_blake_blake_216` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `blake_blake_blake_2281` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_23` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `blake_blake_blake_24` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `blake_blake_blake_2594` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_2720` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_286` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_2896` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_293` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `blake_blake_blake_332` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | h3 : 0 < 1 + x ^ 6 | h4 : -1 + (1 + x ^ 6) ^ (1 / 2) ≠ 0
- `blake_blake_blake_333` — failed: `simp` made no progress
- `blake_blake_blake_369` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_385` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_397` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `blake_blake_blake_399` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_527` — failed: `simp` made no progress
- `blake_blake_blake_60` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `blake_blake_blake_65` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `blake_blake_blake_681` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_705` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_758` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_806` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_866` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_929` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_954` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_977` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `blake_blake_blake_988` — failed: Type mismatch: After simplification, term | h5 | has type | (2 - x ^ 2 - 4 * x ^ 4) ^ (1 / 2) ≠ 0 | but is expected to have type
- `hebisch_hebisch_hebisch_10028` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | hp2_h1 : x ^ 2 ≠ 0 | h :
- `hebisch_hebisch_hebisch_10033` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_10118` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_10150` — failed: unsolved goals | x : ℝ | h1 : rexp 2 ≠ 0 | h : | HasDerivAt (fun x => rexp (-2) * x ^ 4 * 4 + x * (3 / 4) + x ^ 4 * 12 - x ^ 5 * 2 + x ^ 6 * (1 / 4))
- `hebisch_hebisch_hebisch_10158` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | h2 : 4 / (x ^ 2 + x) ≠ 0 | h3 : x ^ 2 + x ≠ 0
- `hebisch_hebisch_hebisch_10249` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_10270` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => x ^ 2 - x * rexp 5 - 1 / log x) ?m.216 x | is not definitionally equal to target | HasDerivAt (id ^ 2 - id * fun x => rexp 5) (↑2 * x ^ (2 - 1) * 1 - (1 * rexp 5 + x * 0)) x
- `hebisch_hebisch_hebisch_10304` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_10312` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_1033` — failed: unsolved goals | x : ℝ | h1 : rexp (5 * x) + 4 * x + 16 ≠ 0 | h2 : 1 / 4 * rexp (5 * x) + x + 4 ≠ 0 | h3 : 2 ≠ 0
- `hebisch_hebisch_hebisch_1059` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => (5 * x ^ 2 - x ^ 2 * rexp 1 - 2 * x ^ 2 * log 5) / (rexp 1 + 2 * log 5)) ?m.436 x | is not definitionally equal to target | HasDerivAt (((fun x => 5) * id ^ 2 - id ^ 2 * fun x => rexp 1) / fun x => rexp 1 + 2 * log 5) | (((0 * x ^ 2 + 5 * (↑2 * x ^ (2 - 1) * 1) - (↑2 * x ^ (2 - 1) * 1 * rexp 1 + x ^ 2 * 0)) * (rexp 1 + 2 * log 5) -
- `hebisch_hebisch_hebisch_1069` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1074` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1092` — failed: unsolved goals | x : ℝ | h : | HasDerivAt (fun x => x - rexp (158 - x * 1000080 + x ^ 2 * 1562750010) * 2) | (1 - x * rexp (158 - x * 1000080 + x ^ 2 * 1562750010) * 6251000040 +
- `hebisch_hebisch_hebisch_1135` — failed: unsolved goals | x : ℝ | h1 : log (2 * x) ≠ 0 | h2 : 2 * x ≠ 0 | h3 : rexp 6 ≠ 0
- `hebisch_hebisch_hebisch_1146` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1210` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | hp2_h1 : x ^ 2 ≠ 0 | h :
- `hebisch_hebisch_hebisch_1217` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_1286` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | hp2_h1 : x ^ 2 ≠ 0 | h :
- `hebisch_hebisch_hebisch_1287` — failed: unsolved goals | x : ℝ | h1 : rexp x + x ≠ 0 | h2 : x + rexp x ≠ 0 | hst1 : HasDerivAt (id * log ∘ (id + rexp)) (1 * (log ∘ (id + rexp)) x + id x * (((id + rexp) x)⁻¹ * (1 + rexp x))) x
- `hebisch_hebisch_hebisch_130` — failed: unsolved goals | x : ℝ | h2 : 2 ≠ 0 | hp2_h2 : 4 ≠ 0 | h :
- `hebisch_hebisch_hebisch_1331` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => 2 * x - x ^ 2 - 1 / (x * (1 / 4 * x + log x))) ?m.517 x | is not definitionally equal to target | HasDerivAt ((fun x => 2) * id - id ^ 2) (0 * x + 2 * 1 - ↑2 * x ^ (2 - 1) * 1) x
- `hebisch_hebisch_hebisch_1364` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_1409` — failed: unsolved goals | x : ℝ | h1 : (x ^ 3 + 4 * x ^ 2) * rexp x - x ^ 5 + 2 * x ^ 4 + 15 * x ^ 3 - 37 * x ^ 2 - 4 * x ≠ 0 | h2 : -9 - 1 / x + 6 * x - x ^ 2 + rexp x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_1419` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_1458` — failed: unsolved goals | x : ℝ | h1 : rexp x ^ 2 ≠ 0 | h2 : x ≠ 0 | h :
- `hebisch_hebisch_hebisch_1482` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_1501` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : 3 ≠ 0 | h3 : x * rexp (rexp x) ≠ 0
- `hebisch_hebisch_hebisch_1518` — failed: unsolved goals | x : ℝ | h1 : x * log x ^ 2 - rexp x * x ^ 2 - 7 * x ^ 2 ≠ 0 | h2 : x ≠ 0 | h3 : 7 - log x ^ 2 / x + rexp x ≠ 0
- `hebisch_hebisch_hebisch_1531` — failed: unsolved goals | x : ℝ | h1 : rexp 9 ≠ 0 | h2 : x ≠ 0 | hp2_h2 : x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_1607` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1620` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1661` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_1687` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : 4 / x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_1689` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_1736` — failed: unsolved goals | x : ℝ | h1 : 3 * rexp 2 - 1 ≠ 0 | h2 : -1 + 3 * rexp 2 ≠ 0 | h :
- `hebisch_hebisch_hebisch_1766` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_1786` — failed: Type mismatch: After simplification, term | h3 | has type | -5 - 2 * x - 16 * x ^ 2 - 8 * x ^ 4 - x ^ 6 - rexp 2 ≠ 0 | but is expected to have type
- `hebisch_hebisch_hebisch_1796` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_1806` — failed: unsolved goals | x : ℝ | h1 : x * rexp 1 - 144 * x ≠ 0 | h2 : -144 + rexp 1 ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_1832` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 * rexp (log (5 / rexp (rexp x)) - x) - x ^ 4 + x ^ 3 ≠ 0 | h2 : 5 / rexp (rexp x) ≠ 0 | h3 : rexp (rexp x) ≠ 0
- `hebisch_hebisch_hebisch_1886` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_19` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_1908` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_1974` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => 0 - x ^ 2 - x ^ 8 - x * log (2 * log 5) - x ^ 8 * rexp (5 / x)) ?m.377 x | is not definitionally equal to target | HasDerivAt ((fun x => 0) - id ^ 2 - id ^ 8) (0 - ↑2 * x ^ (2 - 1) * 1 - ↑8 * x ^ (8 - 1) * 1) x
- `hebisch_hebisch_hebisch_2120` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_2125` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_217` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_219` — failed: unsolved goals | x : ℝ | h1 : log (((0 - rexp x) * x + 4 - 2 * x) / x) ≠ 0 | h2 : ((0 - rexp x) * x + 4 - 2 * x) / x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_2195` — failed: unsolved goals | x : ℝ | h1 : 25 * x ^ 10 * rexp x ^ 2 - 20 * x ^ 5 * rexp x + 4 ≠ 0 | h2 : 5 ≠ 0 | h3 : x ^ 7 ≠ 0
- `hebisch_hebisch_hebisch_2205` — failed: unsolved goals | x : ℝ | h2 : 5 ≠ 0 | h3 : x ≠ 0 | h4 : 5 + x ≠ 0
- `hebisch_hebisch_hebisch_2227` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_2237` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_226` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_2284` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2306` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2342` — failed: unsolved goals | x : ℝ | h : | HasDerivAt (fun x => rexp (-23 - rexp 3 * 10 - rexp 6) * x * (1 / 2) + x * (-5 / 2) + x ^ 2 * (1 / 4)) | (-5 / 2 + x * (1 / 2) + rexp (-23 - rexp 3 * 10 - rexp 6) * (1 / 2)) x
- `hebisch_hebisch_hebisch_2356` — failed: Application type mismatch: The argument | Real.hasDerivAt_exp (0 - x - rexp (2 * x) - rexp (2 * x ^ 2) - 2 * rexp (x + x ^ 2)) | has type | HasDerivAt rexp (rexp (0 - x - rexp (2 * x) - rexp (2 * x ^ 2) - 2 * rexp (x + x ^ 2))) | (0 - x - rexp (2 * x) - rexp (2 * x ^ 2) - 2 * rexp (x + x ^ 2))
- `hebisch_hebisch_hebisch_2361` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | 0 - x ^ 2 - 3 * x ^ 3 - 3 * x ^ 4 - x ^ 5 + (-16 * x ^ 2 - 16 * x ^ 3 - 16 * x ^ 2 * log x) * rexp (2 * x) + | (0 - x ^ 2 - 2 * x ^ 3 - x ^ 4) * log x +
- `hebisch_hebisch_hebisch_2368` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_2393` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_2436` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => 1 / 4 * ((-425 - 300 * x - 100 * x ^ 2) * rexp x / x ^ 2 + (100 - 100 * x) / x ^ 2)) ?m.576 x | is not definitionally equal to target | HasDerivAt | ((fun x => 1 / 4) *
- `hebisch_hebisch_hebisch_2441` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_2490` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2564` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_2593` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_2594` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2617` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2621` — failed: unsolved goals | x : ℝ | h2 : 2 ≠ 0 | h3 : x ≠ 0 | hp2_h2 : 4 ≠ 0
- `hebisch_hebisch_hebisch_2699` — failed: unsolved goals | x : ℝ | h2 : x ≠ 0 | h4 : 3 + x ≠ 0 | hp2_h2 : x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_2740` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_2905` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2911` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_2940` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_2945` — failed: Application type mismatch: The argument | HasDerivAt.div (HasDerivAt.mul (hasDerivAt_const x (-2)) (Real.hasDerivAt_exp x)) (hasDerivAt_id x) ?m.624 | has type | HasDerivAt ((fun x => -2) * rexp / id) (((0 * rexp x + -2 * rexp x) * id x - ((fun x => -2) * rexp) x * 1) / id x ^ 2) | x
- `hebisch_hebisch_hebisch_2957` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_2983` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3005` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_3012` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3142` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3150` — failed: Application type mismatch: The argument | HasDerivAt.div | (HasDerivAt.comp x ?m.543 | (HasDerivAt.add | (HasDerivAt.sub (hasDerivAt_const x (-5 / 2)) (HasDerivAt.mul (hasDerivAt_const x (3 / 2)) (hasDerivAt_id x)))
- `hebisch_hebisch_hebisch_3174` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3177` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_3221` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3249` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => x - 3 * rexp (-1) * log 2 / (-3 + 4 * x) - rexp x) ?m.402 x | is not definitionally equal to target | HasDerivAt (id - (fun x => 3 * rexp (-1) * log 2) / ((fun x => -3) + (fun x => 4) * id)) | (1 - (0 * (-3 + 4 * x) - 3 * rexp (-1) * log 2 * (0 + (0 * x + 4 * 1))) / (-3 + 4 * x) ^ 2) x
- `hebisch_hebisch_hebisch_3302` — failed: unsolved goals | x : ℝ | h3 : log 2 ≠ 0 | h4 : 2 ≠ 0 | h5 : x ≠ 0
- `hebisch_hebisch_hebisch_3334` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_3335` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3339` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3344` — failed: unsolved goals | x : ℝ | h2 : 3 ≠ 0 | h3 : 5 ≠ 0 | hq_h2_h3 : 15 ≠ 0
- `hebisch_hebisch_hebisch_3349` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_3362` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_3370` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_3381` — failed: unsolved goals | x : ℝ | h1 : x * rexp (3 * log x + 3 * x + 12) ^ 2 + 2 * x * rexp (3 * log x + 3 * x + 12) + x ≠ 0 | h2 : x ≠ 0 | h3 : x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_339` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3395` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_3413` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_342` — failed: unsolved goals | x : ℝ | h1 : rexp x * x - 2 * x ≠ 0 | h2 : x ≠ 0 | h3 : 0 - rexp x + 2 ≠ 0
- `hebisch_hebisch_hebisch_3429` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | 2 * x ^ 2 + 3 * x ^ 2 * log 2 + x ^ 2 * log (-1 + x) + | (-4 - 2 * x - 11 * x ^ 2 - 5 * x ^ 3) * log x / (10 + 5 * x) +
- `hebisch_hebisch_hebisch_3524` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3554` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3607` — failed: unsolved goals | x : ℝ | h1 : 4 * x * rexp x ^ 2 + (4 * x ^ 2 - 20 * x) * rexp x + x ^ 3 - 10 * x ^ 2 + 25 * x ≠ 0 | h2 : 4 / x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_3682` — failed: unsolved goals | x : ℝ | h1 : x * log x ^ 2 + (rexp x * x + x ^ 3 - x ^ 2) * log x - rexp x * x ^ 2 - x ^ 4 ≠ 0 | h2 : x ≠ 0 | h3 : log x + x ^ 2 + rexp x ≠ 0
- `hebisch_hebisch_hebisch_3732` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_3733` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3834` — failed: unsolved goals | x : ℝ | h1 : log x ^ 2 ≠ 0 | h2 : x ≠ 0 | h3 : log x ≠ 0
- `hebisch_hebisch_hebisch_3837` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_3843` — failed: unsolved goals | x : ℝ | h1 : rexp (x ^ 2) ≠ 0 | h : HasDerivAt (fun x => x + x ^ 2 + x ^ 3 - rexp (-x ^ 2) * 5) (1 + x * 2 + x * rexp (-x ^ 2) * 10 + x ^ 2 * 3) x | hs : sin x ^ 2 + cos x ^ 2 = 1
- `hebisch_hebisch_hebisch_3871` — failed: Type mismatch: After simplification, term | h7 | has type | log ((3 * x - 3 * x ^ 2 - x ^ 3) / (-2 + 3 * x + x ^ 2)) ≠ 0 | but is expected to have type
- `hebisch_hebisch_hebisch_3884` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3893` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_393` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : x ≠ 0 | hq_h1_h2 : x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_3938` — failed: Application type mismatch: The argument | Real.hasDerivAt_exp (-2 - x - rexp (4 - x / log (x ^ 3) - log 3)) | has type | HasDerivAt rexp (rexp (-2 - x - rexp (4 - x / log (x ^ 3) - log 3))) (-2 - x - rexp (4 - x / log (x ^ 3) - log 3)) | but is expected to have type
- `hebisch_hebisch_hebisch_3941` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3965` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_3973` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_3980` — failed: Type mismatch: After simplification, term | h4 | has type | log (4 - x - x ^ 2 * rexp 1 - log x) ≠ 0 | but is expected to have type
- `hebisch_hebisch_hebisch_4038` — failed: unsolved goals | x : ℝ | h1 : x ^ 6 * log x ^ 2 - 2 * x ^ 5 * log x + x ^ 4 ≠ 0 | h2 : x ≠ 0 | h3 : x ^ 4 ≠ 0
- `hebisch_hebisch_hebisch_4044` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_4057` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | 2 * log x - 2 * log (5 + x) - | log (-1 / (10 * x * rexp (-2) + x ^ 2 * rexp (-2) + 25 * rexp (-2)) + rexp (-6 * x)))
- `hebisch_hebisch_hebisch_4063` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4154` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : x ^ 2 / rexp (2 / 5 / x) ≠ 0 | h3 : rexp (2 / 5 / x) ≠ 0
- `hebisch_hebisch_hebisch_4185` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_4199` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : x ^ 3 ≠ 0 | h3 : 2 ≠ 0
- `hebisch_hebisch_hebisch_4237` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_4256` — failed: unsolved goals | x : ℝ | h1 : log x ≠ 0 | h2 : x ≠ 0 | h3 : 3 / 2 / log 2 / log x ≠ 0
- `hebisch_hebisch_hebisch_4282` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : x ≠ 0 | hq_h1_h2 : x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_4290` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_4292` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_4349` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_4366` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_4373` — failed: unsolved goals | x : ℝ | h : | HasDerivAt (fun x => rexp (4 + x * (-43 / 3) + x ^ 2 * 4) * 4) | (x * rexp (4 + x * (-43 / 3) + x ^ 2 * 4) * 32 + rexp (4 + x * (-43 / 3) + x ^ 2 * 4) * (-172 / 3)) x
- `hebisch_hebisch_hebisch_4399` — failed: unsolved goals | x : ℝ | h1 : x ^ 5 ≠ 0 | h2 : log 3 ≠ 0 | h3 : 3 ≠ 0
- `hebisch_hebisch_hebisch_4419` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_4517` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_4562` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_4695` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_4700` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_4708` — failed: unsolved goals | x : ℝ | h : | HasDerivAt | (fun x =>
- `hebisch_hebisch_hebisch_4767` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_4830` — failed: Application type mismatch: The argument | HasDerivAt.div (HasDerivAt.add (hasDerivAt_const x 2) (hasDerivAt_id x)) (hasDerivAt_id x) ?m.1615 | has type | HasDerivAt (((fun x => 2) + id) / id) (((0 + 1) * id x - ((fun x => 2) + id) x * 1) / id x ^ 2) x | but is expected to have type
- `hebisch_hebisch_hebisch_4839` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_4870` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_4916` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => x - ((0 - rexp 2) * log 3 - 16 * log 3) / (5 * x) - (rexp 2 * log 3 + 16 * log 3) / (5 * (5 + x))) ?m.502 | x | is not definitionally equal to target
- `hebisch_hebisch_hebisch_4946` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_4977` — failed: unsolved goals | x : ℝ | h1 : | (x ^ 4 + 6 * x ^ 3 + 9 * x ^ 2) * log x ^ 2 + (-2 * x ^ 3 - 12 * x ^ 2 - 18 * x) * rexp 4 * log x + | (x ^ 2 + 6 * x + 9) * rexp 4 ^ 2 ≠
- `hebisch_hebisch_hebisch_498` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_499` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_5077` — failed: unsolved goals | x : ℝ | h1 : rexp x ^ 2 ≠ 0 | h2 : 2 ≠ 0 | h3 : 3 ≠ 0
- `hebisch_hebisch_hebisch_5117` — failed: unsolved goals | x : ℝ | h2 : x ≠ 0 | h4 : 5 ≠ 0 | hp2_h2 : x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_5145` — failed: unsolved goals | x : ℝ | h1 : rexp (4 * x - 16) + 3 ≠ 0 | h2 : 3 + rexp (-16 + 4 * x) ≠ 0 | h :
- `hebisch_hebisch_hebisch_5157` — failed: unsolved goals | x : ℝ | h5 : log 5 + log x ≠ 0 | h6 : 5 ≠ 0 | h7 : x ≠ 0
- `hebisch_hebisch_hebisch_5188` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5216` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5234` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5241` — failed: Application type mismatch: The argument | Real.hasDerivAt_exp (-1 - 4 * x - x ^ 2) | has type | HasDerivAt rexp (rexp (-1 - 4 * x - x ^ 2)) (-1 - 4 * x - x ^ 2) | but is expected to have type
- `hebisch_hebisch_hebisch_5253` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_5263` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | 4 * x ^ 2 + x ^ 4 + 4 * x ^ 2 * log 5 + 2 * x ^ 4 * log 5 + x ^ 4 * log 5 ^ 2 + | (4 * x * log 2 * log 5 + 8 * x * log 5 + 10 * x ^ 2 * log 2 * log 5 + 10 * x ^ 2 * log 2 * log 5 ^ 2 +
- `hebisch_hebisch_hebisch_5305` — failed: unsolved goals | x : ℝ | h1 : 4 * x ^ 2 * rexp 8 ^ 2 - 4 * x ^ 3 + x ^ 2 ≠ 0 | h2 : 0 - rexp 8 ^ 2 + x - 1 / 4 ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_5317` — failed: Type mismatch: After simplification, term | mul_ne_zero h3 h4 | has type | 3 * (1 / 3 * (2 * x + 4 * x ^ 2) * log x + 1 / 3 * (-4 - 10 * x - 4 * x ^ 2) + log x ^ 2) ≠ 0 | but is expected to have type
- `hebisch_hebisch_hebisch_5337` — failed: Application type mismatch: The argument | Real.hasDerivAt_exp ((4 - 117 * x - 154 * x ^ 2) / (11 * x + 11 * x ^ 2)) | has type | HasDerivAt rexp (rexp ((4 - 117 * x - 154 * x ^ 2) / (11 * x + 11 * x ^ 2))) | ((4 - 117 * x - 154 * x ^ 2) / (11 * x + 11 * x ^ 2))
- `hebisch_hebisch_hebisch_5340` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_5353` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_5355` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_5361` — failed: Application type mismatch: The argument | Real.hasDerivAt_exp (1 + (2 * x * log x ^ 2 - 2 * log 2 * log x ^ 2 - 2 * log x ^ 3) / x ^ 2) | has type | HasDerivAt rexp (rexp (1 + (2 * x * log x ^ 2 - 2 * log 2 * log x ^ 2 - 2 * log x ^ 3) / x ^ 2)) | (1 + (2 * x * log x ^ 2 - 2 * log 2 * log x ^ 2 - 2 * log x ^ 3) / x ^ 2)
- `hebisch_hebisch_hebisch_5443` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_5449` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_547` — failed: unsolved goals | x : ℝ | h1 : rexp 2 ≠ 0 | h : HasDerivAt (fun x => -(rexp (-2) * x * 5) + x * (-11 / 5)) (-11 / 5 - rexp (-2) * 5) x | hs : sin x ^ 2 + cos x ^ 2 = 1
- `hebisch_hebisch_hebisch_5529` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5551` — failed: unsolved goals | x : ℝ | h1 : 6 * x - 25 ≠ 0 | h2 : 15 * x / (6 * x - 25) ≠ 0 | h3 : 3 ≠ 0
- `hebisch_hebisch_hebisch_5553` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5588` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5590` — failed: unsolved goals | x : ℝ | h1 : 25 + 5 * x ≠ 0 | h2 : 1 / x * (5 + x) ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_5600` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_5605` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_572` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5741` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_5781` — failed: unsolved goals | x : ℝ | h1 : rexp (x ^ 2) * x - 3 * x ≠ 0 | h2 : rexp x * x ≠ 0 | h3 : -3 + rexp (x ^ 2) ≠ 0
- `hebisch_hebisch_hebisch_5814` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_5852` — failed: unsolved goals | x : ℝ | h1 : 5 ≠ 0 | h : | HasDerivAt
- `hebisch_hebisch_hebisch_5870` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : rexp (rexp 1) ≠ 0 | h3 : 10 ≠ 0
- `hebisch_hebisch_hebisch_5874` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_5880` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_5891` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_5937` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_5965` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 + 5 * x ≠ 0 | h2 : x ≠ 0 | h3 : 1 / x * (5 + x) ≠ 0
- `hebisch_hebisch_hebisch_5966` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_597` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6038` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6053` — failed: unsolved goals | x : ℝ | h1 : log 7 ^ 2 * log (4 / x) ^ 2 + (-2 * x + 8) * log 7 * log (4 / x) + x ^ 2 - 8 * x + 16 ≠ 0 | h2 : 7 ≠ 0 | h3 : 4 / x ≠ 0
- `hebisch_hebisch_hebisch_6054` — failed: unsolved goals | x : ℝ | h1 : 3 + x ≠ 0 | h2 : x ≠ 0 | h3 : log x ≠ 0
- `hebisch_hebisch_hebisch_6057` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6061` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_6141` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6174` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => 3 * x ^ 2 - 3 * x ^ 3 - 3 * x * log (20 - 5 * x)) ?m.381 x | is not definitionally equal to target | HasDerivAt ((fun x => 3) * id ^ 2 - (fun x => 3) * id ^ 3) | (0 * x ^ 2 + 3 * (↑2 * x ^ (2 - 1) * 1) - (0 * x ^ 3 + 3 * (↑3 * x ^ (3 - 1) * 1))) x
- `hebisch_hebisch_hebisch_6183` — failed: unsolved goals | x : ℝ | h1 : x - 1 ≠ 0 | h2 : (x - 1) / x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_6235` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => 3 / 2 * x - 9 / 2 * x ^ 2 - 3 / 2 * x ^ 3 - x * rexp 1 - x ^ 2 * rexp 1) ?m.415 x | is not definitionally equal to target | HasDerivAt ((fun x => 3 / 2) * id - (fun x => 9 / 2) * id ^ 2) | (0 * x + 3 / 2 * 1 - (0 * x ^ 2 + 9 / 2 * (↑2 * x ^ (2 - 1) * 1))) x
- `hebisch_hebisch_hebisch_6259` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_6262` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6278` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_6281` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6283` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_630` — failed: unsolved goals | x : ℝ | h2 : x ≠ 0 | h3 : -1 + x ≠ 0 | h4 : 1 + x + x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_6308` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_6324` — failed: Application type mismatch: The argument | Real.hasDerivAt_exp | ((0 - x ^ 3 - x ^ 4 - 2 * x ^ 5 - x ^ 6) / (-5 * x + x ^ 2 + x ^ 3 + 2 * x ^ 4 + x ^ 5 + 15 * rexp 3)) | has type | HasDerivAt rexp
- `hebisch_hebisch_hebisch_6328` — failed: unsolved goals | x : ℝ | h1 : 24 * x ^ 5 + 96 * x ^ 4 + 66 * x ^ 3 - 120 * x ^ 2 - 120 * x ≠ 0 | h2 : 3 ≠ 0 | h3 : 6 * x + 12 ≠ 0
- `hebisch_hebisch_hebisch_6332` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_635` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6359` — failed: unsolved goals | x : ℝ | h1 : | 390625 * rexp 4 ^ 2 * log (1 / x) ^ 2 + (4687500 * x + 3750) * rexp 4 * log (1 / x) + 14062500 * x ^ 2 + 22500 * x + | 9 ≠
- `hebisch_hebisch_hebisch_6378` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => (2 * x - (-48 + 43 * log 3) / x - 3 * x * log 3) / log 3) ?m.325 x | is not definitionally equal to target | HasDerivAt (((fun x => 2) * id - (fun x => -48 + 43 * log 3) / id) / fun x => log 3) | (((0 * x + 2 * 1 - (0 * x - (-48 + 43 * log 3) * 1) / x ^ 2) * log 3 - (2 * x - (-48 + 43 * log 3) / x) * 0) /
- `hebisch_hebisch_hebisch_6413` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6435` — failed: unsolved goals | x : ℝ | h1 : x ^ 7 ≠ 0 | h2 : x ^ 6 ≠ 0 | hq_h1_h2 : x ^ 13 ≠ 0
- `hebisch_hebisch_hebisch_6439` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_6470` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | hp2_h1 : x ^ 2 ≠ 0 | h :
- `hebisch_hebisch_hebisch_6481` — failed: unsolved goals | x : ℝ | h1 : rexp (log (2 / x) - 1 / 5 * rexp (1 / 4 * x) + 1 / 10 * x) ≠ 0 | h2 : 2 / x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_6491` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_6516` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_6525` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_6550` — failed: unsolved goals | x : ℝ | h1 : (4 * x ^ 2 - x) * rexp x - 8 * x ^ 2 + 2 * x ≠ 0 | h2 : rexp x - 2 ≠ 0 | h3 : 4 * x ^ 2 - x ≠ 0
- `hebisch_hebisch_hebisch_6570` — failed: unsolved goals | x : ℝ | h1 : rexp (log 3 + x) ≠ 0 | h2 : 3 ≠ 0 | hp2_h2 : 9 ≠ 0
- `hebisch_hebisch_hebisch_6584` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6654` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_666` — failed: unsolved goals | x : ℝ | h3 : 2 ≠ 0 | hp2_h1 : 400 - x * 800 + x ^ 2 * 600 - x ^ 3 * 200 + x ^ 4 * 25 ≠ 0 | hp2_h2 : 64 - x * 64 + x ^ 2 * 16 ≠ 0
- `hebisch_hebisch_hebisch_6661` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_6770` — failed: unsolved goals | x : ℝ | h1 : | (2 * x * log (4 / x) + 2 * x ^ 2) * log (log (4 / x) + x) ^ 2 + (x * log (4 / x) + x ^ 2) * log (log (4 / x) + x) ≠ 0 | h2 : 4 / x ≠ 0
- `hebisch_hebisch_hebisch_68` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_6817` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_6829` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 * log (16 / x ^ 2) ^ 2 - 2 * x ^ 2 * log 5 * log (16 / x ^ 2) + x ^ 2 * log 5 ^ 2 ≠ 0 | h2 : 16 / x ^ 2 ≠ 0 | h3 : x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_6844` — failed: unsolved goals | x : ℝ | h : | HasDerivAt (fun x => rexp (2 + log (rexp (x * 2) - rexp (-12 + x * 6 - x * rexp x * 3)))) | (x * rexp x * rexp (-12 + x * 6 - x * rexp x * 3) *
- `hebisch_hebisch_hebisch_687` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_6871` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_6903` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_6905` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | -4 / (x * (2 + 4 * x + 16 * x ^ 2 + 16 * x ^ 3 + log (x ^ 2)) ^ 2) - | 2 * log (x ^ 2) / (x * (2 + 4 * x + 16 * x ^ 2 + 16 * x ^ 3 + log (x ^ 2)) ^ 2) -
- `hebisch_hebisch_hebisch_6958` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_6962` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7032` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => x - log x - log ((-2 - 15 * x ^ 2 + 8 * x ^ 3 - x ^ 4) / (-3 * x ^ 2 + x ^ 3) + rexp x)) ?m.997 x | is not definitionally equal to target | HasDerivAt (id - log) (1 - x⁻¹) x
- `hebisch_hebisch_hebisch_708` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7094` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_7099` — failed: unsolved goals | x : ℝ | hp2_h2 : 169 - x * 312 + x ^ 2 * 300 - x ^ 3 * 144 + x ^ 4 * 36 ≠ 0 | h : | HasDerivAt (fun x => rexp 4 * (13 - x * 12 + x ^ 2 * 6)⁻¹ * 6)
- `hebisch_hebisch_hebisch_7133` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_717` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_7195` — failed: unsolved goals | x : ℝ | h1 : (x ^ 2 * rexp 5 + x ^ 3 + 3 * x ^ 2) * log (rexp 5 + 3 + x) - x ^ 3 * rexp 5 - x ^ 4 - 3 * x ^ 3 ≠ 0 | h2 : rexp 5 + 3 + x ≠ 0 | h3 : log (rexp 5 + 3 + x) ^ 2 - 2 * x * log (rexp 5 + 3 + x) + x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_7239` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7257` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7267` — failed: unsolved goals | x : ℝ | h : | HasDerivAt | (fun x =>
- `hebisch_hebisch_hebisch_7281` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => 4 / 3 * x + (36 * x - 4 * x ^ 2 - 3 * rexp 2) / (12 * x ^ 3 - x ^ 2 * rexp 2)) ?m.803 x | is not definitionally equal to target | HasDerivAt | ((fun x => 4 / 3) * id +
- `hebisch_hebisch_hebisch_7315` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7338` — failed: unsolved goals | x : ℝ | h1 : x ^ 3 + x ^ 2 ≠ 0 | h2 : x ≠ 0 | h3 : 5 * log x ^ 3 / (x ^ 2 + x) ≠ 0
- `hebisch_hebisch_hebisch_7385` — failed: unsolved goals | x : ℝ | h1 : rexp 2 * rexp 4 + 3 * rexp 2 ≠ 0 | h2 : rexp 2 ≠ 0 | h3 : 3 * rexp 2 + rexp 6 ≠ 0
- `hebisch_hebisch_hebisch_7394` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_741` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7457` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7531` — failed: unsolved goals | x : ℝ | h1 : rexp x * x ^ 2 + x ≠ 0 | h2 : log (1 / x + rexp x) ≠ 0 | h3 : 1 / x + rexp x ≠ 0
- `hebisch_hebisch_hebisch_7559` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7590` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7621` — failed: Application type mismatch: The argument | HasDerivAt.sub | (HasDerivAt.add (hasDerivAt_const x 3) (HasDerivAt.div (hasDerivAt_const x 1) (hasDerivAt_id x) ?m.216)) | (hasDerivAt_id x) | has type
- `hebisch_hebisch_hebisch_7628` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_7657` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7693` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7766` — failed: unsolved goals | x : ℝ | h2 : 2 ≠ 0 | hp2_h2 : 4 ≠ 0 | hq_h2_h3 : x * log 2 * 8 + x ^ 2 * 2 ≠ 0
- `hebisch_hebisch_hebisch_7791` — failed: unsolved goals | x : ℝ | h3 : 2 ≠ 0 | hp2_h1 : 121 - x * 66 + x ^ 2 * 9 ≠ 0 | hp2_h2 : 14641 - x * 15972 + x ^ 2 * 6534 - x ^ 3 * 1188 + x ^ 4 * 81 ≠ 0
- `hebisch_hebisch_hebisch_7827` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_788` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_7896` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7917` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7924` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_7961` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8000` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_802` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_804` — failed: Application type mismatch: The argument | Real.hasDerivAt_exp | ((25 * x ^ 2 + (x ^ 2 + 2 * x ^ 3 + x ^ 4 + x ^ 4 * rexp 8 + (2 * x ^ 3 + 2 * x ^ 4) * rexp 4) * rexp (2 * x) + | (-10 * x ^ 2 - 10 * x ^ 3 - 10 * x ^ 3 * rexp 4) * rexp x) * | rexp (-2 * x))
- `hebisch_hebisch_hebisch_807` — failed: unsolved goals | x : ℝ | h2 : 2 ≠ 0 | h4 : log 2 ≠ 0 | hp2_h2 : 4 ≠ 0
- `hebisch_hebisch_hebisch_8074` — failed: unsolved goals | x : ℝ | h1 : x ^ 3 * rexp (rexp x) ^ 2 + x ^ 4 - 4 * x ^ 3 ≠ 0 | h2 : x ^ 2 ≠ 0 | h3 : -4 + x + rexp (2 * rexp x) ≠ 0
- `hebisch_hebisch_hebisch_8112` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_815` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8169` — failed: unsolved goals | x : ℝ | h1 : rexp (1 / x) ^ 2 ≠ 0 | h2 : x ≠ 0 | hst1 : HasDerivAt (rexp ∘ HDiv.hDiv (-1)) (rexp (-1 / x) * ((0 * x - -1 * 1) / x ^ 2)) x
- `hebisch_hebisch_hebisch_8276` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8282` — failed: Application type mismatch: The argument | Real.hasDerivAt_exp ((-137 - 34 * x - x ^ 2) / (5 + x)) | has type | HasDerivAt rexp (rexp ((-137 - 34 * x - x ^ 2) / (5 + x))) ((-137 - 34 * x - x ^ 2) / (5 + x)) | but is expected to have type
- `hebisch_hebisch_hebisch_8289` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_8306` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8311` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_835` — failed: unsolved goals | x : ℝ | h1 : rexp (3 * rexp x) + 25 * x ≠ 0 | h2 : 25 * x + rexp (3 * rexp x) ≠ 0 | hst1 :
- `hebisch_hebisch_hebisch_8360` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8384` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_8404` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_8416` — failed: unsolved goals | x : ℝ | hp2_h2 : x ^ 2 * 9 + x ^ 3 * 12 + x ^ 4 * 4 ≠ 0 | hq_h1_h2 : x ^ 3 * 27 + x ^ 4 * 54 + x ^ 5 * 36 + x ^ 6 * 8 ≠ 0 | h :
- `hebisch_hebisch_hebisch_8418` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_843` — failed: unsolved goals | x : ℝ | h1 : rexp 5 ≠ 0 | h2 : x ^ 2 ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_8492` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8555` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h : HasDerivAt (fun x => x + x * log (x ^ 2) * (1 / 2)) (1 + x ^ 2 * x⁻¹ ^ 2 + log (x ^ 2) * (1 / 2)) x | hst1 :
- `hebisch_hebisch_hebisch_8572` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_8630` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_8667` — failed: unsolved goals | x : ℝ | h1 : 8 * rexp x ^ 2 + 432 * rexp x + 5832 ≠ 0 | h2 : 27 + rexp x ≠ 0 | hst1 :
- `hebisch_hebisch_hebisch_8681` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => 118 / (25 * x) - 123 / 25 * x - 5 * log x) ?m.267 x | is not definitionally equal to target | HasDerivAt ((fun x => 118) / ((fun x => 25) * id) - (fun x => 123 / 25) * id) | ((0 * (25 * x) - 118 * (0 * x + 25 * 1)) / (25 * x) ^ 2 - (0 * x + 123 / 25 * 1)) x
- `hebisch_hebisch_hebisch_8700` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8701` — failed: unsolved goals | x : ℝ | h2 : 3 + x ≠ 0 | hp2_h1 : 81 + x * 108 + x ^ 2 * 54 + x ^ 3 * 12 + x ^ 4 ≠ 0 | hp2_h2 : 9 + x * 6 + x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_8732` — failed: 'change' tactic failed, pattern | HasDerivAt (fun x => (2 * x * log 2 - 3 * log (-4 + x) / (-3 + x) - 6 / (-3 + x) - log (-4 + x)) / (2 * log 2)) ?m.647 | x | is not definitionally equal to target | HasDerivAt
- `hebisch_hebisch_hebisch_8754` — failed: unsolved goals | x : ℝ | h1 : x ^ 3 ≠ 0 | h2 : x ≠ 0 | h3 : 1 / x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_8824` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_8843` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_8903` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_8921` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_8929` — failed: unsolved goals | x : ℝ | h2 : x ^ 2 ≠ 0 | h3 : x ≠ 0 | h4 : -1 + x ≠ 0
- `hebisch_hebisch_hebisch_8935` — vacuous?: страж пустых теорем: unsolved goals | ⊢ 0 < 1 / 4 * log 5 + 1 / 4 * rexp 2
- `hebisch_hebisch_hebisch_8987` — failed: unsolved goals | x : ℝ | h1 : x ^ 3 ≠ 0 | h2 : 2 ≠ 0 | h3 : x ^ 2 ≠ 0
- `hebisch_hebisch_hebisch_9001` — failed: unsolved goals | x : ℝ | h1 : x * rexp (8 * x) - 16 * x ≠ 0 | h2 : x ≠ 0 | h3 : -16 + rexp (8 * x) ≠ 0
- `hebisch_hebisch_hebisch_9006` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9077` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 + x ≠ 0 | h2 : (3 * x + 3) / x ≠ 0 | h3 : x ≠ 0
- `hebisch_hebisch_hebisch_9147` — failed: unsolved goals | x : ℝ | h1 : | (x * rexp (4 * x) + x) * log (x ^ 2) * log (rexp (4 * x) + 1) + (2 * x ^ 2 * rexp (4 * x) + 2 * x ^ 2) * log (x ^ 2) ≠ | 0
- `hebisch_hebisch_hebisch_9217` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_9234` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_9237` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_9273` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | hp2_h1 : x ^ 4 ≠ 0 | h :
- `hebisch_hebisch_hebisch_9287` — failed: Application type mismatch: The argument | HasDerivAt.div | (HasDerivAt.comp x ?m.309 | (HasDerivAt.sub (hasDerivAt_const x 5) (HasDerivAt.mul (hasDerivAt_const x 6) (hasDerivAt_id x)))) | (hasDerivAt_id x) ?m.358
- `hebisch_hebisch_hebisch_933` — failed: unsolved goals | x : ℝ | h : | HasDerivAt (fun x => rexp (x * 8 + rexp (rexp 16 * x * 2 - x * 2))) | (rexp 16 * rexp (-(x * 2) + x * rexp 16 * 2) * rexp (x * 8 + rexp (-(x * 2) + x * rexp 16 * 2)) * 2 -
- `hebisch_hebisch_hebisch_9355` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_9370` — failed: unsolved goals | x : ℝ | h1 : x ^ 2 ≠ 0 | h2 : x ≠ 0 | hq_h1_h2 : x ^ 3 ≠ 0
- `hebisch_hebisch_hebisch_9398` — failed: unsolved goals | x : ℝ | h2 : x ≠ 0 | h3 : 5 ≠ 0 | h4 : x + log x ≠ 0
- `hebisch_hebisch_hebisch_9429` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9578` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_960` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9603` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9718` — failed: unsolved goals | x : ℝ | h3 : 5 ≠ 0 | hp2_h1 : 32400 + x * 3240 + x ^ 2 * 81 ≠ 0 | hp2_h3 : 25 ≠ 0
- `hebisch_hebisch_hebisch_9757` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_9766` — failed: unsolved goals | x : ℝ | h3 : 2 ≠ 0 | hp2_h3 : 4 ≠ 0 | h :
- `hebisch_hebisch_hebisch_9926` — failed: unsolved goals | x : ℝ | h1 : rexp 1 + 18 ≠ 0 | h2 : 18 + rexp 1 ≠ 0 | h :
- `hebisch_hebisch_hebisch_993` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_9931` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `hebisch_hebisch_hebisch_9949` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `hebisch_hebisch_hebisch_9963` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `hebisch_hebisch_hebisch_9988` — failed: unsolved goals | x : ℝ | h2 : x ≠ 0 | h3 : log x ≠ 0 | h5 : -16 + x ≠ 0
- `hebisch_hebisch_hebisch_9994` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `independent_independent_apostol_problems_110` — failed: unsolved goals | x : ℝ | h2 : 0 < 3 | h3 : -1 + x ≠ 0 | h4 : 1 + x + x ^ 2 ≠ 0
- `independent_independent_apostol_problems_154` — failed: Type mismatch: After simplification, term | h4 | has type | (0 - 2 ^ (1 / 2)) / (2 * (1 / 2 * 2 ^ (1 / 2) + (2 - x - x ^ 2) ^ (1 / 2) / (2 + x))) + | (2 - x - x ^ 2) ^ (1 / 2) / ((2 + x) * (1 / 2 * 2 ^ (1 / 2) + (2 - x - x ^ 2) ^ (1 / 2) / (2 + x))) ≠
- `independent_independent_apostol_problems_23` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `independent_independent_apostol_problems_3` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `independent_independent_apostol_problems_65` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `independent_independent_charlwood_problems_18` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_charlwood_problems_31` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_hearn_problems_132` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `independent_independent_hearn_problems_14` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `independent_independent_hearn_problems_142` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h : | HasDerivAt
- `independent_independent_hearn_problems_153` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `independent_independent_hearn_problems_239` — vacuous?: страж пустых теорем: Tactic `constructor` failed: target is not an inductive datatype
- `independent_independent_hearn_problems_46` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_hearn_problems_57` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `independent_independent_moses_problems_45_ne` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `independent_independent_moses_problems_51` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `independent_independent_moses_problems_61` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `independent_independent_moses_problems_77` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `independent_independent_moses_problems_98` — failed: unsolved goals | x : ℝ | h : | HasDerivAt (fun x => arctan (rexp (x * 2)) * (-1 / 2) + rexp (x * 2) * (1 / 2)) | (rexp (x * 2) - rexp (x * 2) * (1 + rexp (x * 2) ^ 2)⁻¹) x
- `independent_independent_stewart_problems_11` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `independent_independent_stewart_problems_14` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `independent_independent_stewart_problems_174` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_stewart_problems_217` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_stewart_problems_23` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `independent_independent_stewart_problems_335` — vacuous?: страж пустых теорем: unsolved goals | ⊢ False
- `independent_independent_stewart_problems_4` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `independent_independent_stewart_problems_52` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `independent_independent_timofeev_problems_116` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_timofeev_problems_172` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_timofeev_problems_179` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `independent_independent_timofeev_problems_193` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `independent_independent_timofeev_problems_203` — failed: Tactic `simp` failed with a nested error: | Tactic `simp` failed with a nested error: | maximum recursion depth has been reached | use `set_option maxRecDepth <num>` to increase limit | use `set_option diagnostics true` to get diagnostic information
- `independent_independent_timofeev_problems_254` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_timofeev_problems_257` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_timofeev_problems_26` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h1 : 4 ≠ 0 | hp2_h1 : 16 ≠ 0
- `independent_independent_timofeev_problems_279` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `independent_independent_timofeev_problems_281` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_timofeev_problems_282` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_timofeev_problems_309` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | 35 / 128 * x - 35 / 128 * cos x * sin x - 35 / 192 * cos x * sin x ^ 3 - 7 / 48 * cos x * sin x ^ 5 - | 1 / 8 * cos x * sin x ^ 7)
- `independent_independent_timofeev_problems_397` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_timofeev_problems_426` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_timofeev_problems_443` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `independent_independent_timofeev_problems_66` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `independent_independent_timofeev_problems_83` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `independent_independent_timofeev_problems_84` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `mit_bee_mit_bee_mit_bee_131` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `mit_bee_mit_bee_mit_bee_140` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `mit_bee_mit_bee_mit_bee_159` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `mit_bee_mit_bee_mit_bee_16` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `mit_bee_mit_bee_mit_bee_188` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h1 : 2 - cos x ^ 2 ≠ 0 | h : HasDerivAt (fun x => arctan (sin x)) (cos x * (1 + sin x ^ 2)⁻¹) x
- `mit_bee_mit_bee_mit_bee_195` — failed: unsolved goals | x : ℝ | h : HasDerivAt (fun x => -rexp (-rexp x) + rexp (rexp x)) (rexp x * rexp (-rexp x) + rexp x * rexp (rexp x)) x | hs : sin x ^ 2 + cos x ^ 2 = 1 | ⊢ rexp (x + rexp x) + rexp (x - rexp x) = rexp x * rexp (-rexp x) + rexp x * rexp (rexp x)
- `mit_bee_mit_bee_mit_bee_252` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h1 : sin x ^ 4 ≠ 0 | h2 : 3 ≠ 0
- `mit_bee_mit_bee_mit_bee_297` — failed: Application type mismatch: The argument | HasDerivAt.div (HasDerivAt.add (hasDerivAt_const x 1) (HasDerivAt.pow (hasDerivAt_id x) 2)) (hasDerivAt_id x) (id h2) | has type | HasDerivAt (((fun x => 1) + id ^ 2) / id) | (((0 + ↑2 * id x ^ (2 - 1) * 1) * id x - ((fun x => 1) + id ^ 2) x * 1) / id x ^ 2) x
- `mit_bee_mit_bee_mit_bee_5` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `mit_bee_mit_bee_mit_bee_65` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `mit_bee_mit_bee_mit_bee_86` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `mit_bee_official_mit_bee_official_mit_bee_official_1` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h : HasDerivAt (fun x => 16 / 35) 0 x | hs : sin x ^ 2 + cos x ^ 2 = 1
- `mit_bee_official_mit_bee_official_mit_bee_official_146` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `mit_bee_official_mit_bee_official_mit_bee_official_164` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `mit_bee_official_mit_bee_official_mit_bee_official_177` — failed: unsolved goals | x : ℝ | h1 : rexp x + 2 ≠ 0 | h2 : 2 + rexp x ≠ 0 | h : HasDerivAt (fun x => log (2 + rexp x)) ((2 + rexp x)⁻¹ * (0 + rexp x)) x
- `mit_bee_official_mit_bee_official_mit_bee_official_220` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `mit_bee_official_mit_bee_official_mit_bee_official_442` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h : HasDerivAt (fun x => 2 / 9) 0 x | hs : sin x ^ 2 + cos x ^ 2 = 1
- `mit_bee_official_mit_bee_official_mit_bee_official_448` — failed: unsolved goals | x : ℝ | h3 : 0 < -1 + x ^ 2 | h4 : 0 < x + (-1 + x ^ 2) ^ (1 / 2) | h :
- `mit_bee_official_mit_bee_official_mit_bee_official_487` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1097` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1370` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1477` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_160` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_1889` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_330` — failed: unsolved goals | x a b : ℝ | h1 : x ^ 2 ≠ 0 | h3 : 0 < a | h4 : a ^ (1 / 2) ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_2_520` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
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
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2068` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2072` — failed: unsolved goals | x : ℝ | h3 : 128 ≠ 0 | hp2_h3 : 16384 ≠ 0 | h :
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_211` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2252` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2255` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_2318` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_294` — failed: unsolved goals | x A B a b : ℝ | h1 : x ^ (5 / 2) ≠ 0 | h2 : 0 < x | h3 : 3 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_302` — failed: unsolved goals | x A B a b : ℝ | h1 : x ^ (5 / 2) ≠ 0 | h2 : 0 < x | h3 : x ^ (1 / 2) ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_41` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_463` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_594` — failed: unsolved goals | x a b c d : ℝ | h1 : x ≠ 0 | h2 : 0 < a + b * x | h3 : 0 < c + d * x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_628` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_632` — failed: unsolved goals | x a b c d : ℝ | h1 : 0 < a + b * x | h2 : 0 < c + d * x | h3 : 5 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_827` — failed: unsolved goals | x : ℝ | h1 : x ≠ 0 | h4 : 0 < -1 + x | h5 : 0 < 1 + x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_3_83` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (0 - A) * a ^ 3 / (6 * x ^ 6) - B * b ^ 3 / (2 * x ^ 2) - (3 * A * a ^ 2 * b + B * a ^ 3) / (5 * x ^ 5) - | (3 * A * a * b ^ 2 + 3 * B * a ^ 2 * b) / (4 * x ^ 4) -
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_4_13` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_1_linear_t_1_1_1_6_14` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_2_318` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_2_417` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_2_509` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_2_529` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_2_7` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_2_74` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_3_140` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_3_29` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_3_305` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_1038` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_187` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_29` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_300` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_553` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_556` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_566` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_714` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_4_777` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_5_58` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_8_110` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_2_quadratic_t_1_1_2_8_67` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1002` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1245` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1384` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1505` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1569` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | -8 * a * b ^ 7 / (13 * x ^ 13) - 7 * a ^ 2 * b ^ 6 / (3 * x ^ 12) - 56 * a ^ 3 * b ^ 5 / (11 * x ^ 11) - | 7 * a ^ 4 * b ^ 4 / x ^ 10 -
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1592` — failed: unsolved goals | x a b : ℝ | h1 : x ^ 4 ≠ 0 | h2 : (a + b / x) ^ 2 ≠ 0 | h3 : x ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_16` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1682` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_1893` — failed: unsolved goals | x b : ℝ | h1 : x ^ 2 ≠ 0 | h4 : b ^ (1 / 2) ≠ 0 | h5 : 0 < b
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_253` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_2959` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_760` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_2_975` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_3_128` — failed: unsolved goals | x a b c d : ℝ | h1 : (c + d / x) ^ 3 ≠ 0 | h2 : x ≠ 0 | h3 : 0 < a + b / x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_3_135` — failed: unsolved goals | x a b c d : ℝ | h1 : (c + d / x) ^ 3 ≠ 0 | h2 : x ≠ 0 | h3 : 0 < a + b / x
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_3_14` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_132` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_134` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_23` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_353` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (0 - 2 ^ (1 / 2)) * (2 - (-10 * a * b + a * b * (10 - 6 * 3 ^ (1 / 2))) / (6 * a * b)) * | arctan
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_38` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_391` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_427` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_587` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_4_825` — failed: unsolved goals | x : ℝ | h1 : x ^ (5 / 2) ≠ 0 | h2 : 0 < x | h5 : 3 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_8_228` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_8_377` — failed: Application type mismatch: The argument | h | has type | HasDerivAt | (((fun x => a) * fun x => c) * log + ((fun x => a) * fun x => d) * id +
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_8_385` — failed: Application type mismatch: The argument | h | has type | HasDerivAt | ((((((fun x => 2 / 5) * fun x => a) * fun x => b) * fun x => c) * id ^ 5 +
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_3_general_t_1_1_3_8_480` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_2_253` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_3_118` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_1_binomial_products_t_1_1_4_improper_t_1_1_4_3_72` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1203` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1240` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_1283` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_2172` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_2283` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_2388` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_492` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_2_90` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_1141` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_1302` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_1516` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_1517` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_1590` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_2473` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_2556` — failed: Tactic `simp` failed with a nested error: | Tactic `simp` failed with a nested error: | maximum recursion depth has been reached | use `set_option maxRecDepth <num>` to increase limit | use `set_option diagnostics true` to get diagnostic information
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_513` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_541` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_606` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_623` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_675` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_68` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_723` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_3_818` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_4_335` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_4_651` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_4_783` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_5_1` — failed: unsolved goals | x a b d e1 f : ℝ | h1 : a + b * x + b * f * x ^ 2 / e1 ≠ 0 | h2 : (d + e1 * x + f * x ^ 2) ^ (1 / 2) ≠ 0 | h3 : e1 ≠ 0
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_5_113` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_5_23` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_6_122` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_1_quadratic_t_1_2_1_9_67` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_1031` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_214` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_242` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_258` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_405` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_429` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_510` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_550` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_612` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (a ^ 2 + 2 * a * b * x ^ 2 + b ^ 2 * x ^ 4) ^ (1 / 2) * | (-5 * a * b ^ 9 / (3 * x ^ 3) - 2 * a ^ 2 * b ^ 8 / x ^ 5 - 10 * a ^ 3 * b ^ 7 / (7 * x ^ 7) -
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_678` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_758` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_2_770` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_3_145` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_3_219` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_3_46` — failed: unsolved goals | x : ℝ | hp2_h1 : 1 + x ^ 4 * 8 + x ^ 8 * 16 ≠ 0 | h : | HasDerivAt (fun x => arctan (-1 + x * 2) * (1 / 2) + arctan (1 + x * 2) * (1 / 2))
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_3_55` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_2_quartic_t_1_2_2_4_124` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | 1 / 2 * | (x ^ 6 * (2 * A * a * c - B * a * b - x ^ 2 * (B * b ^ 2 - c * (A * b + 2 * B * a))) /
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_2_300` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_2_313` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_2_390` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_2_85` — failed: 'change' tactic failed, pattern | HasDerivAt | (fun x => | (a ^ 2 + 2 * a * b * x ^ 3 + b ^ 2 * x ^ 6) ^ (1 / 2) * | ((0 - a) * b ^ 9 / (2 * x ^ 10) - 10 * a ^ 2 * b ^ 8 / (13 * x ^ 13) - 5 * a ^ 3 * b ^ 7 / (8 * x ^ 16) -
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_2_91` — failed: Type mismatch: After simplification, term | h14 | has type | a ^ (1 / 3) * b * x - a ^ (2 / 3) * b ^ (2 / 3) - b ^ (4 / 3) * x ^ 2 ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_2_98` — failed: Type mismatch: After simplification, term | h20 | has type | a ^ (1 / 3) * b * x - a ^ (2 / 3) * b ^ (2 / 3) - b ^ (4 / 3) * x ^ 2 ≠ 0 | but is expected to have type
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_3_18` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_3_general_t_1_2_3_4_46` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_2_trinomial_products_t_1_2_4_improper_t_1_2_4_2_60` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_1_162` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_1_207` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_1_301` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_1_337` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_467` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_481` — timeout: (deterministic) timeout at `isDefEq`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_541` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_559` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_682` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_729` — failed: `simp` made no progress
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_818` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_1_algebraic_functions_t_1_3_miscellaneous_t_1_3_2_827` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_2_exponentials_t_2_2_3` — failed: unsolved goals | x a b c d : ℝ | h1 : a + b * rexp (c + d * x) ≠ 0 | h2 : a ≠ 0 | h3 : d ≠ 0
- `rubi_rubi_t_2_exponentials_t_2_3_663` — failed: unsolved goals | x : ℝ | h : HasDerivAt (fun x => arctan (rexp (x * 5)) * (1 / 5)) (rexp (x * 5) * (1 + rexp (x * 5) ^ 2)⁻¹) x | h1 : 1 + rexp (x * 10) ≠ 0 | hs : sin x ^ 2 + cos x ^ 2 = 1
- `rubi_rubi_t_2_exponentials_t_2_3_742` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_0_118` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_0_217` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_1_2_128` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_1_232` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_1_294` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_1_340` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_1_351` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_1_373` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_13` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_218` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_2_2_248` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_3_1_103` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_1_sine_t_4_1_7_116` — failed: unsolved goals | x a : ℝ | h1 : 0 < (0 - a) * sin x ^ 2 + a | h2 : cos x ≠ 0 | h3 : (1 + sin x ^ 2 / cos x ^ 2) ^ (1 / 2) ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_1_1_0` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_2_1_412` — failed: linarith failed to find a contradiction | case h1 | x a b c d : ℝ | h1 : 4 ≠ 0 | h2 : d ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_2_1_870` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_2_1_89` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_3_1_230` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_3_1_281` — failed: linarith failed to find a contradiction | case h1 | x B a b c d : ℝ | h1 : a + b * cos (c + d * x) ≠ 0 | h2 : d ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_2_2` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_2_212` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_2_215` — failed: linarith failed to find a contradiction | case h1 | x B C c d : ℝ | h1 : 4 ≠ 0 | h2 : d ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_2_412` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_2_cosine_t_4_2_4_2_418` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_2_1_366` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_3_1_231` — failed: linarith failed to find a contradiction | case h1 | x A B a b c d : ℝ | h1 : cos (c + d * x) ≠ 0 | h2 : d ≠ 0
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_3_1_318` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_3_1_349` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_3_tangent_t_4_3_3_1_390` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_1_183` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_4_trig_functions_t_4_7_miscellaneous_t_4_7_7_539` — failed: unsolved goals | x A C a b c : ℝ | h1 : (a + b * cos x + c * sin x) ^ 3 ≠ 0 | h2 : 2 ≠ 0 | h3 : (a + b * cos x + c * sin x) ^ 2 ≠ 0
- `rubi_rubi_t_5_inverse_trig_functions_t_5_2_inverse_cosine_t_5_2_5_40` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_5_inverse_trig_functions_t_5_3_inverse_tangent_t_5_3_2_62` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_5_inverse_trig_functions_t_5_3_inverse_tangent_t_5_3_4_1127` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_5_inverse_trig_functions_t_5_3_inverse_tangent_t_5_3_4_179` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_6_hyperbolic_functions_t_6_1_hyperbolic_sine_t_6_1_5_316` — failed: linarith failed to find a contradiction | case h1 | x : ℝ | h : | HasDerivAt (fun x => rexp x * (-1 / 2) + rexp (-(x * 7)) * (-1 / 28) + rexp (x * 9) * (1 / 36))
- `rubi_rubi_t_6_hyperbolic_functions_t_6_2_hyperbolic_cosine_t_6_2_1_99` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_6_hyperbolic_functions_t_6_2_hyperbolic_cosine_t_6_2_2_0` — unknown: нет вывода #print axioms (таймаут или теорема не объявлена)
- `rubi_rubi_t_6_hyperbolic_functions_t_6_2_hyperbolic_cosine_t_6_2_5_165` — timeout: (deterministic) timeout at `«synthesize pending MVars»`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_6_hyperbolic_functions_t_6_3_hyperbolic_tangent_t_6_3_1_7` — failed: linarith failed to find a contradiction | case h1 | x c d e1 f : ℝ | h2 : f ^ 2 ≠ 0 | h4 : f ≠ 0
- `rubi_rubi_t_6_hyperbolic_functions_t_6_3_hyperbolic_tangent_t_6_3_2_24` — failed: unsolved goals | x a : ℝ | h1 : 0 < a * (sinh x / cosh x) ^ 2 | h2 : cosh x ≠ 0 | h3 : 2 ≠ 0
- `rubi_rubi_t_6_hyperbolic_functions_t_6_7_miscellaneous_t_6_7_1_249` — failed: linarith failed to find a contradiction | case h1 | x a b : ℝ | h1 : 16 ≠ 0 | h2 : b ^ 3 ≠ 0
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_1024` — failed: unsolved goals | x a c : ℝ | hq_h1_h2 : 1 - x ^ 2 * a ^ 2 ≠ 0 | h : | HasDerivAt
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_327` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_353` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_542` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_781` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_821` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_822` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_6_927` — timeout: (deterministic) timeout at `whnf`, maximum number of heartbeats (200000) has been reached
- `rubi_rubi_t_7_inverse_hyperbolic_functions_t_7_3_inverse_hyperbolic_tangent_t_7_3_7_165` — failed: unsolved goals | x a b : ℝ | h1 : 0 < x | h2 : 1 - sinh (a + b * x) / cosh (a + b * x) ≠ 0 | h3 : 1 + sinh (a + b * x) / cosh (a + b * x) ≠ 0
