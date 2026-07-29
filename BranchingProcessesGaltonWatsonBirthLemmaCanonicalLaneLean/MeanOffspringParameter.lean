import BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean.BranchingProcessObjects

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean

structure MeanOffspringPackage where
  process : PopulationProcess
  meanOffspringComputed : ℝ
  meanPositive : meanOffspringComputed > 0
  supercriticalCase : meanOffspringComputed > 1
  criticalCase : meanOffspringComputed = 1
  subcriticalCase : meanOffspringComputed < 1

structure MeanOffspringEvidence (M : MeanOffspringPackage) where
  meanPositiveClosed : M.meanPositive
  caseClassified : M.supercriticalCase ∨ M.criticalCase ∨ M.subcriticalCase

def MeanOffspringClosed (M : MeanOffspringPackage) : Prop :=
  M.meanPositive ∧ (M.supercriticalCase ∨ M.criticalCase ∨ M.subcriticalCase)

theorem mean_offspring_closed_from_evidence (M : MeanOffspringPackage)
    (E : MeanOffspringEvidence M) : MeanOffspringClosed M := by
  exact And.intro E.meanPositiveClosed E.caseClassified

end BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean
end HautevilleHouse