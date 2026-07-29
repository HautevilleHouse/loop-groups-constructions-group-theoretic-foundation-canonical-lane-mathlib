import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean

structure EnergyFunctional where
  loopGroup : LoopGroupConstruction
  energyFunctional : loopGroup.loopSpace → ℝ
  criticalPoints : Prop
  morseTheory : Prop
  energyDefined : ∀ l : loopGroup.loopSpace, energyFunctional l ∈ ℝ
  criticalPointsClosed : criticalPoints
  morseTheoryClosed : morseTheory
  energyDefinedClosed : energyDefined

structure EnergyFunctionalEvidence (E : EnergyFunctional) where
  criticalPointsClosed : E.criticalPoints
  morseTheoryClosed : E.morseTheory
  energyDefinedClosed : E.energyDefined

def EnergyFunctionalClosed (E : EnergyFunctional) : Prop :=
  E.criticalPoints ∧ E.morseTheory ∧ E.energyDefined

theorem energy_functional_closed_from_evidence (E : EnergyFunctional)
    (Ev : EnergyFunctionalEvidence E) : EnergyFunctionalClosed E :=
  And.intro Ev.criticalPointsClosed (And.intro Ev.morseTheoryClosed Ev.energyDefinedClosed)

end LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean
end HautevilleHouse
