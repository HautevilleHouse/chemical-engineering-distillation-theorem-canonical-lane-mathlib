import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationTheoremCanonicalLaneLean

structure DistillationColumnModelPackage where
  numberOfStages : Nat
  feedStage : Nat
  refluxRatio : Type
  operatingLines : Prop
  vaporLiquidEquilibrium : Prop
  operatingLinesTerm : operatingLines
  vaporLiquidEquilibriumTerm : vaporLiquidEquilibrium

structure DistillationColumnModelEvidence (D : DistillationColumnModelPackage) where
  operatingLinesClosed : D.operatingLines
  vaporLiquidEquilibriumClosed : D.vaporLiquidEquilibrium

def DistillationColumnModelClosed (D : DistillationColumnModelPackage) : Prop :=
  D.operatingLines ∧ D.vaporLiquidEquilibrium

theorem distillation_column_model_closed_from_evidence (D : DistillationColumnModelPackage)
    (E : DistillationColumnModelEvidence D) : DistillationColumnModelClosed D := by
  exact And.intro E.operatingLinesClosed E.vaporLiquidEquilibriumClosed

end ChemicalEngineeringDistillationTheoremCanonicalLaneLean
end HautevilleHouse