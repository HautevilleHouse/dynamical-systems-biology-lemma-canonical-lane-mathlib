import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyLemmaCanonicalLaneLean

structure GeneRegulationModel where
  synthesisRate : ℝ
  degradationRate : ℝ
  hillCoefficient : ℝ
  steadyState : Prop
  steadyStateTerm : steadyState

structure GeneRegulationEvidence (M : GeneRegulationModel) where
  steadyStateClosed : M.steadyState

def GeneRegulationClosed (M : GeneRegulationModel) : Prop :=
  M.steadyState

theorem gene_regulation_closed_from_evidence (M : GeneRegulationModel)
    (E : GeneRegulationEvidence M) : GeneRegulationClosed M :=
  E.steadyStateClosed

end DynamicalSystemsBiologyLemmaCanonicalLaneLean
end HautevilleHouse