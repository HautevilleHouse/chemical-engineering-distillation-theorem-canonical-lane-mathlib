import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationTheoremCanonicalLaneLean

structure ReactionKineticsPackage where
  reactionRateConstant : Type
  activationEnergy : Type
  temperatureDependence : Type
  rateLaw : Prop
  reactionMechanism : Type
  rateLawTerm : rateLaw

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateLawClosed : R.rateLaw

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateLaw

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage)
    (E : ReactionKineticsEvidence R) : ReactionKineticsClosed R := by
  exact E.rateLawClosed

end ChemicalEngineeringDistillationTheoremCanonicalLaneLean
end HautevilleHouse