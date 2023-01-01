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




def R (x y : ℕ) := x * y + y > x

example : R 3 3 :=
begin
  show 3 * 3 + 3 > 3,
  norm_num,

end




example (p q : Prop) (h₁ : p) (h₂ : q) : q ∧ p :=
begin
  split,
  { show q, 
    sorry, },
  { show p,
    sorry, },
end