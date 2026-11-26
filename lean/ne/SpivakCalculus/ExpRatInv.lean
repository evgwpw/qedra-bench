import SpivakCalculus.ExpRat
import Mathlib.Algebra.Polynomial.Roots

/-!
# Уравнение Риша `y′ + 2x·y = A/(x − a)`: рациональных решений нет

Вторая половина П3 карточки LEAN.NE: для класса `r(x)·e^{x²}` (файл `ExpRat.lean`) остаётся
предъявить конкретные `r`, у которых уравнение Риша не имеет решения в `k(x)`. Здесь это весь
класс рациональных функций с **простым полюсом**, записанных как `A/(x − a)` с `A ≠ 0`
(при `a = −1`, `A = 1` — это `∫ e^{x²}/(1+x) dx`, ровно тот случай, где наш Риш говорит
`risch-nonelementary`).

Идея (порядок полюса). Пусть `y = N/M` в несократимом виде, `M ≠ 0`, `N ⊥ M`, и
`y′ + 2x·y = A/(x−a)`. Умножаем на `(X−a)·M²` и получаем тождество в `k[X]`

  `(N′M − NM′ + 2XNM)(X−a) = C A · M²`.

Так как `C A` — единица (`A ≠ 0`), отсюда `(X−a) | M²`, а `X−a` неприводим — `(X−a) | M`;
при этом `(X−a) ∤ N` (иначе `N` и `M` не взаимно просты). Пусть `k = rootMultiplicity a M`,
`M = (X−a)^k·g`, `(X−a) ∤ g`; тогда `k ≥ 1`, и после сокращения тождества на `(X−a)^k`

  `N′(X−a)g − N(k·g + (X−a)g′) + 2XN(X−a)g = C A · (X−a)^k · g²`.

Подстановка `x = a` даёт `−k·N(a)·g(a) = 0`, что невозможно: `k ≥ 1`, `N(a) ≠ 0`, `g(a) ≠ 0`.
-/

set_option maxHeartbeats 2000000

open Polynomial Differential Spivak.Liouville Spivak.ExpSq Gauss
open scoped Differential

namespace Spivak.ExpSq.Gauss

variable (k : Type*) [Field k] [CharZero k]

/-- Нет рационального `y` с `y′ + 2x·y = A/(x−a)` при `A ≠ 0`: у правой части простой полюс в
`x = a`, а у левой части порядок полюса на единицу больше порядка полюса `y`. -/
theorem ratFunc_no_simple_pole (A : k) (hA : A ≠ 0) (a : k) (y : RatFunc k) :
    y′ + (2 * RatFunc.X) * y ≠
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
  have hX : (RatFunc.X : RatFunc k) = algebraMap k[X] (RatFunc k) X := RatFunc.algebraMap_X
  -- уравнение, умноженное на (X − a): справа постоянная C A
  have h1 : (y′ + (2 * RatFunc.X) * y) * algebraMap k[X] (RatFunc k) (X - C a) =
      algebraMap k[X] (RatFunc k) (C A) := by
    rw [hy, mul_assoc, inv_mul_cancel₀ hφPa, mul_one]
  rw [hyeq, ratFunc_deriv_div _ _ hM0, hX] at h1
  -- знаменатели сокращаем вручную; LHS должна буквально совпадать с LHS h1
  have hstep :
      ((algebraMap k[X] (RatFunc k) (derivative N) * algebraMap k[X] (RatFunc k) M -
              algebraMap k[X] (RatFunc k) N * algebraMap k[X] (RatFunc k) (derivative M)) /
            algebraMap k[X] (RatFunc k) M ^ 2 +
          2 * algebraMap k[X] (RatFunc k) X *
            (algebraMap k[X] (RatFunc k) N / algebraMap k[X] (RatFunc k) M)) *
          algebraMap k[X] (RatFunc k) (X - C a) * algebraMap k[X] (RatFunc k) M ^ 2 =
        (algebraMap k[X] (RatFunc k) (derivative N) * algebraMap k[X] (RatFunc k) M -
              algebraMap k[X] (RatFunc k) N * algebraMap k[X] (RatFunc k) (derivative M) +
            2 * algebraMap k[X] (RatFunc k) X * algebraMap k[X] (RatFunc k) N *
              algebraMap k[X] (RatFunc k) M) *
          algebraMap k[X] (RatFunc k) (X - C a) := by
    field_simp
  have h2 :
      (algebraMap k[X] (RatFunc k) (derivative N) * algebraMap k[X] (RatFunc k) M -
              algebraMap k[X] (RatFunc k) N * algebraMap k[X] (RatFunc k) (derivative M) +
            2 * algebraMap k[X] (RatFunc k) X * algebraMap k[X] (RatFunc k) N *
              algebraMap k[X] (RatFunc k) M) *
          algebraMap k[X] (RatFunc k) (X - C a) =
        algebraMap k[X] (RatFunc k) (C A) * algebraMap k[X] (RatFunc k) M ^ 2 := by
    have h3 := congrArg (fun z => z * algebraMap k[X] (RatFunc k) M ^ 2) h1
    rw [hstep] at h3
    exact h3
  -- то же тождество в многочленах
  have hmain :
      (derivative N * M - N * derivative M + 2 * X * N * M) * (X - C a) = C A * M ^ 2 := by
    refine RatFunc.algebraMap_injective k ?_
    simpa [map_add, map_mul, map_pow, map_ofNat] using h2
  -- `C A` — единица (A ≠ 0), поэтому (X−a) | M²; далее (X−a) неприводим
  have hunit : (C A : k[X]) * C A⁻¹ = 1 := by
    rw [← map_mul, mul_inv_cancel₀ hA, map_one]
  have hprime : Prime (X - C a : k[X]) := prime_X_sub_C a
  have hdvd2 : (X - C a) ∣ M ^ 2 := by
    refine ⟨C A⁻¹ * (derivative N * M - N * derivative M + 2 * X * N * M), ?_⟩
    calc M ^ 2 = 1 * M ^ 2 := (one_mul _).symm
      _ = (C A * C A⁻¹) * M ^ 2 := by rw [hunit]
      _ = C A⁻¹ * (C A * M ^ 2) := by ring
      _ = C A⁻¹ *
            ((derivative N * M - N * derivative M + 2 * X * N * M) * (X - C a)) := by
            rw [hmain]
      _ = (X - C a) * (C A⁻¹ * (derivative N * M - N * derivative M + 2 * X * N * M)) := by
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
          2 * X * N * (X - C a) * g) =
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
  simp only [eval_add, eval_sub, eval_mul, eval_pow, eval_X, eval_ofNat,
    eval_natCast, eval_C, sub_self, zero_mul, mul_zero, add_zero] at hval
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

