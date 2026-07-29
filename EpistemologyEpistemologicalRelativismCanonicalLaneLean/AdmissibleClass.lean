import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemologicalRelativismCanonicalLaneLean

structure EpistemicSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EpistemologicalAdmittedObject where
  space : EpistemicSpace
  knowledgeClaim : Prop
  justification : Prop
  conclusion : knowledgeClaim → justification

def EpistemicWitnessClosed (O : EpistemologicalAdmittedObject) : Prop :=
  O.conclusion (by
    intro h
    exact h)

structure AdmissibleClass where
  object : EpistemologicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EpistemicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EpistemologyEpistemologicalRelativismCanonicalLaneLean
end HautevilleHouse