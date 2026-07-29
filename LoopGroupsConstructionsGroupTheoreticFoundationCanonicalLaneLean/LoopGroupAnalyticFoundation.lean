import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean

structure LoopGroupAnalyticFoundation where
  centralExtension : CentralExtensionPackage
  centralExtensionEvidence : CentralExtensionEvidence centralExtension
  representation : RepresentationPackage centralExtension
  representationEvidence : RepresentationEvidence representation
  projectiveUnitary : ProjectiveUnitaryPackage representation
  projectiveUnitaryEvidence : ProjectiveUnitaryEvidence projectiveUnitary

def LoopGroupAnalyticFoundationClosed (A : LoopGroupAnalyticFoundation) : Prop :=
  CentralExtensionClosed A.centralExtension ∧
  RepresentationClosed A.representation ∧
  ProjectiveUnitaryClosed A.projectiveUnitary

theorem loop_group_analytic_foundation_closed_from_evidence
    (A : LoopGroupAnalyticFoundation) : LoopGroupAnalyticFoundationClosed A := by
  exact And.intro (central_extension_closed_from_evidence A.centralExtension A.centralExtensionEvidence)
    (And.intro (representation_closed_from_evidence A.representation A.representationEvidence)
      (projective_unitary_closed_from_evidence A.projectiveUnitary A.projectiveUnitaryEvidence))

end LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean
end HautevilleHouse