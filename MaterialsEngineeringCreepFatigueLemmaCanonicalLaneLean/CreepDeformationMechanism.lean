import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

structure CreepDeformationMechanismPackage where
  grainBoundarySliding : Prop
  intragranularDislocation : Prop
  diffussionalCreep : Prop
  recrystallizationCoupling : Prop
  stressTemperatureDomain : Prop
  mechanismTransitionConditions : Prop

structure CreepDeformationMechanismEvidence (P : CreepDeformationMechanismPackage) where
  grainBoundarySlidingClosed : P.grainBoundarySliding
  intragranularDislocationClosed : P.intragranularDislocation
  diffussionalCreepClosed : P.diffussionalCreep
  recrystallizationCouplingClosed : P.recrystallizationCoupling
  stressTemperatureDomainClosed : P.stressTemperatureDomain
  mechanismTransitionConditionsClosed : P.mechanismTransitionConditions

def CreepDeformationMechanismClosed (P : CreepDeformationMechanismPackage) : Prop :=
  P.grainBoundarySliding ∧ P.intragranularDislocation ∧ P.diffussionalCreep ∧ P.recrystallizationCoupling ∧ P.stressTemperatureDomain ∧ P.mechanismTransitionConditions

theorem creep_deformation_mechanism_closed_from_evidence (P : CreepDeformationMechanismPackage) (E : CreepDeformationMechanismEvidence P) : CreepDeformationMechanismClosed P := by
  exact And.intro E.grainBoundarySlidingClosed
    (And.intro E.intragranularDislocationClosed
      (And.intro E.diffussionalCreepClosed
        (And.intro E.recrystallizationCouplingClosed
          (And.intro E.stressTemperatureDomainClosed E.mechanismTransitionConditionsClosed))))

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse