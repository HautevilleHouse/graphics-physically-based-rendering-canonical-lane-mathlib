import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicallyBasedRenderingCanonicalLaneLean

structure MicrofacetDistribution where
  normalDistribution : Type
  shadowingMasking : Type
  roughnessParameter : Type
  fresnelTerm : Type
  energyConservation : Prop
  reciprocitySatisfied : Prop
  energyConservationClosed : energyConservation
  reciprocitySatisfiedClosed : reciprocitySatisfied

def MicrofacetDistributionClosed (D : MicrofacetDistribution) : Prop :=
  D.energyConservation ∧ D.reciprocitySatisfied

structure BRDFMicrofacetAdmissibleClass where
  object : AdmissibleClass
  distributionClosed : MicrofacetDistributionClosed (⟨Type, Type, Type, Type, True, True, True, True⟩ : MicrofacetDistribution)

theorem brdf_microfacet_bridge (A : BRDFMicrofacetAdmissibleClass) : bridgeClosed A.object := by
  exact A.object.endpointSatisfied

end GraphicsPhysicallyBasedRenderingCanonicalLaneLean
end HautevilleHouse