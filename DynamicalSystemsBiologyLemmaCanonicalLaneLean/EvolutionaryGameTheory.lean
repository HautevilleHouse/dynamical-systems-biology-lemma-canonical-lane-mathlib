import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyLemmaCanonicalLaneLean

structure GameModel where
  strategyCount : Nat
  payoffMatrix : Matrix ℝ strategyCount strategyCount
  populationState : Vector ℝ strategyCount

structure ReplicatorDynamics (G : GameModel) where
  replicatorEquation : Prop
  fixedPoints : Prop
  evolutionaryStableStrategy : Prop
  convergenceCondition : Prop

structure ReplicatorDynamicsEvidence {G : GameModel} (R : ReplicatorDynamics G) where
  replicatorEquationClosed : R.replicatorEquation
  fixedPointsClosed : R.fixedPoints
  evolutionaryStableStrategyClosed : R.evolutionaryStableStrategy
  convergenceConditionClosed : R.convergenceCondition

def ReplicatorDynamicsClosed {G : GameModel} (R : ReplicatorDynamics G) : Prop :=
  R.replicatorEquation ∧ R.fixedPoints ∧ R.evolutionaryStableStrategy ∧ R.convergenceCondition

theorem replicator_dynamics_closed_from_evidence {G : GameModel} (R : ReplicatorDynamics G) (E : ReplicatorDynamicsEvidence R) :
    ReplicatorDynamicsClosed R := by
  exact And.intro E.replicatorEquationClosed
    (And.intro E.fixedPointsClosed
      (And.intro E.evolutionaryStableStrategyClosed E.convergenceConditionClosed))

end DynamicalSystemsBiologyLemmaCanonicalLaneLean
end HautevilleHouse