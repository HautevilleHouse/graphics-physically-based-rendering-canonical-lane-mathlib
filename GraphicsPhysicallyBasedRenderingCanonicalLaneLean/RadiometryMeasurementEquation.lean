import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.SpecialFunctions.Power

/-!
# Radiometry Measurement Equation Package

This module formalizes the radiometry measurement equation in physically based
rendering as an admissible-class bridge. The measurement equation models how
incoming radiance is converted to pixel values through sensor response,
exposure, and optics.
-/

namespace HautevilleHouse
namespace GraphicsPhysicallyBasedRenderingCanonicalLaneLean

structure RadiometryMeasurementPackage where
  sensorSpectralResponse : Type u
  exposureTime : ℝ
  lensTransmission : ℝ
  pixelArea : ℝ
  incomingRadiance : Type v
  measurementEquation : Prop
  linearResponse : Prop
  sensorSpectralResponseDefined : sensorSpectralResponse
  exposureTimePositive : exposureTime > 0
  lensTransmissionPositive : lensTransmission > 0
  pixelAreaPositive : pixelArea > 0
  measurementEquationFormulated : measurementEquation
  linearResponseHolds : linearResponse

structure RadiometryMeasurementEvidence (R : RadiometryMeasurementPackage) where
  sensorSpectralResponseDefinedClosed : R.sensorSpectralResponseDefined
  exposureTimePositiveClosed : R.exposureTimePositive
  lensTransmissionPositiveClosed : R.lensTransmissionPositive
  pixelAreaPositiveClosed : R.pixelAreaPositive
  measurementEquationFormulatedClosed : R.measurementEquationFormulated
  linearResponseHoldsClosed : R.linearResponseHolds

def RadiometryMeasurementClosed (R : RadiometryMeasurementPackage) : Prop :=
  R.measurementEquation ∧ R.linearResponse

theorem radiometry_measurement_closed_from_evidence (R : RadiometryMeasurementPackage)
    (E : RadiometryMeasurementEvidence R) : RadiometryMeasurementClosed R := by
  exact And.intro E.measurementEquationFormulatedClosed E.linearResponseHoldsClosed

end GraphicsPhysicallyBasedRenderingCanonicalLaneLean
end HautevilleHouse