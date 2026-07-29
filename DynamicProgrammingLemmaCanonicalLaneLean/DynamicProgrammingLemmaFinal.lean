import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingLemmaCanonicalLaneLean

def DynamicProgrammingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem dynamic_programming_endgame (A : AdmissibleClass) : DynamicProgrammingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicProgrammingLemmaCanonicalLaneLean
end HautevilleHouse