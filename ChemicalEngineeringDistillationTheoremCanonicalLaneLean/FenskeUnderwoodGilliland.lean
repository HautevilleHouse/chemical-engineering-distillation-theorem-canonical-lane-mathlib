import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationTheoremCanonicalLaneLean

structure FenskeEquationPackage where
  minimumStages : Prop
  totalRefluxCondition : Prop
  keyComponentSeparation : Prop

structure FenskeEquationEvidence (F : FenskeEquationPackage) where
  minimumStagesClosed : F.minimumStages
  totalRefluxConditionClosed : F.totalRefluxCondition
  keyComponentSeparationClosed : F.keyComponentSeparation

def FenskeEquationClosed (F : FenskeEquationPackage) : Prop :=
  F.minimumStages ∧ F.totalRefluxCondition ∧ F.keyComponentSeparation

theorem fenske_equation_closed_from_evidence (F : FenskeEquationPackage)
    (E : FenskeEquationEvidence F) : FenskeEquationClosed F := by
  exact And.intro E.minimumStagesClosed
    (And.intro E.totalRefluxConditionClosed E.keyComponentSeparationClosed)

structure UnderwoodEquationPackage where
  minimumRefluxRatio : Prop
  feedQualityParameter : Prop
  distributionOfComponents : Prop

structure UnderwoodEquationEvidence (U : UnderwoodEquationPackage) where
  minimumRefluxRatioClosed : U.minimumRefluxRatio
  feedQualityParameterClosed : U.feedQualityParameter
  distributionOfComponentsClosed : U.distributionOfComponents

def UnderwoodEquationClosed (U : UnderwoodEquationPackage) : Prop :=
  U.minimumRefluxRatio ∧ U.feedQualityParameter ∧ U.distributionOfComponents

theorem underwood_equation_closed_from_evidence (U : UnderwoodEquationPackage)
    (E : UnderwoodEquationEvidence U) : UnderwoodEquationClosed U := by
  exact And.intro E.minimumRefluxRatioClosed
    (And.intro E.feedQualityParameterClosed E.distributionOfComponentsClosed)

structure GillilandCorrelationPackage where
  actualStages : Prop
  refluxRatioRelation : Prop
  stageEfficiency : Prop

structure GillilandCorrelationEvidence (G : GillilandCorrelationPackage) where
  actualStagesClosed : G.actualStages
  refluxRatioRelationClosed : G.refluxRatioRelation
  stageEfficiencyClosed : G.stageEfficiency

def GillilandCorrelationClosed (G : GillilandCorrelationPackage) : Prop :=
  G.actualStages ∧ G.refluxRatioRelation ∧ G.stageEfficiency

theorem gilliland_correlation_closed_from_evidence (G : GillilandCorrelationPackage)
    (E : GillilandCorrelationEvidence G) : GillilandCorrelationClosed G := by
  exact And.intro E.actualStagesClosed
    (And.intro E.refluxRatioRelationClosed E.stageEfficiencyClosed)

end ChemicalEngineeringDistillationTheoremCanonicalLaneLean
end HautevilleHouse