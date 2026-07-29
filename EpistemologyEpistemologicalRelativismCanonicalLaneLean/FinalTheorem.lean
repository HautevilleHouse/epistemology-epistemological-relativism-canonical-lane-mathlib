import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EpistemologyEpistemologicalRelativismCanonicalLaneLean.EpistemicStructures
import HautevilleHouse.EpistemologyEpistemologicalRelativismCanonicalLaneLean.EpistemicRelativismClosure

namespace HautevilleHouse
namespace EpistemologyEpistemologicalRelativismCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EpistemicWitnessClosed A.object

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedEpistemicRelativismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_epistemic_relativism_endgame (A : AdmissibleClass) :
    ConstrainedEpistemicRelativismClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EpistemologyEpistemologicalRelativismCanonicalLaneLean
end HautevilleHouse