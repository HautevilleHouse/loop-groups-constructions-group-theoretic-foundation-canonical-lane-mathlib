import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean.LoopGroupRepresentations

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean

structure LoopGroupEnergyFunctionalPackage (R : LoopGroupRepresentationPackage H) where
  energyFunctional : Type u
  criticalPoints : Prop
  morseHomologyIsomorphism : Prop

structure LoopGroupEnergyFunctionalEvidence (E : LoopGroupEnergyFunctionalPackage R) where
  criticalPointsClosed : E.criticalPoints
  morseHomologyIsomorphismClosed : E.morseHomologyIsomorphism

def LoopGroupEnergyFunctionalClosed (E : LoopGroupEnergyFunctionalPackage R) : Prop :=
  E.criticalPoints ∧ E.morseHomologyIsomorphism

theorem loop_group_energy_functional_closed_from_evidence (E : LoopGroupEnergyFunctionalPackage R) (Ev : LoopGroupEnergyFunctionalEvidence E) : LoopGroupEnergyFunctionalClosed E :=
  And.intro Ev.criticalPointsClosed Ev.morseHomologyIsomorphismClosed

end LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean
end HautevilleHouse