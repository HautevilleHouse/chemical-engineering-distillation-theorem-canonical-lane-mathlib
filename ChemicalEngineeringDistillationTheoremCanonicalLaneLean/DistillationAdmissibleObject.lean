import ChemicalEngineeringDistillationTheoremCanonicalLaneLean.DistillationColumnModel

namespace HautevilleHouse
namespace ChemicalEngineeringDistillationTheoremCanonicalLaneLean

structure DistillationAdmittedObject (C : DistillationColumnPackage) where
  columnClosedEvidence : DistillationColumnEvidence C
  vlePackage : VaporLiquidEquilibriumPackage
  massBalancesSatisfied : Prop
  heatBalancesSatisfied : Prop
  conclusion : massBalancesSatisfied ∧ heatBalancesSatisfied

end ChemicalEngineeringDistillationTheoremCanonicalLaneLean
end HautevilleHouse