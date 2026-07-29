import EpistemologyEpistemologicalRelativismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemologicalRelativismCanonicalLaneLean

structure RelativismEvidencePackage where
  justificationCriterion : Prop
  truthRelativity : Prop
  frameworkConsistency : Prop
  evidenceClosure : Prop

structure RelativismEvidence (R : RelativismEvidencePackage) where
  justificationCriterionClosed : R.justificationCriterion
  truthRelativityClosed : R.truthRelativity
  frameworkConsistencyClosed : R.frameworkConsistency
  evidenceClosureClosed : R.evidenceClosure

def RelativismEvidenceClosed (R : RelativismEvidencePackage) : Prop :=
  R.justificationCriterion ∧ R.truthRelativity ∧ R.frameworkConsistency ∧ R.evidenceClosure

theorem relativism_evidence_closed_from_evidence (R : RelativismEvidencePackage)
    (E : RelativismEvidence R) : RelativismEvidenceClosed R := by
  exact And.intro E.justificationCriterionClosed
    (And.intro E.truthRelativityClosed
      (And.intro E.frameworkConsistencyClosed E.evidenceClosureClosed))

end EpistemologyEpistemologicalRelativismCanonicalLaneLean
end HautevilleHouse