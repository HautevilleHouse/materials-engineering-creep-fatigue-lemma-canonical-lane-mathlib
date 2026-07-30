import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

structure LarsonMillerParameterPackage where
  larsonMillerConstant : Prop
  ruptureTime : Prop
  temperature : Prop
  stressExponent : Prop
  activationEnergy : Prop
  larsonMillerConstantTerm : larsonMillerConstant
  ruptureTimeTerm : ruptureTime
  temperatureTerm : temperature
  stressExponentTerm : stressExponent
  activationEnergyTerm : activationEnergy

structure LarsonMillerParameterEvidence (L : LarsonMillerParameterPackage) where
  larsonMillerConstantClosed : L.larsonMillerConstant
  ruptureTimeClosed : L.ruptureTime
  temperatureClosed : L.temperature
  stressExponentClosed : L.stressExponent
  activationEnergyClosed : L.activationEnergy

def LarsonMillerParameterClosed (L : LarsonMillerParameterPackage) : Prop :=
  L.larsonMillerConstant ∧ L.ruptureTime ∧ L.temperature ∧ L.stressExponent ∧ L.activationEnergy

theorem larson_miller_parameter_closed_from_evidence
    (L : LarsonMillerParameterPackage) (E : LarsonMillerParameterEvidence L) :
    LarsonMillerParameterClosed L := by
  exact And.intro E.larsonMillerConstantClosed
    (And.intro E.ruptureTimeClosed
      (And.intro E.temperatureClosed
        (And.intro E.stressExponentClosed E.activationEnergyClosed)))

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse