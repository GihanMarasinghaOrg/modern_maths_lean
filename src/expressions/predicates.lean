/-
# Chapter 2: Expressions
## 2.5 Predicates
-/
import data.int.basic tactic.norm_num data.nat.prime


def P(x : ℕ) := x > 5 

#check P

example : P(2) = (2 > 5) := rfl




