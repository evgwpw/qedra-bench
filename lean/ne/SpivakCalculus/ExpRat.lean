import SpivakCalculus.ExpSq
import Mathlib.FieldTheory.RatFunc.AsPolynomial

set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option maxHeartbeats 1000000
set_option linter.style.haveILetI false

/-!
# Класс `r(x)·e^(x²)`: сведение к уравнению Риша

Обобщение `ExpSq` с одного элемента `θ` на всё семейство `r·θ`, `r ∈ k(x)`.

* `exp_rat_risch` — если `r·θ` имеет логарифмическую форму (то есть у `r·e^{x²}` есть
  элементарная первообразная), то уравнение Риша `y′ + 2x·y = r` имеет **рациональное**
  решение `y ∈ k(x)`. Это ровно та редукция, которую даёт теорема Лиувилля для одного
  экспоненциального шага; она доказывается один раз на весь класс.
* `exp_rat_not_elementary` — обёртка: если у уравнения Риша нет рационального решения,
  то у `r·e^{x²}` нет элементарной первообразной.

Дальше по каждому конкретному `r` остаётся доказать «нет рационального `y`» — это уже
алгебра многочленов (степень/старший коэффициент), её и будет выдавать генератор.
-/

open Polynomial Differential Spivak.Liouville Spivak.ExpSq Gauss
open scoped Differential

namespace Spivak.ExpSq.Gauss

variable (k : Type*) [Field k]

/-- **Сведение для `r·θ`.** Если `r·θ` представим в логарифмической форме
(`r·θ = ∑ cᵢ uᵢ′/uᵢ + v′` с константами `cᵢ` и `uᵢ, v ∈ k(x)(θ)`), то существует
рациональная `y ∈ k(x)` с `y′ + 2x·y = r`: сравниваем коэффициенты при θ и получаем
уравнение Риша для коэффициента при старшей степени. -/
theorem exp_rat_risch [CharZero k] (r : RatFunc k)
    (hform : HasLogForm (algebraMap (RatFunc k) (Gauss k) r * θ k)) :
    ∃ y : RatFunc k, y′ + (2 * RatFunc.X) * y = r := by
  classical
  obtain ⟨n, c, u, v, hc, h⟩ := hform
  have ht := θ_transcendental k
  set b : RatFunc k := 2 * RatFunc.X with hb_def
  have hb : ∀ j : ℕ, 0 < j → ∀ z : RatFunc k, z′ = j * b * z → z = 0 :=
    fun j hj z hz => ratFunc_no_exp_solution j (by omega) z (by rw [hz]; push_cast; ring)
  have hθloc : ∀ p : (RatFunc k)[X], ∀ (_ : p.Monic) (hi : Irreducible p), p ≠ X →
      θ k ∈ locRing ht hi.prime := fun p _ hi _ => by
    have := aeval_mem_locRing ht hi.prime X
    rwa [aeval_X] at this
  have ha : ∀ p : (RatFunc k)[X], ∀ (_ : p.Monic) (hi : Irreducible p), p ≠ X →
      algebraMap (RatFunc k) (Gauss k) r * θ k ∈ locRing ht hi.prime := by
    intro p hp hi hX
    exact mul_mem (algebraMap_mem_locRing ht hi.prime r) (hθloc p hp hi hX)
  obtain ⟨γ, e, δ, P, m, hγ, hδ, hvP, h'⟩ := exp_reduce ht (deriv_θ' k) (constants_mem_base k)
    hb c u v (algebraMap (RatFunc k) (Gauss k) r * θ k) hc (fun i => isRatIn k _)
    (isRatIn k v) ha h
  set β := ∑ i, γ i * logDeriv (e i) + δ * b with hβ
  have hvβ : v′ = algebraMap (RatFunc k) (Gauss k) r * θ k - algebraMap (RatFunc k) (Gauss k) β := by
    rw [hβ, map_add, map_sum, hb_def]
    conv_rhs => rw [h']
    ring
  have hid := exp_deriv_identity ht (deriv_θ' k) P m
  rw [← hvP, hvβ] at hid
  have hpoly : C r * X ^ (m + 1) - C β * X ^ m + C (m * b) * P = implicitDeriv (C b * X) P := by
    apply aeval_inj_of_transcendental ht
    rw [← hid]
    simp only [map_add, map_sub, map_mul, map_pow, aeval_X, aeval_C, map_natCast, hb_def]
    ring
  have hck := congrArg (fun q => q.coeff (m + 1)) hpoly
  simp only [coeff_add, coeff_sub, coeff_C_mul, coeff_X_pow, coeff_implicitDeriv_CX, ite_true,
    show m + 1 ≠ m from by omega, ite_false] at hck
  refine ⟨P.coeff (m + 1), ?_⟩
  push_cast at hck
  linear_combination -hck

/-- **Неэлементарность `r·e^{x²}`** при отсутствии рационального решения уравнения Риша. -/
theorem exp_rat_not_elementary [CharZero k] (r : RatFunc k)
    (hrisch : ¬ ∃ y : RatFunc k, y′ + (2 * RatFunc.X) * y = r)
    (K : Type*) [Field K] [Differential K] [Algebra (Gauss k) K] [DifferentialAlgebra (Gauss k) K]
    [Differential.ContainConstants (Gauss k) K] (hK : IsElementary (Gauss k) K) :
    ¬ ∃ y : K, y′ = algebraMap (Gauss k) K (algebraMap (RatFunc k) (Gauss k) r * θ k) := by
  rintro ⟨y, hy⟩
  exact hrisch (exp_rat_risch k r (liouville_primitive hK _ y hy))

end Spivak.ExpSq.Gauss
