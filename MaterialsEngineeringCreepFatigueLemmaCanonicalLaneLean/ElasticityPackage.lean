import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type
  strainTensor : Type
  hookesLaw : Prop
  elasticModuli : Prop
  stressStrainRelation : Prop
  hookesLawTerm : hookesLaw
  elasticModuliTerm : elasticModuli
  stressStrainRelationTerm : stressStrainRelation

structure ElasticityEvidence (E : ElasticityPackage) where
  hookesLawClosed : E.hookesLaw
  elasticModuliClosed : E.elasticModuli
  stressStrainRelationClosed : E.stressStrainRelation

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.hookesLaw ∧ E.elasticModuli ∧ E.stressStrainRelation

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.hookesLawClosed (And.intro Ev.elasticModuliClosed Ev.stressStrainRelationClosed)

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse