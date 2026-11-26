import SpivakCalculus.RatFuncDeriv

/-!
# `e^{c₂x² + c₁x + c₀}` has no elementary primitive — параметрический квадратичный показатель

Зеркало `SpivakCalculus/ExpNegQuartic.lean`, но показатель не фиксирован: `q = c₂x² + c₁x + c₀`
с произвольными `c₂ c₁ c₀` из поля `k`, `c₂ ≠ 0`. В дифференциальном поле `k(x)(θ)` генератор
`θ` играет роль `e^{q}` (постоянный множитель `e^{c₀}` на (не)элементарность не влияет):
`θ′ = (2c₂x + c₁)·θ`, поэтому `q′ = 2c₂x + c₁` — многочлен степени 1.

Носитель `Gauss k c₂ c₁` — синоним `RatFunc (RatFunc k)` с фантомными параметрами: дифференциал
зависит от `c₂ c₁`, и параметры в типе нужны, чтобы синтез инстансов их находил (класс
`Differential` на одном типе не может зависеть от невидимых аргументов).

База `k(x)` (`x′ = 1`, `ratFunc_riccati`, леммы об отсутствии рациональных решений) взята из
`SpivakCalculus/RatFuncDeriv.lean`. Производная работа от `Chapter19Liouville.lean` проекта
[stormj-UH/spivak-lean](https://github.com/stormj-UH/spivak-lean) (Apache-2.0); уведомление —
`THIRD-PARTY-NOTICES.md`.

**Важно:** этот файл задаёт свой дифференциал на носителе `RatFunc (RatFunc k)` — импортировать
его в один файл с `ExpSq`/`ExpMinusSq`/`ExpNegQuartic`/`ExpRat` нельзя.

Что даётся: `exp_quad_param_not_elementary` (у `e^{q}` нет элементарной первообразной при
`c₂ ≠ 0`), `exp_quad_param_rat_risch` / `exp_quad_param_rat_not_elementary` (класс
`r(x)·e^{q}`).
-/

set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option maxHeartbeats 1000000
set_option linter.style.haveILetI false

open Polynomial Differential Spivak.Liouville Spivak.NeGen
open scoped Differential

namespace Spivak.ExpQuadParam

/-- Поле `k(x)(θ)` рациональных функций по `θ` над `k(x)`; несёт дифференциал
`x′ = 1`, `θ′ = (2c₂x + c₁)·θ`. Параметры `c₂ c₁` фантомные: нужны только типу, чтобы
синтез инстанса `Differential` их видел. -/
abbrev Gauss (k : Type*) [Field k] (c2 c1 : k) : Type _ := RatFunc (RatFunc k)

namespace Gauss

variable (k : Type*) [Field k] (c2 c1 : k)

noncomputable instance : Field (Gauss k c2 c1) := inferInstanceAs (Field (RatFunc (RatFunc k)))

noncomputable instance algPoly : Algebra (RatFunc k)[X] (Gauss k c2 c1) :=
  inferInstanceAs (Algebra (RatFunc k)[X] (RatFunc (RatFunc k)))

instance : IsFractionRing (RatFunc k)[X] (Gauss k c2 c1) :=
  inferInstanceAs (IsFractionRing (RatFunc k)[X] (RatFunc (RatFunc k)))

noncomputable instance algBase : Algebra (RatFunc k) (Gauss k c2 c1) :=
  inferInstanceAs (Algebra (RatFunc k) (RatFunc (RatFunc k)))

instance : IsScalarTower (RatFunc k) (RatFunc k)[X] (Gauss k c2 c1) :=
  inferInstanceAs (IsScalarTower (RatFunc k) (RatFunc k)[X] (RatFunc (RatFunc k)))

/-- `q′ = 2c₂x + c₁` как элемент `k(x)`. -/
noncomputable def bCoef : RatFunc k :=
  algebraMap k (RatFunc k) (2 * c2) * RatFunc.X + algebraMap k (RatFunc k) c1

/-- Многочлен `2c₂x + c₁` — `q′` (для Риша нужен многочлен, а не элемент `k(x)`). -/
noncomputable def thetaCoef : k[X] := C (2 * c2) * X + C c1

/-- Мост: `algebraMap (2c₂x + c₁) = 2c₂·x + c₁` в `k(x)`. -/
lemma thetaCoef_eq :
    (algebraMap k[X] (RatFunc k) (thetaCoef k c2 c1) : RatFunc k) = bCoef k c2 c1 := by
  unfold thetaCoef bCoef
  rw [map_add, map_mul, IsScalarTower.algebraMap_apply k k[X] (RatFunc k) (2 * c2),
    Polynomial.algebraMap_eq, IsScalarTower.algebraMap_apply k k[X] (RatFunc k) c1,
    Polynomial.algebraMap_eq, RatFunc.algebraMap_X]

/-- The polynomial prescribing `θ′ = (2c₂x + c₁)·θ`. -/
noncomputable def thetaDeriv : (RatFunc k)[X] := C (bCoef k c2 c1) * X

/-- The derivation on `k(x)(θ)`: `d/dx` on coefficients, and `θ′ = (2c₂x + c₁)·θ`. -/
noncomputable instance : Differential (Gauss k c2 c1) :=
  ⟨fracDeriv (implicitDeriv (thetaDeriv k c2 c1))⟩

/-- The element `x ∈ k(x)(θ)`. -/
noncomputable def x : Gauss k c2 c1 := algebraMap (RatFunc k) (Gauss k c2 c1) RatFunc.X

/-- The element `θ ∈ k(x)(θ)`, standing for `e^{c₂x² + c₁x + c₀}`. -/
noncomputable def θ : Gauss k c2 c1 := algebraMap (RatFunc k)[X] (Gauss k c2 c1) X

lemma deriv_poly (P : (RatFunc k)[X]) :
    (algebraMap (RatFunc k)[X] (Gauss k c2 c1) P)′ =
      algebraMap (RatFunc k)[X] (Gauss k c2 c1)
        (implicitDeriv (thetaDeriv k c2 c1) P) :=
  fracDeriv_algebraMap _ P

lemma algebraMap_base (e : RatFunc k) :
    algebraMap (RatFunc k) (Gauss k c2 c1) e
      = algebraMap (RatFunc k)[X] (Gauss k c2 c1) (C e) := by
  rw [IsScalarTower.algebraMap_apply (RatFunc k) (RatFunc k)[X] (Gauss k c2 c1),
    Polynomial.algebraMap_eq]

instance : DifferentialAlgebra (RatFunc k) (Gauss k c2 c1) where
  deriv_algebraMap e := by
    rw [algebraMap_base, deriv_poly, implicitDeriv_C, ← algebraMap_base]

/-- `x′ = 1`. -/
theorem deriv_x : (x k c2 c1)′ = 1 := by
  unfold x
  rw [deriv_algebraMap, ratFunc_deriv_X, map_one]

/-- `θ′ = (2c₂x + c₁)·θ`. -/
theorem deriv_θ : (θ k c2 c1)′
    = algebraMap (RatFunc k) (Gauss k c2 c1) (bCoef k c2 c1) * θ k c2 c1 := by
  unfold θ
  rw [deriv_poly, implicitDeriv_X, thetaDeriv, map_mul, ← algebraMap_base]

lemma deriv_θ' : (θ k c2 c1)′
    = algebraMap (RatFunc k) (Gauss k c2 c1) (bCoef k c2 c1) * θ k c2 c1 :=
  deriv_θ k c2 c1

lemma aeval_θ (P : (RatFunc k)[X]) :
    aeval (θ k c2 c1) P = algebraMap (RatFunc k)[X] (Gauss k c2 c1) P := by
  unfold θ
  rw [aeval_algebraMap_apply, aeval_X_left_apply]

/-- `θ` is transcendental over `k(x)`. -/
theorem θ_transcendental : Transcendental (RatFunc k) (θ k c2 c1) := by
  rw [transcendental_iff_injective]
  intro P Q h
  rw [aeval_θ, aeval_θ] at h
  exact IsFractionRing.injective _ _ h

lemma isRatIn (z : Gauss k c2 c1) : IsRatIn (RatFunc k) (θ k c2 c1) z := by
  obtain ⟨P, Q, -, rfl⟩ := exists_frac (R := (RatFunc k)[X]) z
  exact ⟨P, Q, by rw [aeval_θ, aeval_θ]⟩

variable [CharZero k]

/-- `deg (2c₂x + c₁) = 1` при `c₂ ≠ 0` (нужно для `ratFunc_riccati`-лемм). -/
lemma thetaCoef_deg (h2 : c2 ≠ 0) : 0 < (thetaCoef k c2 c1).natDegree := by
  have h2' : (2 : k) * c2 ≠ 0 := mul_ne_zero two_ne_zero h2
  unfold thetaCoef
  rw [natDegree_add_eq_left_of_natDegree_lt]
  · rw [natDegree_C_mul h2', natDegree_X]; norm_num
  · rw [natDegree_C_mul h2', natDegree_X, natDegree_C]; norm_num

/-- Every constant of `k(x)(θ)` lies in `k(x)`. -/
theorem constants_mem_base (h2 : c2 ≠ 0) (z : Gauss k c2 c1) (hz : z′ = 0) :
    z ∈ (algebraMap (RatFunc k) (Gauss k c2 c1)).range :=
  exp_constants (θ_transcendental k c2 c1) (deriv_θ' k c2 c1) (isRatIn k c2 c1)
    (fun j hj g hg => ratFunc_no_exp_solution_gen (thetaCoef k c2 c1)
      (thetaCoef_deg k c2 c1 h2) j hj g (by rwa [← thetaCoef_eq k c2 c1] at hg)) z hz

/-- **The constants of `k(x)(θ)` are exactly `k`.** -/
theorem constants (h2 : c2 ≠ 0) (z : Gauss k c2 c1) :
    z′ = 0 ↔ ∃ c : k,
      z = algebraMap (RatFunc k) (Gauss k c2 c1) (algebraMap k (RatFunc k) c) := by
  constructor
  · intro hz
    obtain ⟨f, rfl⟩ := constants_mem_base k c2 c1 h2 z hz
    obtain ⟨c, rfl⟩ := (ratFunc_constants f).mp (deriv_eq_zero_of_algebraMap hz)
    exact ⟨c, rfl⟩
  · rintro ⟨c, rfl⟩
    rw [deriv_algebraMap, (ratFunc_constants _).mpr ⟨c, rfl⟩, map_zero]

instance : CharZero (Gauss k c2 c1) :=
  haveI : CharZero (RatFunc k) :=
    charZero_of_injective_algebraMap (algebraMap k (RatFunc k)).injective
  charZero_of_injective_algebraMap (algebraMap (RatFunc k) (Gauss k c2 c1)).injective

/-- `θ` is not of the logarithmic form: comparing coefficients of `θ` gives `f ∈ k(x)`
with `f′ + (2c₂x + c₁)·f = 1`, impossible (`ratFunc_no_solution_one_gen`). -/
theorem θ_not_hasLogForm (h2 : c2 ≠ 0) : ¬ HasLogForm (θ k c2 c1) := by
  classical
  haveI : Differential.ContainConstants (RatFunc k) (Gauss k c2 c1) :=
    ⟨fun h => constants_mem_base k c2 c1 h2 _ h⟩
  rintro ⟨n, c, u, v, hc, h⟩
  have ht := θ_transcendental k c2 c1
  set b : RatFunc k := bCoef k c2 c1 with hb_def
  have hb : ∀ j : ℕ, 0 < j → ∀ z : RatFunc k, z′ = j * b * z → z = 0 :=
    fun j hj z hz => ratFunc_no_exp_solution_gen (thetaCoef k c2 c1)
      (thetaCoef_deg k c2 c1 h2) (j : ℤ) (by omega) z
      (by rw [hb_def, ← thetaCoef_eq k c2 c1] at hz; simpa using hz)
  have ha : ∀ p : (RatFunc k)[X], ∀ (_ : p.Monic) (hi : Irreducible p), p ≠ X →
      θ k c2 c1 ∈ locRing ht hi.prime := fun p _ hi _ => by
    have := aeval_mem_locRing ht hi.prime X
    rwa [aeval_X] at this
  obtain ⟨γ, e, δ, P, m, hγ, hδ, hvP, h'⟩ := exp_reduce ht (deriv_θ' k c2 c1)
    (constants_mem_base k c2 c1 h2) hb c u v (θ k c2 c1) hc (fun i => isRatIn k c2 c1 _)
    (isRatIn k c2 c1 v) ha h
  set β := ∑ i, γ i * logDeriv (e i) + δ * b with hβ
  have hvβ : v′ = θ k c2 c1 - algebraMap (RatFunc k) (Gauss k c2 c1) β := by
    rw [hβ, map_add, map_sum, hb_def]
    conv_rhs => rw [h']
    ring
  have hid := exp_deriv_identity ht (deriv_θ' k c2 c1) P m
  rw [← hvP, hvβ] at hid
  have hpoly : X ^ (m + 1) - C β * X ^ m + C (m * b) * P = implicitDeriv (C b * X) P := by
    apply aeval_inj_of_transcendental ht
    rw [← hid]
    simp only [map_add, map_sub, map_mul, map_pow, aeval_X, aeval_C, map_natCast, hb_def]
    ring
  have hck := congrArg (fun q => q.coeff (m + 1)) hpoly
  simp only [coeff_add, coeff_sub, coeff_C_mul, coeff_X_pow, coeff_implicitDeriv_CX, ite_true,
    show m + 1 ≠ m from by omega, ite_false] at hck
  push_cast at hck
  -- `linear_combination` в этом пине здесь даёт лишний множитель 2 — считаем вручную
  have hfin : (P.coeff (m + 1))′ + b * (P.coeff (m + 1)) = 1 := by
    have h1 : (P.coeff (m + 1))′ + b * ((m : RatFunc k) + 1) * (P.coeff (m + 1)) =
        1 + (m : RatFunc k) * b * (P.coeff (m + 1)) := by
      simpa using hck.symm
    calc (P.coeff (m + 1))′ + b * (P.coeff (m + 1))
        = (P.coeff (m + 1))′ + b * ((m : RatFunc k) + 1) * (P.coeff (m + 1)) -
            b * (m : RatFunc k) * (P.coeff (m + 1)) := by ring
      _ = (1 + (m : RatFunc k) * b * (P.coeff (m + 1))) -
            b * (m : RatFunc k) * (P.coeff (m + 1)) := by rw [h1]
      _ = 1 := by ring
  exact ratFunc_no_solution_one_gen (thetaCoef k c2 c1) (thetaCoef_deg k c2 c1 h2)
    (P.coeff (m + 1)) (by simpa [hb_def, ← thetaCoef_eq k c2 c1] using hfin)

/-- **Сведение для `r·θ`** (параметрический квадратичный показатель): если `r·e^{q}` имеет
логарифмическую форму, то уравнение Риша `y′ + (2c₂x + c₁)·y = r` имеет рациональное решение
`y ∈ k(x)`. -/
theorem exp_quad_param_rat_risch (h2 : c2 ≠ 0) (r : RatFunc k)
    (hform : HasLogForm (algebraMap (RatFunc k) (Gauss k c2 c1) r * θ k c2 c1)) :
    ∃ y : RatFunc k, y′ + bCoef k c2 c1 * y = r := by
  classical
  haveI : Differential.ContainConstants (RatFunc k) (Gauss k c2 c1) :=
    ⟨fun h => constants_mem_base k c2 c1 h2 _ h⟩
  obtain ⟨n, c, u, v, hc, h⟩ := hform
  have ht := θ_transcendental k c2 c1
  set b : RatFunc k := bCoef k c2 c1 with hb_def
  have hb : ∀ j : ℕ, 0 < j → ∀ z : RatFunc k, z′ = j * b * z → z = 0 :=
    fun j hj z hz => ratFunc_no_exp_solution_gen (thetaCoef k c2 c1)
      (thetaCoef_deg k c2 c1 h2) (j : ℤ) (by omega) z
      (by rw [hb_def, ← thetaCoef_eq k c2 c1] at hz; simpa using hz)
  have hθloc : ∀ p : (RatFunc k)[X], ∀ (_ : p.Monic) (hi : Irreducible p), p ≠ X →
      θ k c2 c1 ∈ locRing ht hi.prime := fun p _ hi _ => by
    have := aeval_mem_locRing ht hi.prime X
    rwa [aeval_X] at this
  have ha : ∀ p : (RatFunc k)[X], ∀ (_ : p.Monic) (hi : Irreducible p), p ≠ X →
      algebraMap (RatFunc k) (Gauss k c2 c1) r * θ k c2 c1 ∈ locRing ht hi.prime := by
    intro p hp hi hX
    exact mul_mem (algebraMap_mem_locRing ht hi.prime r) (hθloc p hp hi hX)
  obtain ⟨γ, e, δ, P, m, hγ, hδ, hvP, h'⟩ := exp_reduce ht (deriv_θ' k c2 c1)
    (constants_mem_base k c2 c1 h2) hb c u v
    (algebraMap (RatFunc k) (Gauss k c2 c1) r * θ k c2 c1) hc
    (fun i => isRatIn k c2 c1 _) (isRatIn k c2 c1 v) ha h
  set β := ∑ i, γ i * logDeriv (e i) + δ * b with hβ
  have hvβ : v′ = algebraMap (RatFunc k) (Gauss k c2 c1) r * θ k c2 c1
      - algebraMap (RatFunc k) (Gauss k c2 c1) β := by
    rw [hβ, map_add, map_sum, hb_def]
    conv_rhs => rw [h']
    ring
  have hid := exp_deriv_identity ht (deriv_θ' k c2 c1) P m
  rw [← hvP, hvβ] at hid
  have hpoly : C r * X ^ (m + 1) - C β * X ^ m + C (m * b) * P
      = implicitDeriv (C b * X) P := by
    apply aeval_inj_of_transcendental ht
    rw [← hid]
    simp only [map_add, map_sub, map_mul, map_pow, aeval_X, aeval_C, map_natCast, hb_def]
    ring
  have hck := congrArg (fun q => q.coeff (m + 1)) hpoly
  simp only [coeff_add, coeff_sub, coeff_C_mul, coeff_X_pow, coeff_implicitDeriv_CX, ite_true,
    show m + 1 ≠ m from by omega, ite_false] at hck
  refine ⟨P.coeff (m + 1), ?_⟩
  push_cast at hck
  rw [hb_def]
  linear_combination -hck

/-- **Неэлементарность `r·e^{q}`** при отсутствии рационального решения уравнения Риша. -/
theorem exp_quad_param_rat_not_elementary (h2 : c2 ≠ 0) (r : RatFunc k)
    (hrisch : ¬ ∃ y : RatFunc k, y′ + bCoef k c2 c1 * y = r)
    (K : Type*) [Field K] [Differential K] [Algebra (Gauss k c2 c1) K]
    [DifferentialAlgebra (Gauss k c2 c1) K]
    [Differential.ContainConstants (Gauss k c2 c1) K] (hK : IsElementary (Gauss k c2 c1) K) :
    ¬ ∃ y : K,
      y′ = algebraMap (Gauss k c2 c1) K
        (algebraMap (RatFunc k) (Gauss k c2 c1) r * θ k c2 c1) := by
  rintro ⟨y, hy⟩
  exact hrisch (exp_quad_param_rat_risch k c2 c1 h2 r (liouville_primitive hK _ y hy))

/-- **`P·e^{q}` с полиномиальным `P`**: если `d·P = Q′ + (2c₂x + c₁)·Q + r` при `d ≠ 0`, `r ≠ 0`,
то элементарной первообразной у `P·e^{q}` нет. Генератор считает `Q` и `r` псевдоделением
(`d = lc^{deg P}`, `lc = 2c₂`), поэтому делить коэффициенты на параметры не нужно. -/
theorem exp_quad_param_poly_not_elementary (h2 : c2 ≠ 0) (P Q : k[X]) (d r : k)
    (hd : d ≠ 0) (hr : r ≠ 0)
    (hPQ : C d * P = derivative Q + thetaCoef k c2 c1 * Q + C r)
    (K : Type*) [Field K] [Differential K] [Algebra (Gauss k c2 c1) K]
    [DifferentialAlgebra (Gauss k c2 c1) K]
    [Differential.ContainConstants (Gauss k c2 c1) K] (hK : IsElementary (Gauss k c2 c1) K) :
    ¬ ∃ y : K, y′ = algebraMap (Gauss k c2 c1) K
      (algebraMap (RatFunc k) (Gauss k c2 c1)
        (algebraMap k[X] (RatFunc k) P) * θ k c2 c1) := by
  have hrisch : ¬ ∃ y : RatFunc k,
      y′ + bCoef k c2 c1 * y = algebraMap k[X] (RatFunc k) P := by
    rintro ⟨y, hy⟩
    rw [← thetaCoef_eq k c2 c1] at hy
    exact ratFunc_no_solution_poly_small_scaled (thetaCoef k c2 c1)
      (thetaCoef_deg k c2 c1 h2) d hd P Q (C r) (C_ne_zero.mpr hr)
      (by rw [natDegree_C]; exact thetaCoef_deg k c2 c1 h2) hPQ ⟨y, hy⟩
  exact exp_quad_param_rat_not_elementary k c2 c1 h2 _ hrisch K hK

end Gauss

/-- **`e^{c₂x² + c₁x + c₀}` has no elementary primitive** при `c₂ ≠ 0` (Лиувилль; Спивак,
гл. 19). `θ` — образующая с `θ′ = (2c₂x + c₁)·θ`, т. е. `e^{q}` с точностью до постоянного
множителя `e^{c₀}`; постоянный множитель на (не)элементарность не влияет. -/
theorem exp_quad_param_not_elementary (k : Type*) [Field k] [CharZero k] (c2 c1 : k)
    (h2 : c2 ≠ 0) (K : Type*) [Field K] [Differential K] [Algebra (Gauss k c2 c1) K]
    [DifferentialAlgebra (Gauss k c2 c1) K]
    [Differential.ContainConstants (Gauss k c2 c1) K]
    (hK : IsElementary (Gauss k c2 c1) K) :
    ¬ ∃ y : K, y′ = algebraMap (Gauss k c2 c1) K (Gauss.θ k c2 c1) := by
  rintro ⟨y, hy⟩
  exact Gauss.θ_not_hasLogForm k c2 c1 h2 (liouville_primitive hK _ y hy)

end Spivak.ExpQuadParam
