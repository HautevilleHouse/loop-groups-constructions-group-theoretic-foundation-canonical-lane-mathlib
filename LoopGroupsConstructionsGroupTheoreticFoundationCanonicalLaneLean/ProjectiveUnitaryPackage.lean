import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean

structure ProjectiveUnitaryPackage (R : RepresentationPackage) where
  projectiveRep : Type
  cocycleMatch : Prop
  vacuumVector : Prop

structure ProjectiveUnitaryEvidence {R : RepresentationPackage} (P : ProjectiveUnitaryPackage R) where
  cocycleMatchClosed : P.cocycleMatch
  vacuumVectorClosed : P.vacuumVector

def ProjectiveUnitaryClosed {R : RepresentationPackage} (P : ProjectiveUnitaryPackage R) : Prop :=
  P.cocycleMatch ∧ P.vacuumVector

theorem projective_unitary_closed_from_evidence
    {R : RepresentationPackage} (P : ProjectiveUnitaryPackage R) (E : ProjectiveUnitaryEvidence P) : ProjectiveUnitaryClosed P := by
  exact And.intro E.cocycleMatchClosed E.vacuumVectorClosed

end LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean
end HautevilleHouse