import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBiologyLemmaCanonicalLaneLean

structure CompetitiveLotkaVolterraModel where
  r1 : ℝ
  r2 : ℝ
  a11 : ℝ
  a12 : ℝ
  a21 : ℝ
  a22 : ℝ
  coexistenceEquilibrium : Prop
  coexistenceEquilibriumTerm : coexistenceEquilibrium

structure CompetitiveLotkaVolterraEvidence (M : CompetitiveLotkaVolterraModel) where
  coexistenceEquilibriumClosed : M.coexistenceEquilibrium

def CompetitiveLotkaVolterraClosed (M : CompetitiveLotkaVolterraModel) : Prop :=
  M.coexistenceEquilibrium

theorem competitive_lotka_volterra_closed_from_evidence (M : CompetitiveLotkaVolterraModel)
    (E : CompetitiveLotkaVolterraEvidence M) : CompetitiveLotkaVolterraClosed M :=
  E.coexistenceEquilibriumClosed

end DynamicalSystemsBiologyLemmaCanonicalLaneLean
end HautevilleHouse