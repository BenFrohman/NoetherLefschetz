# What this file compiles

**Author:** Benjamin Stanley Frohman  
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

That is the same kind of check as accepting the English sentence
“every even number greater than two is a sum of two primes.”
Writing the sentence does not prove Goldbach.

## What a proof would look like

```lean
theorem noether_lefschetz
    (X : Hypersurface)
    (hd : 3 ≤ X.degree)
    (hvg : X.isVeryGeneral) :
    ¬ ExtraClass X := …
```

or equivalently
The kernel checks that the right-hand side is a well-formed proposition:
`≤` on `Nat`, implication, negation. That is syntax and typing.
It is not Beauville, Deligne, or Noether–Lefschetz.

## What a proof would be

A proof of the geometric sentence would be a term

```lean
theorem noether_lefschetz (X : Hypersurface) :
    VanishingOfExtraClasses X := …
```

The `…` would have to be Beauville (monodromy dense in the orthogonal group
of vanishing cohomology) plus Deligne (a rational Hodge class on a very
general fibre is monodromy-invariant). Those arguments are not in this file.

## Dummy removed

`ExtraClass` is no longer `degree = 0 ∧ degree ≠ 0`.
`vanishing_of_dummy` is deleted.
`hasExtraClass` is a field of `Hypersurface`.
`no_extra_on_nl_locus` is an implication from a hypothesis `hV`, not a proof
of `hV`.

## Side by side

| Object | Status |
| --- | --- |
| `def VanishingOfExtraClasses` | well-typed sentence |
| `def HodgeLocusPosAlgebraic` | well-typed sentence (`6 ≤ d`) |
| `theorem vanishing_of_dummy` | **removed** |
| Beauville density | literature, not a Lean term |
| Deligne invariant cycles | literature, not a Lean term |
| Noether–Lefschetz for actual fourfolds | unproved in this file |

The file typechecks as a glossary. The geometry still lives in papers.

See [MATHLIB_MOVE.md](MATHLIB_MOVE.md).
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
