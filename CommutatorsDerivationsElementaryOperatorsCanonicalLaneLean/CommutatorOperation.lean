import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

structure CommutatorOperation (A : Type u) [Ring A] where
  domain : A
  commutator : A → A → A
  bilinear : Prop
  alternating : Prop
  jacobiIdentity : Prop
  bilinearTerm : bilinear
  alternatingTerm : alternating
  jacobiIdentityTerm : jacobiIdentity

structure CommutatorEvidence {A : Type u} [Ring A] (C : CommutatorOperation A) where
  bilinearClosed : C.bilinear
  alternatingClosed : C.alternating
  jacobiIdentityClosed : C.jacobiIdentity

def CommutatorClosed {A : Type u} [Ring A] (C : CommutatorOperation A) : Prop :=
  C.bilinear ∧ C.alternating ∧ C.jacobiIdentity

theorem commutator_closed_from_evidence {A : Type u} [Ring A] (C : CommutatorOperation A) (E : CommutatorEvidence C) :
    CommutatorClosed C := by
  exact And.intro E.bilinearClosed (And.intro E.alternatingClosed E.jacobiIdentityClosed)

end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean
end HautevilleHouse