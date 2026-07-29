import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyLemmaCanonicalLaneLean

structure SystemsBiologyNetworkPackage where
  nodeCount : Nat
  edgeMatrix : List (List ℝ)
  activationFunctions : List (ℝ → ℝ)
  steadyStates : List (List ℝ)
  stabilityUnderPerturbation : Prop

def SystemsBiologyNetworkClosed (S : SystemsBiologyNetworkPackage) : Prop :=
  S.steadyStates.length > 0 ∧ S.stabilityUnderPerturbation

end DynamicalSystemsBiologyLemmaCanonicalLaneLean
end HautevilleHouse