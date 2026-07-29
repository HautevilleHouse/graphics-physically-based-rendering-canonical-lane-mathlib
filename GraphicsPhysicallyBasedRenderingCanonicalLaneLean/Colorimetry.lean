import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicallyBasedRenderingCanonicalLaneLean

structure Colorimetry where
  spectralPowerDistribution : Prop
  tristimulus : Prop
  colorMatchingFunctions : Prop
  gammaCorrection : Prop

structure ColorimetryEvidence (C : Colorimetry) where
  spectralPowerDistributionClosed : C.spectralPowerDistribution
  tristimulusClosed : C.tristimulus
  colorMatchingFunctionsClosed : C.colorMatchingFunctions
  gammaCorrectionClosed : C.gammaCorrection

def ColorimetryClosed (C : Colorimetry) : Prop :=
  C.spectralPowerDistribution ∧ C.tristimulus ∧ C.colorMatchingFunctions ∧ C.gammaCorrection

theorem colorimetry_closed_from_evidence (C : Colorimetry) (E : ColorimetryEvidence C) :
    ColorimetryClosed C := by
  exact And.intro E.spectralPowerDistributionClosed
    (And.intro E.tristimulusClosed
      (And.intro E.colorMatchingFunctionsClosed E.gammaCorrectionClosed))

end GraphicsPhysicallyBasedRenderingCanonicalLaneLean
end HautevilleHouse