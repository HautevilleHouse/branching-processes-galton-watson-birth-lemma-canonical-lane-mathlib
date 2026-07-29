import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean

structure ExtinctionCriteriaPackage where
  meanOffspring : Prop
  generatingFunction : Type
  extinctionProbabilityUniqueness : Prop
  geometricSeriesConvergence : Prop
  fixedPointCharacterization : Prop

structure ExtinctionCriteriaEvidence (E : ExtinctionCriteriaPackage) where
  meanOffspringClosed : E.meanOffspring
  generatingFunctionClosed : E.generatingFunction
  extinctionProbabilityUniquenessClosed : E.extinctionProbabilityUniqueness
  geometricSeriesConvergenceClosed : E.geometricSeriesConvergence
  fixedPointCharacterizationClosed : E.fixedPointCharacterization

def ExtinctionCriteriaClosed (E : ExtinctionCriteriaPackage) : Prop :=
  E.meanOffspring ∧ E.generatingFunction ∧
  E.extinctionProbabilityUniqueness ∧ E.geometricSeriesConvergence ∧
  E.fixedPointCharacterization

theorem extinction_criteria_closed_from_evidence
    (E : ExtinctionCriteriaPackage) (Ev : ExtinctionCriteriaEvidence E) :
    ExtinctionCriteriaClosed E := by
  exact And.intro Ev.meanOffspringClosed
    (And.intro Ev.generatingFunctionClosed
      (And.intro Ev.extinctionProbabilityUniquenessClosed
        (And.intro Ev.geometricSeriesConvergenceClosed
          Ev.fixedPointCharacterizationClosed)))

end BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean
end HautevilleHouse