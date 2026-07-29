import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyLemmaCanonicalLaneLean

structure SystemsBiologyPackage (A : AdmissibleClass) where
  geneRegulatoryNetwork : Prop
  metabolicPathway : Prop
  signalTransduction : Prop
  feedbackMechanisms : Prop

structure SystemsBiologyEvidence (A : AdmissibleClass) (S : SystemsBiologyPackage A) where
  geneRegulatoryNetworkClosed : S.geneRegulatoryNetwork
  metabolicPathwayClosed : S.metabolicPathway
  signalTransductionClosed : S.signalTransduction
  feedbackMechanismsClosed : S.feedbackMechanisms

def SystemsBiologyClosed (A : AdmissibleClass) (S : SystemsBiologyPackage A) : Prop :=
  S.geneRegulatoryNetwork ∧ S.metabolicPathway ∧ S.signalTransduction ∧ S.feedbackMechanisms

theorem systems_biology_closed_from_evidence (A : AdmissibleClass) (S : SystemsBiologyPackage A) (E : SystemsBiologyEvidence A S) :
    SystemsBiologyClosed A S := by
  exact And.intro E.geneRegulatoryNetworkClosed (And.intro E.metabolicPathwayClosed (And.intro E.signalTransductionClosed E.feedbackMechanismsClosed))

end DynamicalSystemsBiologyLemmaCanonicalLaneLean
end HautevilleHouse