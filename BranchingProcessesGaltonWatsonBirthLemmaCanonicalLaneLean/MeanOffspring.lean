import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BranchingProcessesGaltonWatsonBirthLemma.GaltonWatsonProcess

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthLemma

structure MeanOffspringPackage where
  process : GaltonWatsonProcess
  meanOffspring : ℝ
  meanDefined : meanOffspring = (∑' k, process.offspringDistribution k * (k : ℝ))
  meanFinite : meanOffspring < ∞

structure MeanOffspringEvidence (M : MeanOffspringPackage) where
  meanDefinedClosed : M.meanDefined
  meanFiniteClosed : M.meanFinite

def MeanOffspringClosed (M : MeanOffspringPackage) : Prop :=
  M.meanDefined ∧ M.meanFinite

theorem mean_offspring_closed_from_evidence (M : MeanOffspringPackage) (E : MeanOffspringEvidence M) : MeanOffspringClosed M :=
  And.intro E.meanDefinedClosed E.meanFiniteClosed

end BranchingProcessesGaltonWatsonBirthLemma
end HautevilleHouse