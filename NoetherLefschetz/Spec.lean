/-
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Benjamin Stanley Frohman
-/

/-
Statement encoding. No Mathlib imports.
The former axioms `SmoothHypersurfaceModuli`, `IsVeryGeneral` are fields of
`SpecSetting`; the former axiom `extra_rational_classes_vanish_holds` is a hypothesis.
Does not prove Beauville, Deligne, or Noether-Lefschetz.
Note: `hdg2_eq_Qh2` is a placeholder defined as `True`.
-/

namespace NoetherLefschetz
namespace Spec

/-- Abstract moduli of smooth degree-`d` hypersurfaces in P^5 and a
"very general" predicate. Supplied by the user. -/
structure SpecSetting where
  SmoothHypersurfaceModuli : Nat → Type
  IsVeryGeneral : {d : Nat} → (SmoothHypersurfaceModuli d → Prop) → Prop

variable (S : SpecSetting)

/-- H^4(X,Q) ∩ H^{2,2}(X) = Q h^2. Placeholder: defined as `True`. -/
def hdg2_eq_Qh2 (d : Nat) (_X : S.SmoothHypersurfaceModuli d) : Prop :=
  True

/-- The sentence. Proof is not supplied. -/
def extra_rational_classes_vanish (d : Nat) : Prop :=
  3 ≤ d → S.IsVeryGeneral fun X => hdg2_eq_Qh2 S d X

theorem extra_rational_classes_vanish_unfolds (d : Nat) :
    extra_rational_classes_vanish S d =
      (3 ≤ d → S.IsVeryGeneral fun X => hdg2_eq_Qh2 S d X) :=
  rfl

/-- d ≥ 6 is a subcase of the d ≥ 3 sentence (conditional on that sentence). -/
theorem d_ge_6_subcase
    (extra_rational_classes_vanish_holds : ∀ d, 3 ≤ d → S.IsVeryGeneral fun X => hdg2_eq_Qh2 S d X)
    (d : Nat) (hd : 6 ≤ d) :
    S.IsVeryGeneral fun X => hdg2_eq_Qh2 S d X :=
  extra_rational_classes_vanish_holds d (Nat.le_trans (by decide) hd)

end Spec
end NoetherLefschetz
