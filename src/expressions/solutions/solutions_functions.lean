/-
# Chapter 2: Expressions
## 2.4 Functions in Lean
-/
import data.int.basic

namespace functional_notation

def f (x : ℕ) : ℤ := - x^2

/- PROBLEM:

Use the space below to determine what happens when you type

variable y : ℤ
#check f y

-/

/- SOLUTION:

You get an error message:
  
`type mismatch at application f y term y has type ℤ but is expected to have type ℕ`

The reason is that `f : ℕ → ℤ` expects to be given a natural number argument,
but `y` is an integer.

-/

/- PROBLEM:

Give your solutions to 'which expressions are meaningful?' in the space
following the `variables` declaration below. Give the types of each expression
and state which expressions are meaningless. Verify your answers using `#check`.
The expressions in question are:

(i) u + v, (ii) y + z, (iii) g(u + v), (iv) g(y + z), (v) u + g(u),
(vi) y + g(u), (vii) g(u) + u, (viii) g(u) + y

-/
variables (V : Type) [has_add V] (u v : ℕ) (y z : V) (g : ℕ → V)

/- SOLUTION:

The meaningful expressions are:
`u + v : ℕ`, `y + z : V`, `g(u + v) : V`, `y + g(u) : V`, and `g(u) + y : V`.

This can be verified, by typing, for example `#check g(u) + y`, which gives
output `g(u) + y : V`. Whereas typing `#check u + g(u)` gives the error message:

`type mismatch at application u + g u, term  g u has type V but is expected to`
`have type ℕ`.
-/

end functional_notation

/-
### 2.4.1 Lambda abstraction
-/

namespace lambda_abstraction

/- PROBLEM:

Write a Lean expression that corresponds to the abstraction of the integer
expression y^2 + 8y over the integer variable y. Evaluate the application of
this function to the integer -3.

-/
-- SOLUTION:

#eval (λ (y : ℤ), y ^ 2 + 8 * y) (-3)

/-
Here is a named lambda abstraction:
-/
def p := λ (u : ℕ), (2 * u : ℤ)

/-
The quantity `p` is the same as the function `p₂` defined below.
-/
def p₂ (u : ℕ) : ℤ := 2 * u

/-
Below, we declare the type of the function `p₃` before giving its definition.
-/
def p₃ : ℕ → ℤ := λ u, 2 * u

/- PROBLEM:

Prove that `p = p₃`.

-/

-- SOLUTION:

example : p = p₃ := rfl

end lambda_abstraction


namespace functions_and_variables

/-
### 2.4.2 Functions and variables
-/


/- PROBLEM:

Below, give the Lean definition of two functions `p` and `p₂`, both from 
`ℕ` to `ℕ`, where `p(x)` is x-squared plus 5x plus 2 and where `p₂` is the same
except with y in place of x.

Use Lean to prove `p = p₂`.

-/

-- SOLUTION:

def p(x) := x ^ 2 + 5 * x + 2

def p₂(y) := y ^ 2 + 5 * y + 2 

/-
The functions `t` and `t₂` below are the same *except* for the name of the free
variable.
-/

constants (a b : ℕ)

noncomputable def t(x : ℕ) := a + x

noncomputable def t₂(x : ℕ) := b + x

/- PROBLEM:

Type `example : t = t₂ := rfl` in the space below and read the error message.

-/

/- SOLUTION:

The error message is:

`type mismatch, term rfl has type ?m_2 = ?m_2 but is expected to have type t = t₂`.

This error message is explained in the book.
-/

/- PROBLEM:

Which of the pairs of functions chosen from `f₁`, …, `f₅` below are equal?
Verify your answers in Lean.

-/
constants (u v : ℕ)

noncomputable def f₁(w : ℕ) := u * w ^ 2

              def f₂(u : ℕ) := u * u ^ 2

noncomputable def f₃(z : ℕ) := u * z ^ 2

noncomputable def f₄(w : ℕ) := v * w ^ 2

noncomputable def f₅(u : ℕ) := v * u ^ 2

/- SOLUTION:

We have the following equations: `f₁ = f₃` and `f₄ = f₅`.

-/

end functions_and_variables
