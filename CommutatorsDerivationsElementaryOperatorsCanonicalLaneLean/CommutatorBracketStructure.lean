import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

structure CommutatorBracketPackage where
  algebra : Type u
  addition : algebra → algebra → algebra
  multiplication : algebra → algebra → algebra
  bracket : algebra → algebra → algebra
  bilinearity : Prop
  skewSymmetry : Prop
  jacobiIdentity : Prop

structure CommutatorBracketEvidence (C : CommutatorBracketPackage) where
  bilinearityClosed : C.bilinearity
  skewSymmetryClosed : C.skewSymmetry
  jacobiIdentityClosed : C.jacobiIdentity

def CommutatorBracketClosed (C : CommutatorBracketPackage) : Prop := C.bilinearity ∧ C.skewSymmetry ∧ C.jacobiIdentity

theorem commutator_bracket_closed_from_evidence (C : CommutatorBracketPackage) (E : CommutatorBracketEvidence C) : CommutatorBracketClosed C := by
  exact And.intro E.bilinearityClosed (And.intro E.skewSymmetryClosed E.jacobiIdentityClosed)

end HautevilleHouse
end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean