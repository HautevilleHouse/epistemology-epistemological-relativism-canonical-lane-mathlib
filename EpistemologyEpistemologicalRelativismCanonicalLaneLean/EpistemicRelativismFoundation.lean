import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemologicalRelativismCanonicalLaneLean

structure EpistemicRelativismFoundation where
  epistemicFramework : EpistemicFrameworkPackage
  frameworkEvidence : EpistemicFrameworkEvidence epistemicFramework
  justification : JustificationPackage epistemicFramework
  justificationEvidence : JustificationEvidence justification
  closure : ClosurePackage justification
  closureEvidence : ClosureEvidence closure
  endpoint : EndpointPackage closure
  endpointEvidence : EndpointEvidence endpoint

def EpistemicRelativismFoundationClosed (F : EpistemicRelativismFoundation) : Prop :=
  EpistemicFrameworkClosed F.epistemicFramework ∧
  JustificationClosed F.justification ∧
  ClosureClosed F.closure ∧
  EndpointClosed F.endpoint

theorem epistemic_relativism_foundation_closed_from_evidence
    (F : EpistemicRelativismFoundation) :
    EpistemicRelativismFoundationClosed F := by
  exact And.intro (epistemic_framework_closed_from_evidence F.epistemicFramework F.frameworkEvidence)
    (And.intro (justification_closed_from_evidence F.justification F.justificationEvidence)
      (And.intro (closure_closed_from_evidence F.closure F.closureEvidence)
        (endpoint_closed_from_evidence F.endpoint F.endpointEvidence)))

end EpistemologyEpistemologicalRelativismCanonicalLaneLean
end HautevilleHouse