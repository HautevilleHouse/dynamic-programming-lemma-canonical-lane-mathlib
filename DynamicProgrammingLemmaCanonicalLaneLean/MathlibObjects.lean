import DynamicProgrammingLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Nat.Basic

namespace HautevilleHouse
namespace DynamicProgrammingLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DPStateSpace where
  carrier : Type
  finitePossibly : Prop

structure DPTransition where
  stateFrom : Type
  stateTo : Type
  cost : stateFrom → stateTo → ℕ
  transitionValid : Prop

structure DPValueFunction where
  stateSpace : DPStateSpace
  optimalCost : stateSpace.carrier → ℕ
  bellmanOptimalityHolds : Prop

structure DPAdmittedObject where
  stateSpace : DPStateSpace
  transition : DPTransition
  valueFunction : DPValueFunction
  optimalPolicyExists : Prop
  conclusion : optimalPolicyExists

def DPWitnessClosed (O : DPAdmittedObject) : Prop :=
  O.optimalPolicyExists

end DynamicProgrammingLemmaCanonicalLaneLean
end HautevilleHouse
