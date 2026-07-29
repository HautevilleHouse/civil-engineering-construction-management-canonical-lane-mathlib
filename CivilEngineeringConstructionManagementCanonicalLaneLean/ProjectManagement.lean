import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure ProjectManagementPackage where
  scheduleIntegration : Prop
  costEstimation : Prop
  riskAssessment : Prop
  qualityAssurance : Prop
  safetyProtocols : Prop

structure ProjectManagementEvidence (P : ProjectManagementPackage) where
  scheduleIntegrationClosed : P.scheduleIntegration
  costEstimationClosed : P.costEstimation
  riskAssessmentClosed : P.riskAssessment
  qualityAssuranceClosed : P.qualityAssurance
  safetyProtocolsClosed : P.safetyProtocols

def ProjectManagementClosed (P : ProjectManagementPackage) : Prop :=
  P.scheduleIntegration ∧ P.costEstimation ∧
  P.riskAssessment ∧ P.qualityAssurance ∧ P.safetyProtocols

theorem project_management_closed_from_evidence (P : ProjectManagementPackage)
    (E : ProjectManagementEvidence P) : ProjectManagementClosed P := by
  exact And.intro E.scheduleIntegrationClosed
    (And.intro E.costEstimationClosed
      (And.intro E.riskAssessmentClosed
        (And.intro E.qualityAssuranceClosed E.safetyProtocolsClosed)))

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse