import canoncialLaneMathlib.CstarAlgebra

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

structure Derivation (A : CstarAlgebra) where
  domain : Set A.carrier
  map : A.carrier → A.carrier
  leibnizRule : ∀ a b : A.carrier, a ∈ domain → b ∈ domain → map (a * b) = map a * b + a * map b
  closed : DerivationClosed map domain

def DerivationClosed (f : A.carrier → A.carrier) (dom : Set A.carrier) : Prop :=
  ∀ x ∈ dom, f x ∈ dom

theorem derivation_closed_if_all (A : CstarAlgebra) (d : Derivation A) : d.closed := d.closed

end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean
end HautevilleHouse