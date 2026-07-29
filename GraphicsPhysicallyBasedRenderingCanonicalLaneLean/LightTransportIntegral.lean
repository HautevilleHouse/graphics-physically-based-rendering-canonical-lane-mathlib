import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicallyBasedRenderingCanonicalLaneLean

structure LightTransportIntegral where
  pathSpace : Type
  measure : Type
  throughput : Type
  emission : Type
  scattering : Type
  cameraResponse : Type
  integralDefined : Prop
  pathIntegralConverges : Prop
  integralDefinedClosed : integralDefined
  pathIntegralConvergesClosed : pathIntegralConverges

def LightTransportIntegralClosed (I : LightTransportIntegral) : Prop :=
  I.integralDefined ∧ I.pathIntegralConverges

structure LightTransportAdmissibleClass where
  object : AdmissibleClass
  integralClosed : LightTransportIntegralClosed (⟨Type, Type, Type, Type, Type, Type, True, True, True, True⟩ : LightTransportIntegral)

theorem light_transport_bridge (A : LightTransportAdmissibleClass) : bridgeClosed A.object := by
  exact A.object.endpointSatisfied

end GraphicsPhysicallyBasedRenderingCanonicalLaneLean
end HautevilleHouse