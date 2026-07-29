import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicallyBasedRenderingCanonicalLaneLean

structure RenderingScene where
  camera : Type u
  geometry : Type v
  lights : Type w
  materials : Type x
  film : Type y
  sceneIntegrator : Type z
  cameraModelClosed : Prop
  geometryModelClosed : Prop
  lightDistributionClosed : Prop
  materialsDefinedClosed : Prop
  filmResponseClosed : Prop
  integratorDefinedClosed : Prop

structure RenderingSceneEvidence (S : RenderingScene) where
  cameraModelClosedTerm : S.cameraModelClosed
  geometryModelClosedTerm : S.geometryModelClosed
  lightDistributionClosedTerm : S.lightDistributionClosed
  materialsDefinedClosedTerm : S.materialsDefinedClosed
  filmResponseClosedTerm : S.filmResponseClosed
  integratorDefinedClosedTerm : S.integratorDefinedClosed

def RenderingSceneClosed (S : RenderingScene) : Prop :=
  S.cameraModelClosed ∧ S.geometryModelClosed ∧
  S.lightDistributionClosed ∧ S.materialsDefinedClosed ∧
  S.filmResponseClosed ∧ S.integratorDefinedClosed

theorem rendering_scene_closed_from_evidence (S : RenderingScene)
    (E : RenderingSceneEvidence S) : RenderingSceneClosed S := by
  exact And.intro E.cameraModelClosedTerm
    (And.intro E.geometryModelClosedTerm
      (And.intro E.lightDistributionClosedTerm
        (And.intro E.materialsDefinedClosedTerm
          (And.intro E.filmResponseClosedTerm
            E.integratorDefinedClosedTerm))))

end GraphicsPhysicallyBasedRenderingCanonicalLaneLean
end HautevilleHouse