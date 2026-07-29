import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure ResourceManagementPackage where
  laborAllocation : Prop
  equipmentAvailability : Prop
  materialProcurement : Prop
  resourceLeveling : Prop
  costControl : Prop

structure ResourceManagementEvidence (R : ResourceManagementPackage) where
  laborAllocationClosed : R.laborAllocation
  equipmentAvailabilityClosed : R.equipmentAvailability
  materialProcurementClosed : R.materialProcurement
  resourceLevelingClosed : R.resourceLeveling
  costControlClosed : R.costControl

def ResourceManagementClosed (R : ResourceManagementPackage) : Prop :=
  R.laborAllocation ∧ R.equipmentAvailability ∧ R.materialProcurement ∧ R.resourceLeveling ∧ R.costControl

theorem resource_management_closed_from_evidence (R : ResourceManagementPackage) (E : ResourceManagementEvidence R) : ResourceManagementClosed R := by
  exact And.intro E.laborAllocationClosed
    (And.intro E.equipmentAvailabilityClosed
      (And.intro E.materialProcurementClosed
        (And.intro E.resourceLevelingClosed E.costControlClosed)))

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse