import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyLemmaCanonicalLaneLean

structure PredatorPreyPackage where
  preyPopulation : ℝ → ℝ
  predatorPopulation : ℝ → ℝ
  lotkaVolterraEquations : Prop
  coexistenceEquilibrium : Prop
  limitCycles : Prop
  stabilityAnalysis : Prop

structure PredatorPreyEvidence (P : PredatorPreyPackage) where
  lotkaVolterraClosed : P.lotkaVolterraEquations
  coexistenceEquilibriumClosed : P.coexistenceEquilibrium
  limitCyclesClosed : P.limitCycles
  stabilityAnalysisClosed : P.stabilityAnalysis

def PredatorPreyClosed (P : PredatorPreyPackage) : Prop :=
  P.lotkaVolterraEquations ∧ P.coexistenceEquilibrium ∧
  P.limitCycles ∧ P.stabilityAnalysis

theorem predator_prey_closed_from_evidence (P : PredatorPreyPackage)
    (E : PredatorPreyEvidence P) : PredatorPreyClosed P := by
  exact And.intro E.lotkaVolterraClosed
    (And.intro E.coexistenceEquilibriumClosed
      (And.intro E.limitCyclesClosed E.stabilityAnalysisClosed))

end DynamicalSystemsBiologyLemmaCanonicalLaneLean
end HautevilleHouse