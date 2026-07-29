import canonicalLaneMathlib.AdmissibleClass
import EpistemologyEpistemologicalRelativismCanonicalLaneLean.RelativistFoundation

namespace HautevilleHouse
namespace EpistemologyEpistemologicalRelativismCanonicalLaneLean

structure RelativistJustificationPackage {F : RelativistFoundationPackage} where
  justificationSystem : Type
  internalConsistency : Prop
  coherenceWithFramework : Prop

structure RelativistJustificationEvidence {F : RelativistFoundationPackage}
    (J : RelativistJustificationPackage F) where
  internalConsistencyClosed : J.internalConsistency
  coherenceWithFrameworkClosed : J.coherenceWithFramework

def RelativistJustificationClosed {F : RelativistFoundationPackage}
    (J : RelativistJustificationPackage F) : Prop :=
  J.internalConsistency ∧ J.coherenceWithFramework

theorem relativist_justification_closed_from_evidence
    {F : RelativistFoundationPackage} (J : RelativistJustificationPackage F)
    (E : RelativistJustificationEvidence J) : RelativistJustificationClosed J := by
  exact And.intro E.internalConsistencyClosed E.coherenceWithFrameworkClosed

end HautevilleHouse.EpistemologyEpistemologicalRelativismCanonicalLaneLean
end HautevilleHouse