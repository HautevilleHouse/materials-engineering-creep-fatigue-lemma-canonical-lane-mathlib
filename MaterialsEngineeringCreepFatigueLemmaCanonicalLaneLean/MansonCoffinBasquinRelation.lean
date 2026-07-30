import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

structure MansonCoffinBasquinRelation where
  plasticStrainAmplitude : Prop
  fatigueDuctilityCoefficient : Prop
  fatigueDuctilityExponent : Prop
  elasticStrainAmplitude : Prop
  fatigueStrengthCoefficient : Prop
  fatigueStrengthExponent : Prop
  plasticStrainAmplitudeTerm : plasticStrainAmplitude
  fatigueDuctilityCoefficientTerm : fatigueDuctilityCoefficient
  fatigueDuctilityExponentTerm : fatigueDuctilityExponent
  elasticStrainAmplitudeTerm : elasticStrainAmplitude
  fatigueStrengthCoefficientTerm : fatigueStrengthCoefficient
  fatigueStrengthExponentTerm : fatigueStrengthExponent

structure MansonCoffinBasquinEvidence (M : MansonCoffinBasquinRelation) where
  plasticStrainAmplitudeClosed : M.plasticStrainAmplitude
  fatigueDuctilityCoefficientClosed : M.fatigueDuctilityCoefficient
  fatigueDuctilityExponentClosed : M.fatigueDuctilityExponent
  elasticStrainAmplitudeClosed : M.elasticStrainAmplitude
  fatigueStrengthCoefficientClosed : M.fatigueStrengthCoefficient
  fatigueStrengthExponentClosed : M.fatigueStrengthExponent

def MansonCoffinBasquinClosed (M : MansonCoffinBasquinRelation) : Prop :=
  M.plasticStrainAmplitude ∧ M.fatigueDuctilityCoefficient ∧ M.fatigueDuctilityExponent ∧
  M.elasticStrainAmplitude ∧ M.fatigueStrengthCoefficient ∧ M.fatigueStrengthExponent

theorem manson_coffin_basquin_closed_from_evidence
    (M : MansonCoffinBasquinRelation) (E : MansonCoffinBasquinEvidence M) :
    MansonCoffinBasquinClosed M := by
  exact And.intro E.plasticStrainAmplitudeClosed
    (And.intro E.fatigueDuctilityCoefficientClosed
      (And.intro E.fatigueDuctilityExponentClosed
        (And.intro E.elasticStrainAmplitudeClosed
          (And.intro E.fatigueStrengthCoefficientClosed E.fatigueStrengthExponentClosed))))

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse