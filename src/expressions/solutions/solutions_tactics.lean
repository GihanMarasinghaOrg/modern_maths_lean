/-
# Chapter 2: Expressions
## 2.6 Tactics
-/
import data.int.basic tactic.norm_num
import expressions.predicates

example : P(6) :=
begin
  show 6 > 5,
  norm_num,
end

/- SOLUTION:

Initially, the target is to prove `P(6)`. But `P(6)` is definitionally equal to `6 > 5`.
Thus, we may use `show` tactic as `show 6 > 5` to change the target to that of showing `6 > 5`.

This is a simple numerical inequality, which the `norm_num` tactic proves.

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

-- SOLUTION:

example : P(10) :=
begin
  show 10 > 5,
  norm_num,
end

