import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure SiteCharacterizationPackage where
  subsurfaceStratigraphy : Prop
  geotechnicalProperties : Prop
  groundwaterConditions : Prop
  seismicHazardClassification : Prop
  environmentalContamination : Prop

structure SiteCharacterizationEvidence (S : SiteCharacterizationPackage) where
  subsurfaceStratigraphyClosed : S.subsurfaceStratigraphy
  geotechnicalPropertiesClosed : S.geotechnicalProperties
  groundwaterConditionsClosed : S.groundwaterConditions
  seismicHazardClassificationClosed : S.seismicHazardClassification
  environmentalContaminationClosed : S.environmentalContamination

def SiteCharacterizationClosed (S : SiteCharacterizationPackage) : Prop :=
  S.subsurfaceStratigraphy ∧ S.geotechnicalProperties ∧
  S.groundwaterConditions ∧ S.seismicHazardClassification ∧
  S.environmentalContamination

theorem site_characterization_closed_from_evidence (S : SiteCharacterizationPackage)
    (E : SiteCharacterizationEvidence S) : SiteCharacterizationClosed S := by
  exact And.intro E.subsurfaceStratigraphyClosed
    (And.intro E.geotechnicalPropertiesClosed
      (And.intro E.groundwaterConditionsClosed
        (And.intro E.seismicHazardClassificationClosed
          E.environmentalContaminationClosed)))

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse