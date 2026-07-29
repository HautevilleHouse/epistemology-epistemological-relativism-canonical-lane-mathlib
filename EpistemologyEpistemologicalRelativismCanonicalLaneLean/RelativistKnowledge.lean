import canonicalLaneMathlib.AdmissibleClass
import EpistemologyEpistemologicalRelativismCanonicalLaneLean.RelativistJustification

namespace HautevilleHouse
namespace EpistemologyEpistemologicalRelativismCanonicalLaneLean

structure RelativistKnowledgePackage {F : RelativistFoundationPackage}
    {J : RelativistJustificationPackage F} where
  knowledgeRelation : Prop
  truthTracking : Prop
  agentAccess : Prop

structure RelativistKnowledgeEvidence {F : RelativistFoundationPackage}
    {J : RelativistJustificationPackage F} (K : RelativistKnowledgePackage F J) where
  knowledgeRelationClosed : K.knowledgeRelation
  truthTrackingClosed : K.truthTracking
  agentAccessClosed : K.agentAccess

def RelativistKnowledgeClosed {F : RelativistFoundationPackage}
    {J : RelativistJustificationPackage F} (K : RelativistKnowledgePackage F J) : Prop :=
  K.knowledgeRelation ∧ K.truthTracking ∧ K.agentAccess

theorem relativist_knowledge_closed_from_evidence
    {F : RelativistFoundationPackage} {J : RelativistJustificationPackage F}
    (K : RelativistKnowledgePackage F J) (E : RelativistKnowledgeEvidence K) :
    RelativistKnowledgeClosed K := by
  exact And.intro E.knowledgeRelationClosed
    (And.intro E.truthTrackingClosed E.agentAccessClosed)

end HautevilleHouse.EpistemologyEpistemologicalRelativismCanonicalLaneLean
end HautevilleHouse