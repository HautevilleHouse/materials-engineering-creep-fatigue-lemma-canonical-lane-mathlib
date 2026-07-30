import canonicalLaneMathlib.AdmissibleClass

open HautevilleHouse
open HautevilleHouse.MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

structure CreepDamageMechanisms (A : AdmissibleClass) where
  vacancyDiffusion : Prop
  grainBoundaryCavitation : Prop
  powerLawCreep : Prop
  creepStrainRate : Prop

structure CreepDamageMechanismsEvidence (A : AdmissibleClass) (M : CreepDamageMechanisms A) where
  vacancyDiffusionClosed : M.vacancyDiffusion
  grainBoundaryCavitationClosed : M.grainBoundaryCavitation
  powerLawCreepClosed : M.powerLawCreep
  creepStrainRateClosed : M.creepStrainRate

def CreepDamageMechanismsClosed (A : AdmissibleClass) (M : CreepDamageMechanisms A) : Prop :=
  M.vacancyDiffusion ∧ M.grainBoundaryCavitation ∧ M.powerLawCreep ∧ M.creepStrainRate

theorem creep_damage_mechanisms_closed_from_evidence (A : AdmissibleClass) (M : CreepDamageMechanisms A) (E : CreepDamageMechanismsEvidence A M) : CreepDamageMechanismsClosed A M := by
  exact And.intro E.vacancyDiffusionClosed (And.intro E.grainBoundaryCavitationClosed (And.intro E.powerLawCreepClosed E.creepStrainRateClosed))

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse