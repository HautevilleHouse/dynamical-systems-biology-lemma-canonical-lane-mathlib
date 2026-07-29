import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyLemmaCanonicalLaneLean

structure EpidemiologyPackage (A : AdmissibleClass) where
  compartmentStructure : Prop
  transmissionLaw : Prop
  reproductionNumber : Prop
  endemicEquilibrium : Prop

structure EpidemiologyEvidence (A : AdmissibleClass) (Ep : EpidemiologyPackage A) where
  compartmentStructureClosed : Ep.compartmentStructure
  transmissionLawClosed : Ep.transmissionLaw
  reproductionNumberClosed : Ep.reproductionNumber
  endemicEquilibriumClosed : Ep.endemicEquilibrium

def EpidemiologyClosed (A : AdmissibleClass) (Ep : EpidemiologyPackage A) : Prop :=
  Ep.compartmentStructure ∧ Ep.transmissionLaw ∧ Ep.reproductionNumber ∧ Ep.endemicEquilibrium

theorem epidemiology_closed_from_evidence (A : AdmissibleClass) (Ep : EpidemiologyPackage A) (E : EpidemiologyEvidence A Ep) :
    EpidemiologyClosed A Ep := by
  exact And.intro E.compartmentStructureClosed (And.intro E.transmissionLawClosed (And.intro E.reproductionNumberClosed E.endemicEquilibriumClosed))

end DynamicalSystemsBiologyLemmaCanonicalLaneLean
end HautevilleHouse