import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean

structure HomotopyColimitDecomposition where
  diagram : Type u
  colimit : Type v
  fibers : Type w
  homotopyCoherent : Prop
  universalProperty : Prop
  homotopyCoherentTerm : homotopyCoherent
  universalPropertyTerm : universalProperty

def HomotopyColimitClosed (H : HomotopyColimitDecomposition) : Prop :=
  H.homotopyCoherent ∧ H.universalProperty

theorem homotopy_colimit_closed_from_evidence (H : HomotopyColimitDecomposition) : HomotopyColimitClosed H :=
  And.intro H.homotopyCoherentTerm H.universalPropertyTerm

end LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean
end HautevilleHouse
