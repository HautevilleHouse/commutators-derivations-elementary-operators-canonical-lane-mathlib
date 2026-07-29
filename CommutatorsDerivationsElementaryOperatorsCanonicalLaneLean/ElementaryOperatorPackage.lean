import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

structure ElementaryOperatorPackage (A : Type u) [Ring A] where
  leftMultiplier : A → A → A
  rightMultiplier : A → A → A
  sumOfProducts : Prop
  identityPreserving : Prop
  sumOfProductsTerm : sumOfProducts
  identityPreservingTerm : identityPreserving

structure ElementaryOperatorEvidence {A : Type u} [Ring A] (E : ElementaryOperatorPackage A) where
  sumOfProductsClosed : E.sumOfProducts
  identityPreservingClosed : E.identityPreserving

def ElementaryOperatorClosed {A : Type u} [Ring A] (E : ElementaryOperatorPackage A) : Prop :=
  E.sumOfProducts ∧ E.identityPreserving

theorem elementary_operator_closed_from_evidence {A : Type u} [Ring A] (E : ElementaryOperatorPackage A) (Ev : ElementaryOperatorEvidence E) :
    ElementaryOperatorClosed E := by
  exact And.intro Ev.sumOfProductsClosed Ev.identityPreservingClosed

end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean
end HautevilleHouse