.. _tactics:

Tactics
=======

This Appendix consists of a brief description of tactics in general before moving on
to a drop-down `Tactic glossary`_ of  particualar tactics.

Using tactics
-------------

Tactics are computer programs that produce Lean expressions. In particular, some tactics are
used to produce `proofs`. They help to make proof-writing easier by providing automation of
complex tasks or by displaying useful information to the user.

A `tactic block` is delimited by ``begin`` and ``end`` identifiers and contains
one or more tactics.

We can prove ``(a + b) + c = b + (a + c)`` via a tactic block with two tactics,
as below. The first tactic ``rw nat.add_comm a b`` transforms the target into 
one of proving ``(b + a) + c = b + (a + c)``. The goal is closed by the
second tactic.

If you click at a point within the tactic block, the Infoview window will show
you the `tactic state` at that point. This displays all the goals within the proof,
where a goal consists of (1) the context (the set of hypotheses) and (2) the target
(that which is to be proved).

.. code-block:: lean

  example (a b c : ℕ): (a + b) + c = b + (a + c) :=
  begin
    rw nat.add_comm a b,
    rw nat.add_assoc,
  end

A single tactic can be used to close a goal by preceding it with the ``by`` keyword.

.. code-block:: lean

  example : 1 + 2 < 10 := by norm_num

A sequence of tactics can be made into a block by enclosing them in braces:

.. code-block:: lean

    example (a b c : ℕ): (a + b) + c = b + (a + c) :=
    by { rw nat.add_comm a b, rw nat.add_assoc, }

.. Tactic glossary

Tactic glossary
---------------

.. dropdown:: norm_num
  
  ``norm_num`` proves many numeric equations and inequalities involving addition, subtraction,
  multiplication, division, exponentiation, and congruences.

  .. code-block:: lean

    example : 2 < 3 * 6 := by norm_num

    example : 5 + 10 = 15 := by norm_num

    example : 9 ≠ 4 := by norm_num

    -- Show `12` is congruent to `2` modulo `10`.
    example : 12 % 10 = 2 := by norm_num

    -- Show that `163` is prime.
    example : nat.prime 163 := by norm_num

.. dropdown:: show

  ``show`` is used to state or rephrase the current target of the proof.
  If the current target is to prove ``x + y = x + y``, you can indicate this by typing

  .. code-block:: lean

      show x + y = x + y

  More practically, ``show`` can be used to transform the target to a definitionally equal
  target. For example, if ``f : A → B`` is a function and the target is to show
  ``surjective f``, then the target can be changed to the (definitionally equal) target

  ``∀ (b : B), ∃ (a : A), f(a) = b``
  
  via

  .. code-block:: lean

    show ∀ (b : B), ∃ (a : A), f(a) = b

.. dropdown:: sorry
  
  ``sorry`` closes the current goal while raising a warning to remind you that you need to
  supply the missing proof.

  If you want to prove ``p → (q → p)``, a natural first step is to
  ``assume h : p``. Writing ``sorry`` after this step closes the goal and gives a warning.

  If you'd mistakenly written ``assume h : q`` instead of ``assume h : p``, Lean would
  give an error message instead. Thus, the ``sorry`` tactic is used to verify that your proof
  is correct, albeit incomplete.

  .. code-block:: lean

    example (p q : Prop) : p → (q → p) :=
    begin
      assume h : p,
      sorry,
    end

  Some proofs involve multiple goals. In such cases, ``sorry`` can be used to close any combination
  of the goals. Suppose we wish to prove ``q ∧ p`` on the hypotheses ``h₁ : p`` and
  ``h₂ : q``. We can split the goal in two: (1) to prove ``q`` and (2) to prove ``p``.
  Each of the two goals can be closed with ``sorry`` until we complete the proof.

  .. code-block:: lean

    example (p q : Prop) (h₁ : p) (h₂ : q) : q ∧ p :=
    begin
      split,
      { show q, 
        sorry, },
      { show p,
        sorry, },
    end