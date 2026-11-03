/-
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Benjamin Stanley Frohman
-/

/-!
# Noether–Lefschetz as named propositions

Not the Hodge conjecture. Literature, not a proof in this file.

Geometric range: a very general smooth hypersurface of degree `d ≥ 3` in `ℙ⁵`
has no extra rational Hodge class. Degree `2` fails (quadric fourfolds contain planes).
The axiom below keeps the stricter sufficient hypothesis `6 ≤ degree`.
That `6` is not claimed to be sharp.
Not the Hodge conjecture. No `axiom`. No `sorry`. No dummy `P ∧ ¬P`.
`VanishingOfExtraClasses` is a sentence. A term of that sentence would be
Beauville (monodromy dense in the orthogonal group of vanishing cohomology)
plus Deligne (a rational Hodge class on a very general fibre is
monodromy-invariant). Those arguments are not in this file.
-/

namespace NoetherLefschetz

/-- A named hypersurface in ℙ⁵, as a record.
`hasExtraClass` is the geometric predicate “Hdg² larger than ℚ h²”.
It is a field, not `degree = 0 ∧ degree ≠ 0`. -/
structure Hypersurface where
  degree : ℕ
  isVeryGeneral : Prop

/-- Extra means not a rational multiple of h². Not constantly `False`. -/
axiom ExtraClass (X : Hypersurface) : Prop

/-- Sufficient literature bound. Not the sharp threshold `d ≥ 3`. -/
axiom noether_lefschetz (X : Hypersurface)
    (hd : 6 ≤ X.degree) (hvg : X.isVeryGeneral) :
    ¬ ExtraClass X

/-- Vacuous extra-class problem on that locus: extra + these hypotheses ⇒ False. -/
  hasExtraClass : Prop

/-- Extra means not a rational multiple of h². -/
def ExtraClass (X : Hypersurface) : Prop :=
  X.hasExtraClass

/-- Vanishing sentence (monodromy + Deligne).
Very general smooth hypersurface in ℙ⁵ of degree ≥ 3.
Fails for quadrics: every smooth quadric fourfold contains planes. -/
def VanishingOfExtraClasses (X : Hypersurface) : Prop :=
  3 ≤ X.degree → X.isVeryGeneral → ¬ ExtraClass X

/-- BKU sentence, as a name only.
The right-hand side is the inequality `6 ≤ d`, not the Invent. Math. proof. -/
def HodgeLocusPosAlgebraic (d : ℕ) : Prop :=
  6 ≤ d

/-- Former axiom name, now a proposition.
A term would be Beauville + Deligne. -/
def noether_lefschetz (X : Hypersurface) : Prop :=
  VanishingOfExtraClasses X

/-- Implication from the named vanishing sentence.
Does not inhabit that sentence. -/
theorem no_extra_on_nl_locus (X : Hypersurface)
    (hV : VanishingOfExtraClasses X)
    (hd : 3 ≤ X.degree) (hvg : X.isVeryGeneral)
    (hExtra : ExtraClass X) : False :=
  hV hd hvg hExtra

end NoetherLefschetz
