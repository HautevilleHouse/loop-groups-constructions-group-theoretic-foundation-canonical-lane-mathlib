import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean

structure LoopGroupAdmittedObject where
  space : Type
  topologicalSpace : TopologicalSpace space
  topologicalGroup : TopologicalGroup space
  loopGroupStructure : Prop
  centralExtension : Prop
  conclusion : loopGroupStructure

def LoopGroupWitnessClosed (O : LoopGroupAdmittedObject) : Prop :=
  O.loopGroupStructure

end LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean
end HautevilleHouse