import HautevilleHouse.DynamicProgrammingLemmaCanonicalLaneLean.DPAdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingLemmaCanonicalLaneLean

structure DPStochasticControl where
  stateSpace : Type u
  actionSpace : Type v
  transitionKernel : Type w
  costFunction : Type x
  valueFunction : Type y
  hjbEquation : Prop
  optimalControl : Prop

structure DPStochasticControlEvidence (C : DPStochasticControl) where
  hjbEquationClosed : C.hjbEquation
  optimalControlClosed : C.optimalControl

def DPStochasticControlClosed (C : DPStochasticControl) : Prop :=
  C.hjbEquation ∧ C.optimalControl

theorem dp_stochastic_control_closed_from_evidence
    (C : DPStochasticControl) (E : DPStochasticControlEvidence C) : DPStochasticControlClosed C := by
  exact And.intro E.hjbEquationClosed E.optimalControlClosed

end DynamicProgrammingLemmaCanonicalLaneLean
end HautevilleHouse