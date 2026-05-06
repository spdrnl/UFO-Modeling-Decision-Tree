# UFO / OntoUML / Tonto modeling examples for the John–Mary breakfast-place story

This document provides a coherent set of plain-text modeling examples that cover the main branches of the UFO modeling decision tree. The examples all reuse one shared story: John and Mary are married and together run a breakfast-place. The goal is to help a modeler recognize what to look for when deciding how to represent something in OntoUML or Tonto.

## Story frame

The recurring story is this: John and Mary are people, they are married, they jointly run a breakfast-place called Sunrise Breakfast Place, they employ staff, they serve customers, they buy ingredients, and they host breakfast services and special brunch events. This single narrative makes it easier to reuse the same domain elements while moving through substantials, moments, relations, and events.

## How to use these examples

Each example is written first in plain language, because the first modeling step is to identify what kind of thing is being talked about before choosing notation. The examples are intentionally close to the kinds of branches already present in the decision tree, so they can replace or sharpen the current example labels in the Mermaid files.

## Core cast

The following recurring domain elements are used throughout:

- John and Mary as individual persons.
- Sunrise Breakfast Place as a business establishment.
- A marriage between John and Mary.
- Employment relations involving cooks, servers, and owners.
- Breakfast services, brunch events, and food preparation episodes.
- Qualities such as a person's age, the café's rating, and the temperature of coffee.
- Modes such as cooking skill, legal obligation, and ownership commitment.

## Decision-tree coverage

The table below maps the story examples to the major branches visible in the attached tree files.

| Tree area | What the modeler asks | Story example |
|---|---|---|
| Start | Is this an individual or a universal/type? | "John" is an individual; "Person" is a type. |
| Individual | Is this one thing, one event, one relation, or one situation? | "John," "the wedding," "John works for Sunrise," "John being married." |
| Substantial | Is this a kind, role, phase, collective, quantity, etc.? | Person, Customer, Employee, Child, StaffTeam, Coffee, BreakfastMenuItem. |
| Moment | Is this a quality, mode, or relator? | Mary's height, John's cooking skill, the marriage relator. |
| Relational | Is this formal, material, mediating, participational, or part-whole? | isOlderThan, isMarriedTo, employs, participatesIn, componentOf. |
| Perdurant | Is this an event, process, or event-like occurrence? | wedding ceremony, breakfast service, ingredient delivery, payment event. |

## Plain-text examples by branch

### 0. Start: individual vs universal

These are the first examples to put near the root of the tree.

- Individual: "John," "Mary," "this particular marriage," "today’s breakfast shift," and "the specific Sunrise Breakfast Place on the corner" all refer to particular things or occurrences.
- Universal / type: "Person," "Marriage," "BreakfastPlace," "Employee," and "BreakfastService" refer to kinds or categories that can have many instances.

Suggested overlap with the current tree:

- Replace generic examples such as "Table" or "Traveling" with "Person," "BreakfastService," and "Marriage."
### 1. Individual level

These examples correspond to the branches in `01-Individual.mermaid`.

#### 1.1 Unary individuals

- Substantial individual: John, Mary, Sunrise Breakfast Place, the espresso machine, one egg, one apron.
- Moment individual: Mary's patience, John's cooking skill, the café's current hygiene score, the warmth of a plate of pancakes.
- Perdurant individual: John and Mary’s wedding ceremony, this morning’s breakfast service, a specific payment transaction, today's ingredient delivery.
- Situation individual: John being married to Mary, Sunrise being understaffed this morning, the kitchen being ready for service, Mary being obliged to pay a supplier invoice.

#### 1.2 Binary individuals

- Formal relation at the individual level: John is older than Mary; table 4 is next to table 5; one coffee is hotter than another. These depend only on intrinsic or comparison-like features, not on a mediating relator.
- Material relation at the individual level: John is married to Mary; Mary works for Sunrise; a supplier delivers to Sunrise under a contract. These are better understood as grounded in a relator such as Marriage, Employment, or SupplyAgreement.
- Fundamental associations at the individual level: Mary’s patience inheres in Mary; this marriage mediates John and Mary; this breakfast service has participants John, Mary, and several customers.
- Part-whole at the individual level: this griddle is component of this kitchen; this chair is member of this dining set; this milk is subquantity of this carton.

### 2. Substantial types

These examples correspond to `02-Substantial.mermaid` and are useful for helping a modeler distinguish identity-providing from anti-rigid classifications.

#### 2.1 Ultimate sortals

