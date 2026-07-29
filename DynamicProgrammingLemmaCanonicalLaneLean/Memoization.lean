import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingLemmaCanonicalLaneLean

structure MemoizationPackage {P : OptimalSubstructurePackage} (C : ComputationStructurePackage P) where
  cacheStructure : Type u
  lookupTime : Prop
  storagePolicy : Prop
  cacheCorrectness : Prop

structure MemoizationEvidence {P : OptimalSubstructurePackage} {C : ComputationStructurePackage P} (M : MemoizationPackage C) where
  lookupTimeClosed : M.lookupTime
  storagePolicyClosed : M.storagePolicy
  cacheCorrectnessClosed : M.cacheCorrectness

def MemoizationClosed {P : OptimalSubstructurePackage} {C : ComputationStructurePackage P} (M : MemoizationPackage C) : Prop :=
  M.lookupTime ∧ M.storagePolicy ∧ M.cacheCorrectness

theorem memoization_closed_from_evidence {P : OptimalSubstructurePackage} {C : ComputationStructurePackage P} (M : MemoizationPackage C) (E : MemoizationEvidence M) :
    MemoizationClosed M := by
  exact And.intro E.lookupTimeClosed (And.intro E.storagePolicyClosed E.cacheCorrectnessClosed)

end DynamicProgrammingLemmaCanonicalLaneLean
end HautevilleHouse