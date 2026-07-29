import canonicalLaneMathlib.AdmissibleClass
import CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean.InnerDerivationBridge

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

structure SpectralMappingPackage {C : CommutatorBracketPackage} {D : DerivationPackage C} {E : ElementaryOperatorPackage C D} {B : InnerDerivationBridgePackage C D E} where
  spectrum : (C.algebra → C.algebra) → Set ℝ
  mappingProperty : ∀ (f : C.algebra → C.algebra) (g : C.algebra → C.algebra), spectrum (f ∘ g) ⊆ (spectrum f) * (spectrum g)
  functionalCalculus : Prop

structure SpectralMappingEvidence {C : CommutatorBracketPackage} {D : DerivationPackage C} {E : ElementaryOperatorPackage C D} {B : InnerDerivationBridgePackage C D E} (S : SpectralMappingPackage C D E B) where
  mappingPropertyClosed : ∀ (f g : C.algebra → C.algebra), S.mappingProperty f g
  functionalCalculusClosed : S.functionalCalculus

def SpectralMappingClosed {C : CommutatorBracketPackage} {D : DerivationPackage C} {E : ElementaryOperatorPackage C D} {B : InnerDerivationBridgePackage C D E} (S : SpectralMappingPackage C D E B) : Prop :=
  (∀ f g : C.algebra → C.algebra, S.mappingProperty f g) ∧ S.functionalCalculus

theorem spectral_mapping_closed_from_evidence {C : CommutatorBracketPackage} {D : DerivationPackage C} {E : ElementaryOperatorPackage C D} {B : InnerDerivationBridgePackage C D E} (S : SpectralMappingPackage C D E B) (Ev : SpectralMappingEvidence S) : SpectralMappingClosed S := by
  exact And.intro Ev.mappingPropertyClosed Ev.functionalCalculusClosed

end HautevilleHouse
end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean