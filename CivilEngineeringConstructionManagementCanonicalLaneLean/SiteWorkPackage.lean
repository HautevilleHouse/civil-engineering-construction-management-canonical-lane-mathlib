import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure SiteWorkPackage where
  earthworkVolume : ℝ
  compactionRequirement : ℝ
  weatherDelayDays : ℕ
  equipmentDeployed : ℕ
  siteAccessApproved : Prop

structure SiteWorkEvidence (S : SiteWorkPackage) where
  earthworkVolumeClosed : S.earthworkVolume > 0
  compactionRequirementClosed : S.compactionRequirement ≥ 0.95
  siteAccessApprovedClosed : S.siteAccessApproved

def SiteWorkClosed (S : SiteWorkPackage) : Prop :=
  S.earthworkVolume > 0 ∧ S.compactionRequirement ≥ 0.95 ∧ S.siteAccessApproved

theorem site_work_closed_from_evidence (S : SiteWorkPackage) (E : SiteWorkEvidence S) :
    SiteWorkClosed S := by
  exact And.intro E.earthworkVolumeClosed
    (And.intro E.compactionRequirementClosed E.siteAccessApprovedClosed)

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse
