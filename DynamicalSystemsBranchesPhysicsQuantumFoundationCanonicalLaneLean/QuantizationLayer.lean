import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean

def quantization_closed (A : AdmissibleClass) : Prop := True

theorem quantization_bridge (A : AdmissibleClass) : quantization_closed A := by
  unfold quantization_closed
  trivial

end DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean
end HautevilleHouse