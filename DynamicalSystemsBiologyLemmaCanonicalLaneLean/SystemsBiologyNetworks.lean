import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyLemmaCanonicalLaneLean

struct BiochemicalNetwork where
  nodeCount : ℕ
  edgeMatrix : Matrix ℝ nodeCount nodeCount
  activationFunction : ℝ → ℝ
  steadyState : Vector ℝ nodeCount
  jacobianEigenvalues : List ℂ
  localStability : Prop
  bifurcationDetected : Prop

definition NetworkClosed (N : BiochemicalNetwork) : Prop :=
  N.localStability ∧ (N.bifurcationDetected → ∃ λ : ℂ, λ.re = 0)

struct NetworkEvidence (N : BiochemicalNetwork) where
  stabilityClosed : N.localStability
  bifurcationAnalyzed : N.bifurcationDetected ∨ ¬ N.bifurcationDetected
  eigenvalueCheck : N.bifurcationDetected → ∃ λ : ℂ, λ ∈ N.jacobianEigenvalues ∧ λ.re = 0

theorem network_closed_from_evidence (N : BiochemicalNetwork) (E : NetworkEvidence N) :
    NetworkClosed N := by
  refine And.intro E.stabilityClosed ?_
  intro h
  exact E.eigenvalueCheck h

end DynamicalSystemsBiologyLemmaCanonicalLaneLean
end HautevilleHouse
