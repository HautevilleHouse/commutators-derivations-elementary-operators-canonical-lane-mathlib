import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

structure CommutatorSpace where
  carrier : Type
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier

deriving Repr, DecidableEq

structure Derivation (A : CommutatorSpace) where
  map : A.carrier → A.carrier
  additive : ∀ x y, map (A.addition x y) = A.addition (map x) (map y)
  leibniz : ∀ x y, map (A.multiplication x y) = A.addition (A.multiplication (map x) y) (A.multiplication x (map y))

structure ElementaryOperator (A : CommutatorSpace) where
  leftMultiplier : A.carrier
  rightMultiplier : A.carrier
  apply : A.carrier → A.carrier := λ x => A.multiplication (A.multiplication leftMultiplier x) rightMultiplier

end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean
end HautevilleHouse