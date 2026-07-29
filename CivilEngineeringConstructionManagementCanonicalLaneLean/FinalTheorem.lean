import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CivilEngineeringConstructionManagementCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

def ConstrainedCivilEngineeringClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_civil_engineering_endgame (A : AdmissibleClass) :
    ConstrainedCivilEngineeringClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse