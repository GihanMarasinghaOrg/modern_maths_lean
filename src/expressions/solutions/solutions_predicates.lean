/-
# Chapter 2: Expressions
## 2.5 Predicates
-/
import data.int.basic tactic.norm_num data.nat.prime

/- PROBLEM:

  Below, define a predicate `Q` on the type `ℤ` so that `Q(y)` means `y + 5 = 12`.
  Prove that `Q(-3)` equals `-3 + 5 = 12`.

-/

-- SOLUTION:

def Q (y : ℤ) := y + 5 = 12

example : Q(-3) = (-3 + 5 = 12) := rfl

def T (x y : ℤ) := x + y < 7

/- PROBLEM:

Prove that `T (500) (-100)` equals `500 + (-100) < 7`.

-/

-- SOLUTION:

example : T (500) (-100) = (500 + (-100) < 7) := rfl

