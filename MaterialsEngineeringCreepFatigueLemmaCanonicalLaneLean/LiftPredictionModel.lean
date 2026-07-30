import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

structure LiftPredictionModelPackage where
  strainBasedApproach : Prop
  stressBasedApproach : Prop
  energyBasedApproach : Prop
  fractureMechanicsExtension : Prop
  notchEffectModeling : Prop
  statisticalScatterModeling : Prop
  multiaxialLiftCriteria : Prop

structure LiftPredictionModelEvidence (P : LiftPredictionModelPackage) where
  strainBasedApproachClosed : P.strainBasedApproach
  stressBasedApproachClosed : P.stressBasedApproach
  energyBasedApproachClosed : P.energyBasedApproach
  fractureMechanicsExtensionClosed : P.fractureMechanicsExtension
  notchEffectModelingClosed : P.notchEffectModeling
  statisticalScatterModelingClosed : P.statisticalScatterModeling
  multiaxialLiftCriteriaClosed : P.multiaxialLiftCriteria

def LiftPredictionModelClosed (P : LiftPredictionModelPackage) : Prop :=
  P.strainBasedApproach ∧ P.stressBasedApproach ∧ P.energyBasedApproach ∧ P.fractureMechanicsExtension ∧ P.notchEffectModeling ∧ P.statisticalScatterModeling ∧ P.multiaxialLiftCriteria

theorem lift_prediction_model_closed_from_evidence (P : LiftPredictionModelPackage) (E : LiftPredictionModelEvidence P) : LiftPredictionModelClosed P := by
  exact And.intro E.strainBasedApproachClosed
    (And.intro E.stressBasedApproachClosed
      (And.intro E.energyBasedApproachClosed
        (And.intro E.fractureMechanicsExtensionClosed
          (And.intro E.notchEffectModelingClosed
            (And.intro E.statisticalScatterModelingClosed E.multiaxialLiftCriteriaClosed)))))

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse