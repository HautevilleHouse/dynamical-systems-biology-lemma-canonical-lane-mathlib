import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyLemmaCanonicalLaneLean

structure EpidemicParameters where
  populationSize : ℝ
  infectionRate : ℝ
  recoveryRate : ℝ
  initialSusceptible : ℝ
  initialInfected : ℝ
  initialRecovered : ℝ

structure SIRCompartmentModel (P : EpidemicParameters) where
  differentialSystem : Prop
  basicReproNumber : ℝ
  thresholdCondition : basicReproNumber > 1 ∨ basicReproNumber ≤ 1
  endemicEquilibrium : Prop

def sirBasicReproNumber (P : EpidemicParameters) : ℝ :=
  P.infectionRate / P.recoveryRate

structure SIREvidence {P : EpidemicParameters} (S : SIRCompartmentModel P) where
  differentialSystemClosed : S.differentialSystem
  thresholdConditionClosed : S.thresholdCondition
  endemicEquilibriumClosed : S.endemicEquilibrium

def SIRClosed {P : EpidemicParameters} (S : SIRCompartmentModel P) : Prop :=
  S.differentialSystem ∧ S.endemicEquilibrium

theorem sir_closed_from_evidence {P : EpidemicParameters} (S : SIRCompartmentModel P) (E : SIREvidence S) :
    SIRClosed S := by
  exact And.intro E.differentialSystemClosed E.endemicEquilibriumClosed

end DynamicalSystemsBiologyLemmaCanonicalLaneLean
end HautevilleHouse