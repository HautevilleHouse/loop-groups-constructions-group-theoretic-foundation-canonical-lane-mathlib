import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean

structure EquivariantProjection where
  sourceLoopGroup : LoopGroupConstruction
  targetGroup : Type
  projectionMap : sourceLoopGroup.loopSpace → targetGroup
  equivariance : Prop
  kernel : Prop
  equivarianceClosed : equivariance
  kernelClosed : kernel

structure EquivariantProjectionEvidence (P : EquivariantProjection) where
  equivarianceClosed : P.equivariance
  kernelClosed : P.kernel

def EquivariantProjectionClosed (P : EquivariantProjection) : Prop :=
  P.equivariance ∧ P.kernel

theorem equivariant_projection_closed_from_evidence (P : EquivariantProjection)
    (Ev : EquivariantProjectionEvidence P) : EquivariantProjectionClosed P :=
  And.intro Ev.equivarianceClosed Ev.kernelClosed

end LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean
end HautevilleHouse
