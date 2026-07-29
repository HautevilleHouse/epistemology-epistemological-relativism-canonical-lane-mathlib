import EpistemologyEpistemologicalRelativismCanonicalLaneLean.RelativismEvidence

namespace HautevilleHouse
namespace EpistemologyEpistemologicalRelativismCanonicalLaneLean

structure EpistemicAnalyticCertificate where
  justificationLawful : Prop
  truthRelative : Prop
  frameworkCoherent : Prop
  justificationLawfulClosed : justificationLawful
  truthRelativeClosed : truthRelative
  frameworkCoherentClosed : frameworkCoherent
  evidencePackage : RelativismEvidencePackage
  evidenceEvidence : RelativismEvidence evidencePackage

def EpistemicAnalyticCertificateClosed (C : EpistemicAnalyticCertificate) : Prop :=
  C.justificationLawful ∧ C.truthRelative ∧ C.frameworkCoherent ∧
  RelativismEvidenceClosed C.evidencePackage

theorem epistemic_analytic_certificate_closed
    (C : EpistemicAnalyticCertificate) : EpistemicAnalyticCertificateClosed C := by
  exact And.intro C.justificationLawfulClosed
    (And.intro C.truthRelativeClosed
      (And.intro C.frameworkCoherentClosed
        (relativism_evidence_closed_from_evidence C.evidencePackage C.evidenceEvidence)))

end EpistemologyEpistemologicalRelativismCanonicalLaneLean
end HautevilleHouse