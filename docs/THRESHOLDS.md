# Two thresholds

Author: Benjamin Stanley Frohman. Apache-2.0.

These are not the same line.

## Vanishing: d >= 3

For a very general smooth hypersurface X in P^5 of degree d >= 3,

    H^4(X, Q) intersect H^{2,2}(X) = Q h^2.

Input: Beauville, monodromy Zariski-dense in the orthogonal group for d >= 3;
Deligne, invariant cycles. A countable union of proper Hodge loci does not
cover the moduli space.

Fails at d = 2: every smooth quadric fourfold contains planes, so the extra
classes are generic, not special.

Degrees 3, 4, and 5 satisfy the same identity on a very general fibre.
Planes on a cubic, Hassett C_8, and Fermat planes are proper loci, not the
very general fibre.

## Level: d >= 6

d >= 6 is where h^{4,0} != 0, so the primitive middle Hodge structure has
level at least 3. That is the Bakker-Klingler-Ullmo hypothesis for
positive-dimensional components of the Hodge locus. It does not move the
vanishing line from 3 to 6.

The axiom in NoetherLefschetz/Basic.lean is the d >= 6 subcase, named as
literature. It is not a certified proof of Beauville or Deligne.

## Homology, not scheme type

The identity says every rational Hodge class is a multiple of h^2, hence
homologous to a complete intersection X intersect P^3. It does not say every
surface scheme on X is a complete intersection.

## This host

V(F) has degree 6 and contains a plane. contains_two_planes is the witness
that it is special. The identity does not apply. general_fourfold stays open
off the very-general locus.
