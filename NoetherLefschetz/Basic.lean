/-
Copyright (c) 2026 Benjamin Stanley Frohman. Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/

/-!
# Noether–Lefschetz as a named sentence

Not the Hodge conjecture. Literature, not a proof in this file.
Very general high-degree fourfold in ℙ⁵: no extra Hodge class.
-/

namespace NoetherLefschetz

structure Hypersurface where
  degree : ℕ
  isVeryGeneral : Prop

/-- Extra means not a rational multiple of h². Not constantly `False`. -/
axiom ExtraClass (X : Hypersurface) : Prop

/-- Named literature statement. d ≥ 6 in ℙ⁵, very general ⇒ no extra class. -/
axiom noether_lefschetz (X : Hypersurface)
    (hd : 6 ≤ X.degree) (hvg : X.isVeryGeneral) :
    ¬ ExtraClass X

/-- Vacuous extra-class problem on that locus: extra + NL hypotheses ⇒ False.
Uses `isVeryGeneral` and `degree`. -/
theorem no_extra_on_nl_locus (X : Hypersurface)
    (hd : 6 ≤ X.degree) (hvg : X.isVeryGeneral)
    (hExtra : ExtraClass X) : False :=
  noether_lefschetz X hd hvg hExtra

end NoetherLefschetz
