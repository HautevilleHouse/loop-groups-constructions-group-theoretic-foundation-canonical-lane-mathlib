import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean.CentralExtension
import HautevilleHouse.LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean.LoopGroupRepresentations

namespace HautevilleHouse
namespace LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean

def ConstrainedLoopGroupsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_loop_groups_endgame (A : AdmissibleClass) :
    ConstrainedLoopGroupsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LoopGroupsConstructionsGroupTheoreticFoundationCanonicalLaneLean
end HautevilleHouse