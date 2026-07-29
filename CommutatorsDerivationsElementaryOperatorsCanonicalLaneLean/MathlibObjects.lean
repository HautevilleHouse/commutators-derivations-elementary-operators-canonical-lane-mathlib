import CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure OperatorSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure OperatorAdmittedObject where
  space : OperatorSpace
  banachAlgebra : Prop
  derivationClosed : Prop
  elementaryOperatorClosed : Prop
  conclusion : derivationClosed ∧ elementaryOperatorClosed

structure OperatorEndgameState where
  object : OperatorAdmittedObject

def OperatorWitnessClosed (O : OperatorAdmittedObject) : Prop :=
  O.derivationClosed ∧ O.elementaryOperatorClosed

end CommutatorsDerivationsElementaryOperatorsCanonicalLaneLean
end HautevilleHouse