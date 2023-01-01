/-
# Chapter 2: Expressions
## 2.5 Predicates
-/
import data.int.basic tactic.norm_num data.nat.prime


def f(x : ℕ) := x > 5 

#check f

example : f(2) = (2 > 5) := rfl




