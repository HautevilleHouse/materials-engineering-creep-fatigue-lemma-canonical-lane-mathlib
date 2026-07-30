import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

structure FatigueCrackInitiationPackage where
  stressConcentration : Prop
  cyclicPlasticStrain : Prop
  crackInitiationLife : Prop
  inclusionInitiation : Prop
  surfaceRoughnessEffect : Prop

structure FatigueCrackInitiationEvidence (F : FatigueCrackInitiationPackage) where
  stressConcentrationClosed : F.stressConcentration
  cyclicPlasticStrainClosed : F.cyclicPlasticStrain
  crackInitiationLifeClosed : F.crackInitiationLife
  inclusionInitiationClosed : F.inclusionInitiation
  surfaceRoughnessEffectClosed : F.surfaceRoughnessEffect

def FatigueCrackInitiationClosed (F : FatigueCrackInitiationPackage) : Prop :=
  F.stressConcentration ∧ F.cyclicPlasticStrain ∧ F.crackInitiationLife ∧
  F.inclusionInitiation ∧ F.surfaceRoughnessEffect

theorem fatigue_crack_initiation_closed_from_evidence
    (F : FatigueCrackInitiationPackage) (E : FatigueCrackInitiationEvidence F) :
    FatigueCrackInitiationClosed F := by
  exact And.intro E.stressConcentrationClosed
    (And.intro E.cyclicPlasticStrainClosed
      (And.intro E.crackInitiationLifeClosed
        (And.intro E.inclusionInitiationClosed E.surfaceRoughnessEffectClosed)))

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse