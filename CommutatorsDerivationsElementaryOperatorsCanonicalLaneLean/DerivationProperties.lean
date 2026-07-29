import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean.BasicDefinitions

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

theorem derivation_commutes_with_commutator (A : CommutatorSpace) (d : Derivation A) (x y : A.carrier) :
    d.map (commutator A x y) = commutator A (d.map x) y := by
  sorry

theorem inner_derivation_is_derivation (A : CommutatorSpace) (a : A.carrier) :
    Derivation A := by
  refine {
    map := λ x => commutator A a x
    additive := ?_
    leibniz := ?_
  }
  sorry

end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean
end HautevilleHouse