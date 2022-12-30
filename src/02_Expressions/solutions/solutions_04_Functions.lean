/-
# Chapter 2: Expressions
## 2.4 Functions in Lean
-/
import tactic.pp_app

The name of the 'bound' variable ``x`` is irrelevant in a function definition such as
BOTH. -/
def q(x) := 5 + x

#check x