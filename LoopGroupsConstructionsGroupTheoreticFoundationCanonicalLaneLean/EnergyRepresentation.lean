import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean.CentralExtension

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean

structure EnergyRepresentationPackage {CE : CentralExtensionPackage} where
  hilbertSpace : Type u
  representationMap : Type v
  unitaryCondition : Prop
  energyBoundedBelow : Prop
  groundStateExistence : Prop

structure EnergyRepresentationEvidence {CE : CentralExtensionPackage} (ER : EnergyRepresentationPackage (CE := CE)) where
  unitaryConditionClosed : ER.unitaryCondition
  energyBoundedBelowClosed : ER.energyBoundedBelow
  groundStateExistenceClosed : ER.groundStateExistence

def EnergyRepresentationClosed {CE : CentralExtensionPackage} (ER : EnergyRepresentationPackage (CE := CE)) : Prop :=
  ER.unitaryCondition ∧ ER.energyBoundedBelow ∧ ER.groundStateExistence

theorem energy_representation_closed_from_evidence {CE : CentralExtensionPackage} (ER : EnergyRepresentationPackage (CE := CE)) (E : EnergyRepresentationEvidence ER) :
    EnergyRepresentationClosed ER := by
  exact And.intro E.unitaryConditionClosed (And.intro E.energyBoundedBelowClosed E.groundStateExistenceClosed)

end LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean
end HautevilleHouse
