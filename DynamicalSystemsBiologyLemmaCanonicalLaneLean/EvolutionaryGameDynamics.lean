import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyLemmaCanonicalLaneLean

structure EvolutionaryGameDynamicsModel where
  payoffMatrix : Type
  replicatorEquation : Prop
  nashEquilibrium : Prop
  nashEquilibriumTerm : nashEquilibrium

structure EvolutionaryGameDynamicsEvidence (M : EvolutionaryGameDynamicsModel) where
  nashEquilibriumClosed : M.nashEquilibrium

def EvolutionaryGameDynamicsClosed (M : EvolutionaryGameDynamicsModel) : Prop :=
  M.nashEquilibrium

theorem evolutionary_game_dynamics_closed_from_evidence (M : EvolutionaryGameDynamicsModel)
    (E : EvolutionaryGameDynamicsEvidence M) : EvolutionaryGameDynamicsClosed M :=
  E.nashEquilibriumClosed

end DynamicalSystemsBiologyLemmaCanonicalLaneLean
end HautevilleHouse