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

Use the space below to evaluate the expressions `(1-4)^5`, `(1 + 4)`, `5/4+1/2`, and
`66/2` first without Lean then with the Lean ``#eval`` command.

-/


/- Checking the *type* of the expression `3 = 1 + 2`.

-/

#check 3 = 1 + 2

/- PROBLEM:

  For each of the following expressions:

  * Without using Lean, determine the type of the expression.
  * Verify your answer using the ``#check`` Lean command.

  (i) `2 + 3`, (ii) `2 + 3 = 10`, (iii) 'for all integers `x`, `2x = 10`'.
-/


