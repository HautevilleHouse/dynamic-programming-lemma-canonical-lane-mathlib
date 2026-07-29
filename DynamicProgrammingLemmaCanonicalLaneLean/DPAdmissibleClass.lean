import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingLemmaCanonicalLaneLean

structure DPAdmissibleObject where
  problem : Type u
  states : Set problem
  actions : problem -> Type v
  valueFunction : DPAdmissibleObject -> Type w
  optimalityCondition : Prop
  conclusion : optimalityCondition

structure DPAdmissibleClass where
  object : DPAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : DPAdmissibleClass) : Prop :=
  DPAdmissibleClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicProgrammingLemmaCanonicalLaneLean
end HautevilleHouse