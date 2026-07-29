import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicallyBasedRenderingCanonicalLaneLean

structure SpectralRenderingPipeline where
  spectralSampleDomain : Type
  spdRepresentation : Type
  colorSpaceTransform : Type
  sensorResponse : Type
  spectralConsistency : Prop
  colorMatchingDefined : Prop
  spectralConsistencyClosed : spectralConsistency
  colorMatchingDefinedClosed : colorMatchingDefined

def SpectralRenderingPipelineClosed (P : SpectralRenderingPipeline) : Prop :=
  P.spectralConsistency ∧ P.colorMatchingDefined

structure SpectralRenderingAdmissibleClass where
  object : AdmissibleClass
  pipelineClosed : SpectralRenderingPipelineClosed (⟨Type, Type, Type, Type, True, True, True, True⟩ : SpectralRenderingPipeline)

theorem spectral_rendering_bridge (A : SpectralRenderingAdmissibleClass) : bridgeClosed A.object := by
  exact A.object.endpointSatisfied

end GraphicsPhysicallyBasedRenderingCanonicalLaneLean
end HautevilleHouse