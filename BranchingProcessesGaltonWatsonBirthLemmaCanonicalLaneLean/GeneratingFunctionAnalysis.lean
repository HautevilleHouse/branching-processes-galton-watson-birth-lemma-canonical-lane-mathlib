import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean

structure GeneratingFunctionAnalysisPackage where
  extinctionFixedPoint : Prop
  derivativeCondition : Prop
  convexityArgument : Prop
  meanOneThreshold : Prop
  momentGeneratingFunction : Prop

structure GeneratingFunctionAnalysisEvidence (G : GeneratingFunctionAnalysisPackage) where
  extinctionFixedPointClosed : G.extinctionFixedPoint
  derivativeConditionClosed : G.derivativeCondition
  convexityArgumentClosed : G.convexityArgument
  meanOneThresholdClosed : G.meanOneThreshold
  momentGeneratingFunctionClosed : G.momentGeneratingFunction

def GeneratingFunctionAnalysisClosed (G : GeneratingFunctionAnalysisPackage) : Prop :=
  G.extinctionFixedPoint ∧ G.derivativeCondition ∧
  G.convexityArgument ∧ G.meanOneThreshold ∧
  G.momentGeneratingFunction

theorem generating_function_analysis_closed_from_evidence
    (G : GeneratingFunctionAnalysisPackage)
    (Ev : GeneratingFunctionAnalysisEvidence G) :
    GeneratingFunctionAnalysisClosed G := by
  exact And.intro Ev.extinctionFixedPointClosed
    (And.intro Ev.derivativeConditionClosed
      (And.intro Ev.convexityArgumentClosed
        (And.intro Ev.meanOneThresholdClosed
          Ev.momentGeneratingFunctionClosed)))

end BranchingProcessesGaltonWatsonBirthLemmaCanonicalLaneLean
end HautevilleHouse