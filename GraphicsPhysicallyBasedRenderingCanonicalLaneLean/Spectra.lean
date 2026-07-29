import GraphicsPhysicallyBasedRenderingCanonicalLaneLean.Colour

namespace HautevilleHouse
namespace GraphicsPhysicallyBasedRenderingCanonicalLaneLean

structure SpectraPackage (C : ColourPackage) where
  spectralPowerDistribution : Type u
  wavelengthSamples : Prop
  colourMatchingFunctions : Prop
  spectralUpsampling : Prop

def SpectraClosed {C : ColourPackage} (S : SpectraPackage C) : Prop :=
  S.wavelengthSamples ∧ S.colourMatchingFunctions ∧ S.spectralUpsampling

end GraphicsPhysicallyBasedRenderingCanonicalLaneLean
end HautevilleHouse