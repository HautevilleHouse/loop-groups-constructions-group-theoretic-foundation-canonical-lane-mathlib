import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean.VertexOperatorAlgebra

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean

structure ModularInvariancePackage {CE : CentralExtensionPackage} {ER : EnergyRepresentationPackage (CE := CE)} {VOA : VertexOperatorAlgebraPackage (CE := CE) (ER := ER)} where
  characterDefined : Prop
  modularTransformationSL2Z : Prop
  invarianceCondition : Prop
  genusOnePartitionFunction : Prop

structure ModularInvarianceEvidence {CE : CentralExtensionPackage} {ER : EnergyRepresentationPackage (CE := CE)} {VOA : VertexOperatorAlgebraPackage (CE := CE) (ER := ER)} (MI : ModularInvariancePackage (CE := CE) (ER := ER) (VOA := VOA)) where
  characterDefinedClosed : MI.characterDefined
  modularTransformationSL2ZClosed : MI.modularTransformationSL2Z
  invarianceConditionClosed : MI.invarianceCondition
  genusOnePartitionFunctionClosed : MI.genusOnePartitionFunction

def ModularInvarianceClosed {CE : CentralExtensionPackage} {ER : EnergyRepresentationPackage (CE := CE)} {VOA : VertexOperatorAlgebraPackage (CE := CE) (ER := ER)} (MI : ModularInvariancePackage (CE := CE) (ER := ER) (VOA := VOA)) : Prop :=
  MI.characterDefined ∧ MI.modularTransformationSL2Z ∧ MI.invarianceCondition ∧ MI.genusOnePartitionFunction

theorem modular_invariance_closed_from_evidence {CE : CentralExtensionPackage} {ER : EnergyRepresentationPackage (CE := CE)} {VOA : VertexOperatorAlgebraPackage (CE := CE) (ER := ER)} (MI : ModularInvariancePackage (CE := CE) (ER := ER) (VOA := VOA)) (E : ModularInvarianceEvidence MI) :
    ModularInvarianceClosed MI := by
  exact And.intro E.characterDefinedClosed
    (And.intro E.modularTransformationSL2ZClosed
      (And.intro E.invarianceConditionClosed E.genusOnePartitionFunctionClosed))

end LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean
end HautevilleHouse
