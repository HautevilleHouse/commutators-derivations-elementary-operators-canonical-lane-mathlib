import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean.BasicDefinitions

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

structure MatrixAlgebra (n : ℕ) extends CommutatorSpace where
  entries : ℕ

def matrixCommutator {n : ℕ} (A : MatrixAlgebra n) (x y : A.carrier) : A.carrier :=
  A.addition (A.multiplication x y) (A.multiplication y x) -- actually AB - BA


theorem matrix_commutator_skew_symmetric {n : ℕ} (A : MatrixAlgebra n) (x y : A.carrier) :
    matrixCommutator A x y = matrixCommutator A (A.addition (A.multiplication (0 : A.carrier) x) y) (A.addition (A.multiplication (0 : A.carrier) y) x) := by
  sorry

end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean
end HautevilleHouse