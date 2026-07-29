import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean

structure LoopGroupRepresentationPackage (G : LoopGroupPackage) where
  representationSpace : Type u
  action : G.LoopSpace → representationSpace → representationSpace
  linearity : Prop
  continuity : Prop
  irreducibility : Prop

structure LoopGroupRepresentationEvidence {G : LoopGroupPackage} (R : LoopGroupRepresentationPackage G) where
  linearityClosed : R.linearity
  continuityClosed : R.continuity
  irreducibilityClosed : R.irreducibility

def LoopGroupRepresentationClosed {G : LoopGroupPackage} (R : LoopGroupRepresentationPackage G) : Prop :=
  R.linearity ∧ R.continuity ∧ R.irreducibility

theorem loop_group_representation_closed_from_evidence {G : LoopGroupPackage} (R : LoopGroupRepresentationPackage G) (E : LoopGroupRepresentationEvidence R) : LoopGroupRepresentationClosed R := by
  exact And.intro E.linearityClosed (And.intro E.continuityClosed E.irreducibilityClosed)

end LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean
end HautevilleHouse