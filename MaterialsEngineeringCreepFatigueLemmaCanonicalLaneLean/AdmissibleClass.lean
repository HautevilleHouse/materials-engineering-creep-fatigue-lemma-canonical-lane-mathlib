import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

structure AdmittedObject where
  crystallography : CrystallographyPackage
  phaseDiagram : PhaseDiagramPackage
  elasticity : ElasticityPackage
  fractureMechanics : FractureMechanicsPackage
  creepFatigue : CreepFatiguePackage
  conclusion : CreepFatigueClosed creepFatigue

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CreepFatigueClosed A.object.creepFatigue ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse