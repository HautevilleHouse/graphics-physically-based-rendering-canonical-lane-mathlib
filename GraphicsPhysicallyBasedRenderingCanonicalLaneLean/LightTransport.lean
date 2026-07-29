import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsPhysicallyBasedRenderingCanonicalLaneLean

structure LightTransportPackage where
  radianceMeasure : Type u
  bsdfModel : Type v
  lightSourceEmission : Type w
  volumeScattering : Type x
  transportEquationClosed : Prop
  bsdfDefinedClosed : Prop
  emissionDefinedClosed : Prop
  volumeDefinedClosed : Prop
  operatorFormulationClosed : Prop

structure LightTransportEvidence (L : LightTransportPackage) where
  transportEquationClosedTerm : L.transportEquationClosed
  bsdfDefinedClosedTerm : L.bsdfDefinedClosed
  emissionDefinedClosedTerm : L.emissionDefinedClosed
  volumeDefinedClosedTerm : L.volumeDefinedClosed
  operatorFormulationClosedTerm : L.operatorFormulationClosed

def LightTransportClosed (L : LightTransportPackage) : Prop :=
  L.transportEquationClosed ∧ L.bsdfDefinedClosed ∧
  L.emissionDefinedClosed ∧ L.volumeDefinedClosed ∧
  L.operatorFormulationClosed

theorem light_transport_closed_from_evidence (L : LightTransportPackage)
    (E : LightTransportEvidence L) : LightTransportClosed L := by
  exact And.intro E.transportEquationClosedTerm
    (And.intro E.bsdfDefinedClosedTerm
      (And.intro E.emissionDefinedClosedTerm
        (And.intro E.volumeDefinedClosedTerm
          E.operatorFormulationClosedTerm)))

end GraphicsPhysicallyBasedRenderingCanonicalLaneLean
end HautevilleHouse