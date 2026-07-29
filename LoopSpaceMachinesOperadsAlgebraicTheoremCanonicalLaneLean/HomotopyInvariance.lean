import canonicalLaneMathlib.AdmissibleClass
import LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean.LoopSpaceMachine

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean

structure HomotopyInvariance where
  machine : LoopSpaceMachine X
  deformationRetract : Prop
  invarianceUnderHomotopy : Prop

def homotopyInvarianceClosed (H : HomotopyInvariance) : Prop :=
  H.invarianceUnderHomotopy

end LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean
end HautevilleHouse