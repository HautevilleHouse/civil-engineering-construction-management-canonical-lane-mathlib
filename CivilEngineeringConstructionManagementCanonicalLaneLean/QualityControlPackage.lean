import civilEngineeringConstructionManagementCanonicalLaneLean.ConstructionProjectPackage

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure QualityControlPackage (P : ConstructionProjectPackage) where
  inspectionPlan : Prop
  testingProtocol : Prop
  defectTracking : Prop
  complianceStandards : Prop

structure QualityControlEvidence {P : ConstructionProjectPackage} (Q : QualityControlPackage P) where
  inspectionPlanClosed : Q.inspectionPlan
  testingProtocolClosed : Q.testingProtocol
  defectTrackingClosed : Q.defectTracking
  complianceStandardsClosed : Q.complianceStandards

def QualityControlClosed {P : ConstructionProjectPackage} (Q : QualityControlPackage P) : Prop :=
  Q.inspectionPlan ∧ Q.testingProtocol ∧ Q.defectTracking ∧ Q.complianceStandards

theorem quality_control_closed_from_evidence {P : ConstructionProjectPackage} (Q : QualityControlPackage P) (E : QualityControlEvidence Q) : QualityControlClosed Q := by
  exact And.intro E.inspectionPlanClosed (And.intro E.testingProtocolClosed (And.intro E.defectTrackingClosed E.complianceStandardsClosed))

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse
