# Vacuous extra-class problem on the NL locus

Author: Benjamin Stanley Frohman (@BenFrohman).

Statement, not a proof of Noether–Lefschetz, and not Clay.

If X ⊂ ℙ⁵ is a very general hypersurface of degree d ≥ 6, then

    Hdg²(X) = ℚ h².

Lean: axiom `noether_lefschetz` uses both `6 ≤ X.degree` and `X.isVeryGeneral`.
Then `no_extra_on_nl_locus` is extra class + those hypotheses ⇒ False.

`IsExtraClass` is not defined as `false`. That would ignore the hypotheses.
This is not `HodgeConjecture.general_fourfold`.
