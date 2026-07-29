import CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean.CommutatorStructure

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

structure DerivationPackage (C : CommutatorStructure) where
  derivationMap : ∀ (a b : C.leftOperator), C.commutatorMap a b = C.commutatorMap a b
  leibnizRule : Prop
  innerDerivationClosure : Prop
  derivationSpace : Type
  leibnizRuleTerm : leibnizRule
  innerDerivationClosureTerm : innerDerivationClosure

def DerivationPackageClosed {C : CommutatorStructure} (D : DerivationPackage C) : Prop :=
  D.leibnizRule ∧ D.innerDerivationClosure

theorem derivation_package_closed_from_evidence {C : CommutatorStructure}
    (D : DerivationPackage C) (E : DerivationEvidence D) : DerivationPackageClosed D := by
  exact And.intro E.leibnizRuleClosed E.innerDerivationClosureClosed

structure DerivationEvidence {C : CommutatorStructure} (D : DerivationPackage C) where
  leibnizRuleClosed : D.leibnizRule
  innerDerivationClosureClosed : D.innerDerivationClosure

end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean
end HautevilleHouse