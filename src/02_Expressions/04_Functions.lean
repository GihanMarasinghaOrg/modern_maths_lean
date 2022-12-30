/-
# Chapter 2: Expressions
## 2.4 Functions in Lean
-/
import tactic.pp_app


def f (x : ℕ) : ℤ := - x^2

#eval f(10)


#eval f 10


#check f


#check f 5



/-
Use the space below to see what happens if you type

variable y : ℤ
#check f y
-/





