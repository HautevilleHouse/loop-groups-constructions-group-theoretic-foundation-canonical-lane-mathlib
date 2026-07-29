import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean.EnergyRepresentation

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean

structure VertexOperatorAlgebraPackage {CE : CentralExtensionPackage} {ER : EnergyRepresentationPackage (CE := CE)} where
  stateSpace : Type u
  vertexOperatorDefined : Prop
  localityCondition : Prop
  associativityCondition : Prop
  conformalVectorGiven : Prop

structure VertexOperatorAlgebraEvidence {CE : CentralExtensionPackage} {ER : EnergyRepresentationPackage (CE := CE)} (VOA : VertexOperatorAlgebraPackage (CE := CE) (ER := ER)) where
  vertexOperatorDefinedClosed : VOA.vertexOperatorDefined
  localityConditionClosed : VOA.localityCondition
  associativityConditionClosed : VOA.associativityCondition
  conformalVectorGivenClosed : VOA.conformalVectorGiven

def VertexOperatorAlgebraClosed {CE : CentralExtensionPackage} {ER : EnergyRepresentationPackage (CE := CE)} (VOA : VertexOperatorAlgebraPackage (CE := CE) (ER := ER)) : Prop :=
  VOA.vertexOperatorDefined ∧ VOA.localityCondition ∧ VOA.associativityCondition ∧ VOA.conformalVectorGiven

theorem vertex_operator_algebra_closed_from_evidence {CE : CentralExtensionPackage} {ER : EnergyRepresentationPackage (CE := CE)} (VOA : VertexOperatorAlgebraPackage (CE := CE) (ER := ER)) (E : VertexOperatorAlgebraEvidence VOA) :
    VertexOperatorAlgebraClosed VOA := by
  exact And.intro E.vertexOperatorDefinedClosed
    (And.intro E.localityConditionClosed
      (And.intro E.associativityConditionClosed E.conformalVectorGivenClosed))

end LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean
end HautevilleHouse
