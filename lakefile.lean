import Lake
open Lake DSL

package «NoetherLefschetz»

@[default_target]
lean_lib «NoetherLefschetz» where
  roots := #[`NoetherLefschetz.Basic, `NoetherLefschetz.Spec]
