import HautevilleHouse.GraphicsPhysicallyBasedRenderingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicallyBasedRenderingCanonicalLaneLean

structure MonteCarloIntegrationPackage where
  sampleGeneration : Prop
  estimatorUnbiased : Prop
  varianceReduction : Prop
  convergenceRate : Prop

structure MonteCarloIntegrationEvidence (M : MonteCarloIntegrationPackage) where
  sampleGenerationClosed : M.sampleGeneration
  estimatorUnbiasedClosed : M.estimatorUnbiased
  varianceReductionClosed : M.varianceReduction
  convergenceRateClosed : M.convergenceRate

def MonteCarloIntegrationClosed (M : MonteCarloIntegrationPackage) : Prop :=
  M.sampleGeneration ∧ M.estimatorUnbiased ∧ M.varianceReduction ∧ M.convergenceRate

theorem monte_carlo_integration_closed_from_evidence (M : MonteCarloIntegrationPackage) (E : MonteCarloIntegrationEvidence M) :
    MonteCarloIntegrationClosed M := by
  exact And.intro E.sampleGenerationClosed
    (And.intro E.estimatorUnbiasedClosed
      (And.intro E.varianceReductionClosed E.convergenceRateClosed))

end GraphicsPhysicallyBasedRenderingCanonicalLaneLean
end HautevilleHouse