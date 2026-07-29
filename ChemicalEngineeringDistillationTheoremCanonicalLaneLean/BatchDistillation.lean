import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationTheoremCanonicalLaneLean

structure BatchDistillationPackage where
  stillPot : Type u
  condenser : Type v
  distillateComposition : Type w
  residueComposition : Type x
  rayleighEquation : Prop
  operatingLine : Prop
  cutStrategySatisfied : Prop
  productSpecificationMet : Prop

structure BatchDistillationEvidence (B : BatchDistillationPackage) where
  rayleighEquationClosed : B.rayleighEquation
  operatingLineClosed : B.operatingLine
  cutStrategySatisfiedClosed : B.cutStrategySatisfied
  productSpecificationMetClosed : B.productSpecificationMet

def BatchDistillationClosed (B : BatchDistillationPackage) : Prop :=
  B.rayleighEquation ∧ B.operatingLine ∧ B.cutStrategySatisfied ∧ B.productSpecificationMet

theorem batch_distillation_closed_from_evidence
    (B : BatchDistillationPackage) (E : BatchDistillationEvidence B) :
    BatchDistillationClosed B := by
  exact And.intro E.rayleighEquationClosed
    (And.intro E.operatingLineClosed
      (And.intro E.cutStrategySatisfiedClosed E.productSpecificationMetClosed))

end ChemicalEngineeringDistillationTheoremCanonicalLaneLean
end HautevilleHouse