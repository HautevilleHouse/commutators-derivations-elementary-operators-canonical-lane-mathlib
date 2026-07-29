import CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean.DerivationModule

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

structure InnerDerivationPackage {D : DerivationPackage} where
  element : D.baseRing
  innerDerivation : D.derivation
  representation : ∀ x : D.baseRing, innerDerivation x = D.bracket element x

structure InnerDerivationEvidence {D : DerivationPackage}
    (I : InnerDerivationPackage D) where
  representationClosed : ∀ x : D.baseRing, I.innerDerivation x = D.bracket I.element x

def InnerDerivationClosed {D : DerivationPackage}
    (I : InnerDerivationPackage D) : Prop :=
  ∀ x : D.baseRing, I.innerDerivation x = D.bracket I.element x

theorem inner_derivation_closed_from_evidence
    {D : DerivationPackage} (I : InnerDerivationPackage D)
    (Ev : InnerDerivationEvidence I) : InnerDerivationClosed I := by
  exact Ev.representationClosed

end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean
end HautevilleHouse
