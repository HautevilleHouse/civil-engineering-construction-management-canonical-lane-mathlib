import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure AdmissibleClass where
  object : ManifoldConstrainedAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ConstructionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse
