import GraphicsPhysicallyBasedRenderingCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GraphicsPhysicallyBasedRenderingCanonicalLaneLean

def ConstrainedRenderingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_rendering_endgame (A : AdmissibleClass) :
    ConstrainedRenderingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphicsPhysicallyBasedRenderingCanonicalLaneLean
end HautevilleHouse