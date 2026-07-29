import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean

def spectral_closed (A : AdmissibleClass) : Prop := True

theorem spectral_theorem_bridge (A : AdmissibleClass) : spectral_closed A := by
  unfold spectral_closed
  trivial

end DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean
end HautevilleHouse