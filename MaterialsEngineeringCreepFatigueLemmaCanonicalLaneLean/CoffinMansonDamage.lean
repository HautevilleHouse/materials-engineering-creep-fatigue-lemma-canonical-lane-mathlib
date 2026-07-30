import canonicalLaneMathlib.AdmissibleClass

open HautevilleHouse
open HautevilleHouse.MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

structure CoffinMansonDamage (A : AdmissibleClass) where
  plasticStrainAmplitude : Prop
  fatigueDuctilityCoefficient : Prop
  fatigueDuctilityExponent : Prop
  halfCyclesToFailure : Prop

structure CoffinMansonDamageEvidence (A : AdmissibleClass) (C : CoffinMansonDamage A) where
  plasticStrainAmplitudeClosed : C.plasticStrainAmplitude
  fatigueDuctilityCoefficientClosed : C.fatigueDuctilityCoefficient
  fatigueDuctilityExponentClosed : C.fatigueDuctilityExponent
  halfCyclesToFailureClosed : C.halfCyclesToFailure

def CoffinMansonDamageClosed (A : AdmissibleClass) (C : CoffinMansonDamage A) : Prop :=
  C.plasticStrainAmplitude ∧ C.fatigueDuctilityCoefficient ∧ C.fatigueDuctilityExponent ∧ C.halfCyclesToFailure

theorem coffin_manson_damage_closed_from_evidence (A : AdmissibleClass) (C : CoffinMansonDamage A) (E : CoffinMansonDamageEvidence A C) : CoffinMansonDamageClosed A C := by
  exact And.intro E.plasticStrainAmplitudeClosed (And.intro E.fatigueDuctilityCoefficientClosed (And.intro E.fatigueDuctilityExponentClosed E.halfCyclesToFailureClosed))

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse