import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemologicalRelativismCanonicalLaneLean

structure JustificationPackage (F : EpistemicFrameworkPackage) where
  justifiers : Type u
  justificationRelation : F.beliefSystem → justifiers → Prop
  transitivity : Prop
  coherencePropagation : Prop

structure JustificationEvidence {F : EpistemicFrameworkPackage} (J : JustificationPackage F) where
  transitivityClosed : J.transitivity
  coherencePropagationClosed : J.coherencePropagation

def JustificationClosed {F : EpistemicFrameworkPackage} (J : JustificationPackage F) : Prop :=
  J.transitivity ∧ J.coherencePropagation

theorem justification_closed_from_evidence
    {F : EpistemicFrameworkPackage} (J : JustificationPackage F) (E : JustificationEvidence J) :
    JustificationClosed J := by
  exact And.intro E.transitivityClosed E.coherencePropagationClosed

end EpistemologyEpistemologicalRelativismCanonicalLaneLean
end HautevilleHouse