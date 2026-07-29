import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure StructuralDesignPackage where
  loadCombinations : Prop
  materialStrengthFactors : Prop
  limitStates : Prop
  stabilityChecks : Prop
  serviceabilityChecks : Prop

structure StructuralDesignEvidence (D : StructuralDesignPackage) where
  loadCombinationsClosed : D.loadCombinations
  materialStrengthFactorsClosed : D.materialStrengthFactors
  limitStatesClosed : D.limitStates
  stabilityChecksClosed : D.stabilityChecks
  serviceabilityChecksClosed : D.serviceabilityChecks

def StructuralDesignClosed (D : StructuralDesignPackage) : Prop :=
  D.loadCombinations ∧ D.materialStrengthFactors ∧
  D.limitStates ∧ D.stabilityChecks ∧ D.serviceabilityChecks

theorem structural_design_closed_from_evidence (D : StructuralDesignPackage)
    (E : StructuralDesignEvidence D) : StructuralDesignClosed D := by
  exact And.intro E.loadCombinationsClosed
    (And.intro E.materialStrengthFactorsClosed
      (And.intro E.limitStatesClosed
        (And.intro E.stabilityChecksClosed E.serviceabilityChecksClosed)))

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse