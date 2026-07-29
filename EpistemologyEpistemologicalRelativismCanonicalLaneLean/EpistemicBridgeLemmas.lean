import canonicalLaneMathlib.AdmissibleClass
import EpistemologyEpistemologicalRelativismCanonicalLaneLean.EpistemicObjects

namespace HautevilleHouse
namespace EpistemologyEpistemologicalRelativismCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EpistemicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end HautevilleHouse.EpistemologyEpistemologicalRelativismCanonicalLaneLean
end HautevilleHouse