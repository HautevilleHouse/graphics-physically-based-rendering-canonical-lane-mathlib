import GraphicsPhysicallyBasedRenderingCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GraphicsPhysicallyBasedRenderingCanonicalLaneLean

structure ColourPackage where
  RGBSpace : Type u
  colourGamut : Prop
  displayMapping : Prop
  chromaticAdaptation : Prop

def ColourClosed (C : ColourPackage) : Prop :=
  C.colourGamut ∧ C.displayMapping ∧ C.chromaticAdaptation

end GraphicsPhysicallyBasedRenderingCanonicalLaneLean
end HautevilleHouse