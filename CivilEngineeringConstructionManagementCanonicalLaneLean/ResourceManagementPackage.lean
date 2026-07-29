import civilEngineeringConstructionManagementCanonicalLaneLean.ConstructionProjectPackage

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure ResourceManagementPackage (P : ConstructionProjectPackage) where
  laborAllocation : Prop
  equipmentAllocation : Prop
  materialProcurement : Prop
  resourceLeveling : Prop

structure ResourceManagementEvidence {P : ConstructionProjectPackage} (R : ResourceManagementPackage P) where
  laborAllocationClosed : R.laborAllocation
  equipmentAllocationClosed : R.equipmentAllocation
  materialProcurementClosed : R.materialProcurement
  resourceLevelingClosed : R.resourceLeveling

def ResourceManagementClosed {P : ConstructionProjectPackage} (R : ResourceManagementPackage P) : Prop :=
  R.laborAllocation ∧ R.equipmentAllocation ∧ R.materialProcurement ∧ R.resourceLeveling

theorem resource_management_closed_from_evidence {P : ConstructionProjectPackage} (R : ResourceManagementPackage P) (E : ResourceManagementEvidence R) : ResourceManagementClosed R := by
  exact And.intro E.laborAllocationClosed (And.intro E.equipmentAllocationClosed (And.intro E.materialProcurementClosed E.resourceLevelingClosed))

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse
