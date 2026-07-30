import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

def ConstrainedCreepFatigueClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_creep_fatigue_endgame (A : AdmissibleClass) : ConstrainedCreepFatigueClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse