import HautevilleHouse.BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean

structure GaltonWatsonProcess where
  initialState : ℕ
  offspringDist : ℕ → ℕ
  meanOffspring : ℝ
  extinctionProb : ℝ
  meanCriticalCondition : meanOffspring ≤ 1 → extinctionProb = 1
  supercriticalCondition : meanOffspring > 1 → extinctionProb < 1

structure GenerationProcessPackage where
  process : GaltonWatsonProcess
  extinctionProbabilityComputed : Prop
  generatingFunctionDefined : Prop
  generationRecursion : Prop

structure GenerationProcessEvidence (P : GenerationProcessPackage) where
  extinctionProbabilityComputedClosed : P.extinctionProbabilityComputed
  generatingFunctionDefinedClosed : P.generatingFunctionDefined
  generationRecursionClosed : P.generationRecursion

def GenerationProcessClosed (P : GenerationProcessPackage) : Prop :=
  P.extinctionProbabilityComputed ∧ P.generatingFunctionDefined ∧ P.generationRecursion

theorem generation_process_closed_from_evidence (P : GenerationProcessPackage) (E : GenerationProcessEvidence P) : GenerationProcessClosed P := by
  exact And.intro E.extinctionProbabilityComputedClosed (And.intro E.generatingFunctionDefinedClosed E.generationRecursionClosed)

end BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean
end HautevilleHouse