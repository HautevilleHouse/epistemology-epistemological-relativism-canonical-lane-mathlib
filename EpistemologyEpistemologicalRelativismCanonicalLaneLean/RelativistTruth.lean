import canonicalLaneMathlib.AdmissibleClass
import EpistemologyEpistemologicalRelativismCanonicalLaneLean.RelativistFoundation

namespace HautevilleHouse
namespace EpistemologyEpistemologicalRelativismCanonicalLaneLean

structure RelativistTruthPackage {F : RelativistFoundationPackage} where
  truthDefinition : Type
  coherenceCondition : Prop
  relativistClosure : Prop

structure RelativistTruthEvidence {F : RelativistFoundationPackage}
    (T : RelativistTruthPackage F) where
  coherenceConditionClosed : T.coherenceCondition

def RelativistTruthClosed {F : RelativistFoundationPackage}
    (T : RelativistTruthPackage F) : Prop :=
  T.coherenceCondition

theorem relativist_truth_closed_from_evidence
    {F : RelativistFoundationPackage} (T : RelativistTruthPackage F)
    (E : RelativistTruthEvidence T) : RelativistTruthClosed T := by
  exact E.coherenceConditionClosed

end HautevilleHouse.EpistemologyEpistemologicalRelativismCanonicalLaneLean
end HautevilleHouse