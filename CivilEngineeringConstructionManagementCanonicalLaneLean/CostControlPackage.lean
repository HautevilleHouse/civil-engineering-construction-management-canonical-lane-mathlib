import civilEngineeringConstructionManagementCanonicalLaneLean.ConstructionProjectPackage

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure CostControlPackage (P : ConstructionProjectPackage) where
  budgetAllocation : Prop
  costEstimation : Prop
  earnedValueAnalysis : Prop
  costControlMeasures : Prop

structure CostControlEvidence {P : ConstructionProjectPackage} (C : CostControlPackage P) where
  budgetAllocationClosed : C.budgetAllocation
  costEstimationClosed : C.costEstimation
  earnedValueAnalysisClosed : C.earnedValueAnalysis
  costControlMeasuresClosed : C.costControlMeasures

def CostControlClosed {P : ConstructionProjectPackage} (C : CostControlPackage P) : Prop :=
  C.budgetAllocation ∧ C.costEstimation ∧ C.earnedValueAnalysis ∧ C.costControlMeasures

theorem cost_control_closed_from_evidence {P : ConstructionProjectPackage} (C : CostControlPackage P) (E : CostControlEvidence C) : CostControlClosed C := by
  exact And.intro E.budgetAllocationClosed (And.intro E.costEstimationClosed (And.intro E.earnedValueAnalysisClosed E.costControlMeasuresClosed))

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse
