import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicallyBasedRenderingCanonicalLaneLean

structure MicrofacetBRDF where
  normalDistributionFunction : Prop
  shadowingMaskingFunction : Prop
  fresnelTerm : Prop
  energyConservation : Prop

structure MicrofacetBRDFEvidence (M : MicrofacetBRDF) where
  normalDistributionFunctionClosed : M.normalDistributionFunction
  shadowingMaskingFunctionClosed : M.shadowingMaskingFunction
  fresnelTermClosed : M.fresnelTerm
  energyConservationClosed : M.energyConservation

def MicrofacetBRDFClosed (M : MicrofacetBRDF) : Prop :=
  M.normalDistributionFunction ∧ M.shadowingMaskingFunction ∧ M.fresnelTerm ∧ M.energyConservation

theorem microfacet_brdf_closed_from_evidence (M : MicrofacetBRDF) (E : MicrofacetBRDFEvidence M) :
    MicrofacetBRDFClosed M := by
  exact And.intro E.normalDistributionFunctionClosed
    (And.intro E.shadowingMaskingFunctionClosed
      (And.intro E.fresnelTermClosed E.energyConservationClosed))

end GraphicsPhysicallyBasedRenderingCanonicalLaneLean
end HautevilleHouse