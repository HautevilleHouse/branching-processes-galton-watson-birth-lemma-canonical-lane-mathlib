import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean

structure GaltonWatsonDistributionPackage where
  offspringDistribution : Type u
  mean : ℝ
  variance : ℝ
  probabilityGeneratingFunction : Type v
  meanFinite : Prop
  varianceFinite : Prop

structure GaltonWatsonDistributionEvidence (G : GaltonWatsonDistributionPackage) where
  meanFiniteClosed : G.meanFinite
  varianceFiniteClosed : G.varianceFinite

def GaltonWatsonDistributionClosed (G : GaltonWatsonDistributionPackage) : Prop :=
  G.meanFinite ∧ G.varianceFinite

theorem galton_watson_distribution_closed_from_evidence
    (G : GaltonWatsonDistributionPackage) (E : GaltonWatsonDistributionEvidence G) :
    GaltonWatsonDistributionClosed G := by
  exact And.intro E.meanFiniteClosed E.varianceFiniteClosed

end BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean
end HautevilleHouse
