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
/- PROBLEM:

Below is an incomplete proof of `P(10)`, where `P` is the predicate defined previously
by `P(x) := x > 5`.

* Observe that Lean emits an orange warning in the Infoview pane (under "All
  Messages") to indicate that the example  uses `sorry`.
* Delete the `sorry` line. Now Lean gives an error message telling you,
  "there are unsolved goals". This means the proof is incomplete.
* Replace the `sorry`. Don't forget the comma at the end of the line!
* Change the `show` line to something incorrect, such as `show 10 > 10`. Now Lean
  gives the error message "show tactic failed". This means that your show line does not
  accurately restate the target.
* Change the `show` line back to what it should be. Complete the proof.

-/

example : P(10) :=
begin
  show 10 > 5,
  sorry,
end
