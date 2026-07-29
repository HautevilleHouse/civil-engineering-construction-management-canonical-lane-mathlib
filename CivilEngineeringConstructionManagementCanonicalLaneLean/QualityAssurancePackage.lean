import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure QualityAssurancePackage where
  materialTesting : Prop
  inspectionProtocol : Prop
  defectTracking : Prop
  complianceDocumentation : Prop
  continuousImprovement : Prop

structure QualityAssuranceEvidence (Q : QualityAssurancePackage) where
  materialTestingClosed : Q.materialTesting
  inspectionProtocolClosed : Q.inspectionProtocol
  defectTrackingClosed : Q.defectTracking
  complianceDocumentationClosed : Q.complianceDocumentation
  continuousImprovementClosed : Q.continuousImprovement

def QualityAssuranceClosed (Q : QualityAssurancePackage) : Prop :=
  Q.materialTesting ∧ Q.inspectionProtocol ∧
  Q.defectTracking ∧ Q.complianceDocumentation ∧ Q.continuousImprovement

theorem quality_assurance_closed_from_evidence (Q : QualityAssurancePackage)
    (E : QualityAssuranceEvidence Q) : QualityAssuranceClosed Q := by
  exact And.intro E.materialTestingClosed
    (And.intro E.inspectionProtocolClosed
      (And.intro E.defectTrackingClosed
        (And.intro E.complianceDocumentationClosed E.continuousImprovementClosed)))

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse