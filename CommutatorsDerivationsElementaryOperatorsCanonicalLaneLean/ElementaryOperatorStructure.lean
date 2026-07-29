import CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean.DerivationPackage

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

structure ElementaryOperatorStructure {C : CommutatorStructure} (D : DerivationPackage C) where
  elementaryOperator : C.leftOperator → C.leftOperator
  leftMultiplication : Prop
  rightMultiplication : Prop
  commutatorExpression : Prop
  compositionClosure : Prop
  leftMultiplicationTerm : leftMultiplication
  rightMultiplicationTerm : rightMultiplication
  commutatorExpressionTerm : commutatorExpression
  compositionClosureTerm : compositionClosure

structure ElementaryOperatorEvidence {C : CommutatorStructure} {D : DerivationPackage C}
    (E : ElementaryOperatorStructure D) where
  leftMultiplicationClosed : E.leftMultiplication
  rightMultiplicationClosed : E.rightMultiplication
  commutatorExpressionClosed : E.commutatorExpression
  compositionClosureClosed : E.compositionClosure

def ElementaryOperatorClosed {C : CommutatorStructure} {D : DerivationPackage C}
    (E : ElementaryOperatorStructure D) : Prop :=
  E.leftMultiplication ∧ E.rightMultiplication ∧ E.commutatorExpression ∧ E.compositionClosure

theorem elementary_operator_closed_from_evidence {C : CommutatorStructure} {D : DerivationPackage C}
    (E : ElementaryOperatorStructure D) (Ev : ElementaryOperatorEvidence E) :
    ElementaryOperatorClosed E := by
  exact And.intro Ev.leftMultiplicationClosed
    (And.intro Ev.rightMultiplicationClosed
      (And.intro Ev.commutatorExpressionClosed Ev.compositionClosureClosed))

end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean
end HautevilleHouse