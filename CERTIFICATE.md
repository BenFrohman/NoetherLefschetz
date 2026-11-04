# Verification certificate — NoetherLefschetz v1.1.0

Paper: [Noether–Lefschetz Vanishing for Hypersurfaces in P5 as an Explicit Hypothesis: a Machine-Checked Lean 4 Interface](paper/Frohman_Noether_Lefschetz_Conditional_2026.pdf)  
Author: Benjamin Stanley Frohman <frohmanbenjamin@gmail.com>

- `lake build`: succeeds (enforced by `.github/workflows/certify.yml` and `lean.yml`).
- `sorry` / `admit`: none (`scripts/check_no_sorry.py`).
- `native_decide`: none.
- User `axiom` declarations: none.
- Axioms used: only Lean's standard `propext`, `Classical.choice`, `Quot.sound` (or none) — output of `#print axioms` over all 4 audited declarations (`AxiomAudit*.lean`) below.

```
'NoetherLefschetz.no_extra_on_nl_locus' does not depend on any axioms
'NoetherLefschetz.noether_lefschetz_of_vanishing' does not depend on any axioms
'NoetherLefschetz.Spec.d_ge_6_subcase' does not depend on any axioms
'NoetherLefschetz.Spec.extra_rational_classes_vanish_unfolds' does not depend on any axioms
```
