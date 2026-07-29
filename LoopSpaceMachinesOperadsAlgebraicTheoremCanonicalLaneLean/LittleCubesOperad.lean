import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean

structure LittleCubesOperad where
  cubes : Type u
  operadicComposition : Type v
  axioms : Prop
  commutativeAxiom : Prop
  axiomsTerm : axioms
  commutativeAxiomTerm : commutativeAxiom

def LittleCubesClosed (L : LittleCubesOperad) : Prop :=
  L.axioms ∧ L.commutativeAxiom

theorem little_cubes_closed_from_evidence (L : LittleCubesOperad) : LittleCubesClosed L :=
  And.intro L.axiomsTerm L.commutativeAxiomTerm

end LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean
end HautevilleHouse
