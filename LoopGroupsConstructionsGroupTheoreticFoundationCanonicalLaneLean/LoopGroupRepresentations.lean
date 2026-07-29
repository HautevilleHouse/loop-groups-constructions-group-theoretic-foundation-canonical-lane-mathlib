import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean.CentralExtension

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean

structure LoopGroupRepresentationPackage {G : Type u} [Group G] [TopologicalSpace G] [TopologicalGroup G] (L : Type v) [Group L] [TopologicalSpace L] [TopologicalGroup L] (isoL : L ≃ₜ C(S¹, G)) (C : CentralExtensionPackage G) where
  representation : L → GroupAut C.centralExtensionGroup
  representationContinuous : Prop
  highestWeight : Type w
  integrableModules : Prop
  characterFormula : Prop

structure LoopGroupRepresentationEvidence {G : Type u} [Group G] [TopologicalSpace G] [TopologicalGroup G] {L : Type v} [Group L] [TopologicalSpace L] [TopologicalGroup L] {isoL : L ≃ₜ C(S¹, G)} {C : CentralExtensionPackage G} (R : LoopGroupRepresentationPackage L isoL C) where
  representationContinuousClosed : R.representationContinuous
  integrableModulesClosed : R.integrableModules
  characterFormulaClosed : R.characterFormula

def LoopGroupRepresentationClosed {G : Type u} [Group G] [TopologicalSpace G] [TopologicalGroup G] {L : Type v} [Group L] [TopologicalSpace L] [TopologicalGroup L] {isoL : L ≃ₜ C(S¹, G)} {C : CentralExtensionPackage G} (R : LoopGroupRepresentationPackage L isoL C) : Prop :=
  R.representationContinuous ∧ R.integrableModules ∧ R.characterFormula

theorem loop_group_representation_closed_from_evidence {G : Type u} [Group G] [TopologicalSpace G] [TopologicalGroup G] {L : Type v} [Group L] [TopologicalSpace L] [TopologicalGroup L] {isoL : L ≃ₜ C(S¹, G)} {C : CentralExtensionPackage G} (R : LoopGroupRepresentationPackage L isoL C) (E : LoopGroupRepresentationEvidence R) : LoopGroupRepresentationClosed R := by
  exact And.intro E.representationContinuousClosed (And.intro E.integrableModulesClosed E.characterFormulaClosed)

end LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean
end HautevilleHouse