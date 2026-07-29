import HautevilleHouse.GraphicsPhysicallyBasedRenderingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicallyBasedRenderingCanonicalLaneLean

structure BSDFPackage where
  diffuseComponent : Prop
  specularComponent : Prop
  fresnelEffect : Prop
  microfacetDistribution : Prop
  energyConservation : Prop

structure BSDFEvidence (B : BSDFPackage) where
  diffuseComponentClosed : B.diffuseComponent
  specularComponentClosed : B.specularComponent
  fresnelEffectClosed : B.fresnelEffect
  microfacetDistributionClosed : B.microfacetDistribution
  energyConservationClosed : B.energyConservation

def BSDFClosed (B : BSDFPackage) : Prop :=
  B.diffuseComponent ∧ B.specularComponent ∧ B.fresnelEffect ∧ B.microfacetDistribution ∧ B.energyConservation

theorem bsdf_closed_from_evidence (B : BSDFPackage) (E : BSDFEvidence B) :
    BSDFClosed B := by
  exact And.intro E.diffuseComponentClosed
    (And.intro E.specularComponentClosed
      (And.intro E.fresnelEffectClosed
        (And.intro E.microfacetDistributionClosed E.energyConservationClosed)))

end GraphicsPhysicallyBasedRenderingCanonicalLaneLean
end HautevilleHouse