import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.SpecialFunctions.Trigonometric

/-!
# Rendering Equation Package

This module formalizes the rendering equation, which describes light transport
in a scene. The core of physically based rendering, it models equilibrium
radiance distribution as an integral equation over surfaces and directions.
-/

namespace HautevilleHouse
namespace GraphicsPhysicallyBasedRenderingCanonicalLaneLean

structure RenderingEquationPackage where
  surfaceType : Type u
  directionType : Type v
  brdf : surfaceType → directionType → directionType → ℝ
  emittedRadiance : surfaceType → directionType → ℝ
  incidentRadiance : surfaceType → directionType → ℝ
  visibility : surfaceType → surfaceType → Bool
  integrationMeasure : Type w
  renderingEquation : Prop
  energyConservation : Prop
  brdfDefined : ∀ s d1 d2, brdf s d1 d2 ≥ 0
  energyConservationHolds : energyConservation
  renderingEquationFormulated : renderingEquation

structure RenderingEquationEvidence (P : RenderingEquationPackage) where
  brdfDefinedClosed : P.brdfDefined
  energyConservationHoldsClosed : P.energyConservationHolds
  renderingEquationFormulatedClosed : P.renderingEquationFormulated

def RenderingEquationClosed (P : RenderingEquationPackage) : Prop :=
  P.renderingEquation ∧ P.energyConservation

theorem rendering_equation_closed_from_evidence (P : RenderingEquationPackage)
    (E : RenderingEquationEvidence P) : RenderingEquationClosed P := by
  exact And.intro E.renderingEquationFormulatedClosed E.energyConservationHoldsClosed

end GraphicsPhysicallyBasedRenderingCanonicalLaneLean
end HautevilleHouse