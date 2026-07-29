import civilEngineeringConstructionManagementCanonicalLaneLean.ConstructionProjectPackage

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure SafetyManagementPackage (P : ConstructionProjectPackage) where
  hazardIdentification : Prop
  riskMitigation : Prop
  safetyTraining : Prop
  incidentReporting : Prop

structure SafetyManagementEvidence {P : ConstructionProjectPackage} (S : SafetyManagementPackage P) where
  hazardIdentificationClosed : S.hazardIdentification
  riskMitigationClosed : S.riskMitigation
  safetyTrainingClosed : S.safetyTraining
  incidentReportingClosed : S.incidentReporting

def SafetyManagementClosed {P : ConstructionProjectPackage} (S : SafetyManagementPackage P) : Prop :=
  S.hazardIdentification ∧ S.riskMitigation ∧ S.safetyTraining ∧ S.incidentReporting

theorem safety_management_closed_from_evidence {P : ConstructionProjectPackage} (S : SafetyManagementPackage P) (E : SafetyManagementEvidence S) : SafetyManagementClosed S := by
  exact And.intro E.hazardIdentificationClosed (And.intro E.riskMitigationClosed (And.intro E.safetyTrainingClosed E.incidentReportingClosed))

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse
