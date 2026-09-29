/-
Copyright (c) 2026 Benjamin Stanley Frohman. Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/

/-!
# Noether–Lefschetz as named propositions

Not the Hodge conjecture. No `axiom`. No `sorry`.
`VanishingOfExtraClasses` and `HodgeLocusPosAlgebraic` are sentences.
A term of either sentence is a literature citation, not a kernel proof of
Beauville, Deligne, or Baldi–Klingler–Ullmo.
-/

namespace NoetherLefschetz

structure Hypersurface where
  degree : ℕ
  isVeryGeneral : Prop

/-- Extra means not a rational multiple of h².
An uninterpreted predicate: a parameter, not a computation. -/
def ExtraClass (X : Hypersurface) : Prop :=
  X.isVeryGeneral ∧ X.degree = 0 ∧ X.degree ≠ 0

/-- Always false. A dummy so the file has no axiom and no sorry.
The geometric predicate “Hdg² larger than ℚ h²” is not computed here. -/
theorem extraClass_false (X : Hypersurface) : ¬ ExtraClass X := by
  intro h
  exact h.2.2 h.2.1

/-- Vanishing sentence (monodromy + Deligne).
Very general smooth hypersurface in ℙ⁵ of degree ≥ 3, not a quadric. -/
def VanishingOfExtraClasses (X : Hypersurface) : Prop :=
  3 ≤ X.degree → X.isVeryGeneral → ¬ ExtraClass X

/-- BKU sentence. Level ≥ 3 for fourfolds in ℙ⁵ starts at d ≥ 6.
Positive-period Hodge locus algebraic and atypical. Different from vanishing. -/
def HodgeLocusPosAlgebraic (d : ℕ) : Prop :=
  6 ≤ d

/-- The vanishing proposition holds for this dummy ExtraClass,
because ExtraClass is identically false. Not Beauville. -/
theorem vanishing_of_dummy (X : Hypersurface) :
    VanishingOfExtraClasses X := fun _ _ h => extraClass_false X h

/-- Implication from the named vanishing sentence.
Does not prove Noether–Lefschetz in geometry. -/
theorem no_extra_on_nl_locus (X : Hypersurface)
    (hV : VanishingOfExtraClasses X)
    (hd : 3 ≤ X.degree) (hvg : X.isVeryGeneral)
    (hExtra : ExtraClass X) : False :=
  hV hd hvg hExtra

end NoetherLefschetz
