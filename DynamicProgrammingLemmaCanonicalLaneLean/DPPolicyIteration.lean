import HautevilleHouse.DynamicProgrammingLemmaCanonicalLaneLean.DPValueIteration

namespace HautevilleHouse
namespace DynamicProgrammingLemmaCanonicalLaneLean

structure DPPolicyIteration (V : DPValueIteration) where
  initialPolicy : Type u
  policyImprovement : Type v
  policyEvaluation : Type w
  monotonicity : Prop
  convergence : Prop

structure DPPolicyIterationEvidence {V : DPValueIteration} (P : DPPolicyIteration V) where
  monotonicityClosed : P.monotonicity
  convergenceClosed : P.convergence

def DPPolicyIterationClosed {V : DPValueIteration} (P : DPPolicyIteration V) : Prop :=
  P.monotonicity ∧ P.convergence

theorem dp_policy_iteration_closed_from_evidence
    {V : DPValueIteration} (P : DPPolicyIteration V) (E : DPPolicyIterationEvidence P) : DPPolicyIterationClosed P := by
  exact And.intro E.monotonicityClosed E.convergenceClosed

end DynamicProgrammingLemmaCanonicalLaneLean
end HautevilleHouse