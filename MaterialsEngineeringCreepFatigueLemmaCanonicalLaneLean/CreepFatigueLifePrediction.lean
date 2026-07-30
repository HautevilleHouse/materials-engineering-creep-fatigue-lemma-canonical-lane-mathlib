import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

structure CreepFatigueLifePredictionPackage where
  totalStrainRange : ℝ
  creepStrainFraction : ℝ
  cyclicFrequency : ℝ
  creepLifeModelEstablished : Prop
  fatigueLifeModelEstablished : Prop
  linearDamageSummation : Prop
  lifePredictionValidated : Prop

structure CreepFatigueLifePredictionEvidence (L : CreepFatigueLifePredictionPackage) where
  creepLifeModelEstablishedClosed : L.creepLifeModelEstablished
  fatigueLifeModelEstablishedClosed : L.fatigueLifeModelEstablished
  linearDamageSummationClosed : L.linearDamageSummation
  lifePredictionValidatedClosed : L.lifePredictionValidated

def CreepFatigueLifePredictionClosed (L : CreepFatigueLifePredictionPackage) : Prop :=
  L.creepLifeModelEstablished ∧ L.fatigueLifeModelEstablished ∧ L.linearDamageSummation ∧ L.lifePredictionValidated

theorem creep_fatigue_life_prediction_closed_from_evidence
    (L : CreepFatigueLifePredictionPackage) (E : CreepFatigueLifePredictionEvidence L) :
    CreepFatigueLifePredictionClosed L := by
  exact And.intro E.creepLifeModelEstablishedClosed
    (And.intro E.fatigueLifeModelEstablishedClosed
      (And.intro E.linearDamageSummationClosed E.lifePredictionValidatedClosed))

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse