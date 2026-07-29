import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure ConcretePlacementPackage where
  mixDesignStrength : ℝ
  slumpRequirement : ℝ
  curingDurationDays : ℕ
  formworkDesignApproved : Prop
  placementTemperature : ℝ

structure ConcretePlacementEvidence (C : ConcretePlacementPackage) where
  mixDesignStrengthClosed : C.mixDesignStrength ≥ 4000
  slumpRequirementClosed : C.slumpRequirement ≥ 2 ∧ C.slumpRequirement ≤ 5
  curingDurationDaysClosed : C.curingDurationDays ≥ 7
  formworkDesignApprovedClosed : C.formworkDesignApproved

def ConcretePlacementClosed (C : ConcretePlacementPackage) : Prop :=
  C.mixDesignStrength ≥ 4000 ∧
  (C.slumpRequirement ≥ 2 ∧ C.slumpRequirement ≤ 5) ∧
  C.curingDurationDays ≥ 7 ∧
  C.formworkDesignApproved

theorem concrete_placement_closed_from_evidence (C : ConcretePlacementPackage) (E : ConcretePlacementEvidence C) :
    ConcretePlacementClosed C := by
  exact And.intro E.mixDesignStrengthClosed
    (And.intro E.slumpRequirementClosed
      (And.intro E.curingDurationDaysClosed E.formworkDesignApprovedClosed))

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse
