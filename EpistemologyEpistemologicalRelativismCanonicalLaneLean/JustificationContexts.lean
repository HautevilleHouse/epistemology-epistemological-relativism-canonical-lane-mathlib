import HautevilleHouse.EpistemologyEpistemologicalRelativismCanonicalLaneLean.EpistemicFrameworks

namespace HautevilleHouse
namespace EpistemologyEpistemologicalRelativismCanonicalLaneLean

structure JustificationContextPackage {A : AdmissibleClass}
    {F : EpistemicFrameworkPackage A} where
  contextType : Type u
  justificationCriteria : Prop
  contextualRelativity : Prop
  objectiveAnchor : Prop
  contextClosedUnderEvidence : Prop

structure JustificationContextEvidence {A : AdmissibleClass}
    {F : EpistemicFrameworkPackage A} (J : JustificationContextPackage F) where
  justificationCriteriaClosed : J.justificationCriteria
  contextualRelativityClosed : J.contextualRelativity
  objectiveAnchorClosed : J.objectiveAnchor
  contextClosedUnderEvidenceClosed : J.contextClosedUnderEvidence

def JustificationContextClosed {A : AdmissibleClass}
    {F : EpistemicFrameworkPackage A} (J : JustificationContextPackage F) : Prop :=
  J.justificationCriteria ∧ J.contextualRelativity ∧ J.objectiveAnchor ∧ J.contextClosedUnderEvidence

theorem justification_context_closed_from_evidence
    {A : AdmissibleClass} {F : EpistemicFrameworkPackage A}
    (J : JustificationContextPackage F) (E : JustificationContextEvidence J) :
    JustificationContextClosed J := by
  exact And.intro E.justificationCriteriaClosed
    (And.intro E.contextualRelativityClosed
      (And.intro E.objectiveAnchorClosed E.contextClosedUnderEvidenceClosed))

end EpistemologyEpistemologicalRelativismCanonicalLaneLean
end HautevilleHouse