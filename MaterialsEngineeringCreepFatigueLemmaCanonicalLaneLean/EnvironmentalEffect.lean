import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

structure EnvironmentalEffectPackage where
  oxidationEmbrittlement : Prop
  corrosionFatigueInteraction : Prop
  hydrogenInducedDegradation : Prop
  temperatureEffectOnDamage : Prop
  atmosphereDependency : Prop
  protectiveCoatingEffect : Prop

structure EnvironmentalEffectEvidence (P : EnvironmentalEffectPackage) where
  oxidationEmbrittlementClosed : P.oxidationEmbrittlement
  corrosionFatigueInteractionClosed : P.corrosionFatigueInteraction
  hydrogenInducedDegradationClosed : P.hydrogenInducedDegradation
  temperatureEffectOnDamageClosed : P.temperatureEffectOnDamage
  atmosphereDependencyClosed : P.atmosphereDependency
  protectiveCoatingEffectClosed : P.protectiveCoatingEffect

def EnvironmentalEffectClosed (P : EnvironmentalEffectPackage) : Prop :=
  P.oxidationEmbrittlement ∧ P.corrosionFatigueInteraction ∧ P.hydrogenInducedDegradation ∧ P.temperatureEffectOnDamage ∧ P.atmosphereDependency ∧ P.protectiveCoatingEffect

theorem environmental_effect_closed_from_evidence (P : EnvironmentalEffectPackage) (E : EnvironmentalEffectEvidence P) : EnvironmentalEffectClosed P := by
  exact And.intro E.oxidationEmbrittlementClosed
    (And.intro E.corrosionFatigueInteractionClosed
      (And.intro E.hydrogenInducedDegradationClosed
        (And.intro E.temperatureEffectOnDamageClosed
          (And.intro E.atmosphereDependencyClosed E.protectiveCoatingEffectClosed))))

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse