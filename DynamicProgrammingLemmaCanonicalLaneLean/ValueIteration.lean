import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicProgrammingLemmaCanonicalLaneLean.BellmanEquation

namespace HautevilleHouse
namespace DynamicProgrammingLemmaCanonicalLaneLean

structure ValueIterationPackage {B : BellmanEquationPackage} where
  iterationCount : ℕ
  initialValue : B.stateSpace → ℝ
  convergenceThreshold : ℝ
  iterationFunction : (B.stateSpace → ℝ) → (B.stateSpace → ℝ)
  convergenceGuaranteed : Prop

structure ValueIterationEvidence {B : BellmanEquationPackage} (V : ValueIterationPackage B) where
  convergenceGuaranteedClosed : V.convergenceGuaranteed

def ValueIterationClosed {B : BellmanEquationPackage} (V : ValueIterationPackage B) : Prop :=
  V.convergenceGuaranteed

theorem value_iteration_closed_from_evidence {B : BellmanEquationPackage} (V : ValueIterationPackage B) (E : ValueIterationEvidence V) : ValueIterationClosed V :=
  E.convergenceGuaranteedClosed

end DynamicProgrammingLemmaCanonicalLaneLean
end HautevilleHouse
