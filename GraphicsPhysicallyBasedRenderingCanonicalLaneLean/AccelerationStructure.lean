import HautevilleHouse.GraphicsPhysicallyBasedRenderingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicallyBasedRenderingCanonicalLaneLean

structure AccelerationStructurePackage where
  boundingVolumeHierarchy : Prop
  spatialSubdivision : Prop
  traversalCost : Prop
  intersectionEfficiency : Prop

structure AccelerationStructureEvidence (A : AccelerationStructurePackage) where
  boundingVolumeHierarchyClosed : A.boundingVolumeHierarchy
  spatialSubdivisionClosed : A.spatialSubdivision
  traversalCostClosed : A.traversalCost
  intersectionEfficiencyClosed : A.intersectionEfficiency

def AccelerationStructureClosed (A : AccelerationStructurePackage) : Prop :=
  A.boundingVolumeHierarchy ∧ A.spatialSubdivision ∧ A.traversalCost ∧ A.intersectionEfficiency

theorem acceleration_structure_closed_from_evidence (A : AccelerationStructurePackage) (E : AccelerationStructureEvidence A) :
    AccelerationStructureClosed A := by
  exact And.intro E.boundingVolumeHierarchyClosed
    (And.intro E.spatialSubdivisionClosed
      (And.intro E.traversalCostClosed E.intersectionEfficiencyClosed))

end GraphicsPhysicallyBasedRenderingCanonicalLaneLean
end HautevilleHouse