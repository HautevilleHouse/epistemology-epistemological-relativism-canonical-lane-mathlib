import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemologicalRelativismCanonicalLaneLean

structure EpistemicAgent where
  name : String

structure Proposition where
  content : String

structure Justification where
  agent : EpistemicAgent
  proposition : Proposition
  ground : String

structure EpistemicFramework where
  agents : List EpistemicAgent
  propositions : List Proposition
  justificationRelation : Proposition → EpistemicAgent → Prop
  truthAssignment : Proposition → Prop

structure EpistemicAdmittedObject where
  framework : EpistemicFramework
  justificationConsistent : Prop
  truthCoherent : Prop
  relativismHolds : Prop
  conclusion : relativismHolds

def EpistemicWitnessClosed (O : EpistemicAdmittedObject) : Prop :=
  O.relativismHolds

end EpistemologyEpistemologicalRelativismCanonicalLaneLean
end HautevilleHouse