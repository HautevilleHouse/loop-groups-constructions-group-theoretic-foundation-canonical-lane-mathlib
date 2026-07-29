import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LoopGroupWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean
end HautevilleHouse