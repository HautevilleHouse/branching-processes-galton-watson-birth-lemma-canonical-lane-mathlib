import BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean.ExtinctionProbability

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean

structure BranchingProcessFoundation where
  extinction : ExtinctionProbabilityPackage
  extinctionEvidence : ExtinctionProbabilityEvidence extinction

def BranchingProcessFoundationClosed (F : BranchingProcessFoundation) : Prop :=
  ExtinctionProbabilityClosed F.extinction

theorem branching_process_foundation_closed_from_evidence
    (F : BranchingProcessFoundation) :
    BranchingProcessFoundationClosed F := by
  exact extinction_probability_closed_from_evidence F.extinction F.extinctionEvidence

end BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean
end HautevilleHouse
