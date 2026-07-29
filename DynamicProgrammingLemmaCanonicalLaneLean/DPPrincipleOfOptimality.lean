import HautevilleHouse.DynamicProgrammingLemmaCanonicalLaneLean.DPAdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingLemmaCanonicalLaneLean

structure DPOptimalPolicy where
  valueFunction : DPAdmissibleObject -> Type u
  policy : Type v
  optimalityEquation : Prop
  bellmanEquation : Prop
  optimalityCondition : Prop

structure DPOptimalPolicyEvidence (P : DPOptimalPolicy) where
  optimalityEquationClosed : P.optimalityEquation
  bellmanEquationClosed : P.bellmanEquation
  optimalityConditionClosed : P.optimalityCondition

def DPOptimalPolicyClosed (P : DPOptimalPolicy) : Prop :=
  P.optimalityEquation ∧ P.bellmanEquation ∧ P.optimalityCondition

theorem dp_optimal_policy_closed_from_evidence
    (P : DPOptimalPolicy) (E : DPOptimalPolicyEvidence P) : DPOptimalPolicyClosed P := by
  exact And.intro E.optimalityEquationClosed (And.intro E.bellmanEquationClosed E.optimalityConditionClosed)

end DynamicProgrammingLemmaCanonicalLaneLean
end HautevilleHouse