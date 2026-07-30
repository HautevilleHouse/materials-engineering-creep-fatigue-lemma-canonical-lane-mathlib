import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

structure FractureMechanicsPackage where
  crackGeometry : Type
  stressIntensityFactor : Prop
  energyReleaseRate : Prop
  parisLaw : Prop
  fractureToughness : Prop
  stressIntensityFactorTerm : stressIntensityFactor
  energyReleaseRateTerm : energyReleaseRate
  parisLawTerm : parisLaw
  fractureToughnessTerm : fractureToughness

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  stressIntensityFactorClosed : F.stressIntensityFactor
  energyReleaseRateClosed : F.energyReleaseRate
  parisLawClosed : F.parisLaw
  fractureToughnessClosed : F.fractureToughness

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.stressIntensityFactor ∧ F.energyReleaseRate ∧ F.parisLaw ∧ F.fractureToughness

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.stressIntensityFactorClosed (And.intro E.energyReleaseRateClosed (And.intro E.parisLawClosed E.fractureToughnessClosed))

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse