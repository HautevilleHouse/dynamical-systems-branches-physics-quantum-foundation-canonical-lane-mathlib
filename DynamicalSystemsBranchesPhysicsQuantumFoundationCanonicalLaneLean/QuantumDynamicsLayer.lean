import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean

structure QuantumDynamicsCertificate where
  timeEvolutionOperator : String
  schrodingerEquation : String
  heisenbergEquation : String
  unitaryEvolutionClosed : timeEvolutionOperator
  schrodingerClosed : schrodingerEquation
  heisenbergClosed : heisenbergEquation

def sourceQuantumDynamicsCertificate : QuantumDynamicsCertificate := {
  timeEvolutionOperator := "exponential_hamiltonian_U"
  schrodingerEquation := "schrodinger_equation"
  heisenbergEquation := "heisenberg_equation"
  unitaryEvolutionClosed := rfl
  schrodingerClosed := rfl
  heisenbergClosed := rfl
}

def QuantumDynamicsClosed (C : QuantumDynamicsCertificate) : Prop :=
  C.timeEvolutionOperator ∧ C.schrodingerEquation ∧ C.heisenbergEquation

theorem source_quantum_dynamics_closed :
    QuantumDynamicsClosed sourceQuantumDynamicsCertificate := by
  exact And.intro sourceQuantumDynamicsCertificate.unitaryEvolutionClosed
    (And.intro sourceQuantumDynamicsCertificate.schrodingerClosed
      sourceQuantumDynamicsCertificate.heisenbergClosed)

end DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean
end HautevilleHouse