- Kind: Person, BreakfastPlace, SupplierCompany, CoffeeBeanBatch.
- Collective: StaffTeam, BreakfastRushQueue, SupplierConsortium.
- Quantity: Coffee, Milk, OrangeJuice, Batter.

#### 2.2 Rigid specializations

- Subkind: MarriedPerson, CaféOwner, HumanAdult, FamilyRunBreakfastPlace, ArabicaCoffeeBeanBatch. These specialize a kind without introducing anti-rigidity.

#### 2.3 Anti-rigid sortals

- Role: Husband, Wife, Cook, Customer, Employee, Supplier, Tenant. A person can stop being any of these without ceasing to be a person.
- Phase: Child, Teenager, Adult, RetiredOwner, MorningShiftWorker-if the distinction is temporal and intrinsic rather than relational. Use phase when the classification reflects a changing condition of the same bearer rather than dependence on another entity.

#### 2.4 Non-sortals

- Category: PhysicalObject, Agent, EdibleThing, CommercialEstablishment.
- Mixin: SkilledWorker, TaxableEntity, MenuItem, InsuredAsset.
- RoleMixin: ServiceProvider, FoodBuyer, Employer, ContractParty. These collect different kinds of entities that can all play the same externally dependent role.
- PhaseMixin: AvailableResource, BusyParticipant, OpenBusinessEntity, HeatedConsumable. These collect entities sharing a temporary intrinsic condition.

#### 2.5 Abstract substantials

- Datatype-like abstract type: CurrencyAmount, TemperatureValue, RatingValue, VATPercentage.
- Enumeration-like abstract type: DayOfWeek, BreakfastOrderStatus, TableState, PaymentMethod.

### 3. Moments

These examples correspond to `03-Moment.mermaid`.

#### 3.1 Qualities

- Perceivable quality: the color of the café sign, the smell of coffee, the weight of a loaf of bread, the temperature of scrambled eggs.
- Non-perceivable quality: the café’s bank balance, a customer satisfaction score, John’s age in years, the restaurant tax rate.
- Nominal quality: order status as pending/preparing/served; egg doneness as soft/medium/hard; table cleanliness as clean/dirty.

#### 3.2 Modes

- Mode as a way of being: John's cooking skill, Mary's patience, the café’s reputation, a toaster’s fragility.
- Mode with internal structure or parameters: John’s obligation to pay rent by the 5th of the month, Mary’s right to access the business account, an employee’s shift commitment from 07:00 to 13:00.

#### 3.3 Relators

- Relator only: Marriage, Employment, SupplyContract, LeaseAgreement, OwnershipArrangement.
- Relator plus derived material relation: Marriage grounding `isMarriedTo`; Employment grounding `worksFor`; SupplyContract grounding `suppliesTo`; OwnershipArrangement grounding `coOwns`.

### 4. Relational cases

These examples correspond to `04-Relational.mermaid`.

#### 4.1 Domain relations

- Formal relation: John is older than Mary; one pancake is larger than another; Sunrise is closer to the market than to the station.
- Material relation: John is married to Mary; Mary employs Alex; Sunrise buys from FreshFarm; Customer Sarah reserves table 2 under a reservation arrangement.
- Relator-focused interpretation: when in doubt, ask whether the relation is backed by some social, legal, contractual, or institutional connection. If yes, model the relator and treat the binary relation as material or derived.

#### 4.2 Fundamental associations

- Characterization: Mary is characterized by her patience; the café is characterized by its hygiene rating.
- Mediation: Marriage mediates John and Mary; Employment mediates Sunrise and Alex the cook; SupplyContract mediates Sunrise and FreshFarm.
- Derivation: `isMarriedTo` is derived from Marriage; `worksFor` is derived from Employment; `suppliesTo` is derived from SupplyContract.
- Structuration: Mary’s height is structured by the value 168 cm; the coffee temperature is structured by 72°C; the rating is structured by a 1–5 scale value.
- Participation: John participates in this breakfast service; Mary participates in the brunch event; a customer participates in a payment event.

#### 4.3 Part-whole

- ComponentOf: grill component of kitchen, kitchen component of breakfast-place, menu board component of storefront.
- MemberOf: John member of the staff team, Mary member of the owners’ association, one chair member of the patio set if modeled collectively.
- SubCollectionOf: the weekend-staff group subcollection of the full staff team.
- SubQuantityOf: this milk subquantity of the milk stock; this butter portion subquantity of the butter block.
- Containment: croissant in display case, eggs in refrigerator, cash in register drawer. Use carefully when the relation is spatial containment rather than true ontological parthood.

