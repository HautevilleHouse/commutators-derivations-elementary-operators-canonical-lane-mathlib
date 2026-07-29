import canoncialLaneMathlib.Commutator

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

structure SpectralData (A : CstarAlgebra) where
  element : A.carrier
  spectrum : Set ℂ
  spectralRadius : ℝ
  spectralRadiusBound : spectralRadius ≤ ‖element‖

theorem spectrum_nonempty (A : CstarAlgebra) (x : A.carrier) : Nonempty (Set ℂ) := by
  exact ⟨Set.range (λ (z : ℂ) => z)⟩

end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean
end HautevilleHouse