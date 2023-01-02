/-
# Chapter 2: Expressions
## 2.5 Predicates
-/
import data.int.basic tactic.norm_num data.nat.prime

def P(x : ℕ) := x > 5 

#check P

example : P(2) = (2 > 5) := rfl

/- PROBLEM:

  Below, define a predicate `Q` on the type `ℤ` so that `Q(y)` means `y + 5 = 12`.
  Prove that `Q(-3)` equals `-3 + 5 = 12`.

-/


def T (x y : ℤ) := x + y < 7

example : T (-3) (5) = (-3 + 5 < 7) := rfl

/- PROBLEM:

Prove that `T (500) (-100)` equals `500 + (-100) < 7`.

-/

