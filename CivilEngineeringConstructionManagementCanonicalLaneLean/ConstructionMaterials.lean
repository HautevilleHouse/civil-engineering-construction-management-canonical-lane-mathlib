import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure ConstructionMaterialsPackage where
  concreteMixDesign : Prop
  steelReinforcementSpecs : Prop
  masonryUnitProperties : Prop
  timberGrading : Prop
  compositeMaterialPerformance : Prop

structure ConstructionMaterialsEvidence (M : ConstructionMaterialsPackage) where
  concreteMixDesignClosed : M.concreteMixDesign
  steelReinforcementSpecsClosed : M.steelReinforcementSpecs
  masonryUnitPropertiesClosed : M.masonryUnitProperties
  timberGradingClosed : M.timberGrading
  compositeMaterialPerformanceClosed : M.compositeMaterialPerformance

def ConstructionMaterialsClosed (M : ConstructionMaterialsPackage) : Prop :=
  M.concreteMixDesign ∧ M.steelReinforcementSpecs ∧
  M.masonryUnitProperties ∧ M.timberGrading ∧ M.compositeMaterialPerformance

theorem construction_materials_closed_from_evidence (M : ConstructionMaterialsPackage)
    (E : ConstructionMaterialsEvidence M) : ConstructionMaterialsClosed M := by
  exact And.intro E.concreteMixDesignClosed
    (And.intro E.steelReinforcementSpecsClosed
      (And.intro E.masonryUnitPropertiesClosed
        (And.intro E.timberGradingClosed E.compositeMaterialPerformanceClosed)))

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse