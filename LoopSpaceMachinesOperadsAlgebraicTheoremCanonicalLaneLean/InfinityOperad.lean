import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean

structure InfinityOperad where
  multicategory : Type u
  composition : Type v
  coherenceData : Type w
  higherAssociativity : ℕ → Prop
  contractibility : Prop

structure InfinityOperadEvidence (O : InfinityOperad) where
  higherAssociativityClosed : ∀ n, O.higherAssociativity n
  contractibilityClosed : O.contractibility

def InfinityOperadClosed (O : InfinityOperad) : Prop :=
  (∀ n, O.higherAssociativity n) ∧ O.contractibility

theorem infinity_operad_closed_from_evidence
    (O : InfinityOperad) (E : InfinityOperadEvidence O) : InfinityOperadClosed O := by
  exact And.intro E.higherAssociativityClosed E.contractibilityClosed

end LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean
end HautevilleHouse