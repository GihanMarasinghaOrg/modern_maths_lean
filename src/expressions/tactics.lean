/-
# Chapter 2: Expressions
## 2.6 Tactics
-/
import data.int.basic tactic.norm_num
/-
The statement below imports the contents of the `predicates.lean` file from the `expressions`
chapter.
-/
import expressions.predicates



/- 
Below is our first example of a tactic block. Read the instructions in the book for
working with tactic blocks before continuing.
-/

example : P(6) :=
begin
  show 6 > 5,
  norm_num,
end

/- PROBLEM

Read the appendix items on the `show` and `norm_num` tactics. 
After reading those items, write an English-language explanation of how the tactic proof
above works.
-/


example : P(10) :=
begin
  show 10 > 5,
  sorry,
end

/-
You've just encountered two error messages. Understanding how to deal with errors in your proofs
is a fundamental skill. You can read more about error messages in the Appendix
:ref:`Error messages <error_messages>`.


-/