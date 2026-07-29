import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean

structure LoopSpaceMachineAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  basePoint : space
  loopSpace : Type v
  loopTopology : TopologicalSpace loopSpace
  machineStructure : Prop
  operadAction : Prop
  conclusion : machineStructure ∧ operadAction

structure AdmissibleClass where
  object : LoopSpaceMachineAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.machineStructure ∧ A.object.operadAction) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean
end HautevilleHouse