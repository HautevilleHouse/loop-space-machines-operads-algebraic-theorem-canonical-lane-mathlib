import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean.OperadStructure

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean

structure ModuleOverOperad (R : Type u) [Ring R] (I : Type v) (O : Operad I) where
  underlying : I -> Type w
  action : ∀ (a b : I), O.operations a b -> (underlying a -> underlying b)
  scalars : R -> (∀ (a : I), underlying a -> underlying a)
  linearity : ∀ (a b : I) (f : O.operations a b) (r : R) (x : underlying a),
    action a b f (scalars a r x) = scalars b r (action a b f x)

structure ModuleOverOperadEvidence {R : Type u} [Ring R] {I : Type v} {O : Operad I}
    (M : ModuleOverOperad R I O) where
  linearityClosed : M.linearity

def ModuleOverOperadClosed {R : Type u} [Ring R] {I : Type v} {O : Operad I}
    (M : ModuleOverOperad R I O) : Prop := M.linearity

theorem module_over_operad_closed_from_evidence
    {R : Type u} [Ring R] {I : Type v} {O : Operad I}
    (M : ModuleOverOperad R I O) (E : ModuleOverOperadEvidence R I O M) :
    ModuleOverOperadClosed M := by
  exact E.linearityClosed

end LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean
end HautevilleHouse