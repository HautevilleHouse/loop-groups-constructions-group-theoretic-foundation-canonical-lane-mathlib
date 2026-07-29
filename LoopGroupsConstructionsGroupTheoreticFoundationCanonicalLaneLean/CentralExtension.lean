import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean

structure CentralExtensionPackage (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G] where
  centralExtensionGroup : Type u
  groupStructure : Group centralExtensionGroup
  projectionHom : centralExtensionGroup → G
  kernelIsCentral : Prop
  kernelS1 : Prop
  cohomologyClass : Prop

structure CentralExtensionEvidence {G : Type u} [Group G] [TopologicalSpace G] [TopologicalGroup G] (C : CentralExtensionPackage G) where
  kernelIsCentralClosed : C.kernelIsCentral
  kernelS1Closed : C.kernelS1
  cohomologyClassClosed : C.cohomologyClass

def CentralExtensionClosed {G : Type u} [Group G] [TopologicalSpace G] [TopologicalGroup G] (C : CentralExtensionPackage G) : Prop :=
  C.kernelIsCentral ∧ C.kernelS1 ∧ C.cohomologyClass

theorem central_extension_closed_from_evidence {G : Type u} [Group G] [TopologicalSpace G] [TopologicalGroup G] (C : CentralExtensionPackage G) (E : CentralExtensionEvidence C) : CentralExtensionClosed C := by
  exact And.intro E.kernelIsCentralClosed (And.intro E.kernelS1Closed E.cohomologyClassClosed)

end LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean
end HautevilleHouse