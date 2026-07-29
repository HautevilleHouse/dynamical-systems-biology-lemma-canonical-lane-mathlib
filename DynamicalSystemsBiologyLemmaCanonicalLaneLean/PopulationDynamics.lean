import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyLemmaCanonicalLaneLean

structure PopulationModel where
  speciesCount : Nat
  growthRate : Vector ℝ speciesCount
  interactionMatrix : Matrix ℝ speciesCount speciesCount
  carryingCapacity : Vector ℝ speciesCount
  initialPopulation : Vector ℝ speciesCount

structure LotkaVolterraSystem (M : PopulationModel) where
  differentialEquation : Prop
  equilibriumExists : Prop
  stabilityCondition : Prop
  boundedness : Prop

structure LotkaVolterraEvidence {M : PopulationModel} (L : LotkaVolterraSystem M) where
  differentialEquationClosed : L.differentialEquation
  equilibriumExistsClosed : L.equilibriumExists
  stabilityConditionClosed : L.stabilityCondition
  boundednessClosed : L.boundedness

def LotkaVolterraClosed {M : PopulationModel} (L : LotkaVolterraSystem M) : Prop :=
  L.differentialEquation ∧ L.equilibriumExists ∧ L.stabilityCondition ∧ L.boundedness

theorem lotka_volterra_closed_from_evidence {M : PopulationModel} (L : LotkaVolterraSystem M) (E : LotkaVolterraEvidence L) :
    LotkaVolterraClosed L := by
  exact And.intro E.differentialEquationClosed
    (And.intro E.equilibriumExistsClosed
      (And.intro E.stabilityConditionClosed E.boundednessClosed))

end DynamicalSystemsBiologyLemmaCanonicalLaneLean
end HautevilleHouse