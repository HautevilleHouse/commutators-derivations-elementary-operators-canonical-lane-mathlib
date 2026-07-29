import canoncialLaneMathlib.Derivation

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

structure ElementaryOperator (A : CstarAlgebra) where
  leftMul : A.carrier → A.carrier
  rightMul : A.carrier → A.carrier
  inner : A.carrier → A.carrier := λ x => leftMul x - rightMul x
  innerClosed : ∀ x, inner x ∈ A.carrier

def ElementaryOperatorClosed (A : CstarAlgebra) (E : ElementaryOperator A) : Prop :=
  ∀ x : A.carrier, E.innerClosed x

end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean
end HautevilleHouse