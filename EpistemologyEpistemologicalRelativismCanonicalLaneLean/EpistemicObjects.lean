import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemologicalRelativismCanonicalLaneLean

structure EpistemicAgent where
  name : String
  epistemicPosition : String

structure EpistemicFramework where
  agent : EpistemicAgent
  justificationSystem : Type
  truthDefinition : Type
  knowledgeRelation : Prop

structure EpistemicAdmittedObject where
  framework : EpistemicFramework
  closureCondition : Prop
  conclusion : closureCondition

def EpistemicWitnessClosed (O : EpistemicAdmittedObject) : Prop :=
  O.closureCondition

end HautevilleHouse.EpistemologyEpistemologicalRelativismCanonicalLaneLean
end HautevilleHouse