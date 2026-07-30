import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

structure CreepStrainState where
  time : Type
  strain : Type
  strainRate : Type
  creepMechanism : Prop
  strainAccumulation : Prop

structure FatigueDamageState where
  cycleCount : Nat
  damageParameter : Prop
  damageAccumulation : Prop

structure StressState where
  stressTensor : Type
  vonMisesStress : Prop
  meanStress : Prop
  stressAmplitude : Prop
  stressRatio : Prop

structure CreepFatigueInteraction where
  creepDamage : Prop
  fatigueDamage : Prop
  interactionRule : Prop
  linearDamageSum : Prop

structure CreepFatigueStressEvidence (C : CreepStrainState) (F : FatigueDamageState) (S : StressState) (I : CreepFatigueInteraction) where
  creepStrainClosed : C.strainAccumulation
  fatigueDamageClosed : F.damageAccumulation
  interactionClosed : I.interactionRule
  stressStateClosed : S.vonMisesStress

def CreepFatigueStressClosed (C : CreepStrainState) (F : FatigueDamageState) (S : StressState) (I : CreepFatigueInteraction) : Prop :=
  C.strainAccumulation ∧ F.damageAccumulation ∧ I.interactionRule ∧ S.vonMisesStress

theorem creep_fatigue_stress_closed_from_evidence
    (C : CreepStrainState) (F : FatigueDamageState) (S : StressState) (I : CreepFatigueInteraction)
    (E : CreepFatigueStressEvidence C F S I) : CreepFatigueStressClosed C F S I := by
  exact And.intro E.creepStrainClosed (And.intro E.fatigueDamageClosed (And.intro E.interactionClosed E.stressStateClosed))

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse