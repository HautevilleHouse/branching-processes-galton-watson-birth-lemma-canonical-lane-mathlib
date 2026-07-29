import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthLemma

structure GaltonWatsonProcess where
  offspringDistribution : ℕ → ℝ
  offspringSumToOne : (∑' k, offspringDistribution k) = 1
  offspringNonnegative : ∀ k, offspringDistribution k ≥ 0
  extinctionProbability : ℝ
  extinctionEquation : extinctionProbability = (∑' k, offspringDistribution k * (extinctionProbability ^ k))

def GaltonWatsonProcessClosed (G : GaltonWatsonProcess) : Prop :=
  G.offspringSumToOne ∧ G.offspringNonnegative ∧ G.extinctionEquation

end BranchingProcessesGaltonWatsonBirthLemma
end HautevilleHouse