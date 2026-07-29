import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean

structure LoopSpaceOperation (X : Type u) where
  basepoint : X
  loopMap : Unit -> (X -> X)
  composition : (Unit -> (X -> X)) -> (Unit -> (X -> X)) -> (Unit -> (X -> X))
  identity : Unit -> (X -> X)
  associativity : Prop
  unitProperty : Prop

structure LoopSpaceOperationEvidence {X : Type u} (O : LoopSpaceOperation X) where
  associativityClosed : O.associativity
  unitPropertyClosed : O.unitProperty

def LoopSpaceOperationClosed {X : Type u} (O : LoopSpaceOperation X) : Prop :=
  O.associativity ∧ O.unitProperty

theorem loop_space_operation_closed_from_evidence
    {X : Type u} (O : LoopSpaceOperation X) (E : LoopSpaceOperationEvidence O) :
    LoopSpaceOperationClosed O := by
  exact And.intro E.associativityClosed E.unitPropertyClosed

end LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean
end HautevilleHouse