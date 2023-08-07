.. _error_messages:

Error messages
==============


.. dropdown:: show tactic failed

  You made a mistake when trying to restate the target using ``show``.
  In the example below, the target after the ``assume`` line should be to show ``q → p``.
  I've incorrectlly written ``show q``, thereby raising the "show tactic failed" error message.

  .. code-block:: lean

    example (p q : Prop) : p → (q → p) :=
    begin
      assume h : p,
      show q,
      sorry,
    end

  As another example, suppose you are trying to show that a function ``f`` is surjective. You
  might start with the following (incorrect) argument.

  .. code-block:: lean

    example (f : ℕ → ℤ) : function.surjective f :=
    begin
      show ∀ (x : ℕ), ∃ (y : ℤ), f(x) = y,
      sorry,
    end

  The problem is that you have the wrong notion of 'surjective'.

  To fix errors such as these:
  
  * Click at the end of the line before the offending one and use the
    Infoview pane to review the tactic state. This may be enough to let you know what the
    ``show`` line should be.
  * In more complicated cases, where you are ``show`` to rewrite the target using a definition,
    you should ensure you know the definition correctly. In the example above, we had the
    wrong idea of ``surjective``. To view the correct definition, you can do one of the following:
    
    * Hover your cursor over the word ``surjective`` to view a brief description via a tool tip.
      In this case, you'll get the message, " A function ``f : α → β`` is called surjective if
      every ``b : β`` is equal to ``f a`` for some ```a : α``."
    * Type the command ``#print function.surjective`` outside any example. For this function,
      you'll the message
      ```
      @[reducible]
      def function.surjective : Π {α : Sort u₁} {β : Sort u₂}, (α → β) → Prop :=
      λ {α : Sort u₁} {β : Sort u₂} (f : α → β), ∀ (b : β), ∃ (a : α), f a = b
      ```
      in the Infoview window. The important part of this message is the end,
      ``∀ (b : β), ∃ (a : α), f a = b``.
    * Click on the word ``surjective`` and press :kbd:`F12` on your keyboard to open a new Lean
      editor containing the source of the definition. Reading the original source files is a great
      way to learn Lean.


.. dropdown:: tactic failed, there are unsolved goals

  This message means you haven't finished the proof. One or more goals remain to be proved.
  Ideally, you should write ``sorry`` for each gap in the proof and keep working until you
  have completed the proof. You will, temporarily, see this message while you fill in the ``sorry``.

  The following code will produce this error as the goal of proving ``q → p`` remains after the
  ``assume`` line.

  .. code-block:: lean

    example (p q : Prop) : p → (q → p) :=
    begin
      assume h : p,
    end

.. dropdown:: type mismatch

  The message, "type mismatch, term ``t`` has type ``A`` but is expected to have type ``B``" shows that
  you have made a type error. Here's a typical example:

  .. code-block:: lean

    example (a b : ℕ) : a + b = b + a := rfl

  The term ``rfl`` is a function that returns a proof of ``x = x``. Or, more generally, it returns
  a proof of ``a = b`` whenever ``a`` and ``b`` are `definitionally equal`. It is common for
  beginning mathematicians to assume that ``a + b`` and ``b + a`` are definitionally equal, but
  they aren't. It needs to be `proved` that ``a + b = b + a`` (for natural numbers ``a`` and ``b``).

  Thus, the code above returns the error message "type mismatch, term ``rfl`` has type ``?m_2 = ?m_2``
  but is expected to have type ``a + b = b + a`` "

  If you receive the message "type mismatch, term ``t`` has type ``A`` but is expected to have type
  ``B`` ", you should check you know the type of ``t``. Outside of tactic mode, you can do this
  with the ``#check t`` command. Within tactic mode, you can use the ``type_check`` tactic.
  For example,

  .. code-block:: lean

    example (a b : ℕ) : a + b = b + a :=
    begin
      type_check rfl,
    end

  will show ``?m_2 = ?m_2`` in the Infoview pane.

