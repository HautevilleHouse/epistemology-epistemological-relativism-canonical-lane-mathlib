import HautevilleHouse.EpistemologyEpistemologicalRelativismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemologicalRelativismCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EpistemicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion (by
    intro h
    exact h)

end EpistemologyEpistemologicalRelativismCanonicalLaneLean
end HautevilleHouse