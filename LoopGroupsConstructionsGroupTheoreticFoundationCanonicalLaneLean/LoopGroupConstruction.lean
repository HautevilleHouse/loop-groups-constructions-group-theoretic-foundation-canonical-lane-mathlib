import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean

structure LoopGroupConstruction where
  baseType : Type
  loopSpace : Type
  groupStructure : Type
  pointwiseMultiplication : loopSpace → loopSpace → loopSpace
  identityElement : loopSpace
  inverseOperation : loopSpace → loopSpace
  groupAxioms : Prop
  smoothStructure : Prop
  groupAxiomsClosed : groupAxioms
  smoothStructureClosed : smoothStructure

structure LoopGroupConstructionEvidence (L : LoopGroupConstruction) where
  groupAxiomsClosed : L.groupAxioms
  smoothStructureClosed : L.smoothStructure

def LoopGroupConstructionClosed (L : LoopGroupConstruction) : Prop :=
  L.groupAxioms ∧ L.smoothStructure

theorem loop_group_construction_closed_from_evidence (L : LoopGroupConstruction)
    (E : LoopGroupConstructionEvidence L) : LoopGroupConstructionClosed L :=
  And.intro E.groupAxiomsClosed E.smoothStructureClosed

end LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean
end HautevilleHouse
