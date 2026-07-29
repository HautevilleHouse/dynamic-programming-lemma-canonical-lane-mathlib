import HautevilleHouse.DynamicProgrammingLemmaCanonicalLaneLean.DPBridgeLemmas

namespace HautevilleHouse
namespace DynamicProgrammingLemmaCanonicalLaneLean

def gateClosed (A : DPAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : DPAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DynamicProgrammingLemmaCanonicalLaneLean
end HautevilleHouse