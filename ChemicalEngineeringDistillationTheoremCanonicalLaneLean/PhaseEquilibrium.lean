import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationTheoremCanonicalLaneLean

structure PhaseEquilibriumPackage where
  vaporPressureModel : Prop
  liquidActivityCoefficient : Prop
  kValueCorrelation : Prop
  relativeVolatilityDefined : Prop
  bubblePointEquation : Prop
  dewPointEquation : Prop

structure PhaseEquilibriumEvidence (P : PhaseEquilibriumPackage) where
  vaporPressureModelClosed : P.vaporPressureModel
  liquidActivityCoefficientClosed : P.liquidActivityCoefficient
  kValueCorrelationClosed : P.kValueCorrelation
  relativeVolatilityDefinedClosed : P.relativeVolatilityDefined
  bubblePointEquationClosed : P.bubblePointEquation
  dewPointEquationClosed : P.dewPointEquation

def PhaseEquilibriumClosed (P : PhaseEquilibriumPackage) : Prop :=
  P.vaporPressureModel ∧ P.liquidActivityCoefficient ∧
  P.kValueCorrelation ∧ P.relativeVolatilityDefined ∧
  P.bubblePointEquation ∧ P.dewPointEquation

theorem phase_equilibrium_closed_from_evidence (P : PhaseEquilibriumPackage)
    (E : PhaseEquilibriumEvidence P) : PhaseEquilibriumClosed P := by
  exact And.intro E.vaporPressureModelClosed
    (And.intro E.liquidActivityCoefficientClosed
      (And.intro E.kValueCorrelationClosed
        (And.intro E.relativeVolatilityDefinedClosed
          (And.intro E.bubblePointEquationClosed E.dewPointEquationClosed))))

end ChemicalEngineeringDistillationTheoremCanonicalLaneLean
end HautevilleHouse