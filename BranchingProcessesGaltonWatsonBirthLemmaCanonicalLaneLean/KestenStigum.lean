import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BranchingProcessesGaltonWatsonBirthLemma.GaltonWatsonProcess
import HautevilleHouse.BranchingProcessesGaltonWatsonBirthLemma.MeanOffspring

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthLemma

structure KestenStigumPackage where
  process : GaltonWatsonProcess
  meanOffspring : MeanOffspringPackage
  meanGTOne : meanOffspring.meanOffspring > 1
  survivalProbabilityPositive : process.extinctionProbability < 1

structure KestenStigumEvidence (K : KestenStigumPackage) where
  meanGTOneClosed : K.meanGTOne
  survivalProbabilityPositiveClosed : K.survivalProbabilityPositive

def KestenStigumClosed (K : KestenStigumPackage) : Prop :=
  K.meanGTOne ∧ K.survivalProbabilityPositive

theorem kesten_stigum_closed_from_evidence (K : KestenStigumPackage) (E : KestenStigumEvidence K) : KestenStigumClosed K :=
  And.intro E.meanGTOneClosed E.survivalProbabilityPositiveClosed

end BranchingProcessesGaltonWatsonBirthLemma
end HautevilleHouse