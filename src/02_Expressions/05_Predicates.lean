/-
# Chapter 2: Expressions
## 2.5 Predicates and tactics
-/
import data.int.basic tactic.linarith


def f(x) := x > 5 

#check f

example : f(2) = (2 > 5) := rfl



/- IMPORTANT:

Below is our first example of a tactic block. Read the instructions in the book for
working with tactic blocks before continuing.

-/

example : f(6) :=
begin
  show 6 > 5,
  linarith,
end

