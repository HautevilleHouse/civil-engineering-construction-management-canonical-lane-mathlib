import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure AdmissibleClass where
  object : ConstructionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ConstructionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse
