import GraphicsPhysicallyBasedRenderingCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GraphicsPhysicallyBasedRenderingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure RenderingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure RenderingAdmittedObject where
  space : RenderingSpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure RenderingEndgameState where
  object : RenderingAdmittedObject

def RenderingWitnessClosed (O : RenderingAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end GraphicsPhysicallyBasedRenderingCanonicalLaneLean
end HautevilleHouse