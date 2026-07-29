import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure GeotechnicalAnalysisPackage where
  bearingCapacity : Prop
  settlementEstimation : Prop
  slopeStability : Prop
  lateralEarthPressure : Prop
  foundationDesign : Prop

structure GeotechnicalAnalysisEvidence (G : GeotechnicalAnalysisPackage) where
  bearingCapacityClosed : G.bearingCapacity
  settlementEstimationClosed : G.settlementEstimation
  slopeStabilityClosed : G.slopeStability
  lateralEarthPressureClosed : G.lateralEarthPressure
  foundationDesignClosed : G.foundationDesign

def GeotechnicalAnalysisClosed (G : GeotechnicalAnalysisPackage) : Prop :=
  G.bearingCapacity ∧ G.settlementEstimation ∧
  G.slopeStability ∧ G.lateralEarthPressure ∧ G.foundationDesign

theorem geotechnical_analysis_closed_from_evidence (G : GeotechnicalAnalysisPackage)
    (E : GeotechnicalAnalysisEvidence G) : GeotechnicalAnalysisClosed G := by
  exact And.intro E.bearingCapacityClosed
    (And.intro E.settlementEstimationClosed
      (And.intro E.slopeStabilityClosed
        (And.intro E.lateralEarthPressureClosed E.foundationDesignClosed)))

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse