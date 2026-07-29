import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationTheoremCanonicalLaneLean

structure MassTransferPackage where
  massTransferCoefficient : Type
  diffusionFlux : Type
  filmModel : Prop
  rateEquation : Prop
  filmModelTerm : filmModel
  rateEquationTerm : rateEquation

structure MassTransferEvidence (M : MassTransferPackage) where
  filmModelClosed : M.filmModel
  rateEquationClosed : M.rateEquation

def MassTransferClosed (M : MassTransferPackage) : Prop :=
  M.filmModel ∧ M.rateEquation

theorem mass_transfer_closed_from_evidence (M : MassTransferPackage)
    (E : MassTransferEvidence M) : MassTransferClosed M := by
  exact And.intro E.filmModelClosed E.rateEquationClosed

end ChemicalEngineeringDistillationTheoremCanonicalLaneLean
end HautevilleHouse