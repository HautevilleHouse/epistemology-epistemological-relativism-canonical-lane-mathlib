import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemologicalRelativismCanonicalLaneLean

structure TruthCriteriaPackage where
  coherenceCondition : Prop
  correspondenceCondition : Prop
  pragmaticCondition : Prop
  relativismAdmissible : Prop

structure TruthCriteriaEvidence (T : TruthCriteriaPackage) where
  coherenceConditionClosed : T.coherenceCondition
  correspondenceConditionClosed : T.correspondenceCondition
  pragmaticConditionClosed : T.pragmaticCondition
  relativismAdmissibleClosed : T.relativismAdmissible

def TruthCriteriaClosed (T : TruthCriteriaPackage) : Prop :=
  T.coherenceCondition ∧ T.correspondenceCondition ∧ T.pragmaticCondition ∧ T.relativismAdmissible

theorem truth_criteria_closed_from_evidence (T : TruthCriteriaPackage) (E : TruthCriteriaEvidence T) : TruthCriteriaClosed T := by
  exact And.intro E.coherenceConditionClosed (And.intro E.correspondenceConditionClosed (And.intro E.pragmaticConditionClosed E.relativismAdmissibleClosed))

end EpistemologyEpistemologicalRelativismCanonicalLaneLean
end HautevilleHouse