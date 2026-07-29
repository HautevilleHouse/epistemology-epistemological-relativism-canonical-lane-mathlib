import HautevilleHouse.EpistemologyEpistemologicalRelativismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemologicalRelativismCanonicalLaneLean

structure EpistemicFrameworkPackage {A : AdmissibleClass} where
  frameworkType : Type u
  frameworkProperties : Prop
  consistency : Prop
  closureUnderImplication : Prop
  relativismCompatibility : Prop

structure EpistemicFrameworkEvidence {A : AdmissibleClass} (F : EpistemicFrameworkPackage A) where
  frameworkPropertiesClosed : F.frameworkProperties
  consistencyClosed : F.consistency
  closureUnderImplicationClosed : F.closureUnderImplication
  relativismCompatibilityClosed : F.relativismCompatibility

def EpistemicFrameworkClosed {A : AdmissibleClass} (F : EpistemicFrameworkPackage A) : Prop :=
  F.frameworkProperties ∧ F.consistency ∧ F.closureUnderImplication ∧ F.relativismCompatibility

theorem epistemic_framework_closed_from_evidence
    {A : AdmissibleClass} (F : EpistemicFrameworkPackage A) (E : EpistemicFrameworkEvidence F) :
    EpistemicFrameworkClosed F := by
  exact And.intro E.frameworkPropertiesClosed
    (And.intro E.consistencyClosed
      (And.intro E.closureUnderImplicationClosed E.relativismCompatibilityClosed))

end EpistemologyEpistemologicalRelativismCanonicalLaneLean
end HautevilleHouse