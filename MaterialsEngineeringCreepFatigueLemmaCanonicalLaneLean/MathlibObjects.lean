import HautevilleHouse.MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

structure CreepFatigueSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CreepFatigueAdmittedObject where
  space : CreepFatigueSpace
  stressState : Prop
  temperatureField : Prop
  cycleCount : Nat
  creepStrain : Type
  fatigueDamage : Type
  damageAccumulation : Prop
  conclusion : damageAccumulation

structure CreepFatigueEndgameState where
  object : CreepFatigueAdmittedObject

def CreepFatigueWitnessClosed (O : CreepFatigueAdmittedObject) : Prop :=
  O.damageAccumulation

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse