import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationTheoremCanonicalLaneLean

structure VaporLiquidEquilibriumPackage where
  mixtureComponentCount : Nat
  activityCoefficientModel : Prop
  vaporPressureCorrelation : Prop
  fugacityCoefficientComputed : Prop
  boilingPointCalculated : Prop

structure VaporLiquidEquilibriumEvidence (V : VaporLiquidEquilibriumPackage) where
  activityCoefficientModelClosed : V.activityCoefficientModel
  vaporPressureCorrelationClosed : V.vaporPressureCorrelation
  fugacityCoefficientComputedClosed : V.fugacityCoefficientComputed
  boilingPointCalculatedClosed : V.boilingPointCalculated

def VaporLiquidEquilibriumClosed (V : VaporLiquidEquilibriumPackage) : Prop :=
  V.activityCoefficientModel ∧ V.vaporPressureCorrelation ∧
  V.fugacityCoefficientComputed ∧ V.boilingPointCalculated

theorem vapor_liquid_equilibrium_closed_from_evidence
    (V : VaporLiquidEquilibriumPackage) (E : VaporLiquidEquilibriumEvidence V) :
    VaporLiquidEquilibriumClosed V := by
  exact And.intro E.activityCoefficientModelClosed
    (And.intro E.vaporPressureCorrelationClosed
      (And.intro E.fugacityCoefficientComputedClosed E.boilingPointCalculatedClosed))

end ChemicalEngineeringDistillationTheoremCanonicalLaneLean
end HautevilleHouse
