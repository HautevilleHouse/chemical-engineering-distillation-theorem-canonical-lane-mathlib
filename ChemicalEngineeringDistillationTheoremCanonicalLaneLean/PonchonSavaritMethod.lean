import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationTheoremCanonicalLaneLean

structure PonchonSavaritPackage where
  enthalpyConcentrationDiagram : Prop
  energyBalance : Prop
  operatingLineEnthalpy : Prop
  condensorDuty : Prop
  reboilerDuty : Prop

structure PonchonSavaritEvidence (P : PonchonSavaritPackage) where
  enthalpyConcentrationDiagramClosed : P.enthalpyConcentrationDiagram
  energyBalanceClosed : P.energyBalance
  operatingLineEnthalpyClosed : P.operatingLineEnthalpy
  condensorDutyClosed : P.condensorDuty
  reboilerDutyClosed : P.reboilerDuty

def PonchonSavaritClosed (P : PonchonSavaritPackage) : Prop :=
  P.enthalpyConcentrationDiagram ∧ P.energyBalance ∧
  P.operatingLineEnthalpy ∧ P.condensorDuty ∧ P.reboilerDuty

theorem ponchon_savarit_closed_from_evidence (P : PonchonSavaritPackage)
    (E : PonchonSavaritEvidence P) : PonchonSavaritClosed P := by
  exact And.intro E.enthalpyConcentrationDiagramClosed
    (And.intro E.energyBalanceClosed
      (And.intro E.operatingLineEnthalpyClosed
        (And.intro E.condensorDutyClosed E.reboilerDutyClosed)))

end ChemicalEngineeringDistillationTheoremCanonicalLaneLean
end HautevilleHouse