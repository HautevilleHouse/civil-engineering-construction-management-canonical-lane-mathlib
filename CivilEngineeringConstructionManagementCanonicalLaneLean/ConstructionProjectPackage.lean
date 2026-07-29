import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure ConstructionProjectPackage where
  projectId : String
  scopeDescription : String
  budget : Float
  scheduleDays : Nat
  qualityStandards : Prop
  riskAssessment : Prop

default_scopeDescription := ""
default_budget := 0.0
default_scheduleDays := 0

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse
