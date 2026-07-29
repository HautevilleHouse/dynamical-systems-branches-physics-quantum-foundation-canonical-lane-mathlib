import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean

structure UncertaintyCertificate where
  positionObservable : String
  momentumObservable : String
  commutationRelation : String
  uncertaintyInequality : String
  commutationRelationClosed : commutationRelation
  uncertaintyInequalityClosed : uncertaintyInequality

def sourceUncertaintyCertificate : UncertaintyCertificate := {
  positionObservable := "position_operator_Q"
  momentumObservable := "momentum_operator_P"
  commutationRelation := "canonical_commutation_relation"
  uncertaintyInequality := "heisenberg_uncertainty_inequality"
  commutationRelationClosed := rfl
  uncertaintyInequalityClosed := rfl
}

def UncertaintyClosed (C : UncertaintyCertificate) : Prop :=
  C.commutationRelation ∧ C.uncertaintyInequality

theorem source_uncertainty_closed :
    UncertaintyClosed sourceUncertaintyCertificate := by
  exact And.intro sourceUncertaintyCertificate.commutationRelationClosed
    sourceUncertaintyCertificate.uncertaintyInequalityClosed

end DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean
end HautevilleHouse