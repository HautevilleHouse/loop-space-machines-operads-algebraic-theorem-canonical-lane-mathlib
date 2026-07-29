import LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean.RepresentationTheorem

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean

structure StructureDecompositionPackage {O : OperadPackage} {M : LoopSpaceMachinePackage O}
  {R : RepresentationTheoremPackage M} (D : DecompositionEvidence R) where
  decompositionExists : Prop
  factorsClassified : Prop
  reconstructionDefined : Prop
  decompositionTheorem : Prop

structure DecompositionEvidence {O : OperadPackage} {M : LoopSpaceMachinePackage O}
  {R : RepresentationTheoremPackage M} (D : StructureDecompositionPackage R) where
  decompositionExistsClosed : D.decompositionExists
  factorsClassifiedClosed : D.factorsClassified
  reconstructionDefinedClosed : D.reconstructionDefined
  decompositionTheoremClosed : D.decompositionTheorem

def DecompositionClosed {O : OperadPackage} {M : LoopSpaceMachinePackage O}
  {R : RepresentationTheoremPackage M} (D : StructureDecompositionPackage R) : Prop :=
  D.decompositionExists ∧ D.factorsClassified ∧ D.reconstructionDefined ∧ D.decompositionTheorem

theorem decomposition_closed_from_evidence
  {O : OperadPackage} {M : LoopSpaceMachinePackage O}
  {R : RepresentationTheoremPackage M} (D : StructureDecompositionPackage R)
  (E : DecompositionEvidence D) : DecompositionClosed D := by
  exact And.intro E.decompositionExistsClosed
    (And.intro E.factorsClassifiedClosed
      (And.intro E.reconstructionDefinedClosed E.decompositionTheoremClosed))

end LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean
end HautevilleHouse