/-
# Chapter 2: Expressions
## 2.7 Functions and predicates of many variables
-/
import data.int.basic tactic.norm_num

def f(x : ℤ) (y : ℕ) := 2 * x + y

/- PROBLEM:

Use the `#check` command to find the type of `f`.

-/

/- PROBLEM:

  Use the `#check` command to verify that `f 10` has type `ℕ → ℤ`.

-/

def g := f 10

example : g(7) = 27 :=
begin
  show 2 * (10 : ℤ) + 7 = 27,
  norm_num,
end

/- PROBLEM:

By adapting the proof above, prove that `g(12) = 32`.

-/

example : g(12) = 32 :=
begin
  show 2 * (10 : ℤ) + 12 = 32,
  sorry,
end

def P (x : ℤ) (y : ℕ) := 5 * x + y < 2

#check P


/- PROBLEM:

Suppose Q is a predicate given by Q(u, v) := v^2 + u = 10,
where u is a natural number and v is an integer.

* What is the type of Q?

* Give a Lean definition of Q and thereby check your answer to
  the first part of this question.

-/
