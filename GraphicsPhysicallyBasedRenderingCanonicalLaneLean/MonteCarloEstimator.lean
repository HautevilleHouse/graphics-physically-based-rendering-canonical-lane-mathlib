import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicallyBasedRenderingCanonicalLaneLean

structure MonteCarloEstimatorPackage where
  samplingStrategy : Type u
  importanceDistribution : Type v
  pathConstruction : Type w
  estimatorBias : Prop
  estimatorVariance : Prop
  samplingDefinedClosed : Prop
  importanceDefinedClosed : Prop
  pathConstructionClosed : Prop
  unbiasednessConditionClosed : Prop
  varianceFiniteClosed : Prop

structure MonteCarloEstimatorEvidence (M : MonteCarloEstimatorPackage) where
  samplingDefinedClosedTerm : M.samplingDefinedClosed
  importanceDefinedClosedTerm : M.importanceDefinedClosed
  pathConstructionClosedTerm : M.pathConstructionClosed
  unbiasednessConditionClosedTerm : M.unbiasednessConditionClosed
  varianceFiniteClosedTerm : M.varianceFiniteClosed

def MonteCarloEstimatorClosed (M : MonteCarloEstimatorPackage) : Prop :=
  M.samplingDefinedClosed ∧ M.importanceDefinedClosed ∧
  M.pathConstructionClosed ∧ M.unbiasednessConditionClosed ∧
  M.varianceFiniteClosed

theorem monte_carlo_estimator_closed_from_evidence
    (M : MonteCarloEstimatorPackage)
    (E : MonteCarloEstimatorEvidence M) : MonteCarloEstimatorClosed M := by
  exact And.intro E.samplingDefinedClosedTerm
    (And.intro E.importanceDefinedClosedTerm
      (And.intro E.pathConstructionClosedTerm
        (And.intro E.unbiasednessConditionClosedTerm
          E.varianceFiniteClosedTerm)))

end GraphicsPhysicallyBasedRenderingCanonicalLaneLean
end HautevilleHouse