import canoncialLaneMathlib.ElementaryOperator

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

def commutator (A : CstarAlgebra) (a b : A.carrier) : A.carrier :=
  a * b - b * a

theorem commutator_antisymm (A : CstarAlgebra) (a b : A.carrier) :
    commutator A a b = - commutator A b a := by
  simp [commutator]

theorem commutator_jacobi (A : CstarAlgebra) (a b c : A.carrier) :
    commutator A a (commutator A b c) + commutator A b (commutator A c a) + commutator A c (commutator A a b) = 0 := by
  ring

end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean
end HautevilleHouse