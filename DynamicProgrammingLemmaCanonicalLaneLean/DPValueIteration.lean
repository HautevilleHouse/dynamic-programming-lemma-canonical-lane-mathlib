import HautevilleHouse.DynamicProgrammingLemmaCanonicalLaneLean.DPPrincipleOfOptimality

namespace HautevilleHouse
namespace DynamicProgrammingLemmaCanonicalLaneLean

structure DPValueIteration where
  initialState : Type u
  transition : Type v
  reward : Type w
  discountFactor : ℝ
  convergenceCriteria : Prop
  valueFunctionSequence : ℕ → Type u

structure DPValueIterationEvidence (V : DPValueIteration) where
  convergenceCriteriaClosed : V.convergenceCriteria
  fixedPointEquationClosed : Prop
  contractionClosed : Prop

def DPValueIterationClosed (V : DPValueIteration) : Prop :=
  V.convergenceCriteria

theorem dp_value_iteration_closed_from_evidence
    (V : DPValueIteration) (E : DPValueIterationEvidence V) : DPValueIterationClosed V := by
  exact E.convergenceCriteriaClosed

end DynamicProgrammingLemmaCanonicalLaneLean
end HautevilleHouse