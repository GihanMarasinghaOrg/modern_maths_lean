/-
# Chapter 2: Expressions
## 2.7 Functions and predicates of many variables
-/
import data.int.basic tactic.norm_num

def f(x : ℤ) (y : ℕ) := 2 * x + y

/- PROBLEM:

Use the `#check` command to find the type of `f`.

-/

-- SOLUTION 

#check f

/- PROBLEM:

  Use the `#check` command to verify that `f 10` has type `ℕ → ℤ`.

-/

-- SOLUTION:

#check f 10

def g := f 10

example : g(7) = 27 :=
begin
  show 2 * (10 : ℤ) + 7 = 27,
  norm_num,
end

/- PROBLEM:

By adapting the proof above, prove that `g(12) = 32`.

-/

-- SOLUTION:

example : g(12) = 32 :=
begin
  show 2 * (10 : ℤ) + 12 = 32,
  norm_num,
end

/- PROBLEM:

Suppose Q is a predicate given by Q(u, v) := v^2 + u = 10,
where u is a natural number and v is an integer.

* What is the type of Q?

* Give a Lean definition of Q and thereby check your answer to
  the first part of this question.

-/

-- SOLUTION:

def Q (u : ℕ) (v : ℤ) := v ^ 2 + u = 10

-- The type of `Q` is `ℕ → (ℤ → Prop)` as we check below.

#check Q