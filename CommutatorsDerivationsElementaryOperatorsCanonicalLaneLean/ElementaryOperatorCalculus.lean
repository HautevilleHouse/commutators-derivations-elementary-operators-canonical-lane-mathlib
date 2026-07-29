import canonicalLaneMathlib.AdmissibleClass
import CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean.DerivationOperatorAlgebra

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

structure ElementaryOperatorPackage {C : CommutatorBracketPackage} {D : DerivationPackage C} where
  leftMultiplier : C.algebra → (C.algebra → C.algebra)
  rightMultiplier : C.algebra → (C.algebra → C.algebra)
  elementaryForm : (C.algebra × C.algebra) → (C.algebra → C.algebra)
  sumOfProducts : Prop
  closureUnderComposition : Prop

structure ElementaryOperatorEvidence {C : CommutatorBracketPackage} {D : DerivationPackage C} (E : ElementaryOperatorPackage C D) where
  sumOfProductsClosed : E.sumOfProducts
  closureUnderCompositionClosed : E.closureUnderComposition

def ElementaryOperatorClosed {C : CommutatorBracketPackage} {D : DerivationPackage C} (E : ElementaryOperatorPackage C D) : Prop :=
  E.sumOfProducts ∧ E.closureUnderComposition

theorem elementary_operator_closed_from_evidence {C : CommutatorBracketPackage} {D : DerivationPackage C} (E : ElementaryOperatorPackage C D) (Ev : ElementaryOperatorEvidence E) : ElementaryOperatorClosed E := by
  exact And.intro Ev.sumOfProductsClosed Ev.closureUnderCompositionClosed

end HautevilleHouse
end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean