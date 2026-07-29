import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean

structure AdmittedObject where
  loopSpaceModel : Type u
  operadStructure : Type v
  algebraicMachine : Type w
  universalProperty : Prop
  representationTheorem : Prop
  conclusion : representationTheorem

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end LoopSpaceMachinesOperadsAlgebraicTheoremCanonicalLaneLean
end HautevilleHouse