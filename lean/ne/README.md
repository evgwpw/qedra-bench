# LEAN.NE — отрицательный сертификат («нет элементарной первообразной»)

Каталог держит Lean-библиотеку для теорем вида «у f нет элементарной первообразной» (теорема
Лиувилля–Розенлихта). Положительные сертификаты (`HasDerivAt …`) генерирует `lib/lean/emit.lisp`,
это отдельный, отрицательный вид теоремы.

## Файлы

| файл | что это |
|---|---|
| `SpivakCalculus/Liouville.lean` | копия `SpivakCalculus/Liouville.lean` из [stormj-UH/spivak-lean](https://github.com/stormj-UH/spivak-lean) (ветка `fourth-edition`), Apache-2.0, без изменений |
| `SpivakCalculus/Chapter19Liouville.lean` | копия того же проекта, Apache-2.0, без изменений: `e^{−x²}` неэлементарна |
| `SpivakCalculus/ExpSq.lean` | производная работа для `e^{x²}`: тот же аргумент с `θ′ = +2x·θ` (знаки в определении θ и в уравнениях `g′ = 2jxg`, `f′ + 2xf ≠ 1`); доказательства перенесены из `Chapter19Liouville.lean` |
| `SpivakCalculus/ExpRat.lean` | класс `r(x)·e^{x²}`: `exp_rat_risch` — если у `r·θ` есть логарифмическая форма, то уравнение Риша `y′ + 2x·y = r` имеет рациональное решение `y ∈ k(x)`; `exp_rat_not_elementary` — обёртка «нет рационального решения ⇒ нет элементарной первообразной» |
| `SpivakCalculus/ExpRatInv.lean` | наше доказательство для простого полюса: `ratFunc_no_simple_pole` — у `y′ + 2x·y = A/(x−a)` (`A ≠ 0`) нет решения в `k(x)` (аргумент порядков через кратность `X−a` у знаменателя); `exp_rat_simple_pole_not_elementary` — у `A·e^{x²}/(x−a)` нет элементарной первообразной; частные случаи `ratFunc_no_solution_inv_one_add` (`A = 1`, `a = −1`) и `exp_rat_inv_one_add_not_elementary` |
| `SpivakCalculus/RatFuncDeriv.lean` | **общая база** `k(x)` (`x′ = 1`, `fracDeriv`, `ratFunc_riccati`, константы) и леммы, зависящие от `p` только через `b := p′`: `ratFunc_no_exp_solution_gen` (нет `g` с `g′ = j·b·g`), `ratFunc_no_solution_one_gen` (нет `f` с `f′ + b·f = 1`), `ratFunc_no_simple_pole` (нет `f` с `f′ + c·f = A/(x−a)`); нужно `0 < deg b` |
| `SpivakCalculus/ExpMinusSq.lean` | класс `erf`: тот же аргумент для `θ′ = −2x·θ` (`e^{−x²}`) на базе `RatFuncDeriv` — `θ_not_hasLogForm`, `exp_neg_sq_not_elementary`, `exp_neg_sq_rat_risch` / `exp_neg_sq_rat_not_elementary`, `exp_neg_sq_simple_pole_not_elementary` |
| `SpivakCalculus/LICENSE` | текст Apache-2.0 из upstream |
| `check-exp-sq.lean` | проверка аксиом: `#print axioms Spivak.ExpSq.exp_sq_not_elementary` |
| `check-exp-rat.lean` | проверка аксиом: `exp_rat_risch` и `exp_rat_not_elementary` |
| `check-exp-rat-inv.lean` | проверка аксиом: `ratFunc_no_simple_pole`, `ratFunc_no_solution_inv_one_add`, `exp_rat_simple_pole_not_elementary`, `exp_rat_inv_one_add_not_elementary` |
| `check-exp-minus-sq.lean` | проверка аксиом: `θ_not_hasLogForm`, `exp_neg_sq_not_elementary`, `exp_neg_sq_rat_risch`, `exp_neg_sq_rat_not_elementary`, `exp_neg_sq_simple_pole_not_elementary` |
| `forgery.lean` | подделка (П4): отрицание для `2x·θ` (элементарный случай) **обязано** не собраться |

`Chapter19Liouville.lean` тянет `SpivakCalculus.Bridge` и `Chapter09` (мост к вещественным функциям),
которых здесь нет, поэтому сам он не собирается — он лежит как источник для `ExpSq.lean`.

## Сборка

Проект mathlib — `qedra-lean/` (Lean 4.34.0-rc2, mathlib `85e3a25`), `.lake` в `.gitignore`.
Файлы проверяются прямым `lean.exe` с `LEAN_PATH`, включающим корень `qedra-lean`:

```
copy lean\ne\SpivakCalculus\*.lean qedra-lean\SpivakCalculus\
lean -o SpivakCalculus\Liouville.olean SpivakCalculus\Liouville.lean
lean -o SpivakCalculus\RatFuncDeriv.olean SpivakCalculus\RatFuncDeriv.lean
lean -o SpivakCalculus\ExpSq.olean   SpivakCalculus\ExpSq.lean
lean -o SpivakCalculus\ExpRat.olean  SpivakCalculus\ExpRat.lean
lean -o SpivakCalculus\ExpRatInv.olean SpivakCalculus\ExpRatInv.lean
lean -o SpivakCalculus\ExpMinusSq.olean SpivakCalculus\ExpMinusSq.lean
copy lean\ne\check-*.lean qedra-lean\ && lean check-exp-minus-sq.lean
```

`ExpSq.lean` и `ExpMinusSq.lean` задают **разные дифференциалы на одном носителе**
`RatFunc (RatFunc k)` — в один файл их импортировать нельзя (каждый сертификат импортирует ровно
один из них). `RatFuncDeriv.lean` — общая база; её леммы годятся для любого `p` с `deg p ≥ 2`.

Ожидаемый вывод проверки: `exp_sq_not_elementary`, `ratFunc_no_simple_pole`,
`ratFunc_no_solution_inv_one_add`, `exp_rat_simple_pole_not_elementary` и
`exp_rat_inv_one_add_not_elementary` зависят только от `propext`, `Classical.choice`, `Quot.sound`
(без `sorryAx`).

## Генератор сертификатов (Lisp)

`lib\lean\ne.lisp` (модуль `lean-ne`) восстанавливает `p` и `r` из формы интеграла: для
`A·e^(±x²)/(b·x + c)` с рациональными `A ≠ 0`, `b ≠ 0` выдаёт текст `.lean` с одной теоремой —
применением `exp_rat_simple_pole_not_elementary` (`e^{x²}`, импорт `ExpRatInv`) или
`exp_neg_sq_simple_pole_not_elementary` (`e^{−x²}`, импорт `ExpMinusSq`) к нормировке
`r = A'/(x − a)` (`A' = A/b`, `a = −c/b`); форма вне класса даёт `(unsupported причина)`.

```
(lean-ne-certificate '(/ (exp (^ x 2)) (+ x 1)) 'x "cert_one")          ; e^(x^2)
(lean-ne-certificate '(/ (exp (- (^ x 2))) (+ x 1)) 'x "cert_erf")      ; e^(-x^2), класс erf
(lean-ne-certificate '(exp (+ (* a c) (* a d x) (* b c x) (* b d (^ x 2)))) 'x "cert_param")
                                                                        ; e^((a+bx)(c+dx)), поле k
```

Класс с произвольным квадратичным показателем `e^(c₂x² + c₁x + c₀)`, `c₂ ≠ 0`, идёт через
`SpivakCalculus/ExpQuadParam.lean`: `thetaCoef = C (2·c₂)·X + C c₁`, генератор печатает либо
параметрическую теорему над произвольным полем `k` с гипотезой `c₂ ≠ 0` (символьные
коэффициенты), либо теорему над `ℚ` (числовой `c₂`). Полиномиальный множитель
`P(x)·e^(quad)` — `exp_quad_param_poly_not_elementary`: псевдоделение
`d·P = Q′ + (2c₂x + c₁)·Q + r` (`d = (2c₂)^{deg P}`) с гипотезами `d ≠ 0`, `r ≠ 0`.
Постоянное слагаемое `c₀` не влияет на (не)элементарность — это постоянный множитель.

Проверка: сохранить текст в `qedra-lean\SpivakCalculus\NeVerify.lean` и собрать
`lean SpivakCalculus\NeVerify.lean`. 2026-11-24 так проверены оба семейства: `2·e^(x²)/(3x−5)`
(`A' = 2/3`, `a = 5/3`) и `e^(−x²)/(1+x)`, аксиомы чистые.

## Лицензия

Код spivak-lean — Apache-2.0 (файл `SpivakCalculus/LICENSE`, уведомление — `THIRD-PARTY-NOTICES.md`).
`ExpSq.lean` — производная работа от `Chapter19Liouville.lean`, распространяется на тех же условиях.
