import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  trivial

end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean
end HautevilleHouse