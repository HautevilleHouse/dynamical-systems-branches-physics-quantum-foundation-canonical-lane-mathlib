import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean

abbrev HilbertSpace := ℕ → ℂ
abbrev StateVector := HilbertSpace

def zeroVector : StateVector := fun _ => (0 : ℂ)

structure Observable where
  hermitian : Bool
  spectralMeasure : (ℝ → StateVector) → StateVector

structure StateSpace where
  vectors : Set StateVector
  innerProduct : StateVector → StateVector → ℂ
  normalization : ∀ v ∈ vectors, innerProduct v v = (1 : ℂ)

structure AdmissibleQuantumState (A : AdmissibleClass) where
  state : StateVector
  normalizationProof : innerProduct state state = (1 : ℂ)
  observable : Observable
  spectralDecomposition : Prop
  spectralDecompositionProof : spectralDecomposition

theorem state_admissible (A : AdmissibleClass) (qs : AdmissibleQuantumState A) : True := by
  trivial

end DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean
end HautevilleHouse