import HautevilleHouse.DynamicProgrammingLemmaCanonicalLaneLean.DPAdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingLemmaCanonicalLaneLean

def bridgeClosed (A : DPAdmissibleClass) : Prop :=
  DPAdmissibleClosed A.object

theorem bridge_from_admissible_class (A : DPAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicProgrammingLemmaCanonicalLaneLean
end HautevilleHouse