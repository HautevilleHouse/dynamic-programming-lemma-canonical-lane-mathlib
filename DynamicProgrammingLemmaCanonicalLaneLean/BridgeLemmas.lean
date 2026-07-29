import DynamicProgrammingLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DynamicProgrammingLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DPWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicProgrammingLemmaCanonicalLaneLean
end HautevilleHouse
