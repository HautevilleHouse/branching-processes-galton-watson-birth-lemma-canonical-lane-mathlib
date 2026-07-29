import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean

structure OffspringDistribution where
  probabilityMass : ℕ → ℝ
  nonnegative : ∀ n, probabilityMass n ≥ 0
  sumToOne : ∑' n, probabilityMass n = 1
  pgfDefined : ℝ → ℝ
  pgfFormula : ∀ s : ℝ, pgfDefined s = ∑' n, probabilityMass n * s^n

structure OffspringDistributionEvidence (D : OffspringDistribution) where
  nonnegativeClosed : D.nonnegative
  sumToOneClosed : D.sumToOne
  pgfDefinedClosed : D.pgfDefined

def OffspringDistributionClosed (D : OffspringDistribution) : Prop :=
  D.nonnegative ∧ D.sumToOne ∧ D.pgfDefined

theorem offspring_distribution_closed_from_evidence
    (D : OffspringDistribution) (E : OffspringDistributionEvidence D) :
    OffspringDistributionClosed D := by
  exact And.intro E.nonnegativeClosed (And.intro E.sumToOneClosed E.pgfDefinedClosed)

end BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean
end HautevilleHouse