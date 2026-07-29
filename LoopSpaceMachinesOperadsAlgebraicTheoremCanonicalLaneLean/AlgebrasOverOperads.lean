import canonicalLaneMathlib.AdmissibleClass
import LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean.OperadStructure

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean

structure AlgebraOverOperad (O : Operad C) (A : Type) where
  carrier : A
  action : (s : C) → O.types s → A → A
  unitAction : (a : A) → action (O.identities s) a = a
  compositionAction : (s t : C) → (f : O.types s → O.types t) → (x : O.types s) → (a : A) → action t (f x) a = action s x (action t (f (O.identities s)) a)

def algebraOverOperadClosed (O : Operad C) (A : AlgebraOverOperad O A) : Prop := True

end LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean
end HautevilleHouse