### 5. Perdurants and events

These examples correspond to `05-Perdurant.mermaid`.

- Event: John and Mary’s wedding ceremony, a payment transaction, a delivery arrival, a customer placing an order.
- Complex event / process: the breakfast service from 07:00 to 11:00, the daily opening routine, the weekly supply cycle, the cooking process for a batch of pancakes.
- Event participation clues: if the modeler is talking about something that happens in time and has participants, temporal parts, or phases, it likely belongs in the perdurant branch.
- Event and situation relations: placing an order brings about an order-placed situation; an order-placed situation triggers pancake preparation; pancake preparation creates a meal and manifests a cooking skill; a breakfast service can terminate in a service-finished situation.

### 6. Higher-order types

These examples correspond to `06-Higher-order.mermaid`. They deal with types whose instances are themselves types.

#### 6.1 Powertypes

A powertype is a higher-order type whose instances are all the possible specializations of a specific base type.

- Substantial powertype: `PersonType` (its instances are types like `Cook`, `Customer`, `Adult`), `EstablishmentType` (its instances are types like `BreakfastPlace`, `SupplierCompany`).
- Moment powertype: `SkillType` (its instances are types like `CookingSkill`, `ServiceSkill`), `AgreementType` (its instances are types like `Marriage`, `Employment`).
- Perdurant powertype: `EventType` (its instances are types like `PaymentTransaction`, `DeliveryArrival`), `ServiceType` (its instances are types like `BreakfastService`, `BrunchEvent`).
- Tonto instantiation syntax: examples can explicitly state that a type such as `CookType` or `BrunchEventType` is an instance of a higher-order type.

#### 6.2 Other higher-order types

These are higher-order types that are not necessarily powertypes, but still categorize other types.

- **Other higher-order type**: `Species`, `Breed`, `ProductCategory`. For example, `GoldenRetriever` is an instance of `Breed`, and `GoldenRetriever` itself is a type whose instances are individual dogs.

### X. Advanced features

These examples correspond to the `X-*` Tonto files and cover specialized Tonto language constructs and ontological nuances.

#### X.1 Generalization sets and constraints

- Generalization set: A way to group multiple subtypes of a single base type.
- Disjointness: Ensuring an instance cannot belong to more than one subtype at once (e.g., a Person cannot be both a Child and an Adult simultaneously).
- Completeness: Ensuring every instance of the base type must belong to at least one of the subtypes (e.g., every Person is either a Child or an Adult).
- Categorizer: A higher-order type can be used to categorize the members of a generalization set.
- Short syntax: Tonto also supports a compact `genset ... where ... specializes ...` form for simple partitions.

#### X.2 Relation meta-properties

Specialized properties that describe the nature of a relationship:
- Symmetric: If A is next to B, then B is next to A.
- Transitive: If A is an ancestor of B, and B is an ancestor of C, then A is an ancestor of C.
- InverseOf: "John is the parent of Mary" is the inverse of "Mary is the child of John."
- Comparative relation: John being older than Mary is modeled as a comparative relation.
- Relation specialization: a more specific relation such as `founded` can specialize a broader relation such as affiliation with a breakfast place.

#### X.3 Refined class distinctions

- Historical role: A role that an entity played in the past and is still identified by, even if it no longer exists. E.g., `DeceasedPerson`.
- Extrinsic mode: A way of being that depends on another entity. E.g., a `Debt` that a person owes to a bank.
- Intrinsic mode: a way of being that depends only on its bearer, such as a person's patience.
- Historical role mixin: a non-sortal grouping for entities that share a historically dependent role.

#### X.4 Property refinements

- Subsets: Creating a specialized version of a relationship that only applies to a subset of the original entities. E.g., defining a specific "industrial sink" component relationship that is a subset of the general "sink" component relationship in a kitchen.
- Redefines: Replacing a more general relation end with a more specific one in a specialized context.
- Relation-end meta-attributes: Tonto can mark relation ends as ordered, constant, or derived.

#### X.5 Language coverage

Some examples exist mainly to cover Tonto syntax that is useful to know but not central to one decision-tree branch.

- Package and import syntax: global packages and import aliases.
- Generic declarations: `class`, explicit ontological natures, labels, and descriptions.
- Attribute syntax: cardinalities and attribute meta-attributes such as ordered, constant, and derived.
- Relation syntax: internal relations, unnamed relations, aggregation and composition connectors, inverted connectors, and custom grammar-level relation stereotypes such as `value`, `constitution`, `aggregation`, and `composition`.
