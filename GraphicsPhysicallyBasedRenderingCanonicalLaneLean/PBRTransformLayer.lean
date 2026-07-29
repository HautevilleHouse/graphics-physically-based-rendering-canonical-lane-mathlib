import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicallyBasedRenderingCanonicalLaneLean

structure PBRTransformLayer where
  localBasis : Type
  importanceSampling : Type
  pdf : Prop
  transformDerivative : Prop
  closureUnderIntegral : Prop
  pdfClosed : pdf
  transformDerivativeClosed : transformDerivative
  closureUnderIntegralClosed : closureUnderIntegral

def PBRTransformLayerClosed (L : PBRTransformLayer) : Prop :=
  L.pdf ∧ L.transformDerivative ∧ L.closureUnderIntegral

structure PBRTransformAdmissibleClass where
  object : AdmissibleClass
  layerClosed : PBRTransformLayerClosed (⟨object, True, True, True, True, True, True, True⟩ : PBRTransformLayer)

theorem pbr_transform_admissible_bridge (A : PBRTransformAdmissibleClass) : bridgeClosed A.object := by
  exact A.object.endpointSatisfied

end GraphicsPhysicallyBasedRenderingCanonicalLaneLean
end HautevilleHouse