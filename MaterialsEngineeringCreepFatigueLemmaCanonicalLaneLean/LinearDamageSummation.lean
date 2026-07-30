import canonicalLaneMathlib.AdmissibleClass

open HautevilleHouse
open HautevilleHouse.MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

structure LinearDamageSummation (A : AdmissibleClass) where
  fatigueDamageFraction : Prop
  creepDamageFraction : Prop
  interactionTerm : Prop
  totalDamage : Prop

structure LinearDamageSummationEvidence (A : AdmissibleClass) (L : LinearDamageSummation A) where
  fatigueDamageFractionClosed : L.fatigueDamageFraction
  creepDamageFractionClosed : L.creepDamageFraction
  interactionTermClosed : L.interactionTerm
  totalDamageClosed : L.totalDamage

def LinearDamageSummationClosed (A : AdmissibleClass) (L : LinearDamageSummation A) : Prop :=
  L.fatigueDamageFraction ∧ L.creepDamageFraction ∧ L.interactionTerm ∧ L.totalDamage

theorem linear_damage_summation_closed_from_evidence (A : AdmissibleClass) (L : LinearDamageSummation A) (E : LinearDamageSummationEvidence A L) : LinearDamageSummationClosed A L := by
  exact And.intro E.fatigueDamageFractionClosed (And.intro E.creepDamageFractionClosed (And.intro E.interactionTermClosed E.totalDamageClosed))

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse