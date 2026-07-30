import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

structure CreepConstitutiveModel where
  steadyStateStrainRate : Prop
  primaryCreepPhase : Prop
  tertiaryCreepPhase : Prop
  creepActivationEnergy : Prop
  creepExponent : Prop
  creepActivationEnergyTerm : creepActivationEnergy
  creepExponentTerm : creepExponent

structure CreepConstitutiveEvidence (C : CreepConstitutiveModel) where
  steadyStateStrainRateClosed : C.steadyStateStrainRate
  primaryCreepPhaseClosed : C.primaryCreepPhase
  tertiaryCreepPhaseClosed : C.tertiaryCreepPhase
  creepActivationEnergyClosed : C.creepActivationEnergy
  creepExponentClosed : C.creepExponent

def CreepConstitutiveClosed (C : CreepConstitutiveModel) : Prop :=
  C.steadyStateStrainRate ∧ C.primaryCreepPhase ∧ C.tertiaryCreepPhase ∧
  C.creepActivationEnergy ∧ C.creepExponent

theorem creep_constitutive_closed_from_evidence (C : CreepConstitutiveModel)
    (E : CreepConstitutiveEvidence C) : CreepConstitutiveClosed C := by
  exact And.intro E.steadyStateStrainRateClosed
    (And.intro E.primaryCreepPhaseClosed
      (And.intro E.tertiaryCreepPhaseClosed
        (And.intro E.creepActivationEnergyClosed E.creepExponentClosed)))

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse