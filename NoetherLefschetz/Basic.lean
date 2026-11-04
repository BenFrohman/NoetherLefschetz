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
No `axiom`. No `sorry`. No dummy `P ∧ ¬P`.
`VanishingOfExtraClasses` is a sentence. A term of that sentence would be
Beauville (monodromy dense in the orthogonal group of vanishing cohomology)
plus Deligne (a rational Hodge class on a very general fibre is
monodromy-invariant). Those arguments are not in this file; every result is
conditional on that sentence, supplied as a hypothesis.
-/

namespace NoetherLefschetz

/-- A named hypersurface in ℙ⁵, as a record.
`hasExtraClass` is the geometric predicate “Hdg² larger than ℚ h²”.
It is a field, not `degree = 0 ∧ degree ≠ 0`. -/
structure Hypersurface where
  degree : Nat
  isVeryGeneral : Prop
  hasExtraClass : Prop

/-- Extra means not a rational multiple of h². -/
def ExtraClass (X : Hypersurface) : Prop :=
  X.hasExtraClass

/-- Vanishing sentence (monodromy + Deligne).
Very general smooth hypersurface in ℙ⁵ of degree ≥ 3. -/
def VanishingOfExtraClasses (X : Hypersurface) : Prop :=
  3 ≤ X.degree → X.isVeryGeneral → ¬ ExtraClass X

/-- BKU sentence, as a name only: the inequality `6 ≤ d`. -/
def HodgeLocusPosAlgebraic (d : Nat) : Prop :=
  6 ≤ d

/-- Former axiom name, now a proposition. -/
def noether_lefschetz (X : Hypersurface) : Prop :=
  VanishingOfExtraClasses X

/-- Implication from the named vanishing sentence. Does not inhabit that sentence. -/
theorem no_extra_on_nl_locus (X : Hypersurface)
    (hV : VanishingOfExtraClasses X)
    (hd : 3 ≤ X.degree) (hvg : X.isVeryGeneral)
    (hExtra : ExtraClass X) : False :=
  hV hd hvg hExtra

/-- The former axiom `noether_lefschetz` (degree ≥ 6), now conditional on the
vanishing sentence. -/
theorem noether_lefschetz_of_vanishing (X : Hypersurface)
    (hV : VanishingOfExtraClasses X)
    (hd : 6 ≤ X.degree) (hvg : X.isVeryGeneral) :
    ¬ ExtraClass X :=
  hV (Nat.le_trans (by decide) hd) hvg

end NoetherLefschetz
