import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  binarySystem : Type
  eutecticPoint : Prop
  solidusLiquidus : Prop
  phaseRule : Prop
  leverRule : Prop
  eutecticPointTerm : eutecticPoint
  solidusLiquidusTerm : solidusLiquidus
  phaseRuleTerm : phaseRule
  leverRuleTerm : leverRule

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  eutecticPointClosed : P.eutecticPoint
  solidusLiquidusClosed : P.solidusLiquidus
  phaseRuleClosed : P.phaseRule
  leverRuleClosed : P.leverRule

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.eutecticPoint ∧ P.solidusLiquidus ∧ P.phaseRule ∧ P.leverRule

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.eutecticPointClosed (And.intro E.solidusLiquidusClosed (And.intro E.phaseRuleClosed E.leverRuleClosed))

end MaterialsEngineeringCreepFatigueLemmaCanonicalLaneLean
end HautevilleHouse