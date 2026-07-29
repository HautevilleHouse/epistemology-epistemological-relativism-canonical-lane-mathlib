import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemologicalRelativismCanonicalLaneLean

structure EndpointPackage {F : EpistemicFrameworkPackage} {J : JustificationPackage F} (C : ClosurePackage J) where
  absoluteTruth : Type u
  relativeTruth : Type v
  correspondence : Prop
  deflationaryEndpoint : Prop

structure EndpointEvidence {F : EpistemicFrameworkPackage} {J : JustificationPackage F} {C : ClosurePackage J} (E : EndpointPackage C) where
  correspondenceClosed : E.correspondence
  deflationaryEndpointClosed : E.deflationaryEndpoint

def EndpointClosed {F : EpistemicFrameworkPackage} {J : JustificationPackage F} {C : ClosurePackage J} (E : EndpointPackage C) : Prop :=
  E.correspondence ∧ E.deflationaryEndpoint

theorem endpoint_closed_from_evidence
    {F : EpistemicFrameworkPackage} {J : JustificationPackage F} {C : ClosurePackage J} (E : EndpointPackage C) (Ev : EndpointEvidence E) :
    EndpointClosed E := by
  exact And.intro Ev.correspondenceClosed Ev.deflationaryEndpointClosed

end EpistemologyEpistemologicalRelativismCanonicalLaneLean
end HautevilleHouse