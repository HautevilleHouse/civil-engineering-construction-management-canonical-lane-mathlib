import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ConstructionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse
