import HautevilleHouse.EpistemologyEpistemologicalRelativismCanonicalLaneLean.JustificationContexts

namespace HautevilleHouse
namespace EpistemologyEpistemologicalRelativismCanonicalLaneLean

structure RelativismEndpointPackage {A : AdmissibleClass}
    {F : EpistemicFrameworkPackage A} {J : JustificationContextPackage F} where
  targetKnowledge : Prop
  relativistClaim : Prop
  absolutistRefutation : Prop
  endpointResolved : Prop

structure RelativismEndpointEvidence {A : AdmissibleClass}
    {F : EpistemicFrameworkPackage A} {J : JustificationContextPackage F}
    (R : RelativismEndpointPackage J) where
  relativistClaimClosed : R.relativistClaim
  absolutistRefutationClosed : R.absolutistRefutation
  endpointResolvedClosed : R.endpointResolved

def RelativismEndpointClosed {A : AdmissibleClass}
    {F : EpistemicFrameworkPackage A} {J : JustificationContextPackage F}
    (R : RelativismEndpointPackage J) : Prop :=
  R.relativistClaim ∧ R.absolutistRefutation ∧ R.endpointResolved

theorem relativism_endpoint_closed_from_evidence
    {A : AdmissibleClass} {F : EpistemicFrameworkPackage A} {J : JustificationContextPackage F}
    (R : RelativismEndpointPackage J) (E : RelativismEndpointEvidence R) :
    RelativismEndpointClosed R := by
  exact And.intro E.relativistClaimClosed
    (And.intro E.absolutistRefutationClosed E.endpointResolvedClosed)

end EpistemologyEpistemologicalRelativismCanonicalLaneLean
end HautevilleHouse