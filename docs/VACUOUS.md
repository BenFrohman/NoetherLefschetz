# Vacuous extra-class problem on the NL locus

Author: Benjamin Stanley Frohman. Copyright 2026. Apache-2.0.

Statement, not a proof of Noether–Lefschetz, and not Clay.

Literature: if \(X \subset \mathbb{P}^5\) is a very general smooth hypersurface of degree \(d \ge 3\), then

```text
Hdg²(X) = Q h².
```

Degree 2 is the exception: every smooth quadric fourfold contains planes.

Lean: the axiom `noether_lefschetz` uses both `6 ≤ X.degree` and `X.isVeryGeneral`. The 6 is a sufficient hypothesis, not a claim that 3, 4, or 5 fail. Then `no_extra_on_nl_locus` is extra class plus those hypotheses ⇒ False.

`ExtraClass` is not defined as `False`. That would ignore the hypotheses. This is not `HodgeConjecture.general_fourfold`. \(V(F)\) fails `isVeryGeneral`, so the axiom does not apply to it.
