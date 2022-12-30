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



/-
### 2.4.1 Lambda abstraction
-/


#check λ x, 2 * x

#eval (λ x, 2 * x) 5

#check λ (x : ℕ), (2 * x : ℤ)

/- PROBLEM:
Write a lambda abstraction as described in the book and apply it to the integer `-3`.
-/




/-
Here is a named lambda abstraction:
-/
def p := λ (u : ℕ), (2 * u : ℤ)

/-
The quantity `p` is the same as the function `p₂` defined below
-/

def p₂ (u : ℕ) : ℤ := 2 * u


/-
Below, we declare the type of the function `p₃` before giving its definition.
-/

def p₃ : ℕ → ℤ := λ u, 2 * u



/- PROBLEM:
Give three Lean definitions of a function `h : ℕ → ℤ` so that `h(u) =: u - 3`. Adapt
the three methods for definining the functions `p`, `p₂`, and `p₃` above.
-/




/-
A proof that `p = p₂`.
-/
example : p = p₂ := rfl


/- PROBLEM:
Prove that `p = p₃`.
-/


/-
### 2.4.2 Functions and variables
-/


The name of the 'bound' variable ``x`` is irrelevant in a function definition such as
BOTH. -/
def q(x) := 5 + x

#check x