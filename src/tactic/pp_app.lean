import tactic init.meta.expr

/-!
# pp_app

This tactic takes an expression and pretty-prints what it is an
application of.
-/

open tactic expr

namespace tactic

setup_tactic_parser

namespace interactive

meta def pp_app (e : parse parser.pexpr) : tactic unit :=
do e ← to_expr e,
  match e with
  | (pi _ _ var_type _) :=
    do
    type ← infer_type var_type,
    match type with
    | (sort level.zero) := trace "implication" -- Is `var_type` of type `Prop`?
    | _ := trace "For all / function"
    end
  | (app e1 e2) :=
    do
    fn ← return (e1.get_app_fn),
    match fn with
    | (const `has_add.add _) := trace "add"
    | (const `has_neg.neg _) := trace "unary minus"
    | (const `has_sub.sub _) := trace "subtract"
    | (const `has_mul.mul _) := trace "multiply"
    | (const `has_div.div  _)  := trace "divide"
    | (const `has_pow.pow _)   := trace "power"
    | (const `eq  _)          := trace "equals"
    | (const `ne _)           := trace "not equal to"
    | (const `has_lt.lt _)    := trace "less than"
    | (const `has_le.le _)    := trace "less than or equal to"
    | (const `has_gt.gt _ )   := trace "greater than"
    | (const `gt _)           := trace "greater than"
    | (const `has_ge.ge _)    := trace "greater than or equal to"
    | (const `ge _)           := trace "greater than or equal to"
    | (const `has_zero.zero _) := trace "primitive expression"
    | (const `has_one.one _) := trace "primitive expression"
    | (const `bit1 _) := trace "primitive expression"
    | (const `bit0 _) := trace "primitive expression"
    | _ := trace fn
    end
  | (lam _ _ _ _) := trace "λ-abstraction"
  | (sort _) := trace "type universe"
  | (const _ _) := trace "global constant"
  | _ := trace "primitive expression"
  end


end interactive

@[user_command]
meta def pp_app_cmd (_ : parse $ tk "#pp_app") : lean.parser unit :=
do e ← parser.pexpr,
  tactic.interactive.pp_app e

end tactic