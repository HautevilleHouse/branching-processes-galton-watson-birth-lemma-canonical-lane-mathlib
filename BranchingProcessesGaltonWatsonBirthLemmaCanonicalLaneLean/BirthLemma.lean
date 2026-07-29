import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BranchingProcessesGaltonWatsonBirthLemma.GaltonWatsonProcess

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthLemma

structure BirthLemmaPackage where
  process : GaltonWatsonProcess
  meanOffspring : ℝ
  meanGEOne : meanOffspring ≥ 1
  extinctionProbabilityOne : process.extinctionProbability = 1

structure BirthLemmaEvidence (B : BirthLemmaPackage) where
  meanGEOneClosed : B.meanGEOne
  extinctionProbabilityOneClosed : B.extinctionProbabilityOne

def BirthLemmaClosed (B : BirthLemmaPackage) : Prop :=
  B.meanGEOne ∧ B.extinctionProbabilityOne

theorem birth_lemma_closed_from_evidence (B : BirthLemmaPackage) (E : BirthLemmaEvidence B) : BirthLemmaClosed B :=
  And.intro E.meanGEOneClosed E.extinctionProbabilityOneClosed

end BranchingProcessesGaltonWatsonBirthLemma
end HautevilleHouse