/-- Частный случай `A = 1`, `a = −1`: нет рационального `y` с `y′ + 2x·y = 1/(1+x)`. -/
theorem ratFunc_no_solution_inv_one_add (y : RatFunc k) :
    y′ + (2 * RatFunc.X) * y ≠ (RatFunc.X + 1)⁻¹ := by
  intro hy
  have hX1 : (algebraMap k[X] (RatFunc k) (X - C (-1)) : RatFunc k) = RatFunc.X + 1 := by
    have h : (X - C (-1) : k[X]) = X + 1 := by
      rw [map_neg, map_one, sub_neg_eq_add]
    rw [h, map_add, map_one, RatFunc.algebraMap_X]
  refine ratFunc_no_simple_pole k 1 one_ne_zero (-1) y ?_
  simpa [map_one, hX1] using hy

/-- **Общий вид сертификата**: у `A·e^{x²}/(x−a)` (`A ≠ 0`) нет элементарной первообразной. -/
theorem exp_rat_simple_pole_not_elementary (A : k) (hA : A ≠ 0) (a : k)
    (K : Type*) [Field K] [Differential K] [Algebra (Gauss k) K] [DifferentialAlgebra (Gauss k) K]
    [Differential.ContainConstants (Gauss k) K] (hK : IsElementary (Gauss k) K) :
    ¬ ∃ y : K, y′ = algebraMap (Gauss k) K
      (algebraMap (RatFunc k) (Gauss k)
        (algebraMap k[X] (RatFunc k) (C A) *
          (algebraMap k[X] (RatFunc k) (X - C a))⁻¹) * θ k) :=
  exp_rat_not_elementary k _ (fun ⟨y, hy⟩ => ratFunc_no_simple_pole k A hA a y hy) K hK

/-- **`e^{x²}/(1+x)` неэлементарна**: следствие `exp_rat_not_elementary` для `r = 1/(1+x)`. -/
theorem exp_rat_inv_one_add_not_elementary
    (K : Type*) [Field K] [Differential K] [Algebra (Gauss k) K] [DifferentialAlgebra (Gauss k) K]
    [Differential.ContainConstants (Gauss k) K] (hK : IsElementary (Gauss k) K) :
    ¬ ∃ y : K,
      y′ = algebraMap (Gauss k) K (algebraMap (RatFunc k) (Gauss k) ((RatFunc.X + 1)⁻¹) * θ k) :=
  exp_rat_not_elementary k ((RatFunc.X + 1)⁻¹)
    (fun ⟨y, hy⟩ => ratFunc_no_solution_inv_one_add k y hy) K hK

end Spivak.ExpSq.Gauss
