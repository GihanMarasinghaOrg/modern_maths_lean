/-
# Chapter 2: Expressions
## 2.6 Tactics
-/
import data.int.basic tactic.norm_num

import expressions.predicates



#check f

example : f(2) = (2 > 5) := rfl



/- IMPORTANT:

Below is our first example of a tactic block. Read the instructions in the book for
working with tactic blocks before continuing.

-/

example : f(6) :=
begin
  show 6 > 5,
  norm_num,
end

/- PROBLEM

Read the appendix items on the `show` and `norm_num` tactics. 
After reading those items, write an explanation below, in English, of how the tactic proof
above works.

-/


def g (y : ℕ) := y + 5 = 12

example : g(7) :=
begin
  show 7 + 5 = 12,
  norm_num,
end