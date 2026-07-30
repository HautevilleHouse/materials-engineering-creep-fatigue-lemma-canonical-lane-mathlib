import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

structure DamageCriterionPackage where
  linearDamageRule : Prop
  nonlinearDamageRule : Prop
  criticalDamageSurface : Prop
  multiaxialCorrection : Prop
  safetyMargin : Prop
  criterionCalibration : Prop
  enduranceLimitConsideration : Prop

structure DamageCriterionEvidence (P : DamageCriterionPackage) where
  linearDamageRuleClosed : P.linearDamageRule
  nonlinearDamageRuleClosed : P.nonlinearDamageRule
  criticalDamageSurfaceClosed : P.criticalDamageSurface
  multiaxialCorrectionClosed : P.multiaxialCorrection
  safetyMarginClosed : P.safetyMargin
  criterionCalibrationClosed : P.criterionCalibration
  enduranceLimitConsiderationClosed : P.enduranceLimitConsideration

def DamageCriterionClosed (P : DamageCriterionPackage) : Prop :=
  P.linearDamageRule ∧ P.nonlinearDamageRule ∧ P.criticalDamageSurface ∧ P.multiaxialCorrection ∧ P.safetyMargin ∧ P.criterionCalibration ∧ P.enduranceLimitConsideration

theorem damage_criterion_closed_from_evidence (P : DamageCriterionPackage) (E : DamageCriterionEvidence P) : DamageCriterionClosed P := by
  exact And.intro E.linearDamageRuleClosed
    (And.intro E.nonlinearDamageRuleClosed
      (And.intro E.criticalDamageSurfaceClosed
        (And.intro E.multiaxialCorrectionClosed
          (And.intro E.safetyMarginClosed
            (And.intro E.criterionCalibrationClosed E.enduranceLimitConsiderationClosed)))))

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse