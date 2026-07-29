import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean

structure CentralExtensionPackage where
  basementConnected : Prop
  smoothCocycle : Prop
  groupCohomologyClass : Prop
  extensionExists : Prop
  extensionUnique : Prop

structure CentralExtensionEvidence (P : CentralExtensionPackage) where
  basementConnectedClosed : P.basementConnected
  smoothCocycleClosed : P.smoothCocycle
  groupCohomologyClassClosed : P.groupCohomologyClass
  extensionExistsClosed : P.extensionExists
  extensionUniqueClosed : P.extensionUnique

def CentralExtensionClosed (P : CentralExtensionPackage) : Prop :=
  P.basementConnected ∧ P.smoothCocycle ∧ P.groupCohomologyClass ∧ P.extensionExists ∧ P.extensionUnique

theorem central_extension_closed_from_evidence (P : CentralExtensionPackage) (E : CentralExtensionEvidence P) : CentralExtensionClosed P := by
  exact And.intro E.basementConnectedClosed
    (And.intro E.smoothCocycleClosed
      (And.intro E.groupCohomologyClassClosed
        (And.intro E.extensionExistsClosed E.extensionUniqueClosed)))

end LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean
end HautevilleHouse