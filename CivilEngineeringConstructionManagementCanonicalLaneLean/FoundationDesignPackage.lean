import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure FoundationDesignPackage where
  soilBearingCapacity : Prop
  footingDimensions : Prop
  settlementControl : Prop
  depthToFrostLine : Prop
  reinforcementDesign : Prop

structure FoundationDesignEvidence (F : FoundationDesignPackage) where
  soilBearingCapacityClosed : F.soilBearingCapacity
  footingDimensionsClosed : F.footingDimensions
  settlementControlClosed : F.settlementControl
  depthToFrostLineClosed : F.depthToFrostLine
  reinforcementDesignClosed : F.reinforcementDesign

def FoundationDesignClosed (F : FoundationDesignPackage) : Prop :=
  F.soilBearingCapacity ∧ F.footingDimensions ∧
  F.settlementControl ∧ F.depthToFrostLine ∧ F.reinforcementDesign

theorem foundation_design_closed_from_evidence (F : FoundationDesignPackage)
    (E : FoundationDesignEvidence F) : FoundationDesignClosed F := by
  exact And.intro E.soilBearingCapacityClosed
    (And.intro E.footingDimensionsClosed
      (And.intro E.settlementControlClosed
        (And.intro E.depthToFrostLineClosed E.reinforcementDesignClosed)))

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse