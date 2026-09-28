# Noether–Lefschetz

Author of this record: Benjamin Stanley Frohman ([@BenFrohman](https://github.com/BenFrohman)).
Copyright © 2026 Benjamin Stanley Frohman. Apache-2.0.

This repository is **not** a proof of the Hodge conjecture.
It records the Noether–Lefschetz theorem as a separate statement.

## What this theorem solves

On a *very general* hypersurface of high enough degree, there are **no extra Hodge classes**. The only Hodge classes are powers of the hyperplane class, which are already algebraic. Hodge is then true on that host for a trivial reason: there is nothing extra to construct.

### Surfaces (classical)

Let \(S \subset \mathbb{P}^3\) be a very general surface of degree \(d \ge 4\). Then

\[
\operatorname{Pic}(S) \cong \mathbb{Z}\cdot \mathcal{O}_S(1),
\qquad
\operatorname{Hdg}^1(S) = \mathbb{Q}\, h.
\]

Lefschetz (1921). This is a divisor statement. It is not the fourfold case.

### Fourfolds

Let \(X \subset \mathbb{P}^5\) be a very general smooth hypersurface of degree \(d \ge 3\). Then

\[
\operatorname{Hdg}^2(X) = \mathbb{Q}\, h^2.
\]

So \(\Delta_{\mathrm{Hdg}}=\emptyset\) and \(\Delta_{\mathrm{miss}}=\emptyset\). The section is \(\gamma = a h^2\), and \(h^2\) is the class of \(X \cap \mathbb{P}^3\).

The vanishing already holds for cubics, quartics, and quintics. It fails for quadrics, because every smooth quadric fourfold contains planes. The Lean axiom keeps the stricter hypothesis `6 ≤ degree`. That hypothesis is sufficient. It is not the sharp bound. See `docs/STATEMENT.md`.

## What this does not solve

- A **special** host (Fermat quartic, the three-chain sextic \(V(F)\) containing the plane \(\Pi\)) can have extra Hodge classes. On \(V(F)\) the extra class \(\beta = h^2 - 6[\Pi] = [S] - 5[\Pi]\) is algebraic. That component is not a miss.
- A **general fourfold** that is not a very general hypersurface of degree \(d \ge 3\) in \(\mathbb{P}^5\) can have extra \((2,2)\) classes. Writing those classes as algebraic cycles is the Hodge conjecture.
- NL does not construct cycles on the special fibre. It deletes the extra classes on the complement of the locus.

## Relation to HODGE

| Repo | Sentence |
|---|---|
| This repo | Very general \(X \subset \mathbb{P}^5\), \(d \ge 3\): \(\mathrm{Hdg}^2 = \mathbb{Q} h^2\) |
| [HODGE](https://github.com/BenFrohman/HODGE) | Every Hodge class on a fourfold is algebraic (open) |

Do not import this statement into `Hodge.lean` as a discharge of Clay.
