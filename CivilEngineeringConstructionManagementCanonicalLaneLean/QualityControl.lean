import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure QualityControlPackage where
  inspectionDate : ℕ
  defectCount : ℕ
  reworkApproved : Prop
  materialTestPassed : Prop

def QualityControlClosed (Q : QualityControlPackage) : Prop :=
  Q.defectCount = 0 ∧ Q.materialTestPassed

structure QualityControlEvidence (Q : QualityControlPackage) where
  defectCountClosed : Q.defectCount = 0
  materialTestPassedClosed : Q.materialTestPassed

theorem quality_control_closed_from_evidence (Q : QualityControlPackage) (E : QualityControlEvidence Q) :
    QualityControlClosed Q := by
  exact And.intro E.defectCountClosed E.materialTestPassedClosed

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse
