import canonicalLaneMathlib.AdmissibleClass

open HautevilleHouse
open HautevilleHouse.MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

structure CreepFatigueMicrostructure (A : AdmissibleClass) where
  grainBoundarySliding : Prop
  cavityNucleation : Prop
  dislocationClimb : Prop
  oxideLayerFormation : Prop

structure CreepFatigueMicrostructureEvidence (A : AdmissibleClass) (M : CreepFatigueMicrostructure A) where
  grainBoundarySlidingClosed : M.grainBoundarySliding
  cavityNucleationClosed : M.cavityNucleation
  dislocationClimbClosed : M.dislocationClimb
  oxideLayerFormationClosed : M.oxideLayerFormation

def CreepFatigueMicrostructureClosed (A : AdmissibleClass) (M : CreepFatigueMicrostructure A) : Prop :=
  M.grainBoundarySliding ∧ M.cavityNucleation ∧ M.dislocationClimb ∧ M.oxideLayerFormation

theorem creep_fatigue_microstructure_closed_from_evidence (A : AdmissibleClass) (M : CreepFatigueMicrostructure A) (E : CreepFatigueMicrostructureEvidence A M) : CreepFatigueMicrostructureClosed A M := by
  exact And.intro E.grainBoundarySlidingClosed (And.intro E.cavityNucleationClosed (And.intro E.dislocationClimbClosed E.oxideLayerFormationClosed))

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse