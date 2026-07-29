import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

structure DerivationPackage where
  baseRing : Type u
  module : Type v
  ringStructure : Ring baseRing
  moduleStructure : Module baseRing module
  derivation : baseRing → module
  additive : Prop
  leibnizRule : Prop

structure DerivationEvidence (D : DerivationPackage) where
  additiveClosed : D.additive
  leibnizRuleClosed : D.leibnizRule

def DerivationClosed (D : DerivationPackage) : Prop :=
  D.additive ∧ D.leibnizRule

theorem derivation_closed_from_evidence
    (D : DerivationPackage) (E : DerivationEvidence D) :
    DerivationClosed D := by
  exact And.intro E.additiveClosed E.leibnizRuleClosed

end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean
end HautevilleHouse
