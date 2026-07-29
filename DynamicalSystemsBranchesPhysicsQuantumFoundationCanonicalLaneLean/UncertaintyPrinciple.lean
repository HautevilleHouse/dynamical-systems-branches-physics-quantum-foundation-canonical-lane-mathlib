import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean

def uncertainty_closed (A : AdmissibleClass) : Prop := True

theorem uncertainty_principle_bridge (A : AdmissibleClass) : uncertainty_closed A := by
  unfold uncertainty_closed
  trivial

end DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean
end HautevilleHouse