import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean

structure LoopSpaceMachine (X : Type) where
  points : X
  loops : Type
  composition : loops → loops → loops
  unit : loops
  associativity : ∀ a b c : loops, composition (composition a b) c = composition a (composition b c)
  unitLeft : ∀ a : loops, composition unit a = a
  unitRight : ∀ a : loops, composition a unit = a

def loopSpaceMachineClosed (M : LoopSpaceMachine X) : Prop := True

end LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean
end HautevilleHouse