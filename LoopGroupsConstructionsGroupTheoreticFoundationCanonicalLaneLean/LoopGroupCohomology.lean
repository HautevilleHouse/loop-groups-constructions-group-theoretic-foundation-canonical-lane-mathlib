import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean.CentralExtension

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean

structure LoopGroupCohomologyPackage (C : CentralExtensionPackage L) where
  secondCohomologyGroup : Type u
  cocycleClass : secondCohomologyGroup
  classificationIsomorphism : Prop

structure LoopGroupCohomologyEvidence (H : LoopGroupCohomologyPackage C) where
  classificationIsomorphismClosed : H.classificationIsomorphism

def LoopGroupCohomologyClosed (H : LoopGroupCohomologyPackage C) : Prop :=
  H.classificationIsomorphism

theorem loop_group_cohomology_closed_from_evidence (H : LoopGroupCohomologyPackage C) (E : LoopGroupCohomologyEvidence H) : LoopGroupCohomologyClosed H :=
  E.classificationIsomorphismClosed

end LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean
end HautevilleHouse