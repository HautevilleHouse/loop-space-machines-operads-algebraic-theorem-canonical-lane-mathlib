import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean

structure OperadAlgebra where
  operad : Type u
  algebra : Type v
  actionMap : Type w
  associativityAxiom : Prop
  unitAxiom : Prop
  associativityAxiomTerm : associativityAxiom
  unitAxiomTerm : unitAxiom

def OperadAlgebraClosed (O : OperadAlgebra) : Prop :=
  O.associativityAxiom ∧ O.unitAxiom

theorem operad_algebra_closed_from_evidence (O : OperadAlgebra) : OperadAlgebraClosed O :=
  And.intro O.associativityAxiomTerm O.unitAxiomTerm

end LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean
end HautevilleHouse
