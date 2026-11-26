import SpivakCalculus.Liouville
import Mathlib.Analysis.Complex.Basic
import Mathlib.FieldTheory.RatFunc.AsPolynomial
/-!
# e^{x²} has no elementary primitive — вариант spivak-lean для показателя +x²

Выведено из `SpivakCalculus/Chapter19Liouville.lean` проекта
[stormj-UH/spivak-lean](https://github.com/stormj-UH/spivak-lean) (Apache-2.0): тот же аргумент
Лиувилля–Розенлихта, но `θ′ = 2x·θ` вместо `θ′ = -2x·θ`, то есть `θ` играет роль `e^{x²}`.
Изменены только знаки в определении θ и в уравнении `g′ = 2jxg`; доказательства перенесены
как есть. Уведомление об источнике — `THIRD-PARTY-NOTICES.md`.
-/


set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option maxHeartbeats 1000000
set_option linter.style.haveILetI false

open Polynomial Differential Spivak.Liouville
open scoped Differential

namespace Spivak.ExpSq

/-! ## Extending a derivation to a field of fractions -/

section FractionDeriv

variable {R L : Type*} [CommRing R] [IsDomain R] [Field L] [Algebra R L] [IsFractionRing R L]

/-- The quotient-rule expression `(x'y - xy')/y²`. -/
noncomputable def quotFormula (d : Derivation ℤ R R) (x y : R) : L :=
  (algebraMap R L (d x) * algebraMap R L y - algebraMap R L x * algebraMap R L (d y)) /
    (algebraMap R L y) ^ 2

lemma quotFormula_congr (d : Derivation ℤ R R) {x y x' y' : R} (hy : y ≠ 0) (hy' : y' ≠ 0)
    (h : algebraMap R L x / algebraMap R L y = algebraMap R L x' / algebraMap R L y') :
    quotFormula (L := L) d x y = quotFormula d x' y' := by
  have hinj := IsFractionRing.injective R L
  have hφy : algebraMap R L y ≠ 0 := (map_ne_zero_iff _ hinj).mpr hy
  have hφy' : algebraMap R L y' ≠ 0 := (map_ne_zero_iff _ hinj).mpr hy'
  have R1 : x * y' = x' * y := by
    apply hinj
    rw [map_mul, map_mul]
    field_simp at h
    linear_combination h
  have R2 : x * d y' + y' * d x = x' * d y + y * d x' := by
    have := congrArg d R1
    simpa [Derivation.leibniz, smul_eq_mul] using this
  have R1' := congrArg (algebraMap R L) R1
  have R2' := congrArg (algebraMap R L) R2
  simp only [map_mul, map_add] at R1' R2'
  unfold quotFormula
  rw [div_eq_div_iff (pow_ne_zero _ hφy) (pow_ne_zero _ hφy')]
  linear_combination (algebraMap R L y * algebraMap R L y') * R2' -
    (algebraMap R L y * algebraMap R L (d y') + algebraMap R L y' * algebraMap R L (d y)) * R1'

/-- The extension of `d` to the fraction field, as a function. -/
noncomputable def fracDerivFun (d : Derivation ℤ R R) (z : L) : L :=
  quotFormula d (IsFractionRing.div_surjective (A := R) z).choose
    (IsFractionRing.div_surjective (A := R) z).choose_spec.choose

lemma fracDerivFun_eq (d : Derivation ℤ R R) (x y : R) (hy : y ≠ 0) :
    fracDerivFun (L := L) d (algebraMap R L x / algebraMap R L y) = quotFormula d x y := by
  obtain ⟨hy', heq⟩ :=
    (IsFractionRing.div_surjective (A := R) (algebraMap R L x / algebraMap R L y)).choose_spec.choose_spec
  exact quotFormula_congr d (nonZeroDivisors.ne_zero hy') hy heq

lemma exists_frac (z : L) : ∃ x y : R, y ≠ 0 ∧ z = algebraMap R L x / algebraMap R L y := by
  obtain ⟨x, y, hy, rfl⟩ := IsFractionRing.div_surjective (A := R) z
  exact ⟨x, y, nonZeroDivisors.ne_zero hy, rfl⟩

lemma fracDerivFun_add (d : Derivation ℤ R R) (a b : L) :
    fracDerivFun d (a + b) = fracDerivFun d a + fracDerivFun d b := by
  obtain ⟨x₁, y₁, hy₁, rfl⟩ := exists_frac (R := R) a
  obtain ⟨x₂, y₂, hy₂, rfl⟩ := exists_frac (R := R) b
  have hinj := IsFractionRing.injective R L
  have h₁ : algebraMap R L y₁ ≠ 0 := (map_ne_zero_iff _ hinj).mpr hy₁
  have h₂ : algebraMap R L y₂ ≠ 0 := (map_ne_zero_iff _ hinj).mpr hy₂
  have hsum : algebraMap R L x₁ / algebraMap R L y₁ + algebraMap R L x₂ / algebraMap R L y₂ =
      algebraMap R L (x₁ * y₂ + y₁ * x₂) / algebraMap R L (y₁ * y₂) := by
    rw [div_add_div _ _ h₁ h₂]; simp [map_add, map_mul]
  rw [hsum, fracDerivFun_eq d _ _ (mul_ne_zero hy₁ hy₂), fracDerivFun_eq d _ _ hy₁,
    fracDerivFun_eq d _ _ hy₂]
  unfold quotFormula
  simp only [Derivation.leibniz, smul_eq_mul, map_add, map_mul]
  field_simp
  ring

lemma fracDerivFun_mul (d : Derivation ℤ R R) (a b : L) :
    fracDerivFun d (a * b) = a * fracDerivFun d b + b * fracDerivFun d a := by
  obtain ⟨x₁, y₁, hy₁, rfl⟩ := exists_frac (R := R) a
  obtain ⟨x₂, y₂, hy₂, rfl⟩ := exists_frac (R := R) b
  have hinj := IsFractionRing.injective R L
  have h₁ : algebraMap R L y₁ ≠ 0 := (map_ne_zero_iff _ hinj).mpr hy₁
  have h₂ : algebraMap R L y₂ ≠ 0 := (map_ne_zero_iff _ hinj).mpr hy₂
  have hprod : algebraMap R L x₁ / algebraMap R L y₁ * (algebraMap R L x₂ / algebraMap R L y₂) =
      algebraMap R L (x₁ * x₂) / algebraMap R L (y₁ * y₂) := by
    rw [div_mul_div_comm]; simp [map_mul]
  rw [hprod, fracDerivFun_eq d _ _ (mul_ne_zero hy₁ hy₂), fracDerivFun_eq d _ _ hy₁,
    fracDerivFun_eq d _ _ hy₂]
  unfold quotFormula
  simp only [Derivation.leibniz, smul_eq_mul, map_add, map_mul]
  field_simp
  ring

/-- A derivation of a domain extends to its field of fractions (by the quotient rule). -/
noncomputable def fracDeriv (d : Derivation ℤ R R) : Derivation ℤ L L :=
  Derivation.mk' (AddMonoidHom.mk' (fracDerivFun d) (fracDerivFun_add d)).toIntLinearMap
    (fun a b => by
      simp only [AddMonoidHom.coe_toIntLinearMap, AddMonoidHom.mk'_apply, smul_eq_mul]
      exact fracDerivFun_mul d a b)

lemma fracDeriv_div (d : Derivation ℤ R R) (x y : R) (hy : y ≠ 0) :
    fracDeriv (L := L) d (algebraMap R L x / algebraMap R L y) = quotFormula d x y :=
  fracDerivFun_eq d x y hy

lemma fracDeriv_algebraMap (d : Derivation ℤ R R) (x : R) :
    fracDeriv (L := L) d (algebraMap R L x) = algebraMap R L (d x) := by
  have := fracDeriv_div (L := L) d x 1 one_ne_zero
  rw [map_one, div_one] at this
  rw [this]
  unfold quotFormula
  simp

end FractionDeriv

/-! ## The differential field `k(x)`, `x' = 1` -/

section RatFuncX

variable {k : Type*} [Field k]

/-- `k(x)` with the usual derivative `d/dx`. -/
noncomputable instance ratFuncDifferential : Differential (RatFunc k) :=
  ⟨fracDeriv ((derivative' : Derivation k k[X] k[X]).restrictScalars ℤ)⟩

lemma ratFunc_deriv_algebraMap (P : k[X]) :
    (algebraMap k[X] (RatFunc k) P)′ = algebraMap k[X] (RatFunc k) (derivative P) :=
  fracDeriv_algebraMap _ P

lemma ratFunc_deriv_div (P Q : k[X]) (hQ : Q ≠ 0) :
    (algebraMap k[X] (RatFunc k) P / algebraMap k[X] (RatFunc k) Q)′ =
      (algebraMap k[X] (RatFunc k) (derivative P) * algebraMap k[X] (RatFunc k) Q -
        algebraMap k[X] (RatFunc k) P * algebraMap k[X] (RatFunc k) (derivative Q)) /
        (algebraMap k[X] (RatFunc k) Q) ^ 2 :=
  fracDeriv_div _ P Q hQ

/-- `x' = 1` in `k(x)`. -/
theorem ratFunc_deriv_X : (RatFunc.X : RatFunc k)′ = 1 := by
  rw [← RatFunc.algebraMap_X, ratFunc_deriv_algebraMap, derivative_X, map_one]

/-- A rational solution of the Riccati-type equation `f' = A + B f` (`A, B` polynomials)
is a polynomial. -/
lemma ratFunc_riccati [CharZero k] {f : RatFunc k} {A B : k[X]}
    (h : f′ = algebraMap k[X] (RatFunc k) A + algebraMap k[X] (RatFunc k) B * f) :
    ∃ N : k[X], f = algebraMap k[X] (RatFunc k) N ∧ derivative N = A + B * N := by
  set N := f.num
  set M := f.denom
  have hM : M ≠ 0 := RatFunc.denom_ne_zero f
  have hf : f = algebraMap k[X] (RatFunc k) N / algebraMap k[X] (RatFunc k) M :=
    (RatFunc.num_div_denom f).symm
  have hφM : algebraMap k[X] (RatFunc k) M ≠ 0 := RatFunc.algebraMap_ne_zero hM
  rw [hf, ratFunc_deriv_div _ _ hM] at h
  have heq : derivative N * M - N * derivative M = A * M ^ 2 + B * N * M := by
    apply RatFunc.algebraMap_injective k
    simp only [map_sub, map_mul, map_add, map_pow]
    field_simp at h
    linear_combination h
  have hdvd : M ∣ N * derivative M :=
    ⟨derivative N - A * M - B * N, by linear_combination -heq⟩
  have hMd : M ∣ derivative M := (RatFunc.isCoprime_num_denom f).symm.dvd_of_dvd_mul_left hdvd
  have hM0 : derivative M = 0 := by
    by_contra hne
    have h1 := Polynomial.natDegree_le_of_dvd hMd hne
    have h2 : M.natDegree ≠ 0 := fun h0 => hne (derivative_eq_zero.mpr h0)
    have h3 := natDegree_derivative_lt h2
    omega
  have hM1 : M = 1 := (RatFunc.monic_denom f).natDegree_eq_zero.mp (derivative_eq_zero.mp hM0)
  refine ⟨N, by rw [hf, hM1, map_one, div_one], ?_⟩
  rw [hM1] at heq
  simp only [derivative_one, mul_one, mul_zero, sub_zero, one_pow] at heq
  exact heq

/-- The constants of `k(x)` are exactly `k`. -/
theorem ratFunc_constants [CharZero k] (f : RatFunc k) :
    f′ = 0 ↔ ∃ c : k, f = algebraMap k (RatFunc k) c := by
  constructor
  · intro h
    obtain ⟨N, rfl, hN⟩ := ratFunc_riccati (f := f) (A := 0) (B := 0) (by simp [h])
    simp only [zero_mul, add_zero] at hN
    refine ⟨N.coeff 0, ?_⟩
    conv_lhs => rw [eq_C_of_natDegree_eq_zero (derivative_eq_zero.mp hN)]
    rfl
  · rintro ⟨c, rfl⟩
    rw [show algebraMap k (RatFunc k) c = algebraMap k[X] (RatFunc k) (C c) from rfl,
      ratFunc_deriv_algebraMap, derivative_C, map_zero]

/-- `natDegree (A + c X N) = natDegree N + 1` when `c ≠ 0`, `N ≠ 0`, `deg A ≤ deg N`. -/
lemma natDegree_add_CXmul {A N : k[X]} {c : k} (hc : c ≠ 0) (hN : N ≠ 0)
    (hA : A.natDegree ≤ N.natDegree) : (A + C c * X * N).natDegree = N.natDegree + 1 := by
  have h1 : (C c * X * N).natDegree = N.natDegree + 1 := by
    rw [mul_assoc, natDegree_C_mul hc, natDegree_X_mul hN]
  rw [natDegree_add_eq_right_of_natDegree_lt (by omega), h1]

/-- `g' = -2 j x g` has no nonzero rational solution for an integer `j ≠ 0`
(`e^{-j x²}` is not a rational function). -/
theorem ratFunc_no_exp_solution [CharZero k] (j : ℤ) (hj : j ≠ 0) (g : RatFunc k)
    (hg : g′ = (j : RatFunc k) * (2 * RatFunc.X) * g) : g = 0 := by
  have hcoef : ((j : RatFunc k) * (2 * (RatFunc.X : RatFunc k))) =
      algebraMap k[X] (RatFunc k) (C (2 * (j : k)) * X) := by
    simp only [map_mul, RatFunc.algebraMap_X, map_neg, map_ofNat, map_intCast]
    ring
  obtain ⟨N, rfl, hN⟩ := ratFunc_riccati (f := g) (A := 0) (B := C (2 * (j : k)) * X)
    (by rw [hg, hcoef, map_zero, zero_add])
  by_contra hN0
  have hN0' : N ≠ 0 := by rintro rfl; exact hN0 (map_zero _)
  have hc : (2 * (j : k)) ≠ 0 := by
    have : (j : k) ≠ 0 := Int.cast_ne_zero.mpr hj
    intro h; apply this; linear_combination h / 2
  have h1 := natDegree_add_CXmul (A := 0) hc hN0' (by simp)
  rw [zero_add] at h1 hN
  rw [← hN] at h1
  have h2 := natDegree_derivative_le N
  omega

/-- `f' + 2 x f = 1` has no rational solution. -/
theorem ratFunc_no_erf_solution [CharZero k] (f : RatFunc k) :
    f′ + (2 * RatFunc.X) * f ≠ 1 := by
  intro hf
  have h' : f′ = algebraMap k[X] (RatFunc k) 1 + algebraMap k[X] (RatFunc k) (C (-2) * X) * f := by
    simp only [map_one, map_mul, RatFunc.algebraMap_X, map_ofNat, C_neg, map_neg]
    linear_combination hf
  obtain ⟨N, rfl, hN⟩ := ratFunc_riccati h'
  by_cases hN0 : N = 0
  · subst hN0
    simp at hN
  have h1 := natDegree_add_CXmul (A := 1) (c := -2) (by norm_num) hN0 (by simp)
  rw [← hN] at h1
  have h2 := natDegree_derivative_le N
  omega

end RatFuncX

/-! ## The differential field `k(x)(θ)`, `x' = 1`, `θ' = 2xθ` -/

/-- The field `k(x)(θ)` of rational functions in `θ` over `k(x)`, which will carry the
derivation with `x' = 1` and `θ' = 2xθ`: the differential field generated by `e^{x²}`. -/
def Gauss (k : Type*) [Field k] : Type _ := RatFunc (RatFunc k)

namespace Gauss

variable (k : Type*) [Field k]

noncomputable instance : Field (Gauss k) := inferInstanceAs (Field (RatFunc (RatFunc k)))

noncomputable instance algPoly : Algebra (RatFunc k)[X] (Gauss k) :=
  inferInstanceAs (Algebra (RatFunc k)[X] (RatFunc (RatFunc k)))

instance : IsFractionRing (RatFunc k)[X] (Gauss k) :=
  inferInstanceAs (IsFractionRing (RatFunc k)[X] (RatFunc (RatFunc k)))

noncomputable instance algBase : Algebra (RatFunc k) (Gauss k) :=
  inferInstanceAs (Algebra (RatFunc k) (RatFunc (RatFunc k)))

instance : IsScalarTower (RatFunc k) (RatFunc k)[X] (Gauss k) :=
  inferInstanceAs (IsScalarTower (RatFunc k) (RatFunc k)[X] (RatFunc (RatFunc k)))

/-- The polynomial `2x · θ` prescribing `θ'`. -/
noncomputable def thetaDeriv : (RatFunc k)[X] := C (2 * RatFunc.X) * X

/-- The derivation on `k(x)(θ)`: `d/dx` on coefficients, and `θ' = 2xθ`. -/
noncomputable instance : Differential (Gauss k) :=
  ⟨fracDeriv (implicitDeriv (thetaDeriv k))⟩

/-- The element `x ∈ k(x)(θ)`. -/
noncomputable def x : Gauss k := algebraMap (RatFunc k) (Gauss k) RatFunc.X

/-- The element `θ ∈ k(x)(θ)`, standing for `e^{x²}`. -/
noncomputable def θ : Gauss k := algebraMap (RatFunc k)[X] (Gauss k) X

lemma deriv_poly (P : (RatFunc k)[X]) :
    (algebraMap (RatFunc k)[X] (Gauss k) P)′ =
      algebraMap (RatFunc k)[X] (Gauss k) (implicitDeriv (thetaDeriv k) P) :=
  fracDeriv_algebraMap _ P

lemma algebraMap_base (e : RatFunc k) :
    algebraMap (RatFunc k) (Gauss k) e = algebraMap (RatFunc k)[X] (Gauss k) (C e) := by
  rw [IsScalarTower.algebraMap_apply (RatFunc k) (RatFunc k)[X] (Gauss k), Polynomial.algebraMap_eq]

instance : DifferentialAlgebra (RatFunc k) (Gauss k) where
  deriv_algebraMap e := by
    rw [algebraMap_base, deriv_poly, implicitDeriv_C, ← algebraMap_base]

/-- `x' = 1`. -/
theorem deriv_x : (x k)′ = 1 := by
  unfold x
  rw [deriv_algebraMap, ratFunc_deriv_X, map_one]

/-- `θ' = 2xθ`. -/
theorem deriv_θ : (θ k)′ = 2 * x k * θ k := by
  unfold θ x
  rw [deriv_poly, implicitDeriv_X, thetaDeriv, map_mul, ← algebraMap_base, map_mul, map_ofNat]

lemma deriv_θ' : (θ k)′ = algebraMap (RatFunc k) (Gauss k) (2 * RatFunc.X) * θ k := by
  rw [deriv_θ, map_mul, map_ofNat]
  rfl

lemma aeval_θ (P : (RatFunc k)[X]) : aeval (θ k) P = algebraMap (RatFunc k)[X] (Gauss k) P := by
  unfold θ
  rw [aeval_algebraMap_apply, aeval_X_left_apply]

/-- `θ` is transcendental over `k(x)`. -/
theorem θ_transcendental : Transcendental (RatFunc k) (θ k) := by
  rw [transcendental_iff_injective]
  intro P Q h
  rw [aeval_θ, aeval_θ] at h
  exact IsFractionRing.injective _ _ h

lemma isRatIn (z : Gauss k) : IsRatIn (RatFunc k) (θ k) z := by
  obtain ⟨P, Q, -, rfl⟩ := exists_frac (R := (RatFunc k)[X]) z
  exact ⟨P, Q, by rw [aeval_θ, aeval_θ]⟩

variable [CharZero k]

/-- Every constant of `k(x)(θ)` lies in `k(x)`. -/
theorem constants_mem_base (z : Gauss k) (hz : z′ = 0) :
    z ∈ (algebraMap (RatFunc k) (Gauss k)).range :=
  exp_constants (θ_transcendental k) (deriv_θ' k) (isRatIn k)
    (fun j hj g hg => ratFunc_no_exp_solution j hj g (by rw [hg])) z hz

instance : Differential.ContainConstants (RatFunc k) (Gauss k) :=
  ⟨fun h => constants_mem_base k _ h⟩

/-- **The constants of `k(x)(θ)` are exactly `k`.** -/
theorem constants (z : Gauss k) :
    z′ = 0 ↔ ∃ c : k, z = algebraMap (RatFunc k) (Gauss k) (algebraMap k (RatFunc k) c) := by
  constructor
  · intro hz
    obtain ⟨f, rfl⟩ := constants_mem_base k z hz
    obtain ⟨c, rfl⟩ := (ratFunc_constants f).mp (deriv_eq_zero_of_algebraMap hz)
    exact ⟨c, rfl⟩
  · rintro ⟨c, rfl⟩
    rw [deriv_algebraMap, (ratFunc_constants _).mpr ⟨c, rfl⟩, map_zero]

instance : CharZero (Gauss k) :=
  haveI : CharZero (RatFunc k) :=
    charZero_of_injective_algebraMap (algebraMap k (RatFunc k)).injective
  charZero_of_injective_algebraMap (algebraMap (RatFunc k) (Gauss k)).injective

/-- `θ` is not the derivative of any element of `k(x)(θ)` in the logarithmic form: the
heart of the argument.  If `θ = ∑ cᵢ uᵢ'/uᵢ + v'` with constants `cᵢ` and `uᵢ, v ∈ k(x)(θ)`,
then comparing coefficients of `θ` gives `f ∈ k(x)` with `f' - 2xf = 1`, impossible. -/
theorem θ_not_hasLogForm : ¬ HasLogForm (θ k) := by
  classical
  rintro ⟨n, c, u, v, hc, h⟩
  have ht := θ_transcendental k
  set b : RatFunc k := 2 * RatFunc.X with hb_def
  have hb : ∀ j : ℕ, 0 < j → ∀ z : RatFunc k, z′ = j * b * z → z = 0 :=
    fun j hj z hz => ratFunc_no_exp_solution j (by omega) z (by rw [hz]; push_cast; ring)
  have ha : ∀ p : (RatFunc k)[X], ∀ (_ : p.Monic) (hi : Irreducible p), p ≠ X →
      θ k ∈ locRing ht hi.prime := fun p _ hi _ => by
    have := aeval_mem_locRing ht hi.prime X
    rwa [aeval_X] at this
  obtain ⟨γ, e, δ, P, m, hγ, hδ, hvP, h'⟩ := exp_reduce ht (deriv_θ' k) (constants_mem_base k)
    hb c u v (θ k) hc (fun i => isRatIn k _) (isRatIn k v) ha h
  set β := ∑ i, γ i * logDeriv (e i) + δ * b with hβ
  have hvβ : v′ = θ k - algebraMap (RatFunc k) (Gauss k) β := by
    rw [hβ, map_add, map_sum, hb_def]
    conv_rhs => rw [h']
    ring
  have hid := exp_deriv_identity ht (deriv_θ' k) P m
  rw [← hvP, hvβ] at hid
  have hpoly : X ^ (m + 1) - C β * X ^ m + C (m * b) * P = implicitDeriv (C b * X) P := by
    apply aeval_inj_of_transcendental ht
    rw [← hid]
    simp only [map_add, map_sub, map_mul, map_pow, aeval_X, aeval_C, map_natCast, hb_def]
    ring
  have hck := congrArg (fun q => q.coeff (m + 1)) hpoly
  simp only [coeff_add, coeff_sub, coeff_C_mul, coeff_X_pow, coeff_implicitDeriv_CX, ite_true,
    show m + 1 ≠ m from by omega, ite_false] at hck
  apply ratFunc_no_erf_solution (P.coeff (m + 1))
  push_cast at hck
  linear_combination -hck

end Gauss

/-- **`e^{x²}` has no elementary primitive** (Liouville; Spivak, Chapter 19).

Let `k` be any field of characteristic `0` (e.g. `ℂ`) and `F = k(x)(θ)` the differential
field with `x' = 1`, `θ` transcendental over `k(x)`, `θ' = 2xθ` (so `θ` plays the role of
`e^{x²}`); its constants are exactly `k` (`Gauss.constants`).  Then no elementary extension
`K` of `F` with no new constants contains an element `y` with `y' = θ`. -/
theorem exp_sq_not_elementary (k : Type*) [Field k] [CharZero k] (K : Type*) [Field K]
    [Differential K] [Algebra (Gauss k) K] [DifferentialAlgebra (Gauss k) K]
    [Differential.ContainConstants (Gauss k) K] (hK : IsElementary (Gauss k) K) :
    ¬ ∃ y : K, y′ = algebraMap (Gauss k) K (Gauss.θ k) := by
  rintro ⟨y, hy⟩
  exact Gauss.θ_not_hasLogForm k (liouville_primitive hK _ y hy)

/-- The special case `k = ℂ`. -/
theorem exp_sq_not_elementary_complex (K : Type*) [Field K]
    [Differential K] [Algebra (Gauss ℂ) K] [DifferentialAlgebra (Gauss ℂ) K]
    [Differential.ContainConstants (Gauss ℂ) K] (hK : IsElementary (Gauss ℂ) K) :
    ¬ ∃ y : K, y′ = algebraMap (Gauss ℂ) K (Gauss.θ ℂ) :=
  exp_sq_not_elementary ℂ K hK

