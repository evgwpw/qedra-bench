import SpivakCalculus.Liouville
import Mathlib.FieldTheory.RatFunc.AsPolynomial
import Mathlib.Algebra.Polynomial.Roots

/-!
# База: дифференциальное поле `k(x)`, `x′ = 1`, и леммы об отсутствии рациональных решений

Вынесено из `SpivakCalculus/ExpSq.lean` (производная работа от `Chapter19Liouville.lean` проекта
[stormj-UH/spivak-lean](https://github.com/stormj-UH/spivak-lean), Apache-2.0) — чтобы одну и ту же
базу использовали разные расширения `k(x)(θ)` (у каждого своё уравнение `θ′ = b·θ`).

От `p` (показателя `e^p`) здесь зависит только **многочлен `b := p′`**:

* `ratFunc_no_exp_solution_gen` — нет `g ∈ k(x)` с `g′ = j·b·g` (`e^{j p}` не рационален);
* `ratFunc_no_solution_one_gen` — нет `f ∈ k(x)` с `f′ + b·f = 1` (уравнение Риша для `θ` при `r = 1`);
* `ratFunc_no_simple_pole` — нет `f` с `f′ + c·f = A/(x−a)`, `A ≠ 0` (простой полюс).

Первые две — подсчёт степеней после `ratFunc_riccati` (`M ∣ M′` ⇒ `M` постоянно, без корней
и без расширений поля): достаточно `0 < b.natDegree`, то есть `deg p ≥ 2`. Для `deg p = 1`
(`e^{cx}`) они неверны — и это правильно, `e^{cx}` элементарна.
-/

set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option maxHeartbeats 1000000
set_option linter.style.haveILetI false

open Polynomial Differential Spivak.Liouville
open scoped Differential

namespace Spivak.NeGen

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

/-! ## Нет рациональных решений: общие леммы по `b := p′` -/

/-- `g' = j·b·g` (`b = p′`, `0 < deg b`, `j ≠ 0`) не имеет ненулевого рационального решения:
`e^{j·p}` не рациональная функция. -/
theorem ratFunc_no_exp_solution_gen [CharZero k] (b : k[X]) (hb : 0 < b.natDegree)
    (j : ℤ) (hj : j ≠ 0) (g : RatFunc k)
    (hg : g′ = (j : RatFunc k) * algebraMap k[X] (RatFunc k) b * g) : g = 0 := by
  have hcoef : ((j : RatFunc k) * algebraMap k[X] (RatFunc k) b) =
      algebraMap k[X] (RatFunc k) (C (j : k) * b) := by
    rw [map_mul]
    congr 1
    simp
  obtain ⟨N, rfl, hN⟩ := ratFunc_riccati (f := g) (A := 0) (B := C (j : k) * b)
    (by rw [hg, hcoef, map_zero, zero_add])
  by_contra hN0
  have hN0' : N ≠ 0 := by rintro rfl; exact hN0 (map_zero _)
  have hb0 : b ≠ 0 := fun h => by rw [h] at hb; simp at hb
  have hjk : (j : k) ≠ 0 := Int.cast_ne_zero.mpr hj
  have hdeg : (C (j : k) * b * N).natDegree = b.natDegree + N.natDegree := by
    rw [mul_assoc, natDegree_C_mul hjk,
      natDegree_mul' (mul_ne_zero (leadingCoeff_ne_zero.mpr hb0)
        (leadingCoeff_ne_zero.mpr hN0'))]
  rw [zero_add] at hN
  have h1 : (derivative N).natDegree = (C (j : k) * b * N).natDegree := by rw [hN]
  rw [hdeg] at h1
  have h2 := natDegree_derivative_le N
  omega

/-- `f' + b·f = 1` (`b = p′`, `0 < deg b`) не имеет рационального решения: уравнение Риша
для `θ = e^{p}` при `r = 1`. -/
theorem ratFunc_no_solution_one_gen [CharZero k] (b : k[X]) (hb : 0 < b.natDegree)
    (f : RatFunc k) : f′ + algebraMap k[X] (RatFunc k) b * f ≠ 1 := by
  intro hf
  have h' : f′ = algebraMap k[X] (RatFunc k) 1 + algebraMap k[X] (RatFunc k) (-b) * f := by
    rw [map_one, map_neg]
    linear_combination hf
  obtain ⟨N, rfl, hN⟩ := ratFunc_riccati h'
  by_cases hN0 : N = 0
  · subst hN0
    simp at hN
  have hb0 : b ≠ 0 := fun h => by rw [h] at hb; simp at hb
  have hdeg : (b * N).natDegree = b.natDegree + N.natDegree :=
    natDegree_mul' (mul_ne_zero (leadingCoeff_ne_zero.mpr hb0)
      (leadingCoeff_ne_zero.mpr hN0))
  have hsub : (1 - b * N).natDegree = b.natDegree + N.natDegree := by
    rw [← hdeg]
    exact natDegree_sub_eq_right_of_natDegree_lt (by rw [natDegree_one, hdeg]; omega)
  have hN' : derivative N = 1 - b * N := by
    rw [hN]; ring
  have h1 : (derivative N).natDegree = (1 - b * N).natDegree := by rw [hN']
  rw [hsub] at h1
  have h2 := natDegree_derivative_le N
  omega

/-- `f′ + b·f = C c` при `c ≠ 0` (`0 < deg b`) не имеет рационального решения: тот же счёт
степеней, что в `ratFunc_no_solution_one_gen`, но с постоянной правой частью. -/
theorem ratFunc_no_solution_const [CharZero k] (b : k[X]) (hb : 0 < b.natDegree)
    (c : k) (hc : c ≠ 0) (f : RatFunc k) :
    f′ + algebraMap k[X] (RatFunc k) b * f ≠ algebraMap k[X] (RatFunc k) (C c) := by
  intro hf
  have h' : f′ = algebraMap k[X] (RatFunc k) (C c) + algebraMap k[X] (RatFunc k) (-b) * f := by
    rw [map_neg]
    linear_combination hf
  obtain ⟨N, rfl, hN⟩ := ratFunc_riccati h'
  by_cases hN0 : N = 0
  · subst hN0
    simp only [map_zero, mul_zero, add_zero] at hN
    exact hc (C_eq_zero.mp hN.symm)
  have hb0 : b ≠ 0 := fun h => by rw [h] at hb; simp at hb
  have hdeg : (b * N).natDegree = b.natDegree + N.natDegree :=
    natDegree_mul' (mul_ne_zero (leadingCoeff_ne_zero.mpr hb0)
      (leadingCoeff_ne_zero.mpr hN0))
  have hneg : ((-b) * N).natDegree = b.natDegree + N.natDegree := by
    rw [neg_mul, natDegree_neg, hdeg]
  have hlt : (C c : k[X]).natDegree < ((-b) * N).natDegree := by
    rw [natDegree_C, hneg]
    omega
  have hsum : (C c + (-b) * N).natDegree = b.natDegree + N.natDegree := by
    rw [natDegree_add_eq_right_of_natDegree_lt hlt, hneg]
  have h1 : (derivative N).natDegree = (C c + (-b) * N).natDegree := by rw [hN]
  rw [hsum] at h1
  have h2 := natDegree_derivative_le N
  omega

/-- `f′ + b·f = R` не имеет рационального решения при `deg R < deg b`, `R ≠ 0`:
сдвиг не нужен, счёт степеней тот же, что у `ratFunc_no_solution_const`
(`deg b + deg N` против `≤ deg N − 1`). Обобщение на любой «маленький» остаток — для `b`
степени ≥ 2, где остаток от деления на `L(Q) = Q′ + b·Q` не сводится к константе. -/
theorem ratFunc_no_solution_small [CharZero k] (b : k[X]) (hb : 0 < b.natDegree)
    (R : k[X]) (hR : R ≠ 0) (hdeg : R.natDegree < b.natDegree) (f : RatFunc k) :
    f′ + algebraMap k[X] (RatFunc k) b * f ≠ algebraMap k[X] (RatFunc k) R := by
  intro hf
  have h' : f′ = algebraMap k[X] (RatFunc k) R + algebraMap k[X] (RatFunc k) (-b) * f := by
    rw [map_neg]
    linear_combination hf
  obtain ⟨N, rfl, hN⟩ := ratFunc_riccati h'
  by_cases hN0 : N = 0
  · subst hN0
    simp only [map_zero, mul_zero, add_zero] at hN
    exact hR hN.symm
  have hb0 : b ≠ 0 := fun h => by rw [h] at hb; simp at hb
  have hdeg' : (b * N).natDegree = b.natDegree + N.natDegree :=
    natDegree_mul' (mul_ne_zero (leadingCoeff_ne_zero.mpr hb0)
      (leadingCoeff_ne_zero.mpr hN0))
  have hneg : ((-b) * N).natDegree = b.natDegree + N.natDegree := by
    rw [neg_mul, natDegree_neg, hdeg']
  have hlt : R.natDegree < ((-b) * N).natDegree := by
    rw [hneg]
    omega
  have hsum : (R + (-b) * N).natDegree = b.natDegree + N.natDegree := by
    rw [natDegree_add_eq_right_of_natDegree_lt hlt, hneg]
  have h1 : (derivative N).natDegree = (R + (-b) * N).natDegree := by rw [hN]
  rw [hsum] at h1
  have h2 := natDegree_derivative_le N
  omega

/-- `f′ + b·f = P` не имеет рационального решения, если `P = Q′ + b·Q + R` с `R ≠ 0`,
`deg R < deg b`: сдвиг `z = f − Q` сводит уравнение к `ratFunc_no_solution_small`. -/
theorem ratFunc_no_solution_poly_small [CharZero k] (b : k[X]) (hb : 0 < b.natDegree)
    (P Q R : k[X]) (hR : R ≠ 0) (hdeg : R.natDegree < b.natDegree)
    (hPQ : P = derivative Q + b * Q + R) :
    ¬ ∃ f : RatFunc k, f′ + algebraMap k[X] (RatFunc k) b * f = algebraMap k[X] (RatFunc k) P := by
  rintro ⟨f, hf⟩
  set z : RatFunc k := f - algebraMap k[X] (RatFunc k) Q with hz
  have hP' : algebraMap k[X] (RatFunc k) P
      = algebraMap k[X] (RatFunc k) (derivative Q) + algebraMap k[X] (RatFunc k) (b * Q)
        + algebraMap k[X] (RatFunc k) R := by
    rw [hPQ, map_add, map_add]
  have hz_eq : z′ + algebraMap k[X] (RatFunc k) b * z = algebraMap k[X] (RatFunc k) R := by
    have hQ' : (algebraMap k[X] (RatFunc k) Q)′ = algebraMap k[X] (RatFunc k) (derivative Q) :=
      ratFunc_deriv_algebraMap Q
    have hz' : z′ = f′ - algebraMap k[X] (RatFunc k) (derivative Q) := by
      rw [hz, map_sub, hQ']
    have hmul : algebraMap k[X] (RatFunc k) b * (f - algebraMap k[X] (RatFunc k) Q)
        = algebraMap k[X] (RatFunc k) b * f - algebraMap k[X] (RatFunc k) (b * Q) := by
      rw [mul_sub, ← map_mul]
    rw [hz', hz, hmul]
    linear_combination hf + hP'
  exact ratFunc_no_solution_small b hb R hR hdeg z hz_eq

/-- Нормировка `ratFunc_no_solution_poly_small` для генератора: уравнение умножено на `C d`
(`d ≠ 0`), поэтому коэффициенты `Q` и `R` не приходится делить на старший коэффициент `b`.
Псевдоделение `d·P = Q′ + b·Q + R` (например, `d = lc^{deg P}`) даёт именно такую форму. -/
theorem ratFunc_no_solution_poly_small_scaled [CharZero k] (b : k[X]) (hb : 0 < b.natDegree)
    (d : k) (hd : d ≠ 0) (P Q R : k[X]) (hR : R ≠ 0) (hdeg : R.natDegree < b.natDegree)
    (hPQ : C d * P = derivative Q + b * Q + R) :
    ¬ ∃ f : RatFunc k, f′ + algebraMap k[X] (RatFunc k) b * f = algebraMap k[X] (RatFunc k) P := by
  have hd' : C d⁻¹ * C d = (1 : k[X]) := by
    rw [← C_mul, inv_mul_cancel₀ hd, C_1]
  refine ratFunc_no_solution_poly_small b hb P (C d⁻¹ * Q) (C d⁻¹ * R)
    (mul_ne_zero (C_ne_zero.mpr (inv_ne_zero hd)) hR) ?_ ?_
  · rw [natDegree_C_mul (inv_ne_zero hd)]; exact hdeg
  · calc P = C d⁻¹ * (C d * P) := by rw [← mul_assoc, hd', one_mul]
      _ = C d⁻¹ * (derivative Q + b * Q + R) := by rw [hPQ]
      _ = derivative (C d⁻¹ * Q) + b * (C d⁻¹ * Q) + C d⁻¹ * R := by
            rw [mul_add, mul_add, ← derivative_C_mul]
            ring

/-- Мост: `algebraMap (-(4·X³)) = −4·X³` в `k(x)` (для `θ′ = −4x³θ`). -/
lemma algebraMap_neg_four_cube_X (k : Type*) [Field k] :
    algebraMap k[X] (RatFunc k) (-((4 : k[X]) * X ^ 3)) = -4 * RatFunc.X ^ 3 := by
  rw [map_neg, map_mul, map_ofNat, map_pow, RatFunc.algebraMap_X]
  norm_num

/-- Специализация под сертификаты `e^{−x⁴}`: `f′ − 4x³·f = P`, `P = Q′ − 4x³·Q + R`,
`R ≠ 0`, `deg R < 3`. -/
lemma ratFunc_no_solution_neg_four_cube_X [CharZero k] (P Q R : k[X]) (hR : R ≠ 0)
    (hdeg : R.natDegree < 3) (hPQ : P = derivative Q + (-((4 : k[X]) * X ^ 3)) * Q + R) :
    ¬ ∃ f : RatFunc k, f′ + (-4 * RatFunc.X ^ 3) * f = algebraMap k[X] (RatFunc k) P := by
  have hb : (0 : ℕ) < (-((4 : k[X]) * X ^ 3)).natDegree := by
    rw [natDegree_neg,
      show (4 : k[X]) * X ^ 3 = C 4 * X ^ 3 by rw [C_ofNat], natDegree_C_mul (by norm_num),
      natDegree_X_pow]
    norm_num
  have hdeg' : R.natDegree < (-((4 : k[X]) * X ^ 3)).natDegree := by
    rw [natDegree_neg,
      show (4 : k[X]) * X ^ 3 = C 4 * X ^ 3 by rw [C_ofNat], natDegree_C_mul (by norm_num),
      natDegree_X_pow]
    omega
  rintro ⟨f, hf⟩
  have hf' : f′ + algebraMap k[X] (RatFunc k) (-((4 : k[X]) * X ^ 3)) * f
      = algebraMap k[X] (RatFunc k) P := by
    rw [algebraMap_neg_four_cube_X]
    exact hf
  exact ratFunc_no_solution_poly_small (-((4 : k[X]) * X ^ 3)) hb P Q R hR hdeg' hPQ ⟨f, hf'⟩
theorem ratFunc_no_solution_poly [CharZero k] (b : k[X]) (hb : 0 < b.natDegree)
    (P Q : k[X]) (c : k) (hc : c ≠ 0) (hPQ : P = derivative Q + b * Q + C c) :
    ¬ ∃ f : RatFunc k, f′ + algebraMap k[X] (RatFunc k) b * f = algebraMap k[X] (RatFunc k) P := by
  rintro ⟨f, hf⟩
  -- сдвиг на Q: z = f − Q даёт z′ + b·z = C c
  set z : RatFunc k := f - algebraMap k[X] (RatFunc k) Q with hz
  have hP' : algebraMap k[X] (RatFunc k) P
      = algebraMap k[X] (RatFunc k) (derivative Q) + algebraMap k[X] (RatFunc k) (b * Q)
        + algebraMap k[X] (RatFunc k) (C c) := by
    rw [hPQ, map_add, map_add]
  have hz_eq : z′ + algebraMap k[X] (RatFunc k) b * z = algebraMap k[X] (RatFunc k) (C c) := by
    have hQ' : (algebraMap k[X] (RatFunc k) Q)′ = algebraMap k[X] (RatFunc k) (derivative Q) :=
      ratFunc_deriv_algebraMap Q
    have hz' : z′ = f′ - algebraMap k[X] (RatFunc k) (derivative Q) := by
      rw [hz, map_sub, hQ']
    have hmul : algebraMap k[X] (RatFunc k) b * (f - algebraMap k[X] (RatFunc k) Q)
        = algebraMap k[X] (RatFunc k) b * f - algebraMap k[X] (RatFunc k) (b * Q) := by
      rw [mul_sub, ← map_mul]
    rw [hz', hz, hmul]
    linear_combination hf + hP'
  exact ratFunc_no_solution_const b hb c hc z hz_eq

/-- Мост для сертификатов: `algebraMap (2·X) = 2·X` в `k(x)` (без угадывания defeq). -/
lemma algebraMap_two_mul_X (k : Type*) [Field k] :
    algebraMap k[X] (RatFunc k) ((2 : k[X]) * X) = 2 * RatFunc.X := by
  rw [map_mul, RatFunc.algebraMap_X]
  congr 1
  simp only [map_ofNat]

/-- То же для `−(2·X)`. -/
lemma algebraMap_neg_two_mul_X (k : Type*) [Field k] :
    algebraMap k[X] (RatFunc k) (-((2 : k[X]) * X)) = -2 * RatFunc.X := by
  rw [map_neg, algebraMap_two_mul_X, neg_mul]

/-- Специализация под сертификаты: `f′ + 2x·f = P`, `P = Q′ + 2x·Q + c`, `c ≠ 0`. -/
lemma ratFunc_no_solution_two_X [CharZero k] (P Q : k[X]) (c : k) (hc : c ≠ 0)
    (hPQ : P = derivative Q + (2 : k[X]) * X * Q + C c) :
    ¬ ∃ f : RatFunc k, f′ + (2 * RatFunc.X) * f = algebraMap k[X] (RatFunc k) P := by
  rintro ⟨f, hf⟩
  have hb : (0 : ℕ) < ((2 : k[X]) * X).natDegree := by
    rw [show (2 : k[X]) * X = C 2 * X by rw [C_ofNat], natDegree_C_mul (by norm_num),
      natDegree_X]
    norm_num
  exact ratFunc_no_solution_poly ((2 : k[X]) * X) hb P Q c hc hPQ
    ⟨f, by simpa only [← algebraMap_two_mul_X] using hf⟩

/-- Специализация под сертификаты: `f′ − 2x·f = P`, `P = Q′ − 2x·Q + c`, `c ≠ 0`. -/
lemma ratFunc_no_solution_neg_two_X [CharZero k] (P Q : k[X]) (c : k) (hc : c ≠ 0)
    (hPQ : P = derivative Q + (-((2 : k[X]) * X)) * Q + C c) :
    ¬ ∃ f : RatFunc k, f′ + (-2 * RatFunc.X) * f = algebraMap k[X] (RatFunc k) P := by
  rintro ⟨f, hf⟩
  have hb : (0 : ℕ) < (-((2 : k[X]) * X)).natDegree := by
    rw [natDegree_neg,
      show (2 : k[X]) * X = C 2 * X by rw [C_ofNat], natDegree_C_mul (by norm_num),
      natDegree_X]
    norm_num
  exact ratFunc_no_solution_poly (-((2 : k[X]) * X)) hb P Q c hc hPQ
    ⟨f, by simpa only [← algebraMap_neg_two_mul_X] using hf⟩

end RatFuncX

/-- Нет рационального `f` с `f′ + c·f = A/(x−a)` при `A ≠ 0`: у правой части простой полюс
в `x = a`, а у левой части порядок полюса на единицу больше порядка полюса `f`. -/
theorem ratFunc_no_simple_pole (k : Type*) [Field k] [CharZero k] (c : k[X]) (A : k)
    (hA : A ≠ 0) (a : k) (y : RatFunc k) :
    y′ + algebraMap k[X] (RatFunc k) c * y ≠
      algebraMap k[X] (RatFunc k) (C A) * (algebraMap k[X] (RatFunc k) (X - C a))⁻¹ := by
  intro hy
  set N := y.num with hN
  set M := y.denom with hM
  have hM0 : M ≠ 0 := RatFunc.denom_ne_zero y
  have hcop : IsCoprime N M := RatFunc.isCoprime_num_denom y
  have hyeq : y = algebraMap k[X] (RatFunc k) N / algebraMap k[X] (RatFunc k) M :=
    (RatFunc.num_div_denom y).symm
  have hφM : algebraMap k[X] (RatFunc k) M ≠ 0 := RatFunc.algebraMap_ne_zero hM0
  -- знаменатель `X − a` как многочлен и его образ в `RatFunc`
  have hPa : (X - C a : k[X]) ≠ 0 := (monic_X_sub_C a).ne_zero
  have hφPa : algebraMap k[X] (RatFunc k) (X - C a) ≠ 0 := RatFunc.algebraMap_ne_zero hPa
  -- уравнение, умноженное на (X − a): справа постоянная C A
  have h1 : (y′ + algebraMap k[X] (RatFunc k) c * y) * algebraMap k[X] (RatFunc k) (X - C a) =
      algebraMap k[X] (RatFunc k) (C A) := by
    rw [hy, mul_assoc, inv_mul_cancel₀ hφPa, mul_one]
  rw [hyeq, ratFunc_deriv_div _ _ hM0] at h1
  -- знаменатели сокращаем вручную; LHS должна буквально совпадать с LHS h1
  have hstep :
      ((algebraMap k[X] (RatFunc k) (derivative N) * algebraMap k[X] (RatFunc k) M -
              algebraMap k[X] (RatFunc k) N * algebraMap k[X] (RatFunc k) (derivative M)) /
            algebraMap k[X] (RatFunc k) M ^ 2 +
          algebraMap k[X] (RatFunc k) c *
            (algebraMap k[X] (RatFunc k) N / algebraMap k[X] (RatFunc k) M)) *
          algebraMap k[X] (RatFunc k) (X - C a) * algebraMap k[X] (RatFunc k) M ^ 2 =
        (algebraMap k[X] (RatFunc k) (derivative N) * algebraMap k[X] (RatFunc k) M -
              algebraMap k[X] (RatFunc k) N * algebraMap k[X] (RatFunc k) (derivative M) +
            algebraMap k[X] (RatFunc k) c * algebraMap k[X] (RatFunc k) N *
              algebraMap k[X] (RatFunc k) M) *
          algebraMap k[X] (RatFunc k) (X - C a) := by
    field_simp
  have h2 :
      (algebraMap k[X] (RatFunc k) (derivative N) * algebraMap k[X] (RatFunc k) M -
              algebraMap k[X] (RatFunc k) N * algebraMap k[X] (RatFunc k) (derivative M) +
            algebraMap k[X] (RatFunc k) c * algebraMap k[X] (RatFunc k) N *
              algebraMap k[X] (RatFunc k) M) *
          algebraMap k[X] (RatFunc k) (X - C a) =
        algebraMap k[X] (RatFunc k) (C A) * algebraMap k[X] (RatFunc k) M ^ 2 := by
    have h3 := congrArg (fun z => z * algebraMap k[X] (RatFunc k) M ^ 2) h1
    rw [hstep] at h3
    exact h3
  -- то же тождество в многочленах
  have hmain :
      (derivative N * M - N * derivative M + c * N * M) * (X - C a) = C A * M ^ 2 := by
    refine RatFunc.algebraMap_injective k ?_
    simpa [map_add, map_mul, map_pow, map_ofNat] using h2
  -- `C A` — единица (A ≠ 0), поэтому (X−a) | M²; далее (X−a) неприводим
  have hunit : (C A : k[X]) * C A⁻¹ = 1 := by
    rw [← map_mul, mul_inv_cancel₀ hA, map_one]
  have hprime : Prime (X - C a : k[X]) := prime_X_sub_C a
  have hdvd2 : (X - C a) ∣ M ^ 2 := by
    refine ⟨C A⁻¹ * (derivative N * M - N * derivative M + c * N * M), ?_⟩
    calc M ^ 2 = 1 * M ^ 2 := (one_mul _).symm
      _ = (C A * C A⁻¹) * M ^ 2 := by rw [hunit]
      _ = C A⁻¹ * (C A * M ^ 2) := by ring
      _ = C A⁻¹ * ((derivative N * M - N * derivative M + c * N * M) * (X - C a)) := by
            rw [hmain]
      _ = (X - C a) * (C A⁻¹ * (derivative N * M - N * derivative M + c * N * M)) := by
            ring
  have hdvd : (X - C a) ∣ M := hprime.dvd_of_dvd_pow hdvd2
  -- (X−a) не делит N: иначе N и M не были бы взаимно просты
  have hNdvd : ¬ (X - C a) ∣ N := by
    intro hNdd
    obtain ⟨N', hN'⟩ := hNdd
    obtain ⟨M', hM'⟩ := hdvd
    obtain ⟨a', b', hab⟩ := hcop
    rw [hN', hM'] at hab
    have hone1 : (X - C a) ∣ (1 : k[X]) := by
      refine ⟨a' * N' + b' * M', ?_⟩
      calc (1 : k[X]) = a' * ((X - C a) * N') + b' * ((X - C a) * M') := hab.symm
        _ = (X - C a) * (a' * N' + b' * M') := by ring
    exact hprime.not_isUnit (isUnit_of_dvd_one hone1)
  -- кратность (X−a) у M
  obtain ⟨g, hMfac, hgndvd⟩ := M.exists_eq_pow_rootMultiplicity_mul_and_not_dvd hM0 a
  -- кратность вводим переменной: с термом-показателем ring_nf взрывается по тактам
  generalize hn_def : M.rootMultiplicity a = n at hMfac
  -- n ≥ 1: иначе M = g и (X−a) | g вопреки максимальности кратности
  have hkk1 : 1 ≤ n := by
    refine Nat.one_le_iff_ne_zero.mpr ?_
    intro h0
    apply hgndvd
    have hdiv := hdvd
    rw [hMfac, h0, pow_zero, one_mul] at hdiv
    exact hdiv
  -- подставляем M = (X−a)^n·g в hmain и сокращаем на (X−a)^n
  have hB :
      (derivative N * (X - C a) * g -
            N * ((n : k[X]) * g + (X - C a) * derivative g) +
          c * N * (X - C a) * g) =
        C A * (X - C a) ^ n * g ^ 2 := by
    have hpow : (X - C a : k[X]) ^ n = (X - C a) ^ (n - 1) * (X - C a) := by
      simpa [Nat.sub_add_cancel hkk1] using (pow_succ (X - C a : k[X]) (n - 1))
    have hkey := hmain
    rw [hMfac] at hkey
    rw [derivative_mul, derivative_pow] at hkey
    simp only [derivative_sub, derivative_X, derivative_C, sub_zero, mul_one] at hkey
    apply mul_left_cancel₀ (pow_ne_zero n hPa)
    rw [hpow] at hkey ⊢
    simp only [C_eq_natCast] at hkey ⊢
    ring_nf at hkey ⊢
    exact hkey
  -- правая часть hB делится на (X−a), чтобы её вычисление в a дало 0
  have hpowfac : (X - C a : k[X]) ^ n = (X - C a) * (X - C a) ^ (n - 1) := by
    rw [← pow_succ', Nat.sub_add_cancel hkk1]
  -- вычисление при x = a
  have hval := congrArg (fun p : k[X] => p.eval a) hB
  rw [hpowfac] at hval
  simp only [eval_add, eval_sub, eval_mul, eval_pow, eval_X, eval_natCast, eval_C, sub_self, zero_mul, mul_zero, add_zero] at hval
  have hgval : g.eval a ≠ 0 := by
    intro h0
    exact hgndvd (Polynomial.dvd_iff_isRoot.mpr (by simpa [IsRoot] using h0))
  have hNval : N.eval a ≠ 0 := by
    intro h0
    exact hNdvd (Polynomial.dvd_iff_isRoot.mpr (by simpa [IsRoot] using h0))
  have hn0 : n ≠ 0 := by omega
  have hkne : (n : k) ≠ 0 := Nat.cast_ne_zero.mpr hn0
  -- hval: n·N(a)·g(a) = 0 (с точностью до знака); противоречие
  have hz : N.eval a * ((n : k) * g.eval a) = 0 := by
    simpa using hval
  exact mul_ne_zero hNval (mul_ne_zero hkne hgval) hz

end Spivak.NeGen
