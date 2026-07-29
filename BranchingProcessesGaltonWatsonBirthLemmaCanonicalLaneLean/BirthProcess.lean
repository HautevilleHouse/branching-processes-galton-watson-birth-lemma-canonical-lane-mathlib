import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean

structure GaltonWatsonProcess where
  offspringDistribution : ℕ → ℝ
  offspringSumToOne : ∑' n, offspringDistribution n = 1
  meanOffspring : ℝ
  meanFinite : meanOffspring < ∞
  extinctionProbability : ℝ
  extinctionProbabilityInUnitInterval : 0 ≤ extinctionProbability ∧ extinctionProbability ≤ 1

structure BirthProcessEvidence (P : GaltonWatsonProcess) where
  distributionWellDefined : P.offspringSumToOne
  meanFiniteClosed : P.meanFinite
  extinctionProbabilityBounds : P.extinctionProbabilityInUnitInterval

def BirthProcessClosed (P : GaltonWatsonProcess) : Prop :=
  P.offspringSumToOne ∧ P.meanFinite ∧ P.extinctionProbabilityInUnitInterval

theorem birth_process_closed_from_evidence (P : GaltonWatsonProcess) (E : BirthProcessEvidence P) : BirthProcessClosed P :=
  And.intro E.distributionWellDefined (And.intro E.meanFiniteClosed E.extinctionProbabilityBounds)

end BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean
end HautevilleHouse