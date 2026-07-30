import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

structure CrystallographyPackage where
  latticeType : Type
  bravaisLattice : Prop
  reciprocalLattice : Prop
  millerIndices : Prop
  symmetryGroup : Prop
  bravaisLatticeTerm : bravaisLattice
  reciprocalLatticeTerm : reciprocalLattice
  millerIndicesTerm : millerIndices
  symmetryGroupTerm : symmetryGroup

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClosed : C.bravaisLattice
  reciprocalLatticeClosed : C.reciprocalLattice
  millerIndicesClosed : C.millerIndices
  symmetryGroupClosed : C.symmetryGroup

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLattice ∧ C.reciprocalLattice ∧ C.millerIndices ∧ C.symmetryGroup

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClosed (And.intro E.reciprocalLatticeClosed (And.intro E.millerIndicesClosed E.symmetryGroupClosed))

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse