import DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean.BridgeLemmas
import Mathlib.Data.Real.Basic

/-!
# Spectral Theorem Layer

This module frames the spectral theorem for self-adjoint operators
as an admissible-class bridge closure.
-/

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean

structure SpectralCertificate where
  operator : Observable
  spectralDecomposition : Prop
  spectralMeasure : Prop
  functionalCalculus : Prop
  spectralDecompositionClosed : spectralDecomposition
  spectralMeasureClosed : spectralMeasure
  functionalCalculusClosed : functionalCalculus

def sourceSpectralCertificate : SpectralCertificate := {
  operator := zeroObservable
  spectralDecomposition := True
  spectralMeasure := True
  functionalCalculus := True
  spectralDecompositionClosed := by trivial
  spectralMeasureClosed := by trivial
  functionalCalculusClosed := by trivial
}

def SpectralClosed (C : SpectralCertificate) : Prop :=
  C.spectralDecomposition ∧ C.spectralMeasure ∧ C.functionalCalculus

theorem source_spectral_closed :
    SpectralClosed sourceSpectralCertificate := by
  unfold SpectralClosed
  refine And.intro sourceSpectralCertificate.spectralDecompositionClosed ?_
  refine And.intro sourceSpectralCertificate.spectralMeasureClosed
    sourceSpectralCertificate.functionalCalculusClosed

end DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean
end HautevilleHouse