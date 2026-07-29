import DynamicProgrammingLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DynamicProgrammingLemmaCanonicalLaneLean

def ConstrainedDynamicProgrammingLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dynamic_programming_lemma_endgame (A : AdmissibleClass) :
    ConstrainedDynamicProgrammingLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicProgrammingLemmaCanonicalLaneLean
end HautevilleHouse
