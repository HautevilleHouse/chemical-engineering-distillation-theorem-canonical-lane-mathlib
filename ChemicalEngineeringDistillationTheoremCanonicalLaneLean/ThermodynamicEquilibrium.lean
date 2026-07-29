import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationTheoremCanonicalLaneLean

structure ThermodynamicEquilibriumPackage where
  equilibriumConstant : Type
  gibbsFreeEnergy : Type
  equilibriumComposition : Type
  phaseEquilibriumRelation : Prop
  thermodynamicConsistency : Prop
  thermodynamicConsistencyTerm : thermodynamicConsistency

structure ThermodynamicEquilibriumEvidence (T : ThermodynamicEquilibriumPackage) where
  phaseEquilibriumRelationClosed : T.phaseEquilibriumRelation
  thermodynamicConsistencyClosed : T.thermodynamicConsistency

def ThermodynamicEquilibriumClosed (T : ThermodynamicEquilibriumPackage) : Prop :=
  T.phaseEquilibriumRelation ∧ T.thermodynamicConsistency

theorem thermodynamic_equilibrium_closed_from_evidence (T : ThermodynamicEquilibriumPackage)
    (E : ThermodynamicEquilibriumEvidence T) : ThermodynamicEquilibriumClosed T := by
  exact And.intro E.phaseEquilibriumRelationClosed E.thermodynamicConsistencyClosed

end ChemicalEngineeringDistillationTheoremCanonicalLaneLean
end HautevilleHouse