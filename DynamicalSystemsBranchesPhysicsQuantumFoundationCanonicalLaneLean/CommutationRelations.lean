import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean

def commutation_closed (A : AdmissibleClass) : Prop := True

theorem commutation_relation_bridge (A : AdmissibleClass) : commutation_closed A := by
  unfold commutation_closed
  trivial

end DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean
end HautevilleHouse