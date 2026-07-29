import HautevilleHouse.GraphicsPhysicallyBasedRenderingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicallyBasedRenderingCanonicalLaneLean

structure TextureMappingPackage where
  uvCoordinates : Prop
  filtering : Prop
  wrapping : Prop
  mipmapping : Prop

structure TextureMappingEvidence (T : TextureMappingPackage) where
  uvCoordinatesClosed : T.uvCoordinates
  filteringClosed : T.filtering
  wrappingClosed : T.wrapping
  mipmappingClosed : T.mipmapping

def TextureMappingClosed (T : TextureMappingPackage) : Prop :=
  T.uvCoordinates ∧ T.filtering ∧ T.wrapping ∧ T.mipmapping

theorem texture_mapping_closed_from_evidence (T : TextureMappingPackage) (E : TextureMappingEvidence T) :
    TextureMappingClosed T := by
  exact And.intro E.uvCoordinatesClosed
    (And.intro E.filteringClosed
      (And.intro E.wrappingClosed E.mipmappingClosed))

end GraphicsPhysicallyBasedRenderingCanonicalLaneLean
end HautevilleHouse