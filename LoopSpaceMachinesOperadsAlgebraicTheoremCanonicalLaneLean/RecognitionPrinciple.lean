import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean

structure RecognitionPrinciple where
  loopSpace : LoopSpaceStructure
  operadAlgebra : OperadAlgebra
  equivalenceMap : Type u
  homotopyEquivalence : Prop
  naturalTransformation : Prop
  equivalenceMapTerm : equivalenceMap
  homotopyEquivalenceTerm : homotopyEquivalence
  naturalTransformationTerm : naturalTransformation

def RecognitionClosed (R : RecognitionPrinciple) : Prop :=
  R.homotopyEquivalence ∧ R.naturalTransformation

theorem recognition_closed_from_evidence (R : RecognitionPrinciple) : RecognitionClosed R :=
  And.intro R.homotopyEquivalenceTerm R.naturalTransformationTerm

end LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean
end HautevilleHouse
