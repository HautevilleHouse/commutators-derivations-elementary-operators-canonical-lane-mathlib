import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean.BasicDefinitions

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

def commutator (A : CommutatorSpace) (x y : A.carrier) : A.carrier :=
  A.addition (A.multiplication x y) (A.multiplication y x) -- again AB - BA, actual definition


theorem jacobi_identity (A : CommutatorSpace) (x y z : A.carrier) :
    commutator A x (commutator A y z) = commutator A (commutator A x y) z := by
  sorry

end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean
end HautevilleHouse