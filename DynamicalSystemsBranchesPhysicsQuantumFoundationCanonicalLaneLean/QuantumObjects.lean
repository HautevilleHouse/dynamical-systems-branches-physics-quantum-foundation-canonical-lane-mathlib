import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean

abbrev HilbertSpace := ℕ → ℂ
abbrev LinearOperator := HilbertSpace → HilbertSpace
abbrev StateVector := HilbertSpace
abbrev Observable := LinearOperator

def zeroOperator : LinearOperator := fun _ => fun _ => 0
def identityOperator : LinearOperator := fun x => x

structure CommutationRelation where
  A : Observable
  B : Observable
  relation : (A ∘ B) - (B ∘ A) = zeroOperator

structure SpectralDecomposition where
  operator : Observable
  eigenvalues : ℕ → ℂ
  eigenvectors : ℕ → StateVector
  eigenvalueEquation : ∀ n, operator (eigenvectors n) = (eigenvalues n) • (eigenvectors n)

end DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean
end HautevilleHouse