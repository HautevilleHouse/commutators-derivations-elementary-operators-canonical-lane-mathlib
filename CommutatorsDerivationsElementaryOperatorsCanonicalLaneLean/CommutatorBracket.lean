import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

structure CommutatorBracketPackage where
  carrierRing : Type u
  ringStructure : Ring carrierRing
  bracket : carrierRing → carrierRing → carrierRing
  bilinear : Prop
  skewSymmetric : Prop
  jacobiIdentity : Prop

structure CommutatorBracketEvidence (C : CommutatorBracketPackage) where
  bilinearClosed : C.bilinear
  skewSymmetricClosed : C.skewSymmetric
  jacobiIdentityClosed : C.jacobiIdentity

def CommutatorBracketClosed (C : CommutatorBracketPackage) : Prop :=
  C.bilinear ∧ C.skewSymmetric ∧ C.jacobiIdentity

theorem commutator_bracket_closed_from_evidence
    (C : CommutatorBracketPackage) (E : CommutatorBracketEvidence C) :
    CommutatorBracketClosed C := by
  exact And.intro E.bilinearClosed (And.intro E.skewSymmetricClosed E.jacobiIdentityClosed)

end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean
end HautevilleHouse
