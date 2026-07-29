import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingLemmaCanonicalLaneLean

structure BellmanEquationPackage where
  stateSpace : Type u
  actionSpace : Type v
  rewardFunction : stateSpace → actionSpace → ℝ
  transitionFunction : stateSpace → actionSpace → stateSpace
  discountFactor : ℝ
  valueFunction : stateSpace → ℝ
  optimalityCondition : Prop

structure BellmanEquationEvidence (B : BellmanEquationPackage) where
  optimalityConditionClosed : B.optimalityCondition
  valueFunctionConsistency : ∀ s : B.stateSpace, B.valueFunction s = max (fun a : B.actionSpace => B.rewardFunction s a + B.discountFactor * B.valueFunction (B.transitionFunction s a))

def BellmanEquationClosed (B : BellmanEquationPackage) : Prop :=
  B.optimalityCondition

theorem bellman_equation_closed_from_evidence (B : BellmanEquationPackage) (E : BellmanEquationEvidence B) : BellmanEquationClosed B :=
  E.optimalityConditionClosed

end DynamicProgrammingLemmaCanonicalLaneLean
end HautevilleHouse
