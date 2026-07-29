import canoncialLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

structure CstarAlgebra where
  carrier : Type u
  star : carrier → carrier
  norm : carrier → ℝ
  complete : Bool
  cstarIdentity : Prop

def CstarAlgebraClosed (A : CstarAlgebra) : Prop :=
  A.cstarIdentity ∧ A.complete

end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean
end HautevilleHouse