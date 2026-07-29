import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure QualityAssurancePackage where
  inspectionProtocols : Prop
  testingProcedures : Prop
  documentationStandards : Prop
  nonConformanceManagement : Prop
  continuousImprovement : Prop

structure QualityAssuranceEvidence (Q : QualityAssurancePackage) where
  inspectionProtocolsClosed : Q.inspectionProtocols
  testingProceduresClosed : Q.testingProcedures
  documentationStandardsClosed : Q.documentationStandards
  nonConformanceManagementClosed : Q.nonConformanceManagement
  continuousImprovementClosed : Q.continuousImprovement

def QualityAssuranceClosed (Q : QualityAssurancePackage) : Prop :=
  Q.inspectionProtocols ∧ Q.testingProcedures ∧ Q.documentationStandards ∧ Q.nonConformanceManagement ∧ Q.continuousImprovement

theorem quality_assurance_closed_from_evidence (Q : QualityAssurancePackage) (E : QualityAssuranceEvidence Q) : QualityAssuranceClosed Q := by
  exact And.intro E.inspectionProtocolsClosed
    (And.intro E.testingProceduresClosed
      (And.intro E.documentationStandardsClosed
        (And.intro E.nonConformanceManagementClosed E.continuousImprovementClosed)))

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse