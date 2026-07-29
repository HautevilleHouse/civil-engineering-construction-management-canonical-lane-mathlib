import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringConstructionManagementCanonicalLaneLean

structure StructuralLoadPackage where
  deadLoad : Prop
  liveLoad : Prop
  windLoad : Prop
  seismicLoad : Prop
  loadCombinations : Prop

structure StructuralLoadEvidence (L : StructuralLoadPackage) where
  deadLoadClosed : L.deadLoad
  liveLoadClosed : L.liveLoad
  windLoadClosed : L.windLoad
  seismicLoadClosed : L.seismicLoad
  loadCombinationsClosed : L.loadCombinations

def StructuralLoadClosed (L : StructuralLoadPackage) : Prop :=
  L.deadLoad ∧ L.liveLoad ∧ L.windLoad ∧ L.seismicLoad ∧ L.loadCombinations

theorem structural_load_closed_from_evidence (L : StructuralLoadPackage)
    (E : StructuralLoadEvidence L) : StructuralLoadClosed L := by
  exact And.intro E.deadLoadClosed
    (And.intro E.liveLoadClosed
      (And.intro E.windLoadClosed
        (And.intro E.seismicLoadClosed E.loadCombinationsClosed)))

end CivilEngineeringConstructionManagementCanonicalLaneLean
end HautevilleHouse