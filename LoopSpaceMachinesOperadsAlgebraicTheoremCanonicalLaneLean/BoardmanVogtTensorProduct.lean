import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean

structure BoardmanVogtTensorProduct (O P : Type u) where
  operadStructure : Type v
  tensorProduct : Type w
  naturality : Prop
  associativity : Prop
  unitConstraints : Prop

structure BoardmanVogtTensorProductEvidence (O P : Type u) (B : BoardmanVogtTensorProduct O P) where
  naturalityClosed : B.naturality
  associativityClosed : B.associativity
  unitConstraintsClosed : B.unitConstraints

def BoardmanVogtTensorProductClosed (O P : Type u) (B : BoardmanVogtTensorProduct O P) : Prop :=
  B.naturality ∧ B.associativity ∧ B.unitConstraints

theorem boardman_vogt_tensor_product_closed_from_evidence
    (O P : Type u) (B : BoardmanVogtTensorProduct O P)
    (E : BoardmanVogtTensorProductEvidence O P B) : BoardmanVogtTensorProductClosed O P B := by
  exact And.intro E.naturalityClosed
    (And.intro E.associativityClosed E.unitConstraintsClosed)

end LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean
end HautevilleHouse