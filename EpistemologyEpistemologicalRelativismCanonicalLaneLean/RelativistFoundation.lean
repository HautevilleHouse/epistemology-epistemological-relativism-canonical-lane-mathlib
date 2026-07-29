import canonicalLaneMathlib.AdmissibleClass
import EpistemologyEpistemologicalRelativismCanonicalLaneLean.EpistemicObjects

namespace HautevilleHouse
namespace EpistemologyEpistemologicalRelativismCanonicalLaneLean

structure RelativistFoundationPackage where
  agent : EpistemicAgent
  frameworkConsistency : Prop
  justificationCompatibility : Prop

structure RelativistFoundationEvidence (F : RelativistFoundationPackage) where
  frameworkConsistencyClosed : F.frameworkConsistency
  justificationCompatibilityClosed : F.justificationCompatibility

def RelativistFoundationClosed (F : RelativistFoundationPackage) : Prop :=
  F.frameworkConsistency ∧ F.justificationCompatibility

theorem relativist_foundation_closed_from_evidence
    (F : RelativistFoundationPackage) (E : RelativistFoundationEvidence F) :
    RelativistFoundationClosed F := by
  exact And.intro E.frameworkConsistencyClosed E.justificationCompatibilityClosed

end HautevilleHouse.EpistemologyEpistemologicalRelativismCanonicalLaneLean
end HautevilleHouse