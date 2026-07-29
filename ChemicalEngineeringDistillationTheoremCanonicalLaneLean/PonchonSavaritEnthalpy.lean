import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationTheoremCanonicalLaneLean

structure PonchonSavaritEnthalpyPackage where
  enthalpyCompositionDiagram : Prop
  enthalpyBalance : Prop
  tieLines : Prop
  adiabaticFlash : Prop
  enthalpyCompositionDiagramTerm : enthalpyCompositionDiagram
  enthalpyBalanceTerm : enthalpyBalance
  tieLinesTerm : tieLines
  adiabaticFlashTerm : adiabaticFlash

structure PonchonSavaritEnthalpyEvidence (P : PonchonSavaritEnthalpyPackage) where
  enthalpyCompositionDiagramClosed : P.enthalpyCompositionDiagram
  enthalpyBalanceClosed : P.enthalpyBalance
  tieLinesClosed : P.tieLines
  adiabaticFlashClosed : P.adiabaticFlash

def PonchonSavaritEnthalpyClosed (P : PonchonSavaritEnthalpyPackage) : Prop :=
  P.enthalpyCompositionDiagram ∧ P.enthalpyBalance ∧
  P.tieLines ∧ P.adiabaticFlash

theorem ponchon_savarit_enthalpy_closed_from_evidence
    (P : PonchonSavaritEnthalpyPackage) (Ev : PonchonSavaritEnthalpyEvidence P) :
    PonchonSavaritEnthalpyClosed P := by
  exact And.intro Ev.enthalpyCompositionDiagramClosed
    (And.intro Ev.enthalpyBalanceClosed
      (And.intro Ev.tieLinesClosed Ev.adiabaticFlashClosed))

end ChemicalEngineeringDistillationTheoremCanonicalLaneLean
end HautevilleHouse