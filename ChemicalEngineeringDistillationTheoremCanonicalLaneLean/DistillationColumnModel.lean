import ChemicalEngineeringDistillationTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationTheoremCanonicalLaneLean

structure DistillationColumnPackage where
  trays : Nat
  feedStage : Nat
  distillateFlow : ℚ
  bottomsFlow : ℚ
  vaporFlow : ℚ
  liquidFlow : ℚ
  vaporLiquidEquilibrium : Prop
  operatingLinesDefined : Prop

structure DistillationColumnEvidence (C : DistillationColumnPackage) where
  vaporLiquidEquilibriumDefined : C.vaporLiquidEquilibrium
  operatingLinesDefinedClosed : C.operatingLinesDefined

def DistillationColumnClosed (C : DistillationColumnPackage) : Prop :=
  C.vaporLiquidEquilibrium ∧ C.operatingLinesDefined

theorem distillation_column_closed_from_evidence (C : DistillationColumnPackage)
    (E : DistillationColumnEvidence C) : DistillationColumnClosed C := by
  exact And.intro E.vaporLiquidEquilibriumDefined E.operatingLinesDefinedClosed

end ChemicalEngineeringDistillationTheoremCanonicalLaneLean
end HautevilleHouse