import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemologicalRelativismCanonicalLaneLean

structure ClosurePackage {F : EpistemicFrameworkPackage} (J : JustificationPackage F) where
  closureUnderJustification : Prop
  maximalConsistentExtension : Prop
  fixedPointProperty : Prop

structure ClosureEvidence {F : EpistemicFrameworkPackage} {J : JustificationPackage F} (C : ClosurePackage J) where
  closureUnderJustificationClosed : C.closureUnderJustification
  maximalConsistentExtensionClosed : C.maximalConsistentExtension
  fixedPointPropertyClosed : C.fixedPointProperty

def ClosureClosed {F : EpistemicFrameworkPackage} {J : JustificationPackage F} (C : ClosurePackage J) : Prop :=
  C.closureUnderJustification ∧ C.maximalConsistentExtension ∧ C.fixedPointProperty

theorem closure_closed_from_evidence
    {F : EpistemicFrameworkPackage} {J : JustificationPackage F} (C : ClosurePackage J) (E : ClosureEvidence C) :
    ClosureClosed C := by
  exact And.intro E.closureUnderJustificationClosed
    (And.intro E.maximalConsistentExtensionClosed E.fixedPointPropertyClosed)

end EpistemologyEpistemologicalRelativismCanonicalLaneLean
end HautevilleHouse