import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingLemmaCanonicalLaneLean

structure StateTransitionModel where
  stateSpace : Type u
  actionSpace : Type v
  transitionFunction : stateSpace → actionSpace → stateSpace
  rewardFunction : stateSpace → actionSpace → ℝ
  initialDistribution : stateSpace → ℝ
  horizon : ℕ

structure StateTransitionEvidence (S : StateTransitionModel) where
  transitionFunctionClosed : ∀ (s : S.stateSpace) (a : S.actionSpace), S.transitionFunction s a = S.transitionFunction s a
  rewardFunctionClosed : ∀ (s : S.stateSpace) (a : S.actionSpace), S.rewardFunction s a = S.rewardFunction s a
  initialDistributionClosed : ∀ (s : S.stateSpace), S.initialDistribution s = S.initialDistribution s
  horizonClosed : S.horizon = S.horizon

def StateTransitionClosed (S : StateTransitionModel) : Prop :=
  (∀ (s : S.stateSpace) (a : S.actionSpace), S.transitionFunction s a = S.transitionFunction s a) ∧
  (∀ (s : S.stateSpace) (a : S.actionSpace), S.rewardFunction s a = S.rewardFunction s a) ∧
  (∀ (s : S.stateSpace), S.initialDistribution s = S.initialDistribution s) ∧
  (S.horizon = S.horizon)

theorem state_transition_closed_from_evidence (S : StateTransitionModel) (E : StateTransitionEvidence S) : StateTransitionClosed S := by
  exact And.intro E.transitionFunctionClosed (And.intro E.rewardFunctionClosed (And.intro E.initialDistributionClosed E.horizonClosed))

end DynamicProgrammingLemmaCanonicalLaneLean
end HautevilleHouse