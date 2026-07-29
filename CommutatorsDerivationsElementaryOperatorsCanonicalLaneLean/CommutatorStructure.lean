import CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

structure CommutatorStructure where
  leftOperator : Type
  rightOperator : Type
  commutatorMap : leftOperator → rightOperator → (leftOperator ⊗ rightOperator)
  jacobiIdentity : Prop
  anticommutativity : Prop
  bilinearity : Prop
  jacobiIdentityTerm : jacobiIdentity
  anticommutativityTerm : anticommutativity
  bilinearityTerm : bilinearity

def CommutatorStructureClosed (C : CommutatorStructure) : Prop :=
  C.jacobiIdentity ∧ C.anticommutativity ∧ C.bilinearity

theorem commutator_structure_closed_from_structure (C : CommutatorStructure) :
    CommutatorStructureClosed C := by
  exact And.intro C.jacobiIdentityTerm (And.intro C.anticommutativityTerm C.bilinearityTerm)

end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean
end HautevilleHouse