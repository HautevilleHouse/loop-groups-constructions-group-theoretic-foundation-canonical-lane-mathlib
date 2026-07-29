import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean

structure LoopGroupPackage where
  LoopSpace : Type u
  TargetGroup : Type v
  multiplication : LoopSpace → LoopSpace → LoopSpace
  identity : LoopSpace
  inverse : LoopSpace → LoopSpace
  groupAxoms : Prop
  smoothMultiplication : Prop
  smoothInverse : Prop

structure LoopGroupEvidence (G : LoopGroupPackage) where
  groupAxomsClosed : G.groupAxoms
  smoothMultiplicationClosed : G.smoothMultiplication
  smoothInverseClosed : G.smoothInverse

def LoopGroupClosed (G : LoopGroupPackage) : Prop :=
  G.groupAxoms ∧ G.smoothMultiplication ∧ G.smoothInverse

theorem loop_group_closed_from_evidence (G : LoopGroupPackage) (E : LoopGroupEvidence G) : LoopGroupClosed G := by
  exact And.intro E.groupAxomsClosed (And.intro E.smoothMultiplicationClosed E.smoothInverseClosed)

end LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean
end HautevilleHouse