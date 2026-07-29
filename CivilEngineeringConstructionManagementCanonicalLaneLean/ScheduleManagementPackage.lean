import civilEngineeringConstructionManagementCanonicalLaneLean.ConstructionProjectPackage

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure ScheduleManagementPackage (P : ConstructionProjectPackage) where
  activitySequencing : Prop
  durationEstimation : Prop
  criticalPathAnalysis : Prop
  scheduleControl : Prop

structure ScheduleManagementEvidence {P : ConstructionProjectPackage} (S : ScheduleManagementPackage P) where
  activitySequencingClosed : S.activitySequencing
  durationEstimationClosed : S.durationEstimation
  criticalPathAnalysisClosed : S.criticalPathAnalysis
  scheduleControlClosed : S.scheduleControl

def ScheduleManagementClosed {P : ConstructionProjectPackage} (S : ScheduleManagementPackage P) : Prop :=
  S.activitySequencing ∧ S.durationEstimation ∧ S.criticalPathAnalysis ∧ S.scheduleControl

theorem schedule_management_closed_from_evidence {P : ConstructionProjectPackage} (S : ScheduleManagementPackage P) (E : ScheduleManagementEvidence S) : ScheduleManagementClosed S := by
  exact And.intro E.activitySequencingClosed (And.intro E.durationEstimationClosed (And.intro E.criticalPathAnalysisClosed E.scheduleControlClosed))

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse
