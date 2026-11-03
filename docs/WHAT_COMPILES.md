# What this file compiles

**Author:** Benjamin Stanley Frohman (@BenFrohman)  
**Copyright:** © 2026 Benjamin Stanley Frohman  
**License:** Apache-2.0

In Lean, `Prop` is the universe of statements. A definition

```lean
def VanishingOfExtraClasses (X : Hypersurface) : Prop :=
  3 ≤ X.degree → X.isVeryGeneral → ¬ ExtraClass X
```

does three things and only three:

1. Introduces a new identifier.
2. Says that identifier has type `Hypersurface → Prop`.
3. Unfolds to the implication written on the right.

The kernel checks that the right-hand side is a well-formed proposition:
`≤` on `Nat`, implication, negation. That is syntax and typing.
It is not Beauville, Deligne, or Noether–Lefschetz.

## What a proof would be

A proof of the geometric sentence would be a term

```lean
theorem noether_lefschetz (X : Hypersurface) :
    VanishingOfExtraClasses X := …
```

with `…` filled by monodromy density plus invariant cycles.
That term is not in this repository.

## Dummy on `prop-not-axiom`

`ExtraClass` is still

```lean
X.isVeryGeneral ∧ X.degree = 0 ∧ X.degree ≠ 0
```

The last two conjuncts are `P ∧ ¬P`. So `vanishing_of_dummy` is contradiction
elimination, not geometry.

`HodgeLocusPosAlgebraic d` is the predicate `6 ≤ d`. Compiling it does not
prove Baldi–Klingler–Ullmo.

See [STATEMENT.md](STATEMENT.md) and `NoetherLefschetz/Basic.lean`.

Not a Mathlib contribution. Not a Clay close.
