import CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean.DerivationModule

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

structure GeneralizedDerivationPackage {D : DerivationPackage} where
  map : D.baseRing → D.baseRing
  additive : Prop
  generalizedLeibniz : ∃ (a b : D.baseRing), ∀ x y : D.baseRing,
    map (x * y) = map x * y + x * map y + a * x * y + b * x * y

structure GeneralizedDerivationEvidence {D : DerivationPackage}
    (G : GeneralizedDerivationPackage D) where
  additiveClosed : G.additive
  generalizedLeibnizClosed : G.generalizedLeibniz

def GeneralizedDerivationClosed {D : DerivationPackage}
    (G : GeneralizedDerivationPackage D) : Prop :=
  G.additive ∧ G.generalizedLeibniz

theorem generalized_derivation_closed_from_evidence
    {D : DerivationPackage} (G : GeneralizedDerivationPackage D)
    (Ev : GeneralizedDerivationEvidence G) : GeneralizedDerivationClosed G := by
  exact And.intro Ev.additiveClosed Ev.generalizedLeibnizClosed

end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean
end HautevilleHouse
