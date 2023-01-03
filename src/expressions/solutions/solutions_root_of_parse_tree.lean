/-
# Chapter 2: Expressions
## 2.3 The root of a parse tree in Lean
-/
import tactic.pp_app

#pp_app (2 * 3)


/- PROBLEM:

For each expression given in the book, determine which operator it is an
application of, first without Lean, then using the `#pp_app` tactic.

-/
-- SOLUTION:

#pp_app (3 + 5 * 5)

#pp_app (7 ^ (3 + 2))

#pp_app (3 + 2 = 10)

#pp_app (10 < 30)

#pp_app (5 ≠ 6 / 2)

#pp_app (5 ^ 3 ≥ 2 + 3)