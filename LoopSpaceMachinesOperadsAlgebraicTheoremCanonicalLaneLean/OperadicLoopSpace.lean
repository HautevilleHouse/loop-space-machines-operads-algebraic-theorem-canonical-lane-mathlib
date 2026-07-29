import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean

structure OperadicLoopSpace (X : Type u) [TopologicalSpace X] where
  basepoint : X
  operadAction : Type v
  composition : Type w
  unitConstraints : Prop
  associativityConstraints : Prop
  homotopyCoherent : Prop

structure OperadicLoopSpaceEvidence (X : Type u) [TopologicalSpace X] (O : OperadicLoopSpace X) where
  unitConstraintsClosed : O.unitConstraints
  associativityConstraintsClosed : O.associativityConstraints
  homotopyCoherentClosed : O.homotopyCoherent

def OperadicLoopSpaceClosed (X : Type u) [TopologicalSpace X] (O : OperadicLoopSpace X) : Prop :=
  O.unitConstraints ∧ O.associativityConstraints ∧ O.homotopyCoherent

theorem operadic_loop_space_closed_from_evidence
    (X : Type u) [TopologicalSpace X] (O : OperadicLoopSpace X)
    (E : OperadicLoopSpaceEvidence X O) : OperadicLoopSpaceClosed X O := by
  exact And.intro E.unitConstraintsClosed
    (And.intro E.associativityConstraintsClosed E.homotopyCoherentClosed)

end LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean
end HautevilleHouse