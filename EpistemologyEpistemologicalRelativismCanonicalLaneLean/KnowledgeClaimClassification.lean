import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemologicalRelativismCanonicalLaneLean

structure KnowledgeClaimClassificationPackage where
  claim : Type u
  verifiability : Prop
  contextBound : Prop
  relativismConsistency : Prop

structure KnowledgeClaimClassificationEvidence (P : KnowledgeClaimClassificationPackage) where
  verifiabilityClosed : P.verifiability
  contextBoundClosed : P.contextBound
  relativismConsistencyClosed : P.relativismConsistency

def KnowledgeClaimClassificationClosed (P : KnowledgeClaimClassificationPackage) : Prop :=
  P.verifiability ∧ P.contextBound ∧ P.relativismConsistency

theorem knowledge_claim_classification_closed_from_evidence (P : KnowledgeClaimClassificationPackage) (E : KnowledgeClaimClassificationEvidence P) : KnowledgeClaimClassificationClosed P := by
  exact And.intro E.verifiabilityClosed (And.intro E.contextBoundClosed E.relativismConsistencyClosed)

end EpistemologyEpistemologicalRelativismCanonicalLaneLean
end HautevilleHouse