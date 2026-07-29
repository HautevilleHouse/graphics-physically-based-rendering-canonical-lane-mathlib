import GraphicsPhysicallyBasedRenderingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicallyBasedRenderingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def renderingProjection : Projection RenderingEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem rendering_projection_idempotent (x : RenderingEndgameState) :
    renderingProjection.toFun (renderingProjection.toFun x) = renderingProjection.toFun x := by
  exact renderingProjection.idempotent x

end GraphicsPhysicallyBasedRenderingCanonicalLaneLean
end HautevilleHouse