/-
# Chapter 2: Expressions
## 2.2 Types in Lean
-/
import data.rat

#check 2

#eval 3 - 5

#eval (3 - 5 : ℤ)

#eval (3.4 ^ 2 : ℚ)

/- PROBLEM:

Use the space below to evaluate the expressions given in the book first
without Lean then with the Lean ``#eval`` command.

-/

-- SOLUTION:

#eval ((1 - 4)  ^ 5 : ℤ)

#eval (1 + 4) ^ 5

#eval (5 /4 + 1/2 : ℚ)

#eval 66 / 2

/- Checking the *type* of the expression `3 = 1 + 2`.

-/

#check 3 = 1 + 2

/- PROBLEM:

Determine the types of each of the expressions given in the book, first without
Lean, then using the `#check` command.

-/

-- SOLUTION:

#check 2 + 3

#check 2 + 3 = 10

#check ∀ (x : ℤ), 2 * x = 10