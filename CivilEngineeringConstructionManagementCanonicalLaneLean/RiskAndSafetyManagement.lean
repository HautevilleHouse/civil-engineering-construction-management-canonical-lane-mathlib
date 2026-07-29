import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure RiskAndSafetyManagementPackage where
  hazardIdentification : Prop
  riskMitigationStrategies : Prop
  emergencyPreparedness : Prop
  safetyTraining : Prop
  incidentReporting : Prop

structure RiskAndSafetyManagementEvidence (R : RiskAndSafetyManagementPackage) where
  hazardIdentificationClosed : R.hazardIdentification
  riskMitigationStrategiesClosed : R.riskMitigationStrategies
  emergencyPreparednessClosed : R.emergencyPreparedness
  safetyTrainingClosed : R.safetyTraining
  incidentReportingClosed : R.incidentReporting

def RiskAndSafetyManagementClosed (R : RiskAndSafetyManagementPackage) : Prop :=
  R.hazardIdentification ∧ R.riskMitigationStrategies ∧ R.emergencyPreparedness ∧ R.safetyTraining ∧ R.incidentReporting

theorem risk_and_safety_management_closed_from_evidence (R : RiskAndSafetyManagementPackage) (E : RiskAndSafetyManagementEvidence R) : RiskAndSafetyManagementClosed R := by
  exact And.intro E.hazardIdentificationClosed
    (And.intro E.riskMitigationStrategiesClosed
      (And.intro E.emergencyPreparednessClosed
        (And.intro E.safetyTrainingClosed E.incidentReportingClosed)))

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse