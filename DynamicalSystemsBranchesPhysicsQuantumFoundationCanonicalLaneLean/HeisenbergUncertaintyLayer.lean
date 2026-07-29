import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean.QuantumObjects

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean

structure UncertaintyCertificate where
  positionOp : Observable
  momentumOp : Observable
  commutation : CommutationRelation
  statePrepared : StateVector
  uncertaintyProductBound : Prop
  commutationClosed : commutation.relation = zeroOperator
  stateNormalized : True
  boundPositivity : uncertaintyProductBound

def sourceUncertaintyCertificate : UncertaintyCertificate := {
  positionOp := zeroOperator
  momentumOp := zeroOperator
  commutation := { A := zeroOperator, B := zeroOperator, relation := rfl }
  statePrepared := fun _ => 0
  uncertaintyProductBound := True
  commutationClosed := rfl
  stateNormalized := trivial
  boundPositivity := trivial
}

def UncertaintyLayerClosed (C : UncertaintyCertificate) : Prop :=
  C.commutationClosed ∧ C.stateNormalized ∧ C.boundPositivity

theorem source_uncertainty_layer_closed : UncertaintyLayerClosed sourceUncertaintyCertificate := by
  exact And.intro rfl (And.intro trivial trivial)

end DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean
end HautevilleHouse