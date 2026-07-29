import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingLemmaCanonicalLaneLean

structure BellmanOptimalityPackage where
  valueFunction : Type u
  optimalPolicy : Type v
  bellmanEquation : Prop
  valueFunctionDefined : Prop
  optimalPolicyExtracted : Prop

structure BellmanOptimalityEvidence (B : BellmanOptimalityPackage) where
  bellmanEquationClosed : B.bellmanEquation
  valueFunctionDefinedClosed : B.valueFunctionDefined
  optimalPolicyExtractedClosed : B.optimalPolicyExtracted

def BellmanOptimalityClosed (B : BellmanOptimalityPackage) : Prop :=
  B.bellmanEquation ∧ B.valueFunctionDefined ∧ B.optimalPolicyExtracted

theorem bellman_optimality_closed_from_evidence (B : BellmanOptimalityPackage) (E : BellmanOptimalityEvidence B) : BellmanOptimalityClosed B := by
  exact And.intro E.bellmanEquationClosed (And.intro E.valueFunctionDefinedClosed E.optimalPolicyExtractedClosed)

end DynamicProgrammingLemmaCanonicalLaneLean
end HautevilleHouse