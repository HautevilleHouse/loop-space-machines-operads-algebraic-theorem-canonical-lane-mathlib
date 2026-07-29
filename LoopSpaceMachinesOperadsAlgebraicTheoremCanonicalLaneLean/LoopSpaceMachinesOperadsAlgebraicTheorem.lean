import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean

structure LoopSpaceMachinesOperadsAlgebraicPackage where
  loopSpace : LoopSpaceStructure
  operadAlgebra : OperadAlgebra
  recognition : RecognitionPrinciple
  homotopyColimit : HomotopyColimitDecomposition
  littleCubes : LittleCubesOperad

def PackageClosed (P : LoopSpaceMachinesOperadsAlgebraicPackage) : Prop :=
  LoopSpaceClosed P.loopSpace ∧
  OperadAlgebraClosed P.operadAlgebra ∧
  RecognitionClosed P.recognition ∧
  HomotopyColimitClosed P.homotopyColimit ∧
  LittleCubesClosed P.littleCubes

theorem package_closed_from_evidence (P : LoopSpaceMachinesOperadsAlgebraicPackage) : PackageClosed P :=
  by
    refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ ?_)))
    · exact loop_space_closed_from_evidence P.loopSpace
    · exact operad_algebra_closed_from_evidence P.operadAlgebra
    · exact recognition_closed_from_evidence P.recognition
    · exact homotopy_colimit_closed_from_evidence P.homotopyColimit
    · exact little_cubes_closed_from_evidence P.littleCubes

end LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean
end HautevilleHouse
