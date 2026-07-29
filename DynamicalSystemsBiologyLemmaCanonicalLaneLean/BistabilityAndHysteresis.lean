import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyLemmaCanonicalLaneLean

struct BistableSystem where
  stateDimension : ℕ
  nonlinearMap : ℝ^stateDimension → ℝ^stateDimension
  fixedPoints : List (ℝ^stateDimension)
  stabilityStates : List Bool
  bifurcationParameter : ℝ
  hysteresisLoop : Prop

definition BistabilityClosed (B : BistableSystem) : Prop :=
  (∃ x ∈ B.fixedPoints, True) ∧ (B.hysteresisLoop → (B.bifurcationParameter > 0))

struct BistabilityEvidence (B : BistableSystem) where
  hasFixedPoint : ∃ x ∈ B.fixedPoints, True
  hysteresisCondition : B.hysteresisLoop → B.bifurcationParameter > 0

theorem bistability_closed_from_evidence (B : BistableSystem) (E : BistabilityEvidence B) :
    BistabilityClosed B := by
  exact And.intro E.hasFixedPoint E.hysteresisCondition

end DynamicalSystemsBiologyLemmaCanonicalLaneLean
end HautevilleHouse
