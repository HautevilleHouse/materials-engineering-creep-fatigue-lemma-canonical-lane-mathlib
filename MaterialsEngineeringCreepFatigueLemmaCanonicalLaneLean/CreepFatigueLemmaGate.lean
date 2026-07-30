import canonicalLaneMathlib.AdmissibleClass

open HautevilleHouse
open HautevilleHouse.MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse