import HautevilleHouse.DynamicProgrammingLemmaCanonicalLaneLean.DPGateLemmas

namespace HautevilleHouse
namespace DynamicProgrammingLemmaCanonicalLaneLean

def DPLemmaClosure (A : DPAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem dp_lemma_endgame (A : DPAdmissibleClass) :
    DPLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicProgrammingLemmaCanonicalLaneLean
end HautevilleHouse