import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace EpistemologyEpistemologicalRelativismCanonicalLaneLean

def ConstrainedRelativismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_relativism_endgame (A : AdmissibleClass) : ConstrainedRelativismClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EpistemologyEpistemologicalRelativismCanonicalLaneLean
end HautevilleHouse