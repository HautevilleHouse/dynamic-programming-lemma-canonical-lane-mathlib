import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicProgrammingLemmaCanonicalLaneLean.BellmanEquation

namespace HautevilleHouse
namespace DynamicProgrammingLemmaCanonicalLaneLean

structure PolicyIterationPackage {B : BellmanEquationPackage} where
  policySpace : Type w
  policyEvaluation : B.stateSpace → B.policySpace → ℝ
  policyImprovement : (B.stateSpace → ℝ) → (B.stateSpace → B.policySpace)
  monotonicImprovement : Prop
  optimalPolicyGuaranteed : Prop

structure PolicyIterationEvidence {B : BellmanEquationPackage} (P : PolicyIterationPackage B) where
  monotonicImprovementClosed : P.monotonicImprovement
  optimalPolicyGuaranteedClosed : P.optimalPolicyGuaranteed

def PolicyIterationClosed {B : BellmanEquationPackage} (P : PolicyIterationPackage B) : Prop :=
  P.monotonicImprovement ∧ P.optimalPolicyGuaranteed

theorem policy_iteration_closed_from_evidence {B : BellmanEquationPackage} (P : PolicyIterationPackage B) (E : PolicyIterationEvidence P) : PolicyIterationClosed P :=
  And.intro E.monotonicImprovementClosed E.optimalPolicyGuaranteedClosed

end DynamicProgrammingLemmaCanonicalLaneLean
end HautevilleHouse
