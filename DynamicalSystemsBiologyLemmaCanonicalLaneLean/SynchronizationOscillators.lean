import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyLemmaCanonicalLaneLean

structure SynchronizationOscillatorsPackage where
  oscillatorCount : Nat
  couplingMatrix : List (List ℝ)
  naturalFrequencies : List ℝ
  phaseCoherence : Prop
  synchronizationCondition : Prop

def SynchronizationOscillatorsClosed (S : SynchronizationOscillatorsPackage) : Prop :=
  S.phaseCoherence ∧ S.synchronizationCondition

end DynamicalSystemsBiologyLemmaCanonicalLaneLean
end HautevilleHouse