import CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean.CommutatorBracket

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

structure LieAlgebraPackage extends CommutatorBracketPackage where
  lieAlgebraAxioms : Prop

structure LieAlgebraEvidence (L : LieAlgebraPackage) where
  lieAlgebraAxiomsClosed : L.lieAlgebraAux.lieAlgebraAxioms

def LieAlgebraClosed (L : LieAlgebraPackage) : Prop :=
  L.lieAlgebraAux.lieAlgebraAxioms ∧ CommutatorBracketClosed L.toCommutatorBracketPackage

theorem lie_algebra_closed_from_evidence
    (L : LieAlgebraPackage) (E : LieAlgebraEvidence L) :
    LieAlgebraClosed L := by
  refine And.intro E.lieAlgebraAxiomsClosed ?_
  exact commutator_bracket_closed_from_evidence L.toCommutatorBracketPackage
    (by
      exact {
        bilinearClosed := L.bilinear
        skewSymmetricClosed := L.skewSymmetric
        jacobiIdentityClosed := L.jacobiIdentity
      })

end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean
end HautevilleHouse
