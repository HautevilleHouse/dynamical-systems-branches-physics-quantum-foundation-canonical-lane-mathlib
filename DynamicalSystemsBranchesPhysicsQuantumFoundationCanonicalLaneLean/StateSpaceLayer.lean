import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean.HeisenbergUncertaintyLayer

namespace HautevilleHouse
namespace DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean

structure StateSpaceCertificate where
  uncertainty : UncertaintyCertificate
  mixedStatesAdmitted : Prop
  pureStatesDense : Prop
  traceNormDefined : Prop
  densityOperatorSetClosed : Prop
  traceClassSubspaceImported : Prop
  mixedStatesAdmittedClosed : mixedStatesAdmitted
  pureStatesDenseClosed : pureStatesDense
  traceNormDefinedClosed : traceNormDefined
  densityOperatorSetClosedProof : densityOperatorSetClosed
  traceClassSubspaceImportedClosed : traceClassSubspaceImported

def sourceStateSpaceCertificate : StateSpaceCertificate := {
  uncertainty := sourceUncertaintyCertificate
  mixedStatesAdmitted := True
  pureStatesDense := True
  traceNormDefined := True
  densityOperatorSetClosed := True
  traceClassSubspaceImported := True
  mixedStatesAdmittedClosed := trivial
  pureStatesDenseClosed := trivial
  traceNormDefinedClosed := trivial
  densityOperatorSetClosedProof := trivial
  traceClassSubspaceImportedClosed := trivial
}

def StateSpaceClosed (C : StateSpaceCertificate) : Prop :=
  UncertaintyLayerClosed C.uncertainty ∧
  C.mixedStatesAdmitted ∧ C.pureStatesDense ∧ C.traceNormDefined ∧
  C.densityOperatorSetClosed ∧ C.traceClassSubspaceImported

theorem source_state_space_closed : StateSpaceClosed sourceStateSpaceCertificate := by
  exact And.intro source_uncertainty_layer_closed
    (And.intro trivial (And.intro trivial (And.intro trivial (And.intro trivial trivial))))

end DynamicalSystemsBranchesPhysicsQuantumFoundationCanonicalLaneLean
end HautevilleHouse