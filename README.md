# Noether–Lefschetz

**Author:** Benjamin Stanley Frohman ([@BenFrohman](https://github.com/BenFrohman))
**Copyright:** (c) 2026 Benjamin Stanley Frohman.
**License:** Apache-2.0. See `LICENSE` and `COPYRIGHT`.

This repository is **not** a proof of the Hodge conjecture.
It records the Noether–Lefschetz theorem as a separate statement.

## What this theorem solves

On a *very general* hypersurface of high enough degree, there are **no extra
Hodge classes**. The only Hodge classes are powers of the hyperplane class,
which are already algebraic. Hodge is then true on that host for a trivial
reason: there is nothing extra to construct.

### Surfaces (classical)

Let \(S \subset \mathbb{P}^3\) be a very general surface of degree \(d \ge 4\).
Then

\[
\operatorname{Pic}(S) \cong \mathbb{Z}\cdot \mathcal{O}_S(1),
\qquad
\operatorname{Hdg}^1(S) = \mathbb{Q}\, h.
\]

Lefschetz (1921); modern proofs via Hodge theory / infinitesimal variation
(Griffiths, Carlson, Green, Voisin, …).

### Fourfolds (the case that was being confused with Clay)

Let \(X \subset \mathbb{P}^5\) be a very general hypersurface of degree
\(d \ge 6\). Then

\[
\operatorname{Hdg}^2(X) = \mathbb{Q}\, h^2.
\]

The only Hodge class of type \((2,2)\) is a multiple of the hyperplane square.
The section of the cycle class map is \(\gamma = a h^2\), and \(h^2\) is the
class of \(X \cap \mathbb{P}^3\).

## What this does not solve

- A **special** host (Fermat quartic, a sextic that contains a plane) can have
  extra Hodge classes. NL does not apply to those points of the moduli space.
- A **general fourfold** that is not a very general high-degree hypersurface
  can have extra \((2,2)\) classes. Writing those classes as algebraic cycles
  is the Hodge conjecture. That object lives in
  [BenFrohman/HODGE](https://github.com/BenFrohman/HODGE),
  as `HodgeConjecture.general_fourfold`.
- NL is not a constructor \(\gamma \mapsto (Z_i, a_i)\) for extra classes.
  It says those extra classes are absent on a very general high-degree host.

## Sister repositories

- [HODGE](https://github.com/BenFrohman/HODGE)
- [FermatPlanes](https://github.com/BenFrohman/FermatPlanes)
- [CubicFourfold](https://github.com/BenFrohman/CubicFourfold)
- [StandardConjectures](https://github.com/BenFrohman/StandardConjectures)
- [TateConjecture](https://github.com/BenFrohman/TateConjecture)
- [DerivedCategories](https://github.com/BenFrohman/DerivedCategories)
- [HODGE-DISPROOF](https://github.com/BenFrohman/HODGE-DISPROOF)

Do not import this statement into `Hodge.lean` as a discharge of Clay.
