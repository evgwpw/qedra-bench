import Lake
open Lake DSL

-- LEAN.L2: проект проверки .lean из lean/catalog. Версии — как у spivak-lean
-- (lean-toolchain: v4.34.0-rc2, mathlib rev 85e3a25…).
package qedraLean

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "85e3a25e006c35636f0e53b0e9296caca2685bc0"
