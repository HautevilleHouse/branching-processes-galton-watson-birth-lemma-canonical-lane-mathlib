import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean.GaltonWatsonProcess

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean

structure GeneratingFunctionPackage (Z : GaltonWatsonProcess) where
  analyticOnUnitDisk : Prop
  fixedPointEquation : Z.generatingFunction (Z.extinctionProbability) = Z.extinctionProbability
  derivativeAtOne : Z.generatingFunction.deriv 1 = Z.expectedOffspring
  convexity : Z.generatingFunction'' ≥ 0 on [0,1]

structure GeneratingFunctionEvidence {Z : GaltonWatsonProcess} (G : GeneratingFunctionPackage Z) where
  analyticOnUnitDiskClosed : G.analyticOnUnitDisk
  fixedPointEquationClosed : G.fixedPointEquation
  derivativeAtOneClosed : G.derivativeAtOne
  convexityClosed : G.convexity

def GeneratingFunctionClosed {Z : GaltonWatsonProcess} (G : GeneratingFunctionPackage Z) : Prop :=
  G.analyticOnUnitDisk ∧ G.fixedPointEquation ∧ G.derivativeAtOne ∧ G.convexity

theorem generating_function_closed_from_evidence {Z : GaltonWatsonProcess} (G : GeneratingFunctionPackage Z) (E : GeneratingFunctionEvidence G) : GeneratingFunctionClosed G := by
  exact And.intro E.analyticOnUnitDiskClosed (And.intro E.fixedPointEquationClosed (And.intro E.derivativeAtOneClosed E.convexityClosed))

end BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean
end HautevilleHouse