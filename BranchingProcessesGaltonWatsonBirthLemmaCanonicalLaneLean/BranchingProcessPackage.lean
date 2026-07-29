import canonicalLaneMathlib.AdmissibleClass
import BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean

structure OffspringDistribution where
  support : ℕ → Prop
  probability : ℕ → ℝ
  sumToOne : Σ k, probability k = 1

def meanOffspring (p : OffspringDistribution) : ℝ :=
  Σ k, (k : ℝ) * p.probability k

structure GaltonWatsonProcess where
  initialPopulation : ℕ
  offspringDist : OffspringDistribution
  generationCount : ℕ → ℕ
  extinctionTime : ℕ
  diesOutEventually : Prop

structure ExtinctionEvent where
  process : GaltonWatsonProcess
  extinctionProbability : ℝ
  extinctionEquation : extinctionProbability = Σ k, (extinctionProbability ^ k) * process.offspringDist.probability k

end BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean
end HautevilleHouse
