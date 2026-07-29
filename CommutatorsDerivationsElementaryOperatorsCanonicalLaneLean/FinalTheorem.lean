import canonicalLaneMathlib.AdmissibleClass
import CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean.BridgeLemmas
import CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

def ConstrainedCommutatorDerivationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_commutator_derivation_endgame (A : AdmissibleClass) :
    ConstrainedCommutatorDerivationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean
end HautevilleHouse