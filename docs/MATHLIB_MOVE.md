# What would have to move

**Author:** Benjamin Stanley Frohman  
**Copyright:** © 2026 Benjamin Stanley Frohman  
**License:** Apache-2.0

A reusable construction, in Mathlib’s sense, is something other people can
`import Mathlib.…` and use without cloning this repo.

That means:

1. Fork `leanprover-community/mathlib4`.
2. Put the code under the right `Mathlib/…` path (schemes, linear algebra,
   topology — wherever the objects already live).
3. Open a PR that follows Mathlib’s contributing guide: small, documented,
   no `sorry`, no dummy `Prop`, names that match existing style.
4. Survive review. Merge. Then there is contributing authorship on Mathlib.

Lean core (`leanprover/lean4`) is the wrong target unless the change is the
compiler or kernel.

## What from this project has not moved

These are local names. They are not Mathlib objects.

- `VanishingOfExtraClasses` / `HodgeLocusPosAlgebraic` — sentences about a
  homemade `Hypersurface` record.
- `ExtraClass` as `degree = 0 ∧ degree ≠ 0` — **removed**. That tautology
  would have been closed on sight at Mathlib.
- `zeroCycle`, `Datum`, `ClayHodgeConjectureDisproof` — a private API in
  `BenFrohman/HODGE`, not schemes over ℂ.
- Hodge numbers 1752 / 1751 written in Markdown — documentation, not a
  theorem about `Cohomology`.

Mathlib already has pieces of algebraic geometry. It does not have Beauville
monodromy or a cycle-class map `CH²(X)_ℚ → H⁴(X,ℚ)` for a sextic fourfold.
That is library work, not a rename of a `def`.

## What could move, if rebuilt

Reusable lemmas that do not mention Clay:

- finite Groebner / Jacobian-algebra dimension counts against Mathlib’s
  polynomial API;
- linear-algebra facts actually proved (`ring`, no dummy);
- documentation of known Hodge numbers as citations, not as new theorems.

Those would be ordinary Mathlib PRs: `feat(AlgebraicGeometry): …` or
`feat(RingTheory): …`. They would not be a Hodge close.

This note lives on GitHub so the inventory is not a local disk name.
