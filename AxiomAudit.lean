-- Axiom audit: prints the axioms of every theorem/lemma in the project.
-- CI fails unless each depends only on propext, Classical.choice, Quot.sound (or none).
import NoetherLefschetz.Basic
import NoetherLefschetz.Spec

#print axioms NoetherLefschetz.no_extra_on_nl_locus
#print axioms NoetherLefschetz.noether_lefschetz_of_vanishing
#print axioms NoetherLefschetz.Spec.d_ge_6_subcase
#print axioms NoetherLefschetz.Spec.extra_rational_classes_vanish_unfolds
