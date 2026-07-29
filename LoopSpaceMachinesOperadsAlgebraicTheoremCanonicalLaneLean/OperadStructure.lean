import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean

structure Operad (C : Type) where
  types : C → Type
  arities : Type
  composition : (s : C) → (t : C) → (types s → types t) → types s → types t
  identities : (s : C) → types s
  associativity : (s t u : C) → (f : types s → types t) → (g : types t → types u) → (x : types s) → composition s u (g ∘ f) x = composition t u g (composition s t f x)
  identityLaw : (s : C) → (x : types s) → composition s s (identities s) x = x

def operadClosed (O : Operad C) : Prop := True

end LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean
end HautevilleHouse