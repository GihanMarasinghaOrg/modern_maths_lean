/-
# Chapter 2: Expressions
## 2.5 Predicates
-/
import data.int.basic tactic.linarith


def f(x) := x > 5 

#check f

example : f(2) = (2 > 5) := rfl



example : f(6) :=
begin
  show 6 > 5,
  linarith
end

