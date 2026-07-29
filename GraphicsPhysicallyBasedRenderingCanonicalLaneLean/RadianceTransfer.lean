import GraphicsPhysicallyBasedRenderingCanonicalLaneLean.Spectra

namespace HautevilleHouse
namespace GraphicsPhysicallyBasedRenderingCanonicalLaneLean

structure RadianceTransferPackage (S : SpectraPackage) where
  surfaceMesh : Type u
  formFactors : Prop
  interreflection : Prop
  radiosityMethod : Prop
  progressiveRefinement : Prop

def RadianceTransferClosed {S : SpectraPackage} (R : RadianceTransferPackage S) : Prop :=
  R.formFactors ∧ R.interreflection ∧ R.radiosityMethod ∧ R.progressiveRefinement

end GraphicsPhysicallyBasedRenderingCanonicalLaneLean
end HautevilleHouse