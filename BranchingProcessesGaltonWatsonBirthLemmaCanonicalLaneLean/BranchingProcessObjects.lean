import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean

structure PopulationSpace where
  carrier : Type
  probabilitySpace : carrier

structure PopulationProcess where
  space : PopulationSpace
  initialSize : Nat
  offspringDistribution : (Nat → Nat) → Prop
  meanOffspring : ℝ
  extinctionProbability : ℝ
  explosionProbability : ℝ
  conclusion : extinctionProbability = 1 ∨ explosionProbability = 1

structure GaltonWatsonState where
  object : PopulationProcess

def PopulationWitnessClosed (O : PopulationProcess) : Prop :=
  O.conclusion

end BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean
end HautevilleHouse