/-
# Chapter 1: Introduction
## 1.2 Working with Lean in VSCode
-/

#reduce lean.version

#reduce lean.version.fst

/- PROBLEM:

Modify the Lean code `#reduce lean.version.fst`, replacing ``fst`` with ``snd``.
Is the result what you expected?

-/
/- SOLUTION:

Replacing `fst` with `snd`, as below, produces a pair of numbers. This may not be what one
expects as the second element of a triple.
-/

#reduce lean.version.snd


