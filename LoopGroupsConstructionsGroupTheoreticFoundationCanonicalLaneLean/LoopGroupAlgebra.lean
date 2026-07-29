import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean

structure LoopGroupAlgebraPackage where
  underlyingVectorSpace : Type u
  bracket : underlyingVectorSpace → underlyingVectorSpace → underlyingVectorSpace
  jacobiIdentity : Prop
  antisymmetry : Prop
  bilinearity : Prop
  smoothBracket : Prop

structure LoopGroupAlgebraEvidence (A : LoopGroupAlgebraPackage) where
  jacobiIdentityClosed : A.jacobiIdentity
  antisymmetryClosed : A.antisymmetry
  bilinearityClosed : A.bilinearity
  smoothBracketClosed : A.smoothBracket

def LoopGroupAlgebraClosed (A : LoopGroupAlgebraPackage) : Prop :=
  A.jacobiIdentity ∧ A.antisymmetry ∧ A.bilinearity ∧ A.smoothBracket

theorem loop_group_algebra_closed_from_evidence (A : LoopGroupAlgebraPackage) (E : LoopGroupAlgebraEvidence A) : LoopGroupAlgebraClosed A := by
  exact And.intro E.jacobiIdentityClosed (And.intro E.antisymmetryClosed (And.intro E.bilinearityClosed E.smoothBracketClosed))

end LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean
end HautevilleHouse