import canonicalLaneMathlib.AdmissibleClass
import CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean.CommutatorBracketStructure

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

structure DerivationPackage (C : CommutatorBracketPackage) where
  derivationSpace : Type u
  derivationMap : C.algebra → derivationSpace
  leibnizRule : Prop
  linearity : Prop

structure DerivationEvidence {C : CommutatorBracketPackage} (D : DerivationPackage C) where
  leibnizRuleClosed : D.leibnizRule
  linearityClosed : D.linearity

def DerivationClosed {C : CommutatorBracketPackage} (D : DerivationPackage C) : Prop := D.leibnizRule ∧ D.linearity

theorem derivation_closed_from_evidence {C : CommutatorBracketPackage} (D : DerivationPackage C) (E : DerivationEvidence D) : DerivationClosed D := by
  exact And.intro E.leibnizRuleClosed E.linearityClosed

end HautevilleHouse
end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean