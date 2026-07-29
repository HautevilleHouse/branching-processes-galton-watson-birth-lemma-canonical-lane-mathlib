import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BranchingProcessesGaltonWatsonBirthLemma.GaltonWatsonProcess

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthLemma

structure ExtinctionProbabilityPackage where
  process : GaltonWatsonProcess
  extinctionProbability : ℝ
  fixedPointEquation : extinctionProbability = (∑' k, process.offspringDistribution k * (extinctionProbability ^ k))
  fixedPointMinimal : ∀ q : ℝ, (q = (∑' k, process.offspringDistribution k * (q ^ k))) → extinctionProbability ≤ q

structure ExtinctionProbabilityEvidence (E : ExtinctionProbabilityPackage) where
  fixedPointEquationClosed : E.fixedPointEquation
  fixedPointMinimalClosed : E.fixedPointMinimal

def ExtinctionProbabilityClosed (E : ExtinctionProbabilityPackage) : Prop :=
  E.fixedPointEquation ∧ E.fixedPointMinimal

theorem extinction_probability_closed_from_evidence (E : ExtinctionProbabilityPackage) (Ev : ExtinctionProbabilityEvidence E) : ExtinctionProbabilityClosed E :=
  And.intro Ev.fixedPointEquationClosed Ev.fixedPointMinimalClosed

end BranchingProcessesGaltonWatsonBirthLemma
end HautevilleHouse