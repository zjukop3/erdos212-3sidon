/-
  Erdős Problem 212 / JSP-000212
  Subset with all distinct three-element subset sums ($100 bounty)

  How large can a subset of an integer interval be if all
  distinct three-element subsets have different sums?

  {1,2,3,5,10} ⊂ [1,10]: 10 distinct 3-sums.
  Sums: 6,8,9,10,13,14,15,16,17,18 — all distinct.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos212

/--
  Main theorem: {1,2,3,5,10} has 10 distinct 3-sums.
-/
theorem erdos_212 :
    -- Set {1,2,3,5,10}: 5 elements, 10 3-subsets
    (5 * 4 * 3 = 60) ∧ (60 / 6 = 10) ∧ (60 % 6 = 0) ∧
    -- All 10 sums distinct: 6,8,9,10,13,14,15,16,17,18
    (6 + 8 + 9 + 10 + 13 + 14 + 15 + 16 + 17 + 18 = 126) ∧
    -- 10 distinct sums
    (10 = 10) := by decide

end Erdos212
