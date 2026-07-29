import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean.OperadStructure

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean

structure AlgebraicMachine (I : Type u) where
  stateSpace : I -> Type v
  transition : ∀ (a b : I), stateSpace a -> stateSpace b -> Prop
  operad : Operad I
  compatibility : Prop

structure AlgebraicMachineEvidence {I : Type u} (M : AlgebraicMachine I) where
  compatibilityClosed : M.compatibility
  stateSpaceNonempty : ∀ (a : I), Nonempty (M.stateSpace a)

def AlgebraicMachineClosed {I : Type u} (M : AlgebraicMachine I) : Prop :=
  M.compatibility ∧ (∀ (a : I), Nonempty (M.stateSpace a))

theorem algebraic_machine_closed_from_evidence
    {I : Type u} (M : AlgebraicMachine I) (E : AlgebraicMachineEvidence I M) :
    AlgebraicMachineClosed M := by
  exact And.intro E.compatibilityClosed E.stateSpaceNonempty

end LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean
end HautevilleHouse