import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure ProjectSchedulePackage where
  criticalPath : Prop
  resourceAllocation : Prop
  milestoneTracking : Prop
  costControl : Prop
  riskMitigation : Prop

structure ProjectScheduleEvidence (P : ProjectSchedulePackage) where
  criticalPathClosed : P.criticalPath
  resourceAllocationClosed : P.resourceAllocation
  milestoneTrackingClosed : P.milestoneTracking
  costControlClosed : P.costControl
  riskMitigationClosed : P.riskMitigation

def ProjectScheduleClosed (P : ProjectSchedulePackage) : Prop :=
  P.criticalPath ∧ P.resourceAllocation ∧
  P.milestoneTracking ∧ P.costControl ∧ P.riskMitigation

theorem project_schedule_closed_from_evidence (P : ProjectSchedulePackage)
    (E : ProjectScheduleEvidence P) : ProjectScheduleClosed P := by
  exact And.intro E.criticalPathClosed
    (And.intro E.resourceAllocationClosed
      (And.intro E.milestoneTrackingClosed
        (And.intro E.costControlClosed E.riskMitigationClosed)))

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse