import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean

structure KacMoodyAlgebra where
  generalizedCartanMatrix : Type
  generators : Type
  relations : Type
  presentation : Prop
  integrableRepresentation : HighestWeightModule
  presentationClosed : presentation
  integrableRepresentationClosed : HighestWeightModuleClosed integrableRepresentation

structure KacMoodyAlgebraEvidence (A : KacMoodyAlgebra) where
  presentationClosed : A.presentation
  integrableRepresentationClosed : A.integrableRepresentationClosed

def KacMoodyAlgebraClosed (A : KacMoodyAlgebra) : Prop :=
  A.presentation ∧ HighestWeightModuleClosed A.integrableRepresentation

theorem kac_moody_algebra_closed_from_evidence (A : KacMoodyAlgebra)
    (Ev : KacMoodyAlgebraEvidence A) : KacMoodyAlgebraClosed A :=
  And.intro Ev.presentationClosed Ev.integrableRepresentationClosed

end LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean
end HautevilleHouse
