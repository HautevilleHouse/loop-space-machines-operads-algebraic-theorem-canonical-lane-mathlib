import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean

structure LoopSpaceStructure where
  basePoint : Type u
  loopType : Type v
  basedMapSpace : Type w
  compositionLaw : Prop
  homotopyAssociative : Prop
  compositionLawTerm : compositionLaw
  homotopyAssociativeTerm : homotopyAssociative

def LoopSpaceClosed (L : LoopSpaceStructure) : Prop :=
  L.compositionLaw ∧ L.homotopyAssociative

theorem loop_space_closed_from_evidence (L : LoopSpaceStructure) : LoopSpaceClosed L :=
  And.intro L.compositionLawTerm L.homotopyAssociativeTerm

end LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean
end HautevilleHouse
