import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

structure MicrostructuralDamageMechanisms where
  dislocationCreep : Prop
  diffusionCreep : Prop
  grainBoundaryCavitation : Prop
  fatigueSlipBandFormation : Prop

structure MicrostructuralDamageEvidence (M : MicrostructuralDamageMechanisms) where
  dislocationCreepClosed : M.dislocationCreep
  diffusionCreepClosed : M.diffusionCreep
  grainBoundaryCavitationClosed : M.grainBoundaryCavitation
  fatigueSlipBandFormationClosed : M.fatigueSlipBandFormation

def MicrostructuralDamageClosed (M : MicrostructuralDamageMechanisms) : Prop :=
  M.dislocationCreep ∧ M.diffusionCreep ∧ M.grainBoundaryCavitation ∧ M.fatigueSlipBandFormation

theorem microstructural_damage_closed_from_evidence
    (M : MicrostructuralDamageMechanisms) (E : MicrostructuralDamageEvidence M) :
    MicrostructuralDamageClosed M := by
  exact And.intro E.dislocationCreepClosed
    (And.intro E.diffusionCreepClosed
      (And.intro E.grainBoundaryCavitationClosed E.fatigueSlipBandFormationClosed))

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse