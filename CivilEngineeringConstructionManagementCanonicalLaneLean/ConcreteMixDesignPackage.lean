import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure ConcreteMixDesignPackage where
  waterCementRatio : Prop
  aggregateGradation : Prop
  admixtureDosage : Prop
  compressiveStrength : Prop
  workabilitySlump : Prop

structure ConcreteMixDesignEvidence (C : ConcreteMixDesignPackage) where
  waterCementRatioClosed : C.waterCementRatio
  aggregateGradationClosed : C.aggregateGradation
  admixtureDosageClosed : C.admixtureDosage
  compressiveStrengthClosed : C.compressiveStrength
  workabilitySlumpClosed : C.workabilitySlump

def ConcreteMixDesignClosed (C : ConcreteMixDesignPackage) : Prop :=
  C.waterCementRatio ∧ C.aggregateGradation ∧
  C.admixtureDosage ∧ C.compressiveStrength ∧ C.workabilitySlump

theorem concrete_mix_design_closed_from_evidence (C : ConcreteMixDesignPackage)
    (E : ConcreteMixDesignEvidence C) : ConcreteMixDesignClosed C := by
  exact And.intro E.waterCementRatioClosed
    (And.intro E.aggregateGradationClosed
      (And.intro E.admixtureDosageClosed
        (And.intro E.compressiveStrengthClosed E.workabilitySlumpClosed)))

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse