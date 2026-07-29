import canonicalLaneMathlib.AdmissibleClass
import LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean.LoopSpaceMachine
import LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean.OperadStructure

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean

structure UniversalProperty (O : Operad C) where
  initialObject : Type
  terminalObject : Type
  uniqueMapInitial : (A : Type) → (AlgebraOverOperad O A) → (initialObject → A)
  uniqueMapTerminal : (A : Type) → (AlgebraOverOperad O A) → (A → terminalObject)

def universalPropertyClosed (U : UniversalProperty O) : Prop := True

end LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean
end HautevilleHouse