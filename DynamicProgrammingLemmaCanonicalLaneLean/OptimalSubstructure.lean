import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingLemmaCanonicalLaneLean

structure OptimalSubstructurePackage where
  problemType : Type u
  subproblemRelation : problemType → List problemType
  optimalValue : problemType → ℝ
  optimalSolution : problemType → Option (List problemType)
  optimalSubstructureProperty : Prop

structure OptimalSubstructureEvidence (O : OptimalSubstructurePackage) where
  optimalSubstructurePropertyClosed : O.optimalSubstructureProperty

def OptimalSubstructureClosed (O : OptimalSubstructurePackage) : Prop :=
  O.optimalSubstructureProperty

theorem optimal_substructure_closed_from_evidence (O : OptimalSubstructurePackage) (E : OptimalSubstructureEvidence O) : OptimalSubstructureClosed O :=
  E.optimalSubstructurePropertyClosed

end DynamicProgrammingLemmaCanonicalLaneLean
end HautevilleHouse
