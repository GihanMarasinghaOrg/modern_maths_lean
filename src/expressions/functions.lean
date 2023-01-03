/-
# Chapter 2: Expressions
## 2.4 Functions in Lean
-/
import data.int.basic

namespace functional_notation

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
following the `variables` declaration below. Give the types of each expression
and state which expressions are meaningless. Verify your answers using `#check`.
The expressions in question are:

(i) u + v, (ii) y + z, (iii) g(u + v), (iv) g(y + z), (v) u + g(u),
(vi) y + g(u), (vii) g(u) + u, (viii) g(u) + y

-/
variables (V : Type) [has_add V] (u v : ℕ) (y z : V) (g : ℕ → V)


end functional_notation

/-
### 2.4.1 Lambda abstraction
-/

namespace lambda_abstraction

#check λ x, 2 * x

#eval (λ x, 2 * x) 5

#check λ (x : ℕ), (2 * x : ℤ)

/- PROBLEM:

Write a Lean expression that corresponds to the abstraction of the integer
expression y^2 + 8y over the integer variable y. Evaluate the application of
this function to the integer -3.

-/

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

Give three Lean definitions of a function `h : ℕ → ℤ` so that `h(u) =: u - 3`.
Adapt the three methods for definining the functions `p`, `p₂`, and `p₃` above.

-/

/-
A proof that `p = p₂`.
-/
example : p = p₂ := rfl


/- PROBLEM:

Prove that `p = p₃`.

-/


end lambda_abstraction


namespace functions_and_variables

/-
### 2.4.2 Functions and variables
-/

def q(x) := 5 + x

def q₂(u) := 5 + u


example : q = q₂ := rfl

/- PROBLEM:

Below, give the Lean definition of two functions `p` and `p₂`, both from 
`ℕ` to `ℕ`, where `p(x)` is x-squared plus 5x plus 2 and where `p₂` is the same
except with y in place of x.

Use Lean to prove `p = p₂`.

-/

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


end functions_and_variables
