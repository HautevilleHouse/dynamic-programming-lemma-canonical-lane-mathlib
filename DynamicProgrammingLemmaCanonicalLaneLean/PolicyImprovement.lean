import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingLemmaCanonicalLaneLean

structure PolicyImprovementPackage (A : AdmissibleClass) where
  stateSpace : Type u
  actionSpace : Type v
  rewardFunction : stateSpace → actionSpace → ℝ
  transitionFunction : stateSpace → actionSpace → stateSpace
  discountFactor : ℝ
  currentPolicy : stateSpace → actionSpace
  improvedPolicy : stateSpace → actionSpace
  improvementCondition : Prop
  monotonicImprovement : Prop
  convergenceToOptimal : Prop

structure PolicyImprovementEvidence {A : AdmissibleClass} (P : PolicyImprovementPackage A) where
  improvementConditionClosed : P.improvementCondition
  monotonicImprovementClosed : P.monotonicImprovement
  convergenceToOptimalClosed : P.convergenceToOptimal

def PolicyImprovementClosed {A : AdmissibleClass} (P : PolicyImprovementPackage A) : Prop :=
  P.improvementCondition ∧ P.monotonicImprovement ∧ P.convergenceToOptimal

theorem policy_improvement_closed_from_evidence
    {A : AdmissibleClass} (P : PolicyImprovementPackage A)
    (E : PolicyImprovementEvidence P) : PolicyImprovementClosed P := by
  exact And.intro E.improvementConditionClosed
    (And.intro E.monotonicImprovementClosed E.convergenceToOptimalClosed)

end HautevilleHouse
end DynamicProgrammingLemmaCanonicalLaneLean