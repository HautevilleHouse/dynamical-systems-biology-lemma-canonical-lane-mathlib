import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsBiologyLemmaCanonicalLaneLean.BridgeLemmas
import DynamicalSystemsBiologyLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DynamicalSystemsBiologyLemmaCanonicalLaneLean

def ConstrainedDynamicBiologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dynamic_biology_endgame (A : AdmissibleClass) :
    ConstrainedDynamicBiologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsBiologyLemmaCanonicalLaneLean
end HautevilleHouse