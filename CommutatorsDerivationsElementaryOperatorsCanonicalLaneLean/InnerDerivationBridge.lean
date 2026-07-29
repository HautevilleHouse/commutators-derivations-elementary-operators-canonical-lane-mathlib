import canonicalLaneMathlib.AdmissibleClass
import CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean.ElementaryOperatorCalculus

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

structure InnerDerivationBridgePackage {C : CommutatorBracketPackage} {D : DerivationPackage C} {E : ElementaryOperatorPackage C D} where
  innerDerivationMap : C.algebra → D.derivationSpace
  bracketToDerivation : ∀ a b : C.algebra, innerDerivationMap (C.bracket a b) = D.derivationMap (C.multiplication a b) - D.derivationMap (C.multiplication b a)
  derivationToInner : ∀ a : C.algebra, D.derivationMap a = innerDerivationMap a
  consistencyCondition : Prop

structure InnerDerivationBridgeEvidence {C : CommutatorBracketPackage} {D : DerivationPackage C} {E : ElementaryOperatorPackage C D} (B : InnerDerivationBridgePackage C D E) where
  bracketToDerivationClosed : ∀ a b : C.algebra, B.bracketToDerivation a b
  derivationToInnerClosed : ∀ a : C.algebra, B.derivationToInner a
  consistencyConditionClosed : B.consistencyCondition

def InnerDerivationBridgeClosed {C : CommutatorBracketPackage} {D : DerivationPackage C} {E : ElementaryOperatorPackage C D} (B : InnerDerivationBridgePackage C D E) : Prop :=
  (∀ a b : C.algebra, B.bracketToDerivation a b) ∧ (∀ a : C.algebra, B.derivationToInner a) ∧ B.consistencyCondition

theorem inner_derivation_bridge_closed_from_evidence {C : CommutatorBracketPackage} {D : DerivationPackage C} {E : ElementaryOperatorPackage C D} (B : InnerDerivationBridgePackage C D E) (Ev : InnerDerivationBridgeEvidence B) : InnerDerivationBridgeClosed B := by
  exact And.intro Ev.bracketToDerivationClosed (And.intro Ev.derivationToInnerClosed Ev.consistencyConditionClosed)

end HautevilleHouse
end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean