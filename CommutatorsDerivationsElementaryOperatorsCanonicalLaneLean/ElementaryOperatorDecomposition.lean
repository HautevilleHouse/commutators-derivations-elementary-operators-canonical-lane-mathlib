import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean.BasicDefinitions

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

theorem elementary_operator_decomposition (A : CommutatorSpace) (T : ElementaryOperator A) :
    ∃ (d : Derivation A) (x : A.carrier), ∀ y : A.carrier, T.apply y = commutator A (d.map y) x := by
  sorry

theorem sum_of_elementary_operators (A : CommutatorSpace) (ops : List (ElementaryOperator A)) :
    ElementaryOperator A := by
  sorry

end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean
end HautevilleHouse