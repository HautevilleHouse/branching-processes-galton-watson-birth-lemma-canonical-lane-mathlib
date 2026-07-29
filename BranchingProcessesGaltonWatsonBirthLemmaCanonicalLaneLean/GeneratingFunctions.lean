import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean.BirthProcess

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean

structure ProbabilityGeneratingFunction (P : GaltonWatsonProcess) where
  f : ℝ → ℝ
  fDefinedOnUnitInterval : ∀ s ∈ Set.Icc (0 : ℝ) 1, f s = ∑' k, P.offspringDistribution k * s ^ k
  fContinuous : ContinuousOn f (Set.Icc (0 : ℝ) 1)
  fNondecreasing : MonotoneOn f (Set.Icc (0 : ℝ) 1)
  fFixedPointAtExtinction : f P.extinctionProbability = P.extinctionProbability

def pgfProperty (P : GaltonWatsonProcess) (f : ProbabilityGeneratingFunction P) : Prop :=
  f.fDefinedOnUnitInterval ∧ f.fContinuous ∧ f.fNondecreasing ∧ f.fFixedPointAtExtinction

end BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean
end HautevilleHouse