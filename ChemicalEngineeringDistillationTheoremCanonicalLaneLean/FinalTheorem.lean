import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationTheoremCanonicalLaneLean

def ConstrainedDistillationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_distillation_endgame (A : AdmissibleClass) :
    ConstrainedDistillationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalEngineeringDistillationTheoremCanonicalLaneLean
end HautevilleHouse
