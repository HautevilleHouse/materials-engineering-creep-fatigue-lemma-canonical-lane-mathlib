import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CreepFatigueClosed A.object.creepFatigue

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse