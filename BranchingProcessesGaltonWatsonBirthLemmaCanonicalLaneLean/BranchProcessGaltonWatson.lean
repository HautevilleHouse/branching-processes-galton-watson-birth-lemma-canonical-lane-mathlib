import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean

structure BranchingPopulationSpace where
  object : Type
  populationSize : Nat
  extinctionProbability : Prop
  extinctionProbabilityTerm : extinctionProbability

structure GaltonWatsonAdmittedObject where
  space : BranchingPopulationSpace
  offspringDistribution : List Nat
  meanOffspring : Prop
  extinctionExpressedViaMean : meanOffspring → extinctionProbability
  extProbabilityDerived : extinctionProbability

end BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean
end HautevilleHouse