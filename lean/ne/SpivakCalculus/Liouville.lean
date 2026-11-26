/-
# Liouville's theorem on integration in finite terms

Spivak remarks at the start of Chapter 19 that "there is no elementary function `F` such
that `F'(x) = e^{-x²}`", calling it a difficult theorem.  This file proves the general
theorem behind that remark — **Liouville's theorem** in the form of Rosenlicht
("Integration in finite terms", Amer. Math. Monthly 79 (1972)) — for differential fields
(Mathlib's `Differential`, `x′`, `Differential.logDeriv`, `DifferentialAlgebra`).
The application to `e^{-x²}` is in `Chapter19Liouville.lean`.

## Definitions

* `IsElementaryStep F K E E'` : `E' = E(t)` inside `K`, with `t` algebraic over `E`, or
  logarithmic (`t' = u'/u`, `u ∈ E`), or exponential (`t' = u' t`, `u ∈ E`).
* `IsElementaryTower F K E` : `E` is reached from `⊥ = F` by finitely many such steps.
* `IsElementary F K` : `IsElementaryTower F K ⊤` — `K` is an elementary extension of `F`.
  "No new constants" is Mathlib's class `Differential.ContainConstants F K`.
* `HasLogForm a` : `a = ∑ cᵢ uᵢ'/uᵢ + v'` with constants `cᵢ` and `uᵢ, v` in the same field.

## Main results

* `liouville` : if `F` has characteristic `0`, `K / F` is elementary with no new constants,
  and `a ∈ F` has the form `∑ cᵢ uᵢ'/uᵢ + v'` with constants `cᵢ` and `uᵢ, v ∈ K`, then it
  has that form with `cᵢ, uᵢ, v ∈ F` (`cᵢ` constants of `F`).  No algebraic closedness of
  the constants is needed.
* `liouville_primitive` : in particular if `a ∈ F` has a primitive in `K`.
* `isLiouville_of_isElementary` : such `K` is `IsLiouville F K` in Mathlib's sense.

## Proof

Induction along the tower.  The algebraic step is Mathlib's
`isLiouville_of_finiteDimensional`.  For a transcendental step `E ⊆ E(t)` we follow
Rosenlicht's partial-fraction argument, phrased with the local rings
`locRing ht hp = {P(t)/Q(t) : p ∤ Q}` at the monic irreducibles `p ∈ E[X]`:
`p ∤ p'` (for `p ≠ X` in the exponential case, `log_not_dvd`, `exp_not_dvd`, using that
`t` is transcendental and there are no new constants), so `v` has no poles
(`mem_locRing_of_mul_deriv_mem`), the residues `∑ cᵢ ordₚ uᵢ` vanish (`structure_thm`),
`v` is a polynomial (log) or a Laurent polynomial (exp) in `t`
(`exists_rep_of_forall_mem_locRing`), and comparing coefficients finishes (`log_step`,
`exp_step`).  `exp_reduce` and `exp_constants` are also used for `e^{-x²}`.
-/
import Mathlib.FieldTheory.Differential.Liouville
import Mathlib.Algebra.Polynomial.FieldDivision

set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option maxHeartbeats 1000000
set_option linter.style.haveILetI false

open Polynomial Differential
open scoped Differential

namespace Spivak.Liouville

/-- The quotient rule for a differential field. -/
lemma deriv_div' {K : Type*} [Field K] [Differential K] (a b : K) (hb : b ≠ 0) :
    (a / b)′ = (a′ * b - a * b′) / b ^ 2 := by
  rw [Derivation.leibniz_div]
  simp only [smul_eq_mul]
  field_simp

/-- Dividing by a constant commutes with the derivation. -/
lemma deriv_div_const' {K : Type*} [Field K] [Differential K] (a c : K) (hc : c′ = 0) :
    (a / c)′ = a′ / c := by
  by_cases h : c = 0
  · simp [h]
  rw [deriv_div' _ _ h, hc]
  field_simp
  ring

section Local

variable {E K : Type*} [Field E] [Field K] [Algebra E K]

variable (E) in
/-- `x` is a rational function of `t` with coefficients in `E`, i.e. `x ∈ E(t)`. -/
def IsRatIn (t x : K) : Prop :=
  ∃ r s : E[X], x = aeval t r / aeval t s

lemma aeval_ne_zero_of_transcendental {t : K} (ht : Transcendental E t) {Q : E[X]}
    (hQ : Q ≠ 0) : aeval t Q ≠ 0 := by
  intro h
  exact hQ ((transcendental_iff_injective.mp ht) (by rw [h, map_zero]))

lemma aeval_inj_of_transcendental {t : K} (ht : Transcendental E t) {P Q : E[X]}
    (h : aeval t P = aeval t Q) : P = Q :=
  (transcendental_iff_injective.mp ht) h

lemma isRatIn_aeval (t : K) (P : E[X]) : IsRatIn E t (aeval t P) :=
  ⟨P, 1, by simp⟩

lemma isRatIn_algebraMap (t : K) (e : E) : IsRatIn E t (algebraMap E K e) :=
  ⟨C e, 1, by simp⟩

/-- The local ring at an irreducible `p`: the elements `P(t)/Q(t)` with `p ∤ Q`. -/
def locRing {t : K} (ht : Transcendental E t) {p : E[X]} (hp : Prime p) : Subring K where
  carrier := {x | ∃ P Q : E[X], ¬ p ∣ Q ∧ x = aeval t P / aeval t Q}
  mul_mem' := by
    rintro _ _ ⟨P₁, Q₁, h₁, rfl⟩ ⟨P₂, Q₂, h₂, rfl⟩
    refine ⟨P₁ * P₂, Q₁ * Q₂, fun h => (hp.dvd_or_dvd h).elim h₁ h₂, ?_⟩
    rw [map_mul, map_mul, div_mul_div_comm]
  one_mem' := ⟨1, 1, hp.not_dvd_one, by simp⟩
  add_mem' := by
    rintro _ _ ⟨P₁, Q₁, h₁, rfl⟩ ⟨P₂, Q₂, h₂, rfl⟩
    have hQ₁ : aeval t Q₁ ≠ 0 :=
      aeval_ne_zero_of_transcendental ht (by rintro rfl; exact h₁ (dvd_zero _))
    have hQ₂ : aeval t Q₂ ≠ 0 :=
      aeval_ne_zero_of_transcendental ht (by rintro rfl; exact h₂ (dvd_zero _))
    refine ⟨P₁ * Q₂ + Q₁ * P₂, Q₁ * Q₂, fun h => (hp.dvd_or_dvd h).elim h₁ h₂, ?_⟩
    rw [div_add_div _ _ hQ₁ hQ₂]
    simp [map_add, map_mul]
  zero_mem' := ⟨0, 1, hp.not_dvd_one, by simp⟩
  neg_mem' := by
    rintro _ ⟨P, Q, h, rfl⟩
    exact ⟨-P, Q, h, by simp [neg_div]⟩

variable {t : K} (ht : Transcendental E t) {p : E[X]} (hp : Prime p)

lemma mem_locRing {x : K} :
    x ∈ locRing ht hp ↔ ∃ P Q : E[X], ¬ p ∣ Q ∧ x = aeval t P / aeval t Q := Iff.rfl

lemma aeval_mem_locRing (P : E[X]) : aeval t P ∈ locRing ht hp :=
  ⟨P, 1, hp.not_dvd_one, by simp⟩

lemma algebraMap_mem_locRing (e : E) : algebraMap E K e ∈ locRing ht hp := by
  simpa using aeval_mem_locRing ht hp (C e)

lemma div_mem_locRing (P : E[X]) {Q : E[X]} (hQ : ¬ p ∣ Q) :
    aeval t P / aeval t Q ∈ locRing ht hp :=
  ⟨P, Q, hQ, rfl⟩

/-- If `A(t)/p(t)` lies in the local ring at `p` then `p ∣ A`. -/
lemma dvd_of_div_mem_locRing {A : E[X]} (h : aeval t A / aeval t p ∈ locRing ht hp) :
    p ∣ A := by
  obtain ⟨P, Q, hQ, h⟩ := h
  have hQ0 : aeval t Q ≠ 0 :=
    aeval_ne_zero_of_transcendental ht (by rintro rfl; exact hQ (dvd_zero _))
  have hp0 : aeval t p ≠ 0 := aeval_ne_zero_of_transcendental ht hp.ne_zero
  have h2 : aeval t (A * Q) = aeval t (P * p) := by
    rw [map_mul, map_mul]
    field_simp at h
    linear_combination h
  have h3 := aeval_inj_of_transcendental ht h2
  have : p ∣ A * Q := ⟨P, by rw [h3]; ring⟩
  exact (hp.dvd_or_dvd this).resolve_right hQ

/-- Every nonzero `x ∈ E(t)` is a unit of the local ring times a power of `p(t)`. -/
lemma exists_decomp {x : K} (hx : IsRatIn E t x) (hx0 : x ≠ 0) :
    ∃ (y : K) (a b : ℕ), y ∈ locRing ht hp ∧ y⁻¹ ∈ locRing ht hp ∧
      x = y * aeval t p ^ a / aeval t p ^ b := by
  obtain ⟨r, s, rfl⟩ := hx
  have hr : r ≠ 0 := by rintro rfl; simp at hx0
  have hs : s ≠ 0 := by rintro rfl; simp at hx0
  obtain ⟨a, r₁, hr₁, rfl⟩ := WfDvdMonoid.max_power_factor' hr hp.not_isUnit
  obtain ⟨b, s₁, hs₁, rfl⟩ := WfDvdMonoid.max_power_factor' hs hp.not_isUnit
  have hr0 : aeval t r₁ ≠ 0 :=
    aeval_ne_zero_of_transcendental ht (by rintro rfl; exact hr₁ (dvd_zero _))
  have hs0 : aeval t s₁ ≠ 0 :=
    aeval_ne_zero_of_transcendental ht (by rintro rfl; exact hs₁ (dvd_zero _))
  have hp0 : aeval t p ≠ 0 := aeval_ne_zero_of_transcendental ht hp.ne_zero
  refine ⟨aeval t r₁ / aeval t s₁, a, b, div_mem_locRing ht hp _ hs₁, ?_, ?_⟩
  · rw [inv_div]; exact div_mem_locRing ht hp _ hr₁
  · simp only [map_mul, map_pow]
    field_simp

variable [Differential E] [Differential K] [DifferentialAlgebra E K] {T : E[X]}
  (hT : t′ = aeval t T)

include hT in
lemma deriv_aeval' (P : E[X]) : (aeval t P)′ = aeval t (implicitDeriv T P) :=
  deriv_aeval_eq_implicitDeriv t T hT P

include hT in
lemma deriv_mem_locRing {x : K} (hx : x ∈ locRing ht hp) : x′ ∈ locRing ht hp := by
  obtain ⟨P, Q, hQ, rfl⟩ := hx
  have hQ0 : aeval t Q ≠ 0 :=
    aeval_ne_zero_of_transcendental ht (by rintro rfl; exact hQ (dvd_zero _))
  refine ⟨implicitDeriv T P * Q - P * implicitDeriv T Q, Q ^ 2,
    fun h => hQ (hp.dvd_of_dvd_pow h), ?_⟩
  rw [deriv_div' _ _ hQ0, deriv_aeval' hT, deriv_aeval' hT]
  simp [map_sub, map_mul, map_pow]

include hT in
lemma logDeriv_mem_locRing {x : K} (hx : x ∈ locRing ht hp) (hx' : x⁻¹ ∈ locRing ht hp) :
    logDeriv x ∈ locRing ht hp := by
  unfold logDeriv
  rw [div_eq_mul_inv]
  exact mul_mem (deriv_mem_locRing ht hp hT hx) hx'

include hT in
lemma logDeriv_aeval (Q : E[X]) (hQ : Q ≠ 0) :
    logDeriv (aeval t Q) = aeval t (implicitDeriv T Q) / aeval t Q := by
  unfold logDeriv
  rw [deriv_aeval' hT]

include hT in
/-- `u'/u` has at most a simple pole at `p`, with an integer residue. -/
lemma logDeriv_sub_mem_locRing {u : K} (hu : IsRatIn E t u) :
    ∃ m : ℤ, logDeriv u - m * logDeriv (aeval t p) ∈ locRing ht hp := by
  by_cases hu0 : u = 0
  · exact ⟨0, by simp [hu0]⟩
  obtain ⟨y, a, b, hy, hy', rfl⟩ := exists_decomp ht hp hu hu0
  have hp0 : aeval t p ≠ 0 := aeval_ne_zero_of_transcendental ht hp.ne_zero
  have hy0 : y ≠ 0 := by rintro rfl; simp at hu0
  refine ⟨(a : ℤ) - b, ?_⟩
  rw [logDeriv_div _ _ (mul_ne_zero hy0 (pow_ne_zero _ hp0)) (pow_ne_zero _ hp0),
    logDeriv_mul _ _ hy0 (pow_ne_zero _ hp0), logDeriv_pow, logDeriv_pow]
  have := logDeriv_mem_locRing ht hp hT hy hy'
  convert this using 1
  push_cast
  ring

include hT in
lemma mul_logDeriv_mem_locRing {u : K} (hu : IsRatIn E t u) :
    aeval t p * logDeriv u ∈ locRing ht hp := by
  obtain ⟨m, hm⟩ := logDeriv_sub_mem_locRing ht hp hT hu
  have hp0 : aeval t p ≠ 0 := aeval_ne_zero_of_transcendental ht hp.ne_zero
  have h1 : aeval t p * logDeriv (aeval t p) = aeval t (implicitDeriv T p) := by
    rw [logDeriv_aeval hT p hp.ne_zero]; field_simp
  have : aeval t p * logDeriv u =
      aeval t p * (logDeriv u - m * logDeriv (aeval t p)) + m * aeval t (implicitDeriv T p) := by
    rw [← h1]; ring
  rw [this]
  exact add_mem (mul_mem (aeval_mem_locRing ht hp p) hm)
    (mul_mem (intCast_mem _ m) (aeval_mem_locRing ht hp _))

include hT in
lemma logDeriv_not_mem_locRing (hgood : ¬ p ∣ implicitDeriv T p) :
    logDeriv (aeval t p) ∉ locRing ht hp := by
  rw [logDeriv_aeval hT p hp.ne_zero]
  exact fun h => hgood (dvd_of_div_mem_locRing ht hp h)

include hT in
/-- **Step 1.** If `p ∤ p'` and `p(t) v'` has no pole at `p`, then `v` has no pole at `p`. -/
lemma mem_locRing_of_mul_deriv_mem [CharZero K] (hgood : ¬ p ∣ implicitDeriv T p) {v : K}
    (hv : IsRatIn E t v) (h : aeval t p * v′ ∈ locRing ht hp) : v ∈ locRing ht hp := by
  by_cases hv0 : v = 0
  · rw [hv0]; exact zero_mem _
  obtain ⟨y, a, b, hy, hy', rfl⟩ := exists_decomp ht hp hv hv0
  have hp0 : aeval t p ≠ 0 := aeval_ne_zero_of_transcendental ht hp.ne_zero
  have hy0 : y ≠ 0 := by rintro rfl; simp at hv0
  set π := aeval t p with hπ
  rcases le_or_gt b a with hab | hab
  · have : y * π ^ a / π ^ b = y * π ^ (a - b) := by
      rw [pow_sub₀ _ hp0 hab]; ring
    rw [this]
    exact mul_mem hy (pow_mem (aeval_mem_locRing ht hp p) _)
  exfalso
  obtain ⟨j, rfl⟩ : ∃ j, b = a + (j + 1) := ⟨b - a - 1, by omega⟩
  set v := y * π ^ a / π ^ (a + (j + 1)) with hv
  have hv2 : v = y / π ^ (j + 1) := by
    rw [hv, pow_add]; field_simp
  have hyv : y = v * π ^ (j + 1) := by rw [hv2]; field_simp
  have hdy : y′ = v′ * π ^ (j + 1) + v * (((j : K) + 1) * π ^ j * π′) := by
    rw [hyv, Derivation.leibniz, Derivation.leibniz_pow]
    simp only [smul_eq_mul, nsmul_eq_mul, Nat.add_sub_cancel]
    push_cast; ring
  have key : logDeriv π = (y′ - π ^ j * (π * v′)) * y⁻¹ * algebraMap E K (((j : E) + 1)⁻¹) := by
    have hj : ((j : K) + 1) ≠ 0 := Nat.cast_add_one_ne_zero j
    have hj' : algebraMap E K (((j : E) + 1)⁻¹) = ((j : K) + 1)⁻¹ := by simp
    rw [hj']
    unfold logDeriv
    rw [hdy, hv2]
    field_simp
    ring
  apply logDeriv_not_mem_locRing ht hp hT hgood
  rw [key]
  refine mul_mem (mul_mem (sub_mem (deriv_mem_locRing ht hp hT hy)
    (mul_mem (pow_mem (aeval_mem_locRing ht hp p) _) h)) hy') ?_
  exact algebraMap_mem_locRing ht hp _

end Local

section Global

variable {E K : Type*} [Field E] [Field K] [Algebra E K]
  [Differential E] [Differential K] [DifferentialAlgebra E K]
  {t : K} (ht : Transcendental E t)

open UniqueFactorizationMonoid in
include ht in
/-- The logarithmic derivative of a rational function of `t`, split along the monic
irreducible factors of its numerator and denominator. -/
lemma logDeriv_factor {u : K} (hu : IsRatIn E t u) :
    ∃ (e : E) (N M : Multiset E[X]), (∀ q ∈ N + M, q.Monic ∧ Irreducible q) ∧
      logDeriv u = algebraMap E K (logDeriv e) + (N.map fun q => logDeriv (aeval t q)).sum -
        (M.map fun q => logDeriv (aeval t q)).sum := by
  classical
  obtain ⟨r, s, rfl⟩ := hu
  by_cases hr : r = 0
  · exact ⟨1, 0, 0, by simp, by simp [hr]⟩
  by_cases hs : s = 0
  · exact ⟨1, 0, 0, by simp, by simp [hs]⟩
  have hfac : ∀ P : E[X], P ≠ 0 → logDeriv (aeval t P) =
      algebraMap E K (logDeriv P.leadingCoeff) +
        ((normalizedFactors P).map fun q => logDeriv (aeval t q)).sum := by
    intro P hP
    have hnz : ∀ q ∈ normalizedFactors P, aeval t q ≠ 0 := fun q hq =>
      aeval_ne_zero_of_transcendental ht (((Polynomial.mem_normalizedFactors_iff hP).mp hq).1.ne_zero)
    have hprod : aeval t (normalizedFactors P).prod = ((normalizedFactors P).map (aeval t)).prod :=
      map_multiset_prod _ _
    have hprod0 : aeval t (normalizedFactors P).prod ≠ 0 := by
      apply aeval_ne_zero_of_transcendental ht
      apply Multiset.prod_ne_zero
      intro h0
      exact (((Polynomial.mem_normalizedFactors_iff hP).mp h0).1.ne_zero) rfl
    have hlc : algebraMap E K P.leadingCoeff ≠ 0 := by
      simpa using leadingCoeff_ne_zero.mpr hP
    conv_lhs => rw [← leadingCoeff_mul_prod_normalizedFactors P]
    rw [map_mul, aeval_C, logDeriv_mul _ _ hlc hprod0, logDeriv_algebraMap, hprod,
      logDeriv_multisetProd _ hnz]
  refine ⟨r.leadingCoeff / s.leadingCoeff, normalizedFactors r, normalizedFactors s, ?_, ?_⟩
  · intro q hq
    rcases Multiset.mem_add.mp hq with hq | hq
    · have := (Polynomial.mem_normalizedFactors_iff hr).mp hq
      exact ⟨this.2.1, this.1⟩
    · have := (Polynomial.mem_normalizedFactors_iff hs).mp hq
      exact ⟨this.2.1, this.1⟩
  · rw [logDeriv_div _ _ (aeval_ne_zero_of_transcendental ht hr)
      (aeval_ne_zero_of_transcendental ht hs), hfac r hr, hfac s hs,
      logDeriv_div _ _ (leadingCoeff_ne_zero.mpr hr) (leadingCoeff_ne_zero.mpr hs), map_sub]
    ring

include ht in
/-- Summing `logDeriv_factor` over a family, grouping the irreducible factors. -/
lemma sum_logDeriv_factor {n : ℕ} (c u : Fin n → K) (hc : ∀ i, (c i)′ = 0)
    (hu : ∀ i, IsRatIn E t (u i)) :
    ∃ (e : Fin n → E) (S : Finset E[X]) (d : E[X] → K), (∀ q ∈ S, q.Monic ∧ Irreducible q) ∧
      (∀ q, (d q)′ = 0) ∧
      ∑ i, c i * logDeriv (u i) = ∑ i, c i * algebraMap E K (logDeriv (e i)) +
        ∑ q ∈ S, d q * logDeriv (aeval t q) := by
  classical
  choose e N M hNM h using fun i => logDeriv_factor ht (hu i)
  let S := Finset.univ.biUnion fun i => (N i + M i).toFinset
  refine ⟨e, S, fun q => ∑ i, c i * ((Multiset.count q (N i) : K) - Multiset.count q (M i)),
    ?_, ?_, ?_⟩
  · intro q hq
    obtain ⟨i, -, hi⟩ := Finset.mem_biUnion.mp hq
    exact hNM i q (Multiset.mem_toFinset.mp hi)
  · intro q
    rw [map_sum]
    refine Finset.sum_eq_zero fun i _ => ?_
    rw [Derivation.leibniz, hc i, Derivation.map_sub, Derivation.map_natCast,
      Derivation.map_natCast]
    simp
  · have hsum : ∀ (A : Multiset E[X]), A.toFinset ⊆ S →
        (A.map fun q => logDeriv (aeval t q)).sum =
          ∑ q ∈ S, (A.count q : K) * logDeriv (aeval t q) := by
      intro A hA
      rw [Finset.sum_multiset_map_count, Finset.sum_subset hA]
      · simp [nsmul_eq_mul]
      · intro q _ hq
        rw [Multiset.count_eq_zero.mpr (fun h => hq (Multiset.mem_toFinset.mpr h))]
        simp
    have hN : ∀ i, (N i).toFinset ⊆ S := fun i q hq =>
      Finset.mem_biUnion.mpr ⟨i, Finset.mem_univ _, by
        rw [Multiset.mem_toFinset] at hq ⊢; exact Multiset.mem_add.mpr (Or.inl hq)⟩
    have hM : ∀ i, (M i).toFinset ⊆ S := fun i q hq =>
      Finset.mem_biUnion.mpr ⟨i, Finset.mem_univ _, by
        rw [Multiset.mem_toFinset] at hq ⊢; exact Multiset.mem_add.mpr (Or.inr hq)⟩
    simp_rw [h, hsum _ (hN _), hsum _ (hM _)]
    simp_rw [Finset.sum_mul]
    rw [Finset.sum_comm (s := S), ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [mul_sub, mul_add, add_sub_assoc, Finset.mul_sum, Finset.mul_sum,
      ← Finset.sum_sub_distrib]
    congr 1
    exact Finset.sum_congr rfl fun q _ => by ring

variable {T : E[X]} (hT : t′ = aeval t T)

include hT in
/-- **The structure theorem** (Rosenlicht's partial-fraction argument).  Suppose `t` is
transcendental over `E`, all constants lie in `E`, and `p ∤ p'` for every monic irreducible
`p` outside a class `Bad`.  If `a = ∑ cᵢ uᵢ'/uᵢ + v'` with `uᵢ, v ∈ E(t)` and `a` has no pole
outside `Bad`, then `v` has no pole outside `Bad` and the logarithmic part can be rewritten
using only elements of `E` and the `Bad` irreducibles. -/
theorem structure_thm [CharZero K]
    (hC : ∀ x : K, x′ = 0 → x ∈ (algebraMap E K).range) (Bad : E[X] → Prop)
    (hgood : ∀ p : E[X], p.Monic → Irreducible p → ¬ Bad p → ¬ p ∣ implicitDeriv T p)
    {n : ℕ} (c u : Fin n → K) (v a : K) (hc : ∀ i, (c i)′ = 0) (hu : ∀ i, IsRatIn E t (u i))
    (hv : IsRatIn E t v)
    (ha : ∀ p : E[X], ∀ (_ : p.Monic) (hi : Irreducible p), ¬ Bad p → a ∈ locRing ht hi.prime)
    (h : a = ∑ i, c i * logDeriv (u i) + v′) :
    (∀ p : E[X], ∀ (_ : p.Monic) (hi : Irreducible p), ¬ Bad p → v ∈ locRing ht hi.prime) ∧
    ∃ (e : Fin n → E) (S : Finset E[X]) (d : E[X] → K),
      (∀ q ∈ S, q.Monic ∧ Irreducible q ∧ Bad q) ∧ (∀ q, (d q)′ = 0) ∧
      ∑ i, c i * logDeriv (u i) = ∑ i, c i * algebraMap E K (logDeriv (e i)) +
        ∑ q ∈ S, d q * logDeriv (aeval t q) := by
  have hconst : ∀ (p : E[X]) (hp : Prime p) (x : K), x′ = 0 → x ∈ locRing ht hp :=
    fun p hp x hx => by
      obtain ⟨γ, hγ⟩ := hC _ hx; rw [← hγ]; exact algebraMap_mem_locRing ht hp γ
  have hv' : ∀ p : E[X], ∀ (_ : p.Monic) (hi : Irreducible p), ¬ Bad p →
      v ∈ locRing ht hi.prime := by
    intro p hm hi hb
    apply mem_locRing_of_mul_deriv_mem ht hi.prime hT (hgood p hm hi hb) hv
    have : aeval t p * v′ = aeval t p * a - ∑ i, c i * (aeval t p * logDeriv (u i)) := by
      rw [h, mul_add, Finset.mul_sum]
      have : ∑ i, aeval t p * (c i * logDeriv (u i)) =
          ∑ i, c i * (aeval t p * logDeriv (u i)) :=
        Finset.sum_congr rfl fun i _ => by ring
      rw [this]; ring
    rw [this]
    exact sub_mem (mul_mem (aeval_mem_locRing _ _ _) (ha p hm hi hb))
      (sum_mem fun i _ => mul_mem (hconst _ _ _ (hc i))
        (mul_logDeriv_mem_locRing ht hi.prime hT (hu i)))
  refine ⟨hv', ?_⟩
  obtain ⟨e, S, d, hS, hd, heq⟩ := sum_logDeriv_factor ht c u hc hu
  classical
  refine ⟨e, S.filter Bad, d, ?_, hd, ?_⟩
  · intro q hq
    rw [Finset.mem_filter] at hq
    exact ⟨(hS q hq.1).1, (hS q hq.1).2, hq.2⟩
  rw [heq, Finset.sum_filter_of_ne]
  intro q hq hne
  by_contra hb
  apply hne
  obtain ⟨hqm, hqi⟩ := hS q hq
  have hp := hqi.prime
  suffices d q = 0 by rw [this, zero_mul]
  by_contra hd0
  have hL : ∑ r ∈ S, d r * logDeriv (aeval t r) ∈ locRing ht hqi.prime := by
    have : ∑ r ∈ S, d r * logDeriv (aeval t r) =
        a - v′ - ∑ i, c i * algebraMap E K (logDeriv (e i)) := by
      rw [h, heq]; ring
    rw [this]
    exact sub_mem (sub_mem (ha q hqm hqi hb) (deriv_mem_locRing ht _ hT (hv' q hqm hqi hb)))
      (sum_mem fun i _ => mul_mem (hconst _ _ _ (hc i)) (algebraMap_mem_locRing ..))
  rw [← Finset.add_sum_erase S _ hq] at hL
  have hrest : ∑ r ∈ S.erase q, d r * logDeriv (aeval t r) ∈ locRing ht hqi.prime := by
    refine sum_mem fun r hr => ?_
    obtain ⟨hrq, hrS⟩ := Finset.mem_erase.mp hr
    obtain ⟨hrm, hri⟩ := hS r hrS
    refine mul_mem (hconst _ _ _ (hd r)) ?_
    rw [logDeriv_aeval hT r hri.ne_zero]
    refine div_mem_locRing ht _ _ ?_
    intro hdvd
    exact hrq (eq_of_monic_of_associated hqm hrm (hqi.associated_of_dvd hri hdvd)).symm
  have h1 : d q * logDeriv (aeval t q) ∈ locRing ht hqi.prime := by
    have := sub_mem hL hrest
    simpa using this
  obtain ⟨δ, hδ⟩ := hC _ (hd q)
  have hδ0 : δ ≠ 0 := by
    rintro rfl
    exact hd0 (by rw [← hδ, map_zero])
  apply logDeriv_not_mem_locRing ht hqi.prime hT (hgood q hqm hqi hb)
  have : logDeriv (aeval t q) = algebraMap E K δ⁻¹ * (d q * logDeriv (aeval t q)) := by
    rw [← hδ, ← mul_assoc, ← map_mul, inv_mul_cancel₀ hδ0, map_one, one_mul]
  rw [this]
  exact mul_mem (algebraMap_mem_locRing ..) h1

end Global

section Denominator

variable {E K : Type*} [Field E] [Field K] [Algebra E K] {t : K} (ht : Transcendental E t)

open UniqueFactorizationMonoid in
include ht in
/-- If `v ∈ E(t)` has no pole at any monic irreducible outside `Bad`, then `v` can be
written with a denominator all of whose monic irreducible factors are `Bad`. -/
theorem exists_rep_of_forall_mem_locRing [DecidableEq E] (Bad : E[X] → Prop) {v : K} (hv : IsRatIn E t v)
    (hloc : ∀ p : E[X], ∀ (_ : p.Monic) (hi : Irreducible p), ¬ Bad p →
      v ∈ locRing ht hi.prime) :
    ∃ P Q : E[X], Q ≠ 0 ∧ (∀ q ∈ normalizedFactors Q, Bad q) ∧
      v = aeval t P / aeval t Q := by
  obtain ⟨r, s, rfl⟩ := hv
  by_cases hs : s = 0
  · exact ⟨0, 1, one_ne_zero, by simp, by simp [hs]⟩
  suffices H : ∀ n : ℕ, ∀ r s : E[X], s.natDegree = n → s ≠ 0 →
      (∀ p : E[X], ∀ (_ : p.Monic) (hi : Irreducible p), ¬ Bad p →
        aeval t r / aeval t s ∈ locRing ht hi.prime) →
      ∃ P Q : E[X], Q ≠ 0 ∧ (∀ q ∈ normalizedFactors Q, Bad q) ∧
        aeval t r / aeval t s = aeval t P / aeval t Q from H _ r s rfl hs hloc
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
  intro r s hn hs hloc
  by_cases hall : ∀ q ∈ normalizedFactors s, Bad q
  · exact ⟨r, s, hs, hall, rfl⟩
  push Not at hall
  obtain ⟨q, hq, hqb⟩ := hall
  obtain ⟨hqi, hqm, hqs⟩ := (Polynomial.mem_normalizedFactors_iff hs).mp hq
  obtain ⟨P, Q, hQ, hPQ⟩ := hloc q hqm hqi hqb
  have hs0 := aeval_ne_zero_of_transcendental ht hs
  have hQ0 : aeval t Q ≠ 0 :=
    aeval_ne_zero_of_transcendental ht (by rintro rfl; exact hQ (dvd_zero _))
  have h1 : aeval t (r * Q) = aeval t (P * s) := by
    rw [map_mul, map_mul]
    field_simp at hPQ
    linear_combination hPQ
  have h2 := aeval_inj_of_transcendental ht h1
  have hqr : q ∣ r := by
    have : q ∣ r * Q := h2 ▸ dvd_mul_of_dvd_right hqs P
    exact (hqi.prime.dvd_or_dvd this).resolve_right hQ
  obtain ⟨r₁, rfl⟩ := hqr
  obtain ⟨s₁, rfl⟩ := hqs
  have hs1 : s₁ ≠ 0 := right_ne_zero_of_mul hs
  have hdeg : s₁.natDegree < n := by
    rw [← hn, natDegree_mul hqi.ne_zero hs1]
    have := hqi.natDegree_pos
    omega
  have hq0 := aeval_ne_zero_of_transcendental ht hqi.ne_zero
  have hcancel : aeval t (q * r₁) / aeval t (q * s₁) = aeval t r₁ / aeval t s₁ := by
    rw [map_mul, map_mul, mul_div_mul_left _ _ hq0]
  rw [hcancel]
  exact ih _ hdeg r₁ s₁ rfl hs1 (fun p hm hi hb => by rw [← hcancel]; exact hloc p hm hi hb)

end Denominator

section Coefficients

variable {E : Type*} [Field E] [Differential E]

/-- Coefficients of `P'` when `t' = w` (a logarithmic generator). -/
lemma coeff_implicitDeriv_C (w : E) (P : E[X]) (i : ℕ) :
    (implicitDeriv (C w) P).coeff i = (P.coeff i)′ + w * (P.coeff (i + 1) * (i + 1)) := by
  simp [implicitDeriv, coeff_derivative]

/-- Coefficients of `P'` when `t' = b t` (an exponential generator). -/
lemma coeff_implicitDeriv_CX (b : E) (P : E[X]) (i : ℕ) :
    (implicitDeriv (C b * X) P).coeff i = (P.coeff i)′ + b * i * P.coeff i := by
  rcases i with _ | i
  · simp [implicitDeriv, mul_assoc]
  · simp [implicitDeriv, mul_assoc, coeff_X_mul, coeff_derivative]
    try ring_nf
    try simp

/-- In the logarithmic case (`w` has no primitive in `E`), no monic irreducible `p`
divides its derivative. -/
lemma log_not_dvd [CharZero E] {w : E} (hw : ∀ z : E, z′ ≠ w) {p : E[X]} (hm : p.Monic)
    (hi : Irreducible p) : ¬ p ∣ implicitDeriv (C w) p := by
  intro hdvd
  set n := p.natDegree with hn
  have hn0 : 0 < n := hi.natDegree_pos
  have hlt : (implicitDeriv (C w) p).degree < p.degree := by
    rw [Polynomial.degree_eq_natDegree (Monic.ne_zero hm) , Polynomial.degree_lt_iff_coeff_zero]
    intro m hm'
    rw [coeff_implicitDeriv_C, coeff_eq_zero_of_natDegree_lt (show p.natDegree < m + 1 by omega)]
    rcases hm'.lt_or_eq with hlt | heq
    · rw [coeff_eq_zero_of_natDegree_lt hlt]; simp
    · rw [← heq, ← hn]
      have : p.coeff p.natDegree = 1 := hm
      rw [this]; simp
  have h0 := Polynomial.eq_zero_of_dvd_of_degree_lt hdvd hlt
  obtain ⟨m, hmn⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  have hc := congrArg (fun q => q.coeff m) h0
  simp only [coeff_implicitDeriv_C, coeff_zero] at hc
  rw [← hmn, hn, show p.coeff p.natDegree = 1 from hm] at hc
  apply hw (-(p.coeff m) / (m + 1))
  have hm1 : ((m : E) + 1) ≠ 0 := Nat.cast_add_one_ne_zero m
  rw [deriv_div_const' _ _ (by
    rw [show ((m : E) + 1) = ((m + 1 : ℕ) : E) by push_cast; ring]
    exact Derivation.map_natCast _ _)]
  rw [Derivation.map_neg]
  field_simp
  linear_combination -hc

/-- In the exponential case (`t' = b t` with `t` transcendental), no monic irreducible
`p ≠ X` divides its derivative. -/
lemma exp_not_dvd {b : E} (hb : ∀ j : ℕ, 0 < j → ∀ z : E, z′ = j * b * z → z = 0) {p : E[X]}
    (hm : p.Monic) (hi : Irreducible p) (hX : p ≠ X) : ¬ p ∣ implicitDeriv (C b * X) p := by
  intro hdvd
  set n := p.natDegree with hn
  have hn0 : 0 < n := hi.natDegree_pos
  set R := implicitDeriv (C b * X) p - C (n * b) * p with hR
  have hlt : R.degree < p.degree := by
    rw [Polynomial.degree_eq_natDegree (Monic.ne_zero hm), Polynomial.degree_lt_iff_coeff_zero]
    intro m hm'
    rw [hR, coeff_sub, coeff_implicitDeriv_CX, coeff_C_mul]
    rcases hm'.lt_or_eq with hlt | heq
    · rw [coeff_eq_zero_of_natDegree_lt hlt]; simp
    · rw [← heq, ← hn]
      have : p.coeff p.natDegree = 1 := hm
      rw [this]; simp; ring
  have hR0 := Polynomial.eq_zero_of_dvd_of_degree_lt
    (dvd_sub hdvd (dvd_mul_left p _)) hlt
  have hc := congrArg (fun q => q.coeff 0) hR0
  simp only [coeff_sub, coeff_implicitDeriv_CX, coeff_C_mul, coeff_zero] at hc
  have h0 : p.coeff 0 = 0 := by
    apply hb n hn0
    push_cast at hc ⊢
    linear_combination hc
  have hXp : X ∣ p := X_dvd_iff.mpr h0
  exact hX (eq_of_monic_of_associated monic_X hm
    (irreducible_X.associated_of_dvd hi hXp)).symm

/-- The coefficient comparison in the logarithmic case. -/
lemma log_poly [CharZero E] {w β : E} (hw : ∀ z : E, z′ ≠ w) {P : E[X]}
    (h : implicitDeriv (C w) P = C β) :
    (P.coeff 1)′ = 0 ∧ β = (P.coeff 0)′ + P.coeff 1 * w := by
  have hc : ∀ i, (P.coeff i)′ + w * (P.coeff (i + 1) * (i + 1)) = (C β).coeff i := fun i => by
    rw [← coeff_implicitDeriv_C, h]
  have hdeg : P.natDegree ≤ 1 := by
    by_contra hlt
    push Not at hlt
    obtain ⟨m, hmn⟩ : ∃ m, P.natDegree = m + 2 := ⟨P.natDegree - 2, by omega⟩
    have hP0 : P ≠ 0 := by rintro rfl; simp at hmn
    have hlead : P.coeff (m + 2) ≠ 0 := by
      rw [← hmn]; exact leadingCoeff_ne_zero.mpr hP0
    have h1 := hc (m + 2)
    rw [coeff_eq_zero_of_natDegree_lt (show P.natDegree < m + 2 + 1 by omega), coeff_C] at h1
    simp at h1
    have h2 := hc (m + 1)
    rw [coeff_C] at h2
    simp only [show m + 1 + 1 = m + 2 by ring, Nat.add_one_ne_zero, ite_false] at h2
    apply hw (-(P.coeff (m + 1)) / (P.coeff (m + 2) * (m + 2)))
    have hk : ((m : E) + 2) ≠ 0 := by
      have := Nat.cast_add_one_ne_zero (R := E) (m + 1); push_cast at this
      rw [show (m : E) + 1 + 1 = m + 2 by ring] at this; exact this
    have hd : (P.coeff (m + 2) * (m + 2))′ = 0 := by
      rw [Derivation.leibniz, h1]
      rw [show ((m : E) + 2) = ((m + 2 : ℕ) : E) by push_cast; ring, Derivation.map_natCast]
      simp
    rw [deriv_div_const' _ _ hd, Derivation.map_neg]
    field_simp
    push_cast at h2
    linear_combination -h2
  have h1 := hc 1
  rw [coeff_eq_zero_of_natDegree_lt (show P.natDegree < 1 + 1 by omega), coeff_C] at h1
  simp at h1
  have h0 := hc 0
  rw [coeff_C] at h0
  simp at h0
  exact ⟨h1, by rw [← h0]; ring⟩

end Coefficients

/-- `a` can be written as `∑ cᵢ uᵢ'/uᵢ + v'` with constants `cᵢ` and `uᵢ, v` in the field
itself: the conclusion of Liouville's theorem. -/
def HasLogForm {F : Type*} [Field F] [Differential F] (a : F) : Prop :=
  ∃ (m : ℕ) (c u : Fin m → F) (v : F), (∀ i, (c i)′ = 0) ∧ a = ∑ i, c i * logDeriv (u i) + v′

section Steps

variable {E K : Type*} [Field E] [Field K] [Algebra E K]
  [Differential E] [Differential K] [DifferentialAlgebra E K] {t : K}

lemma deriv_eq_zero_of_algebraMap {γ : E} (h : (algebraMap E K γ)′ = 0) : γ′ = 0 := by
  rw [deriv_algebraMap] at h
  exact (algebraMap E K).injective (by rw [h, map_zero])

lemma deriv_pow_of_exp {b : E} (hb : t′ = algebraMap E K b * t) (k : ℕ) :
    (t ^ k)′ = k * algebraMap E K b * t ^ k := by
  induction k with
  | zero => simp
  | succ k ih =>
    rw [pow_succ, Derivation.leibniz, ih, hb]
    simp only [smul_eq_mul]
    push_cast; ring

lemma ne_zero_of_transcendental (ht : Transcendental E t) : t ≠ 0 := by
  rintro rfl
  exact ht isAlgebraic_zero

/-- `(P(t)/t^k)' t^k + k b P(t) = P'(t)` when `t' = b t`. -/
lemma exp_deriv_identity (ht : Transcendental E t) {b : E} (hb : t′ = algebraMap E K b * t)
    (P : E[X]) (k : ℕ) :
    (aeval t P / t ^ k)′ * t ^ k + k * algebraMap E K b * aeval t P =
      aeval t (implicitDeriv (C b * X) P) := by
  have hT : t′ = aeval t (C b * X) := by simp [hb]
  have ht0 := ne_zero_of_transcendental ht
  set v := aeval t P / t ^ k with hvdef
  have hv : aeval t P = v * t ^ k := by rw [hvdef]; field_simp
  rw [← deriv_aeval' hT P, hv, Derivation.leibniz, deriv_pow_of_exp hb]
  simp only [smul_eq_mul]
  ring

open UniqueFactorizationMonoid in
/-- **The logarithmic step.**  If `t` is transcendental over `E` with `t' = w'/w`, `w ∈ E`,
and `E(t)` has no new constants, then an element of `E` with a logarithmic form over `E(t)`
has one over `E`. -/
theorem log_step [CharZero E] [CharZero K] [DecidableEq E] (ht : Transcendental E t) {w : E}
    (hw : t′ = algebraMap E K (logDeriv w))
    (hC : ∀ x : K, x′ = 0 → x ∈ (algebraMap E K).range)
    {n : ℕ} (c u : Fin n → K) (v : K) (a : E) (hc : ∀ i, (c i)′ = 0)
    (hu : ∀ i, IsRatIn E t (u i)) (hv : IsRatIn E t v)
    (h : algebraMap E K a = ∑ i, c i * logDeriv (u i) + v′) : HasLogForm a := by
  have hT : t′ = aeval t (C (logDeriv w)) := by simp [hw]
  have hw' : ∀ z : E, z′ ≠ logDeriv w := by
    intro z hz
    have h0 : (t - algebraMap E K z)′ = 0 := by
      rw [Derivation.map_sub, hw, deriv_algebraMap, hz, sub_self]
    obtain ⟨c0, hc0⟩ := hC _ h0
    apply ht
    have : t = algebraMap E K (c0 + z) := by rw [map_add, hc0]; ring
    rw [this]
    exact isAlgebraic_algebraMap _
  obtain ⟨hvloc, e, S, d, hS, hd, heq⟩ := structure_thm ht hT hC (fun _ => False)
    (fun p hm hi _ => log_not_dvd hw' hm hi) c u v _ hc hu hv
    (fun p _ hi _ => algebraMap_mem_locRing ht hi.prime a) h
  have hS0 : S = ∅ := Finset.eq_empty_of_forall_notMem fun q hq => (hS q hq).2.2
  rw [hS0, Finset.sum_empty, add_zero] at heq
  obtain ⟨P, Q, hQ, hQf, hvPQ⟩ := exists_rep_of_forall_mem_locRing ht (fun _ => False) hv hvloc
  have hnf : normalizedFactors Q = 0 := Multiset.eq_zero_of_forall_notMem fun q hq => hQf q hq
  set lc := Q.leadingCoeff with hlc_def
  have hlc : lc ≠ 0 := leadingCoeff_ne_zero.mpr hQ
  have hQC : Q = C lc := by
    conv_lhs => rw [← leadingCoeff_mul_prod_normalizedFactors Q]
    rw [hnf]; simp [lc]
  set P' := C lc⁻¹ * P with hP'
  have hvP : v = aeval t P' := by
    rw [hvPQ, hQC, hP']
    simp only [aeval_C, map_mul, map_inv₀]
    field_simp
  choose γ hγ using fun i => hC _ (hc i)
  set β := a - ∑ i, γ i * logDeriv (e i) with hβ
  have hPβ : implicitDeriv (C (logDeriv w)) P' = C β := by
    apply aeval_inj_of_transcendental ht
    rw [← deriv_aeval' hT, ← hvP, aeval_C, hβ, map_sub, h, heq, map_sum]
    simp only [map_mul, ← logDeriv_algebraMap, hγ]
    ring
  obtain ⟨h1, h2⟩ := log_poly hw' hPβ
  refine ⟨n + 1, Fin.cons (P'.coeff 1) γ, Fin.cons w e, P'.coeff 0, ?_, ?_⟩
  · intro i
    refine Fin.cases h1 (fun i => ?_) i
    simp only [Fin.cons_succ]
    exact deriv_eq_zero_of_algebraMap (by rw [hγ]; exact hc i)
  · rw [Fin.sum_univ_succ]
    simp only [Fin.cons_zero, Fin.cons_succ]
    have : a = β + ∑ i, γ i * logDeriv (e i) := by rw [hβ]; ring
    rw [this, h2]
    ring

open UniqueFactorizationMonoid in
/-- The common part of the exponential case: the reduction of the logarithmic part and the
shape `P(t)/tᵏ` of `v`, valid for any `a` without poles away from `t = 0`. -/
theorem exp_reduce [CharZero K] [DecidableEq E] (ht : Transcendental E t) {b : E}
    (hb' : t′ = algebraMap E K b * t)
    (hC : ∀ x : K, x′ = 0 → x ∈ (algebraMap E K).range)
    (hb : ∀ j : ℕ, 0 < j → ∀ z : E, z′ = j * b * z → z = 0)
    {n : ℕ} (c u : Fin n → K) (v a : K) (hc : ∀ i, (c i)′ = 0)
    (hu : ∀ i, IsRatIn E t (u i)) (hv : IsRatIn E t v)
    (ha : ∀ p : E[X], ∀ (_ : p.Monic) (hi : Irreducible p), p ≠ X → a ∈ locRing ht hi.prime)
    (h : a = ∑ i, c i * logDeriv (u i) + v′) :
    ∃ (γ e : Fin n → E) (δ : E) (P : E[X]) (k : ℕ), (∀ i, (γ i)′ = 0) ∧ δ′ = 0 ∧
      v = aeval t P / t ^ k ∧
      a = ∑ i, algebraMap E K (γ i * logDeriv (e i)) + algebraMap E K (δ * b) + v′ := by
  have hT : t′ = aeval t (C b * X) := by simp [hb']
  obtain ⟨hvloc, e, S, d, hS, hd, heq⟩ := structure_thm ht hT hC (fun q => q = X)
    (fun p hm hi hX => exp_not_dvd hb hm hi hX) c u v a hc hu hv ha h
  have ht0 := ne_zero_of_transcendental ht
  have hlt : logDeriv t = algebraMap E K b := by
    unfold logDeriv; rw [hb']; field_simp
  have hsumS : ∑ q ∈ S, d q * logDeriv (aeval t q) = (∑ q ∈ S, d q) * algebraMap E K b := by
    rw [Finset.sum_mul]
    refine Finset.sum_congr rfl fun q hq => ?_
    rw [(hS q hq).2.2, aeval_X, hlt]
  obtain ⟨δ, hδ⟩ := hC (∑ q ∈ S, d q) (by rw [map_sum]; exact Finset.sum_eq_zero fun q _ => hd q)
  choose γ hγ using fun i => hC _ (hc i)
  obtain ⟨P, Q, hQ, hQf, hvPQ⟩ := exists_rep_of_forall_mem_locRing ht (fun q => q = X) hv hvloc
  obtain ⟨k, hk⟩ : ∃ k, normalizedFactors Q = Multiset.replicate k X :=
    ⟨_, Multiset.eq_replicate_of_mem hQf⟩
  set lc := Q.leadingCoeff with hlc_def
  have hlc : lc ≠ 0 := leadingCoeff_ne_zero.mpr hQ
  have hQ' : Q = C lc * X ^ k := by
    conv_lhs => rw [← leadingCoeff_mul_prod_normalizedFactors Q]
    rw [hk, Multiset.prod_replicate]
  refine ⟨γ, e, δ, C lc⁻¹ * P, k, fun i => deriv_eq_zero_of_algebraMap (by rw [hγ]; exact hc i),
    deriv_eq_zero_of_algebraMap (by rw [hδ, map_sum]; exact Finset.sum_eq_zero fun q _ => hd q),
    ?_, ?_⟩
  · rw [hvPQ, hQ']
    simp only [map_mul, aeval_C, map_inv₀, map_pow, aeval_X]
    field_simp
  · rw [h, heq, hsumS, ← hδ]
    simp only [map_mul, ← logDeriv_algebraMap, hγ]

/-- **The exponential step.**  If `t` is transcendental over `E` with `t' = w' t`, `w ∈ E`,
and `E(t)` has no new constants, then an element of `E` with a logarithmic form over `E(t)`
has one over `E`. -/
theorem exp_step [CharZero E] [CharZero K] [DecidableEq E] (ht : Transcendental E t) {w : E}
    (hw : t′ = algebraMap E K w′ * t)
    (hC : ∀ x : K, x′ = 0 → x ∈ (algebraMap E K).range)
    {n : ℕ} (c u : Fin n → K) (v : K) (a : E) (hc : ∀ i, (c i)′ = 0)
    (hu : ∀ i, IsRatIn E t (u i)) (hv : IsRatIn E t v)
    (h : algebraMap E K a = ∑ i, c i * logDeriv (u i) + v′) : HasLogForm a := by
  have ht0 := ne_zero_of_transcendental ht
  have hb : ∀ j : ℕ, 0 < j → ∀ z : E, z′ = j * w′ * z → z = 0 := by
    intro j hj z hz
    by_contra hz0
    have hz0' : algebraMap E K z ≠ 0 := by simpa using hz0
    have h0 : (t ^ j / algebraMap E K z)′ = 0 := by
      rw [deriv_div' _ _ hz0', deriv_pow_of_exp hw, deriv_algebraMap, hz]
      simp only [map_mul, map_natCast]
      ring
    obtain ⟨c0, hc0⟩ := hC _ h0
    apply ht
    refine ⟨X ^ j - C (c0 * z), X_pow_sub_C_ne_zero hj _, ?_⟩
    rw [map_sub, map_pow, aeval_X, aeval_C, map_mul, hc0]
    field_simp
    ring
  obtain ⟨γ, e, δ, P, k, hγ, hδ, hvP, h'⟩ := exp_reduce ht hw hC hb c u v _ hc hu hv
    (fun p _ hi _ => algebraMap_mem_locRing ht hi.prime a) h
  set β := a - ∑ i, γ i * logDeriv (e i) - δ * w′ with hβ
  have hvβ : v′ = algebraMap E K β := by
    rw [hβ, map_sub, map_sub, h', map_sum]; ring
  have hid := exp_deriv_identity ht hw P k
  rw [← hvP, hvβ] at hid
  have hpoly : C β * X ^ k + C (k * w′) * P = implicitDeriv (C w′ * X) P := by
    apply aeval_inj_of_transcendental ht
    rw [← hid]
    simp
  have hck := congrArg (fun q => q.coeff k) hpoly
  simp only [coeff_add, coeff_C_mul, coeff_X_pow, ite_true, coeff_implicitDeriv_CX] at hck
  refine ⟨n, γ, e, δ * w + P.coeff k, hγ, ?_⟩
  rw [Derivation.map_add, Derivation.leibniz, hδ]
  simp only [smul_eq_mul, mul_zero, add_zero]
  have : a = β + ∑ i, γ i * logDeriv (e i) + δ * w′ := by rw [hβ]; ring
  rw [this]
  linear_combination hck

/-- Every element of `E(t)` is `P(t)/Q(t)` with `Q` monic and `P, Q` coprime. -/
lemma exists_coprime_rep (ht : Transcendental E t) {x : K} (hx : IsRatIn E t x) :
    ∃ P Q : E[X], Q.Monic ∧ IsCoprime P Q ∧ x = aeval t P / aeval t Q := by
  classical
  obtain ⟨r, s, rfl⟩ := hx
  by_cases hs : s = 0
  · exact ⟨0, 1, monic_one, isCoprime_one_right, by simp [hs]⟩
  set g := GCDMonoid.gcd r s with hg
  have hg0 : g ≠ 0 := gcd_ne_zero_of_right hs
  have hcop := isCoprime_div_gcd_div_gcd (p := r) hs
  have hr' : g * (r / g) = r := EuclideanDomain.mul_div_cancel' hg0 (gcd_dvd_left r s)
  have hs' : g * (s / g) = s := EuclideanDomain.mul_div_cancel' hg0 (gcd_dvd_right r s)
  set r₁ := r / g
  set s₁ := s / g
  have hs1 : s₁ ≠ 0 := by rintro h; rw [h, mul_zero] at hs'; exact hs hs'.symm
  have hu : IsUnit (C s₁.leadingCoeff⁻¹) :=
    isUnit_C.mpr (IsUnit.mk0 _ (inv_ne_zero (leadingCoeff_ne_zero.mpr hs1)))
  refine ⟨r₁ * C s₁.leadingCoeff⁻¹, s₁ * C s₁.leadingCoeff⁻¹, monic_mul_leadingCoeff_inv hs1,
    (isCoprime_mul_unit_right hu _ _).mpr hcop, ?_⟩
  have hg0' := aeval_ne_zero_of_transcendental ht hg0
  have hs0' := aeval_ne_zero_of_transcendental ht hs1
  have hl : algebraMap E K s₁.leadingCoeff ≠ 0 := by
    simpa using leadingCoeff_ne_zero.mpr hs1
  rw [← hr', ← hs']
  simp only [map_mul, aeval_C, map_inv₀]
  field_simp

/-- **No new constants** in an exponential extension `E(t)`, `t' = b t`, provided
`g' = j b g` has no nonzero solution `g ∈ E` for any integer `j ≠ 0`. -/
theorem exp_constants (ht : Transcendental E t) {b : E} (hb' : t′ = algebraMap E K b * t)
    (hall : ∀ z : K, IsRatIn E t z)
    (hb : ∀ j : ℤ, j ≠ 0 → ∀ g : E, g′ = j * b * g → g = 0) :
    ∀ z : K, z′ = 0 → z ∈ (algebraMap E K).range := by
  intro z hz
  have hT : t′ = aeval t (C b * X) := by simp [hb']
  obtain ⟨P, Q, hQm, hcop, rfl⟩ := exists_coprime_rep ht (hall z)
  have hQ0 := aeval_ne_zero_of_transcendental ht (Monic.ne_zero hQm)
  set D := implicitDeriv (C b * X) with hD
  have hPQ : D P * Q = P * D Q := by
    apply aeval_inj_of_transcendental ht
    rw [deriv_div' _ _ hQ0, deriv_aeval' hT, deriv_aeval' hT, div_eq_zero_iff] at hz
    rcases hz with hz | hz
    · rw [map_mul, map_mul]; linear_combination hz
    · exact absurd (pow_eq_zero_iff (n := 2) (by norm_num) |>.mp hz) hQ0
  have hdvd : Q ∣ D Q := hcop.symm.dvd_of_dvd_mul_left ⟨D P, by rw [← hPQ]; ring⟩
  set m := Q.natDegree with hm
  set R := D Q - C (m * b) * Q with hR
  have hlt : R.degree < Q.degree := by
    rw [Polynomial.degree_eq_natDegree (Monic.ne_zero hQm), Polynomial.degree_lt_iff_coeff_zero]
    intro i hi
    rw [hR, coeff_sub, hD, coeff_implicitDeriv_CX, coeff_C_mul]
    rcases hi.lt_or_eq with hlt | heq
    · rw [coeff_eq_zero_of_natDegree_lt hlt]; simp
    · rw [← heq, hm]
      have : Q.coeff Q.natDegree = 1 := hQm
      rw [this]; simp; ring
  have hR0 := Polynomial.eq_zero_of_dvd_of_degree_lt (dvd_sub hdvd (dvd_mul_left Q _)) hlt
  -- the coefficients of `Q` below the top vanish, so `Q = X^m`
  have hcoef : ∀ (A : E[X]), D A = C (m * b) * A → ∀ i, i ≠ m → A.coeff i = 0 := by
    intro A hA i hi
    have hc := congrArg (fun q => q.coeff i) hA
    simp only [hD, coeff_implicitDeriv_CX, coeff_C_mul] at hc
    apply hb ((m : ℤ) - i) (by omega)
    push_cast
    linear_combination hc
  have hQX : Q = X ^ m := by
    ext i
    rw [coeff_X_pow]
    split_ifs with hi
    · rw [hi]; exact hQm
    · exact hcoef Q (by rw [← sub_eq_zero]; exact hR0) i hi
  have hDP : D P = C (m * b) * P := by
    have hDQ : D Q = C (m * b) * Q := by rw [← sub_eq_zero]; exact hR0
    rw [hDQ] at hPQ
    have hX0 : Q ≠ 0 := Monic.ne_zero hQm
    apply mul_right_cancel₀ hX0
    rw [hPQ]; ring
  have hPX : P = C (P.coeff m) * X ^ m := by
    ext i
    rw [coeff_C_mul, coeff_X_pow]
    split_ifs with hi
    · rw [hi, mul_one]
    · rw [mul_zero]; exact hcoef P hDP i hi
  refine ⟨P.coeff m, ?_⟩
  have ht0 := ne_zero_of_transcendental ht
  rw [hQX]
  conv_rhs => rw [hPX]
  simp only [map_mul, aeval_C, map_pow, aeval_X]
  field_simp

end Steps

/-! ## Elementary towers -/

section Tower

variable (F K : Type*) [Field F] [Field K] [Algebra F K] [Differential F] [Differential K]
  [DifferentialAlgebra F K]

/-- An intermediate field closed under the derivation. -/
def IsDifferentialSubfield (E : IntermediateField F K) : Prop :=
  ∀ x ∈ E, x′ ∈ E

/-- One step `E ⊆ E' = E(t)` of an elementary tower: `t` is algebraic over `E`, or a
logarithm of an element of `E` (`t' = u'/u`, `u ∈ E`), or an exponential of an element of
`E` (`t' = u' t`, `u ∈ E`). -/
def IsElementaryStep (E E' : IntermediateField F K) : Prop :=
  ∃ t : K, E' = (IntermediateField.adjoin E {t}).restrictScalars F ∧
    (IsAlgebraic E t ∨ (∃ u ∈ E, t′ = u′ / u) ∨ (∃ u ∈ E, t′ = u′ * t))

/-- The intermediate fields reachable from `F = ⊥` by finitely many elementary steps. -/
inductive IsElementaryTower : IntermediateField F K → Prop
  | base : IsElementaryTower ⊥
  | step {E E' : IntermediateField F K} :
      IsElementaryTower E → IsElementaryStep F K E E' → IsElementaryTower E'

/-- `K` is an **elementary extension** of `F`: `K = F(t₁, …, tₙ)` where each `tᵢ` is algebraic,
logarithmic or exponential over `F(t₁, …, tᵢ₋₁)`.  (That `K` has no new constants is the
separate hypothesis `Differential.ContainConstants F K`.) -/
def IsElementary : Prop :=
  IsElementaryTower F K ⊤

/-- `a = ∑ cᵢ uᵢ'/uᵢ + v'` with constants `cᵢ` and `uᵢ, v ∈ S`. -/
def LogRep (S : IntermediateField F K) (a : K) : Prop :=
  ∃ (n : ℕ) (c u : Fin n → K) (v : K), (∀ i, (c i)′ = 0) ∧ (∀ i, u i ∈ S) ∧ v ∈ S ∧
    a = ∑ i, c i * logDeriv (u i) + v′

variable {F K}

/-- The derivation of `K` restricted to a differential subfield `E`. -/
@[reducible]
noncomputable def restrictDiff (E : IntermediateField F K) (hE : IsDifferentialSubfield F K E) :
    Differential E where
  deriv := Derivation.mk'
    { toFun := fun x => ⟨(x : K)′, hE _ x.2⟩
      map_add' := fun x y => Subtype.ext (by simp)
      map_smul' := fun z x => Subtype.ext (by simp) }
    (fun x y => Subtype.ext (by simp [Derivation.leibniz]))

lemma restrictDiff_coe (E : IntermediateField F K) (hE : IsDifferentialSubfield F K E) (x : E) :
    letI := restrictDiff E hE
    ((x′ : E) : K) = (x : K)′ := rfl

lemma restrictDiff_algebra (E : IntermediateField F K) (hE : IsDifferentialSubfield F K E) :
    letI := restrictDiff E hE
    DifferentialAlgebra E K :=
  letI := restrictDiff E hE
  ⟨fun _ => rfl⟩

/-- Data over a differential subfield `E` (as a field in its own right) gives a `LogRep`. -/
lemma logRep_of_fintype (E : IntermediateField F K) (hE : IsDifferentialSubfield F K E)
    {ι : Type*} [Fintype ι] (c u : ι → E) (v : E) (a : K)
    (hc : ∀ i, (letI := restrictDiff E hE; (c i)′) = 0)
    (h : letI := restrictDiff E hE; ∃ ha : a ∈ E,
      (⟨a, ha⟩ : E) = ∑ i, c i * logDeriv (u i) + v′) :
    LogRep F K E a := by
  letI := restrictDiff E hE
  haveI := restrictDiff_algebra E hE
  obtain ⟨ha, h⟩ := h
  let e := Fintype.equivFin ι
  refine ⟨Fintype.card ι, fun i => (c (e.symm i) : K), fun i => (u (e.symm i) : K), (v : K),
    fun i => ?_, fun i => (u _).2, v.2, ?_⟩
  · rw [← restrictDiff_coe E hE, hc]; rfl
  · have h2 := congrArg (algebraMap E K) h
    simp only [map_add, map_sum, map_mul, ← logDeriv_algebraMap, ← deriv_algebraMap] at h2
    rw [Equiv.sum_comp e.symm (fun x => (c x : K) * logDeriv (u x : K))]
    exact h2

lemma logRep_of_hasLogForm (E : IntermediateField F K) (hE : IsDifferentialSubfield F K E)
    (a : K) (ha : a ∈ E) (h : letI := restrictDiff E hE; HasLogForm (⟨a, ha⟩ : E)) :
    LogRep F K E a := by
  letI := restrictDiff E hE
  obtain ⟨m, c, u, v, hc, h⟩ := h
  exact logRep_of_fintype E hE c u v a hc ⟨ha, h⟩

lemma logRep_mono {S S' : IntermediateField F K} (hS : S ≤ S') {a : K} (h : LogRep F K S a) :
    LogRep F K S' a := by
  obtain ⟨n, c, u, v, hc, hu, hv, h⟩ := h
  exact ⟨n, c, u, v, hc, fun i => hS (hu i), hS hv, h⟩

lemma isRatIn_of_mem_adjoin (E : IntermediateField F K) {t x : K}
    (hx : x ∈ (IntermediateField.adjoin E {t}).restrictScalars F) : IsRatIn E t x := by
  rw [IntermediateField.mem_restrictScalars, IntermediateField.mem_adjoin_simple_iff] at hx
  exact hx

lemma mem_adjoin_of_mem (E : IntermediateField F K) (t : K) {x : K} (hx : x ∈ E) :
    x ∈ (IntermediateField.adjoin E {t}).restrictScalars F := by
  rw [IntermediateField.mem_restrictScalars]
  exact (IntermediateField.adjoin E {t}).algebraMap_mem ⟨x, hx⟩

lemma le_adjoin (E : IntermediateField F K) (t : K) :
    E ≤ (IntermediateField.adjoin E {t}).restrictScalars F :=
  fun _ hx => mem_adjoin_of_mem E t hx

lemma aeval_mem_adjoin (E : IntermediateField F K) (t : K) (P : E[X]) :
    aeval t P ∈ (IntermediateField.adjoin E {t}).restrictScalars F := by
  rw [IntermediateField.mem_restrictScalars, IntermediateField.mem_adjoin_simple_iff]
  exact ⟨P, 1, by simp⟩

/-- If `E` is a differential subfield and `t' ∈ E(t)` then `E(t)` is a differential subfield. -/
lemma isDifferentialSubfield_adjoin (E : IntermediateField F K) (hE : IsDifferentialSubfield F K E)
    {t : K} (ht : t′ ∈ (IntermediateField.adjoin E {t}).restrictScalars F) :
    IsDifferentialSubfield F K ((IntermediateField.adjoin E {t}).restrictScalars F) := by
  letI := restrictDiff E hE
  haveI := restrictDiff_algebra E hE
  set B := (IntermediateField.adjoin E {t}).restrictScalars F
  have hpoly : ∀ P : E[X], (aeval t P)′ ∈ B := fun P => by
    rw [deriv_aeval_eq]
    exact add_mem (aeval_mem_adjoin E t _) (mul_mem (aeval_mem_adjoin E t _) ht)
  intro x hx
  obtain ⟨r, s, rfl⟩ := isRatIn_of_mem_adjoin E hx
  by_cases hs : aeval t s = 0
  · rw [hs, div_zero, Derivation.map_zero]; exact zero_mem _
  rw [deriv_div' _ _ hs]
  exact div_mem (sub_mem (mul_mem (hpoly r) (aeval_mem_adjoin E t s))
    (mul_mem (aeval_mem_adjoin E t r) (hpoly s))) (pow_mem (aeval_mem_adjoin E t s) 2)

lemma charZero_sub [CharZero F] (E : IntermediateField F K) : CharZero E :=
  charZero_of_injective_algebraMap (algebraMap F E).injective

lemma charZero_top [CharZero F] : CharZero K :=
  charZero_of_injective_algebraMap (algebraMap F K).injective

/-- The algebraic step, from Mathlib's `isLiouville_of_finiteDimensional`. -/
lemma alg_step [CharZero F] [Differential.ContainConstants F K] (E : IntermediateField F K)
    (hE : IsDifferentialSubfield F K E) {t : K} (ht : IsAlgebraic E t) (a : K) (ha : a ∈ E)
    (h : LogRep F K ((IntermediateField.adjoin E {t}).restrictScalars F) a) :
    LogRep F K E a := by
  letI := restrictDiff E hE
  haveI := restrictDiff_algebra E hE
  haveI : CharZero E := charZero_sub E
  set B := IntermediateField.adjoin E {t}
  haveI : FiniteDimensional E B := IntermediateField.adjoin.finiteDimensional ht.isIntegral
  obtain ⟨n, c, u, v, hc, hu, hv, h⟩ := h
  choose γ hγ using fun i => mem_range_of_deriv_eq_zero F (hc i)
  let c' : Fin n → E := fun i => algebraMap F E (γ i)
  have hc' : ∀ i, (c' i)′ = 0 := fun i => Subtype.ext (by
    rw [restrictDiff_coe]
    change (algebraMap F K (γ i))′ = 0
    rw [hγ]; exact hc i)
  let u' : Fin n → B := fun i => ⟨u i, (IntermediateField.mem_restrictScalars F).mp (hu i)⟩
  let v' : B := ⟨v, (IntermediateField.mem_restrictScalars F).mp hv⟩
  obtain ⟨ι₀, _, c₀, hc₀, u₀, v₀, h₀⟩ :=
    (isLiouville_of_finiteDimensional (F := E) (K := B)).isLiouville ⟨a, ha⟩ (Fin n) c' hc'
      u' v' (by
        apply (algebraMap B K).injective
        simp only [map_add, map_sum, map_mul, ← logDeriv_algebraMap, ← deriv_algebraMap]
        rw [← IsScalarTower.algebraMap_apply]
        have hcc : ∀ i, algebraMap E K (c' i) = c i := fun i => by
          rw [← hγ]; rfl
        simp only [← IsScalarTower.algebraMap_apply, hcc]
        exact h)
  exact logRep_of_fintype E hE c₀ u₀ v₀ a hc₀ ⟨ha, h₀⟩

/-- One elementary step preserves differential subfields and reduces logarithmic forms. -/
lemma step_reduce [CharZero F] [Differential.ContainConstants F K] {E E' : IntermediateField F K}
    (hE : IsDifferentialSubfield F K E) (hstep : IsElementaryStep F K E E') :
    IsDifferentialSubfield F K E' ∧ ∀ a ∈ E, LogRep F K E' a → LogRep F K E a := by
  classical
  obtain ⟨t, rfl, hcase⟩ := hstep
  letI := restrictDiff E hE
  haveI := restrictDiff_algebra E hE
  haveI : CharZero E := charZero_sub E
  haveI : CharZero K := charZero_top (F := F)
  have hC : ∀ x : K, x′ = 0 → x ∈ (algebraMap E K).range := fun x hx => by
    obtain ⟨f, rfl⟩ := mem_range_of_deriv_eq_zero F hx
    exact ⟨algebraMap F E f, rfl⟩
  by_cases halg : IsAlgebraic E t
  · refine ⟨isDifferentialSubfield_adjoin E hE ?_, fun a ha h => alg_step E hE halg a ha h⟩
    -- `t'` lies in `E(t)` by differentiating the minimal polynomial
    have hint := halg.isIntegral
    set p := minpoly E t
    have hsep : p.Separable := (minpoly.irreducible hint).separable
    have h0 : aeval t p = 0 := minpoly.aeval E t
    have hd : aeval t (derivative p) ≠ 0 := hsep.aeval_derivative_ne_zero h0
    have h1 := deriv_aeval_eq t p
    rw [h0, Derivation.map_zero] at h1
    have : t′ = -aeval t (mapCoeffs p) / aeval t (derivative p) := by
      field_simp
      linear_combination -h1
    rw [this]
    exact div_mem (neg_mem (aeval_mem_adjoin E t _)) (aeval_mem_adjoin E t _)
  have ht : Transcendental E t := halg
  rcases hcase with halg' | ⟨u, hu, hlog⟩ | ⟨u, hu, hexp⟩
  · exact absurd halg' halg
  · refine ⟨isDifferentialSubfield_adjoin E hE ?_, fun a ha h => ?_⟩
    · rw [hlog]
      exact mem_adjoin_of_mem E t (div_mem (hE u hu) hu)
    obtain ⟨n, c, v, w, hc, hv, hw, h⟩ := h
    refine logRep_of_hasLogForm E hE a ha ?_
    refine log_step ht (w := ⟨u, hu⟩) ?_ hC c v w ⟨a, ha⟩ hc
      (fun i => isRatIn_of_mem_adjoin E (hv i)) (isRatIn_of_mem_adjoin E hw) h
    rw [← logDeriv_algebraMap]
    exact hlog
  · refine ⟨isDifferentialSubfield_adjoin E hE ?_, fun a ha h => ?_⟩
    · rw [hexp]
      exact mul_mem (mem_adjoin_of_mem E t (hE u hu))
        ((IntermediateField.mem_restrictScalars F).mpr (IntermediateField.mem_adjoin_simple_self E t))
    obtain ⟨n, c, v, w, hc, hv, hw, h⟩ := h
    refine logRep_of_hasLogForm E hE a ha ?_
    exact exp_step ht (w := ⟨u, hu⟩) hexp hC c v w ⟨a, ha⟩ hc
      (fun i => isRatIn_of_mem_adjoin E (hv i)) (isRatIn_of_mem_adjoin E hw) h

/-- Along an elementary tower, logarithmic forms descend to the base. -/
theorem tower_reduce [CharZero F] [Differential.ContainConstants F K] {E : IntermediateField F K}
    (hE : IsElementaryTower F K E) :
    IsDifferentialSubfield F K E ∧ ∀ a ∈ (⊥ : IntermediateField F K), LogRep F K E a →
      LogRep F K ⊥ a := by
  induction hE with
  | base =>
    refine ⟨fun x hx => ?_, fun a _ h => h⟩
    obtain ⟨f, rfl⟩ := IntermediateField.mem_bot.mp hx
    rw [deriv_algebraMap]
    exact IntermediateField.algebraMap_mem _ _
  | step _ hstep ih =>
    obtain ⟨hdiff, hred⟩ := ih
    obtain ⟨hdiff', hred'⟩ := step_reduce hdiff hstep
    exact ⟨hdiff', fun a ha h => hred a ha (hred' a (SetLike.le_def.mp bot_le ha) h)⟩

/-- **Liouville's theorem** (Rosenlicht's form).  Let `F` be a differential field of
characteristic zero and `K` an elementary extension of `F` with no new constants.  If
`a ∈ F` can be written `a = ∑ cᵢ uᵢ'/uᵢ + v'` with constants `cᵢ` and `uᵢ, v ∈ K`, then it
can be so written with constants `cᵢ ∈ F` and `uᵢ, v ∈ F`. -/
theorem liouville [CharZero F] [Differential.ContainConstants F K] (hK : IsElementary F K)
    (a : F) (h : ∃ (n : ℕ) (c u : Fin n → K) (v : K), (∀ i, (c i)′ = 0) ∧
      algebraMap F K a = ∑ i, c i * logDeriv (u i) + v′) :
    HasLogForm a := by
  obtain ⟨n, c, u, v, hc, h⟩ := h
  obtain ⟨-, hred⟩ := tower_reduce hK
  obtain ⟨m, c', u', v', hc', hu', hv', h'⟩ := hred _ (IntermediateField.algebraMap_mem _ a)
    ⟨n, c, u, v, hc, fun _ => IntermediateField.mem_top, IntermediateField.mem_top, h⟩
  choose γ hγ using fun i => mem_range_of_deriv_eq_zero F (hc' i)
  choose f hf using fun i => IntermediateField.mem_bot.mp (hu' i)
  obtain ⟨g, hg⟩ := IntermediateField.mem_bot.mp hv'
  refine ⟨m, γ, f, g, fun i => deriv_eq_zero_of_algebraMap (by rw [hγ]; exact hc' i), ?_⟩
  apply (algebraMap F K).injective
  rw [h']
  simp only [map_add, map_sum, map_mul, ← logDeriv_algebraMap, ← deriv_algebraMap, hγ, hf, hg]

/-- **Liouville's theorem**, primitive form: if `y' = a` for some `y` in an elementary
extension of `F` with no new constants, then `a = ∑ cᵢ uᵢ'/uᵢ + v'` with `cᵢ, uᵢ, v ∈ F`,
the `cᵢ` constants. -/
theorem liouville_primitive [CharZero F] [Differential.ContainConstants F K]
    (hK : IsElementary F K) (a : F) (y : K) (hy : y′ = algebraMap F K a) : HasLogForm a :=
  liouville hK a ⟨0, Fin.elim0, Fin.elim0, y, fun i => i.elim0, by simp [hy]⟩

/-- An elementary extension with no new constants is a Liouville extension in the sense
of Mathlib's `IsLiouville`. -/
theorem isLiouville_of_isElementary [CharZero F] [Differential.ContainConstants F K]
    (hK : IsElementary F K) : IsLiouville F K where
  isLiouville a ι _ c hc u v h := by
    let e := Fintype.equivFin ι
    obtain ⟨m, c', u', v', hc', h'⟩ := liouville hK a
      ⟨Fintype.card ι, fun i => algebraMap F K (c (e.symm i)), fun i => u (e.symm i), v,
        fun i => by rw [deriv_algebraMap, hc, map_zero],
        by
          beta_reduce
          rw [Equiv.sum_comp e.symm (fun x => algebraMap F K (c x) * logDeriv (u x))]
          exact h⟩
    exact ⟨Fin m, inferInstance, c', hc', u', v', h'⟩

end Tower

end Spivak.Liouville
