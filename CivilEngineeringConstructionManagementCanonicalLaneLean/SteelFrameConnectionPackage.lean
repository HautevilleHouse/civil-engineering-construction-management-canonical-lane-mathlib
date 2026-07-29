import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure SteelFrameConnectionPackage where
  boltShearCapacity : Prop
  weldStrength : Prop
  plateBearing : Prop
  momentConnection : Prop
  seismicDuctility : Prop

structure SteelFrameConnectionEvidence (S : SteelFrameConnectionPackage) where
  boltShearCapacityClosed : S.boltShearCapacity
  weldStrengthClosed : S.weldStrength
  plateBearingClosed : S.plateBearing
  momentConnectionClosed : S.momentConnection
  seismicDuctilityClosed : S.seismicDuctility

def SteelFrameConnectionClosed (S : SteelFrameConnectionPackage) : Prop :=
  S.boltShearCapacity ∧ S.weldStrength ∧
  S.plateBearing ∧ S.momentConnection ∧ S.seismicDuctility

theorem steel_frame_connection_closed_from_evidence (S : SteelFrameConnectionPackage)
    (E : SteelFrameConnectionEvidence S) : SteelFrameConnectionClosed S := by
  exact And.intro E.boltShearCapacityClosed
    (And.intro E.weldStrengthClosed
      (And.intro E.plateBearingClosed
        (And.intro E.momentConnectionClosed E.seismicDuctilityClosed)))

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse