import SpivakCalculus.ExpSq

/-!
П4 карточки LEAN.NE: подделка для отрицательного сертификата.

Для **элементарного** случая `∫ 2x·e^(x²) dx = e^(x²)` отрицательная теорема выводиться не
должна. Ниже: (1) положительный факт — производная θ равна 2x·θ, то есть первообразная есть;
(2) та же форма отрицательной теоремы для `2x·θ` — обязана **не собраться** (в `ExpSq`
доказано отрицание только для θ).
-/

open Polynomial Differential Spivak.Liouville Spivak.ExpSq Gauss
open scoped Differential

-- (1) положительная сторона: у 2x·e^(x²) первообразная есть — сама θ
example (k : Type*) [Field k] : (θ k)′ = 2 * x k * θ k := deriv_θ k

-- (2) подделка: отрицание для 2x·θ не доказывается — доказательство для θ не подходит
example (k : Type*) [Field k] [CharZero k] (K : Type*) [Field K] [Differential K]
    [Algebra (Gauss k) K] [DifferentialAlgebra (Gauss k) K]
    [Differential.ContainConstants (Gauss k) K] (hK : IsElementary (Gauss k) K) :
    ¬ ∃ y : K, y′ = algebraMap (Gauss k) K (2 * x k * θ k) := by
  intro h
  exact exp_sq_not_elementary k K hK h
