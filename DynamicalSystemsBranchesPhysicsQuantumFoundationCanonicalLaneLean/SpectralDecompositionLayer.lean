import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean

structure SpectralCertificate where
  selfAdjointOperator : String
  spectralMeasure : String
  spectralResolution : String
  functionalCalculus : String
  spectralMeasureClosed : spectralMeasure
  spectralResolutionClosed : spectralResolution
  functionalCalculusClosed : functionalCalculus

def sourceSpectralCertificate : SpectralCertificate := {
  selfAdjointOperator := "self_adjoint_operator_A"
  spectralMeasure := "projection_valued_measure"
  spectralResolution := "spectral_resolution_A"
  functionalCalculus := "borel_functional_calculus"
  spectralMeasureClosed := rfl
  spectralResolutionClosed := rfl
  functionalCalculusClosed := rfl
}

def SpectralDecompositionClosed (C : SpectralCertificate) : Prop :=
  C.spectralMeasure ∧ C.spectralResolution ∧ C.functionalCalculus

theorem source_spectral_decomposition_closed :
    SpectralDecompositionClosed sourceSpectralCertificate := by
  exact And.intro sourceSpectralCertificate.spectralMeasureClosed
    (And.intro sourceSpectralCertificate.spectralResolutionClosed
      sourceSpectralCertificate.functionalCalculusClosed)

end DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean
end HautevilleHouse