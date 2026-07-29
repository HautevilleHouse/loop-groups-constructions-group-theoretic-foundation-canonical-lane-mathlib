import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean

structure HighestWeightModule where
  loopGroup : LoopGroupConstruction
  centralExtension : CentralExtension
  weight : Type
  moduleStructure : Type
  highestWeightCondition : Prop
  integrability : Prop
  highestWeightClosed : highestWeightCondition
  integrabilityClosed : integrability

structure HighestWeightModuleEvidence (M : HighestWeightModule) where
  highestWeightClosed : M.highestWeightCondition
  integrabilityClosed : M.integrability

def HighestWeightModuleClosed (M : HighestWeightModule) : Prop :=
  M.highestWeightCondition ∧ M.integrability

theorem highest_weight_module_closed_from_evidence (M : HighestWeightModule)
    (Ev : HighestWeightModuleEvidence M) : HighestWeightModuleClosed M :=
  And.intro Ev.highestWeightClosed Ev.integrabilityClosed

end LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean
end HautevilleHouse
