import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationTheoremCanonicalLaneLean

structure DistillationColumnDesignPackage where
  numberTheoreticalStages : Prop
  feedStageLocation : Prop
  refluxRatio : Prop
  columnDiameter : Prop
  trayEfficiency : Prop
  pressureDrop : Prop

structure DistillationColumnDesignEvidence (D : DistillationColumnDesignPackage) where
  numberTheoreticalStagesClosed : D.numberTheoreticalStages
  feedStageLocationClosed : D.feedStageLocation
  refluxRatioClosed : D.refluxRatio
  columnDiameterClosed : D.columnDiameter
  trayEfficiencyClosed : D.trayEfficiency
  pressureDropClosed : D.pressureDrop

def DistillationColumnDesignClosed (D : DistillationColumnDesignPackage) : Prop :=
  D.numberTheoreticalStages ∧ D.feedStageLocation ∧
  D.refluxRatio ∧ D.columnDiameter ∧
  D.trayEfficiency ∧ D.pressureDrop

theorem distillation_column_design_closed_from_evidence
    (D : DistillationColumnDesignPackage)
    (E : DistillationColumnDesignEvidence D) : DistillationColumnDesignClosed D := by
  exact And.intro E.numberTheoreticalStagesClosed
    (And.intro E.feedStageLocationClosed
      (And.intro E.refluxRatioClosed
        (And.intro E.columnDiameterClosed
          (And.intro E.trayEfficiencyClosed E.pressureDropClosed))))

end ChemicalEngineeringDistillationTheoremCanonicalLaneLean
end HautevilleHouse