/-
# Chapter 2: Expressions
## 2.4 Functions in Lean
-/
import tactic.pp_app


def f (x : ℕ) : ℤ := - x^2

#eval f(10)

#eval f 10

#check f

#check f 5

/- PROBLEM:
Use the space below to determine what happens when you type

variable y : ℤ
#check f y
-/




/- PROBLEM:
Give your solutions to 'which expressions are meaningful?' in the space
following the `variables` declaration below.
-/
variables (V : Type) [has_add V] (u v : ℕ) (y z : V) (g : ℕ → V)






#check λ x, 2 * x

#eval (λ x, 2 * x) 5

#check λ (x : ℕ), (2 * x : ℤ)

/- PROBLEM:
Write a lambda abstraction as described in the book and apply it to the integer `-3`.
-/


namespace first_p

/-
Here is a named lambda abstraction:
-/
def p := λ (u : ℕ), (2 * u : ℤ)

end first_p


/-
The quantity `p` is the same as the function `p` defined below
-/
namespace second_p
def p (u : ℕ) : ℤ := 2 * u
end second_p

namespace third_p
def p : ℕ → ℤ := λ u, 2 * u

end third_p