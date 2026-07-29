import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure SteelErectionPackage where
  steelGrade : String
  boltTension : ℝ
  weldInspectionPassed : Prop
  craneCapacity : ℝ
  maxLoad : ℝ

structure SteelErectionEvidence (S : SteelErectionPackage) where
  boltTensionClosed : S.boltTension ≥ 150
  weldInspectionPassedClosed : S.weldInspectionPassed
  craneCapacityClosed : S.craneCapacity ≥ S.maxLoad

def SteelErectionClosed (S : SteelErectionPackage) : Prop :=
  S.boltTension ≥ 150 ∧ S.weldInspectionPassed ∧ S.craneCapacity ≥ S.maxLoad

theorem steel_erection_closed_from_evidence (S : SteelErectionPackage) (E : SteelErectionEvidence S) :
    SteelErectionClosed S := by
  exact And.intro E.boltTensionClosed
    (And.intro E.weldInspectionPassedClosed E.craneCapacityClosed)

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse
