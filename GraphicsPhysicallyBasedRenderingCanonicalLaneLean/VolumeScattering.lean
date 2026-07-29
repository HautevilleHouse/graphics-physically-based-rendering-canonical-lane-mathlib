import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicallyBasedRenderingCanonicalLaneLean

structure VolumeScatteringPackage where
  mediumDescription : Type u
  phaseFunction : Type v
  absorptionCoefficient : Prop
  scatteringCoefficient : Prop
  phaseFunctionClosed : Prop
  mediumDefinedClosed : Prop
  absorptionClosed : Prop
  scatteringClosed : Prop
  transmittanceComputedClosed : Prop

structure VolumeScatteringEvidence (V : VolumeScatteringPackage) where
  mediumDefinedClosedTerm : V.mediumDefinedClosed
  phaseFunctionClosedTerm : V.phaseFunctionClosed
  absorptionClosedTerm : V.absorptionClosed
  scatteringClosedTerm : V.scatteringClosed
  transmittanceComputedClosedTerm : V.transmittanceComputedClosed

def VolumeScatteringClosed (V : VolumeScatteringPackage) : Prop :=
  V.mediumDefinedClosed ∧ V.phaseFunctionClosed ∧
  V.absorptionClosed ∧ V.scatteringClosed ∧
  V.transmittanceComputedClosed

theorem volume_scattering_closed_from_evidence
    (V : VolumeScatteringPackage)
    (E : VolumeScatteringEvidence V) : VolumeScatteringClosed V := by
  exact And.intro E.mediumDefinedClosedTerm
    (And.intro E.phaseFunctionClosedTerm
      (And.intro E.absorptionClosedTerm
        (And.intro E.scatteringClosedTerm
          E.transmittanceComputedClosedTerm)))

end GraphicsPhysicallyBasedRenderingCanonicalLaneLean
end HautevilleHouse