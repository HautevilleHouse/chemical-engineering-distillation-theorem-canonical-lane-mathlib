import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationTheoremCanonicalLaneLean

structure McCabeThielePackage (V : VaporLiquidEquilibriumPackage) where
  operatingLineRectifying : Prop
  operatingLineStripping : Prop
  feedLine : Prop
  stageCountComputed : Prop
  refluxRatioSpecified : Prop

structure McCabeThieleEvidence {V : VaporLiquidEquilibriumPackage}
    (M : McCabeThielePackage V) where
  operatingLineRectifyingClosed : M.operatingLineRectifying
  operatingLineStrippingClosed : M.operatingLineStripping
  feedLineClosed : M.feedLine
  stageCountComputedClosed : M.stageCountComputed
  refluxRatioSpecifiedClosed : M.refluxRatioSpecified

def McCabeThieleClosed {V : VaporLiquidEquilibriumPackage}
    (M : McCabeThielePackage V) : Prop :=
  M.operatingLineRectifying ∧ M.operatingLineStripping ∧
  M.feedLine ∧ M.stageCountComputed ∧ M.refluxRatioSpecified

theorem mccabe_thiele_closed_from_evidence
    {V : VaporLiquidEquilibriumPackage} (M : McCabeThielePackage V)
    (E : McCabeThieleEvidence M) : McCabeThieleClosed M := by
  exact And.intro E.operatingLineRectifyingClosed
    (And.intro E.operatingLineStrippingClosed
      (And.intro E.feedLineClosed
        (And.intro E.stageCountComputedClosed E.refluxRatioSpecifiedClosed)))

end ChemicalEngineeringDistillationTheoremCanonicalLaneLean
end HautevilleHouse
