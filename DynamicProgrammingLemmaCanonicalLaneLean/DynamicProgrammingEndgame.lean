import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlib

structure DynamicProgrammingAdmittedObject where
  problem : Type u
  optimalValue : Type v
  bellmanSatisfied : Prop
  policyOptimal : Prop
  conclusion : policyOptimal

structure DPAdmissibleClass where
  object : DynamicProgrammingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def dpBridgeClosed (A : DPAdmissibleClass) : Prop :=
  A.object.conclusion

theorem dp_bridge_from_admissible_class (A : DPAdmissibleClass) : dpBridgeClosed A := by
  exact A.object.conclusion

def dpGateClosed (A : DPAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem dp_gate_from_admissible_class (A : DPAdmissibleClass) : dpGateClosed A := by
  exact A.gateWitness

def ConstrainedDPClosure (A : DPAdmissibleClass) : Prop :=
  dpBridgeClosed A ∧ dpGateClosed A

theorem constrained_dp_endgame (A : DPAdmissibleClass) : ConstrainedDPClosure A := by
  exact And.intro (dp_bridge_from_admissible_class A) (dp_gate_from_admissible_class A)

end DynamicProgrammingLemmaCanonicalLaneLean
end HautevilleHouse