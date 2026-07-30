import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

structure FatigueCyclicPlasticityPackage where
  cyclicHardeningSoftening : Prop
  ratchettingBehavior : Prop
  meanStressRelaxation : Prop
  chabocheModelParameters : Prop
  ohnoWangModelParameters : Prop
  plasticityDrivenDamage : Prop

structure FatigueCyclicPlasticityEvidence (P : FatigueCyclicPlasticityPackage) where
  cyclicHardeningSofteningClosed : P.cyclicHardeningSoftening
  ratchettingBehaviorClosed : P.ratchettingBehavior
  meanStressRelaxationClosed : P.meanStressRelaxation
  chabocheModelParametersClosed : P.chabocheModelParameters
  ohnoWangModelParametersClosed : P.ohnoWangModelParameters
  plasticityDrivenDamageClosed : P.plasticityDrivenDamage

def FatigueCyclicPlasticityClosed (P : FatigueCyclicPlasticityPackage) : Prop :=
  P.cyclicHardeningSoftening ∧ P.ratchettingBehavior ∧ P.meanStressRelaxation ∧ P.chabocheModelParameters ∧ P.ohnoWangModelParameters ∧ P.plasticityDrivenDamage

theorem fatigue_cyclic_plasticity_closed_from_evidence (P : FatigueCyclicPlasticityPackage) (E : FatigueCyclicPlasticityEvidence P) : FatigueCyclicPlasticityClosed P := by
  exact And.intro E.cyclicHardeningSofteningClosed
    (And.intro E.ratchettingBehaviorClosed
      (And.intro E.meanStressRelaxationClosed
        (And.intro E.chabocheModelParametersClosed
          (And.intro E.ohnoWangModelParametersClosed E.plasticityDrivenDamageClosed))))

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse