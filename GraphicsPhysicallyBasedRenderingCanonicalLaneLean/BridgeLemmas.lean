import GraphicsPhysicallyBasedRenderingCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GraphicsPhysicallyBasedRenderingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RenderingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GraphicsPhysicallyBasedRenderingCanonicalLaneLean
end HautevilleHouse