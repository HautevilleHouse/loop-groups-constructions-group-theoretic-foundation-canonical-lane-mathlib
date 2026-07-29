import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean

structure RepresentationPackage (C : CentralExtensionPackage) where
  hilbertSpace : Type
  groupAction : Type
  irreducible : Prop
  unitary : Prop

structure RepresentationEvidence {C : CentralExtensionPackage} (R : RepresentationPackage C) where
  irreducibleClosed : R.irreducible
  unitaryClosed : R.unitary

def RepresentationClosed {C : CentralExtensionPackage} (R : RepresentationPackage C) : Prop :=
  R.irreducible ∧ R.unitary

theorem representation_closed_from_evidence
    {C : CentralExtensionPackage} (R : RepresentationPackage C) (E : RepresentationEvidence R) : RepresentationClosed R := by
  exact And.intro E.irreducibleClosed E.unitaryClosed

end LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean
end HautevilleHouse