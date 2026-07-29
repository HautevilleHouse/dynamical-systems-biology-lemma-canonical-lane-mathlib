import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyLemmaCanonicalLaneLean

structure MetabolicFluxBalanceModel where
  stoichiometricMatrix : Type
  fluxVector : Type
  optimalFluxExists : Prop
  optimalFluxExistsTerm : optimalFluxExists

structure MetabolicFluxBalanceEvidence (M : MetabolicFluxBalanceModel) where
  optimalFluxExistsClosed : M.optimalFluxExists

def MetabolicFluxBalanceClosed (M : MetabolicFluxBalanceModel) : Prop :=
  M.optimalFluxExists

theorem metabolic_flux_balance_closed_from_evidence (M : MetabolicFluxBalanceModel)
    (E : MetabolicFluxBalanceEvidence M) : MetabolicFluxBalanceClosed M :=
  E.optimalFluxExistsClosed

end DynamicalSystemsBiologyLemmaCanonicalLaneLean
end HautevilleHouse