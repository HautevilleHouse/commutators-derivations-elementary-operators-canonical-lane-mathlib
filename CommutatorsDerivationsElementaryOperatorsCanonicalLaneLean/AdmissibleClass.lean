import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

structure AdmissibleClass where
  object : CommutatorAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CommutatorWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean
end HautevilleHouse