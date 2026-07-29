import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EpistemologyEpistemologicalRelativismCanonicalLaneLean.EpistemicStructures

namespace HautevilleHouse
namespace EpistemologyEpistemologicalRelativismCanonicalLaneLean

structure EpistemicRelativismPackage where
  object : EpistemicAdmittedObject
  bridgeCondition : Prop
  gateCondition : Prop
  bridgeWitness : bridgeCondition
  gateWitness : gateCondition

structure EpistemicRelativismEvidence (P : EpistemicRelativismPackage) where
  bridgeClosed : P.bridgeCondition
  gateClosed : P.gateCondition

def EpistemicRelativismClosed (P : EpistemicRelativismPackage) : Prop :=
  P.bridgeCondition ∧ P.gateCondition

theorem epistemic_relativism_closed_from_evidence (P : EpistemicRelativismPackage) (E : EpistemicRelativismEvidence P) :
    EpistemicRelativismClosed P := by
  exact And.intro E.bridgeClosed E.gateClosed

end EpistemologyEpistemologicalRelativismCanonicalLaneLean
end HautevilleHouse