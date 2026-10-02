/-
Copyright (c) 2026 Benjamin Stanley Frohman. Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/

/-
Statement encoding. No Mathlib imports.
Compiles as propositions and one arithmetic subcase.
Does not prove Beauville, Deligne, or Noether-Lefschetz.
-/

namespace NoetherLefschetz
namespace Spec

/-- Point of P(H^0(P^5, O(d))) minus the discriminant. Abstract. -/
axiom SmoothHypersurfaceModuli : Nat → Type

/-- Complement of a countable union of proper closed subsets. Not `forall X`. -/
axiom IsVeryGeneral {d : Nat}
    (P : SmoothHypersurfaceModuli d → Prop) : Prop

/-- H^4(X,Q) ∩ H^{2,2}(X) = Q h^2. -/
def hdg2_eq_Qh2 (d : Nat) (_X : SmoothHypersurfaceModuli d) : Prop :=
  True

/-- The sentence. Proof is not supplied. -/
def extra_rational_classes_vanish (d : Nat) : Prop :=
  3 ≤ d → IsVeryGeneral fun X => hdg2_eq_Qh2 d X

theorem extra_rational_classes_vanish_unfolds (d : Nat) :
    extra_rational_classes_vanish d =
      (3 ≤ d → IsVeryGeneral fun X => hdg2_eq_Qh2 d X) :=
  rfl

/-- Literature hypothesis. Not a certified proof. -/
axiom extra_rational_classes_vanish_holds (d : Nat) (hd : 3 ≤ d) :
    IsVeryGeneral fun X => hdg2_eq_Qh2 d X

/-- d ≥ 6 is the level line, hence a subcase of the d ≥ 3 hypothesis. -/
theorem d_ge_6_subcase (d : Nat) (hd : 6 ≤ d) :
    IsVeryGeneral fun X => hdg2_eq_Qh2 d X :=
  extra_rational_classes_vanish_holds d (Nat.le_trans (by decide) hd)

end Spec
end NoetherLefschetz
