import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean

structure LoopGroupSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LoopGroupAdmittedObject where
  space : LoopGroupSpace
  lieGroupStructure : Prop
  centralExtension : Prop
  conclusion : centralExtension

def LoopGroupWitnessClosed (O : LoopGroupAdmittedObject) : Prop :=
  O.centralExtension

end LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean
end HautevilleHouse