import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Probability.Process

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean

structure GaltonWatsonSpace where
  carrier : Type
  probability : ProbabilityTheory.ProbabilityMeasure carrier

structure GaltonWatsonBirthObject where
  space : GaltonWatsonSpace
  offspringDistribution : ℕ → ℝ
  branchingProperty : Prop
  extinctionProbability : ℝ
  conclusion : branchingProperty

def GaltonWatsonWitnessClosed (O : GaltonWatsonBirthObject) : Prop :=
  O.branchingProperty

end BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean
end HautevilleHouse
