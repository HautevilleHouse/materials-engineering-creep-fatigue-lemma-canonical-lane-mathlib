import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

structure CycleCountingMethod where
  methodName : String
  closedCycleIdentification : Prop
  rainflowCounting : Prop
  cycleAmplitude : Prop
  meanStressCorrection : Prop

structure LifePredictionModel where
  modelName : String
  linearDamageRule : Prop
  ductilityExhaustion : Prop
  frequencyModified : Prop
  energyBased : Prop

structure CreepFatigueLife where
  totalLife : Nat
  creepLifeFraction : Prop
  fatigueLifeFraction : Prop
  lifeFractionSum : Prop
  failurePrediction : Prop

structure LiftingEvidence (C : CycleCountingMethod) (L : LifePredictionModel) (F : CreepFatigueLife) where
  cycleMethodClosed : C.rainflowCounting
  lifeModelClosed : L.linearDamageRule
  lifeFractionClosed : F.lifeFractionSum
  failurePredictionClosed : F.failurePrediction

def LiftingClosed (C : CycleCountingMethod) (L : LifePredictionModel) (F : CreepFatigueLife) : Prop :=
  C.rainflowCounting ∧ L.linearDamageRule ∧ F.lifeFractionSum ∧ F.failurePrediction

theorem lifting_closed_from_evidence
    (C : CycleCountingMethod) (L : LifePredictionModel) (F : CreepFatigueLife)
    (E : LiftingEvidence C L F) : LiftingClosed C L F := by
  exact And.intro E.cycleMethodClosed (And.intro E.lifeModelClosed (And.intro E.lifeFractionClosed E.failurePredictionClosed))

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse