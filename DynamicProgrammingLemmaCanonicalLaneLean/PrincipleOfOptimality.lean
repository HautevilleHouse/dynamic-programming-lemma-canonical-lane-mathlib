import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicProgrammingLemmaCanonicalLaneLean.BellmanEquation

namespace HautevilleHouse
namespace DynamicProgrammingLemmaCanonicalLaneLean

structure PrincipleOfOptimalityPackage {B : BellmanEquationPackage} where
  policy : B.stateSpace → B.actionSpace
  valueFunction : B.stateSpace → ℝ
  optimalityCondition : ∀ s : B.stateSpace, 
    (B.rewardFunction s (policy s) + B.discountFactor * B.valueFunction (B.transitionFunction s (policy s))) = max (fun a : B.actionSpace => B.rewardFunction s a + B.discountFactor * B.valueFunction (B.transitionFunction s a))
  
structure PrincipleOfOptimalityEvidence {B : BellmanEquationPackage} (P : PrincipleOfOptimalityPackage B) where
  optimalityConditionClosed : P.optimalityCondition

def PrincipleOfOptimalityClosed {B : BellmanEquationPackage} (P : PrincipleOfOptimalityPackage B) : Prop :=
  P.optimalityCondition

theorem principle_of_optimality_closed_from_evidence {B : BellmanEquationPackage} (P : PrincipleOfOptimalityPackage B) (E : PrincipleOfOptimalityEvidence P) : PrincipleOfOptimalityClosed P :=
  E.optimalityConditionClosed

end DynamicProgrammingLemmaCanonicalLaneLean
end HautevilleHouse
