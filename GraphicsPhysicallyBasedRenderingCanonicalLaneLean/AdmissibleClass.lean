import GraphicsPhysicallyBasedRenderingCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GraphicsPhysicallyBasedRenderingCanonicalLaneLean

structure AdmissibleClass where
  object : RenderingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  RenderingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GraphicsPhysicallyBasedRenderingCanonicalLaneLean
end HautevilleHouse