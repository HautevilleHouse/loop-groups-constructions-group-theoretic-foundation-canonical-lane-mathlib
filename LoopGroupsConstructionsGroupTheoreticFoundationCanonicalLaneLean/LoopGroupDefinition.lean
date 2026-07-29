import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean

structure LoopGroupStructure (G : Type u) [Group G] where
  baseLoopSpace : Type u
  pointwiseMultiplication : Group baseLoopSpace
  evaluationMap : baseLoopSpace → G
  evaluationSurjective : Function.Surjective evaluationMap

structure LoopGroupEvidence (L : LoopGroupStructure G) where
  groupLawClosed : Group L.baseLoopSpace
  evaluationSurjectiveClosed : L.evaluationSurjective

def LoopGroupClosed (L : LoopGroupStructure G) : Prop :=
  Group L.baseLoopSpace ∧ L.evaluationSurjective

theorem loop_group_closed_from_evidence (L : LoopGroupStructure G) (E : LoopGroupEvidence L) : LoopGroupClosed L :=
  And.intro E.groupLawClosed E.evaluationSurjectiveClosed

end LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean
end HautevilleHouse