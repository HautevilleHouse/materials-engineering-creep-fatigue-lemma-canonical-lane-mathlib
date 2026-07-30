import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

structure CreepFatigueInteractionPackage where
  creepFatigueDamageSum : Prop
  frequencyEffect : Prop
  holdTimeEffect : Prop
  waveformEffect : Prop
  creepFatigueInteractionTerm : Prop
  creepFatigueDamageSumTerm : creepFatigueDamageSum
  frequencyEffectTerm : frequencyEffect
  holdTimeEffectTerm : holdTimeEffect
  waveformEffectTerm : waveformEffect
  creepFatigueInteractionTermTerm : creepFatigueInteractionTerm

structure CreepFatigueInteractionEvidence (C : CreepFatigueInteractionPackage) where
  creepFatigueDamageSumClosed : C.creepFatigueDamageSum
  frequencyEffectClosed : C.frequencyEffect
  holdTimeEffectClosed : C.holdTimeEffect
  waveformEffectClosed : C.waveformEffect
  creepFatigueInteractionTermClosed : C.creepFatigueInteractionTerm

def CreepFatigueInteractionClosed (C : CreepFatigueInteractionPackage) : Prop :=
  C.creepFatigueDamageSum ∧ C.frequencyEffect ∧ C.holdTimeEffect ∧
  C.waveformEffect ∧ C.creepFatigueInteractionTerm

theorem creep_fatigue_interaction_closed_from_evidence
    (C : CreepFatigueInteractionPackage) (E : CreepFatigueInteractionEvidence C) :
    CreepFatigueInteractionClosed C := by
  exact And.intro E.creepFatigueDamageSumClosed
    (And.intro E.frequencyEffectClosed
      (And.intro E.holdTimeEffectClosed
        (And.intro E.waveformEffectClosed E.creepFatigueInteractionTermClosed)))

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse