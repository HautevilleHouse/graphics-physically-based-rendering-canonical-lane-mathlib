import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicallyBasedRenderingCanonicalLaneLean

structure CameraModelPackage where
  projectionType : Type u
  sensorResponse : Type v
  lensModel : Type w
  rayGeneration : Prop
  sensitivityClosed : Prop
  lensDefinedClosed : Prop
  projectionDefinedClosed : Prop
  rayGenerationClosed : Prop

structure CameraModelEvidence (C : CameraModelPackage) where
  projectionDefinedClosedTerm : C.projectionDefinedClosed
  sensitivityClosedTerm : C.sensitivityClosed
  lensDefinedClosedTerm : C.lensDefinedClosed
  rayGenerationClosedTerm : C.rayGenerationClosed

def CameraModelClosed (C : CameraModelPackage) : Prop :=
  C.projectionDefinedClosed ∧ C.sensitivityClosed ∧
  C.lensDefinedClosed ∧ C.rayGenerationClosed

theorem camera_model_closed_from_evidence (C : CameraModelPackage)
    (E : CameraModelEvidence C) : CameraModelClosed C := by
  exact And.intro E.projectionDefinedClosedTerm
    (And.intro E.sensitivityClosedTerm
      (And.intro E.lensDefinedClosedTerm
        E.rayGenerationClosedTerm))

end GraphicsPhysicallyBasedRenderingCanonicalLaneLean
end HautevilleHouse