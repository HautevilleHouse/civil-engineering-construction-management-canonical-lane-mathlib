import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

/-!
# Cost Control and Estimating Package

This module captures the cost estimation, budgeting, and control processes.
The admissible structure models the lifecycle of cost management: initial estimate,
budget approval, cost tracking, variance analysis, and final accounting.
-/

structure CostControlPackage where
  initialEstimateApproved : Prop
  budgetAllocated : Prop
  costTrackingEstablished : Prop
  varianceLimitsDefined : List (String × Float)
  changeOrderCostControlled : Prop
  finalCostReconciled : Prop
  contingencyUsed : Float
  totalCostWithinBudget : Float → Float → Prop

structure CostControlEvidence (C : CostControlPackage) where
  initialEstimateApprovedClosed : C.initialEstimateApproved
  budgetAllocatedClosed : C.budgetAllocated
  costTrackingEstablishedClosed : C.costTrackingEstablished
  changeOrderCostControlledClosed : C.changeOrderCostControlled
  finalCostReconciledClosed : C.finalCostReconciled

def CostControlClosed (C : CostControlPackage) : Prop :=
  C.initialEstimateApproved ∧ C.budgetAllocated ∧
  C.costTrackingEstablished ∧ C.changeOrderCostControlled ∧
  C.finalCostReconciled

theorem cost_control_closed_from_evidence (C : CostControlPackage) (E : CostControlEvidence C) :
    CostControlClosed C := by
  exact And.intro E.initialEstimateApprovedClosed
    (And.intro E.budgetAllocatedClosed
      (And.intro E.costTrackingEstablishedClosed
        (And.intro E.changeOrderCostControlledClosed
          E.finalCostReconciledClosed)))

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse