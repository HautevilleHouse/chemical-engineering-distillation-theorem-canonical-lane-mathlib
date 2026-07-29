import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationTheoremCanonicalLaneLean

structure DistillationDesignPackage where
  minimumRefluxRatio : Type
  numberTheoreticalStages : Type
  stageEfficiency : Type
  fenskeEquation : Prop
  underwoodEquations : Prop
  gillilandCorrelation : Prop
  fenskeEquationTerm : fenskeEquation
  underwoodEquationsTerm : underwoodEquations
  gillilandCorrelationTerm : gillilandCorrelation

structure DistillationDesignEvidence (D : DistillationDesignPackage) where
  fenskeEquationClosed : D.fenskeEquation
  underwoodEquationsClosed : D.underwoodEquations
  gillilandCorrelationClosed : D.gillilandCorrelation

def DistillationDesignClosed (D : DistillationDesignPackage) : Prop :=
  D.fenskeEquation ∧ D.underwoodEquations ∧ D.gillilandCorrelation

theorem distillation_design_closed_from_evidence (D : DistillationDesignPackage)
    (E : DistillationDesignEvidence D) : DistillationDesignClosed D := by
  exact And.intro E.fenskeEquationClosed (And.intro E.underwoodEquationsClosed E.gillilandCorrelationClosed)

end ChemicalEngineeringDistillationTheoremCanonicalLaneLean
end HautevilleHouse