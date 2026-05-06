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

### 1. Start: individual vs universal

These are the first examples to put near the root of the tree.

- Individual: "John," "Mary," "this particular marriage," "today’s breakfast shift," and "the specific Sunrise Breakfast Place on the corner" all refer to particular things or occurrences.
- Universal / type: "Person," "Marriage," "BreakfastPlace," "Employee," and "BreakfastService" refer to kinds or categories that can have many instances.

Suggested overlap with the current tree:

- Replace generic examples such as "Table" or "Traveling" with "Person," "BreakfastService," and "Marriage."
### 2. Individual level

These examples correspond to the branches in `01-Individual.mermaid`.

#### 2.1 Unary individuals

- Substantial individual: John, Mary, Sunrise Breakfast Place, the espresso machine, one egg, one apron.
- Moment individual: Mary's patience, John's cooking skill, the café's current hygiene score, the warmth of a plate of pancakes.
- Perdurant individual: John and Mary’s wedding ceremony, this morning’s breakfast service, a specific payment transaction, today's ingredient delivery.
- Situation individual: John being married to Mary, Sunrise being understaffed this morning, the kitchen being ready for service, Mary being obliged to pay a supplier invoice.

#### 2.2 Binary individuals

- Formal relation at the individual level: John is older than Mary; table 4 is next to table 5; one coffee is hotter than another. These depend only on intrinsic or comparison-like features, not on a mediating relator.
- Material relation at the individual level: John is married to Mary; Mary works for Sunrise; a supplier delivers to Sunrise under a contract. These are better understood as grounded in a relator such as Marriage, Employment, or SupplyAgreement.
- Fundamental associations at the individual level: Mary’s patience inheres in Mary; this marriage mediates John and Mary; this breakfast service has participants John, Mary, and several customers.
- Part-whole at the individual level: this griddle is component of this kitchen; this chair is member of this dining set; this milk is subquantity of this carton.

### 3. Substantial types

These examples correspond to `02-Substantial.mermaid` and are useful for helping a modeler distinguish identity-providing from anti-rigid classifications.

#### 3.1 Ultimate sortals

- Kind: Person, BreakfastPlace, SupplierCompany, CoffeeBeanBatch.
- Collective: StaffTeam, BreakfastRushQueue, SupplierConsortium.
- Quantity: Coffee, Milk, OrangeJuice, Batter.

#### 3.2 Rigid specializations

- Subkind: MarriedPerson, CaféOwner, HumanAdult, FamilyRunBreakfastPlace, ArabicaCoffeeBeanBatch. These specialize a kind without introducing anti-rigidity.

#### 3.3 Anti-rigid sortals

- Role: Husband, Wife, Cook, Customer, Employee, Supplier, Tenant. A person can stop being any of these without ceasing to be a person.
- Phase: Child, Teenager, Adult, RetiredOwner, MorningShiftWorker-if the distinction is temporal and intrinsic rather than relational. Use phase when the classification reflects a changing condition of the same bearer rather than dependence on another entity.

#### 3.4 Non-sortals

- Category: PhysicalObject, Agent, EdibleThing, CommercialEstablishment.
- Mixin: SkilledWorker, TaxableEntity, MenuItem, InsuredAsset.
- RoleMixin: ServiceProvider, FoodBuyer, Employer, ContractParty. These collect different kinds of entities that can all play the same externally dependent role.
- PhaseMixin: AvailableResource, BusyParticipant, OpenBusinessEntity, HeatedConsumable. These collect entities sharing a temporary intrinsic condition.

#### 3.5 Abstract substantials

- Datatype-like abstract type: CurrencyAmount, TemperatureValue, RatingValue, VATPercentage.
- Enumeration-like abstract type: DayOfWeek, BreakfastOrderStatus, TableState, PaymentMethod.

### 4. Moments

These examples correspond to `03-Moment.mermaid`.

#### 4.1 Qualities

- Perceivable quality: the color of the café sign, the smell of coffee, the weight of a loaf of bread, the temperature of scrambled eggs.
- Non-perceivable quality: the café’s bank balance, a customer satisfaction score, John’s age in years, the restaurant tax rate.
- Nominal quality: order status as pending/preparing/served; egg doneness as soft/medium/hard; table cleanliness as clean/dirty.

#### 4.2 Modes

- Mode as a way of being: John's cooking skill, Mary's patience, the café’s reputation, a toaster’s fragility.
- Mode with internal structure or parameters: John’s obligation to pay rent by the 5th of the month, Mary’s right to access the business account, an employee’s shift commitment from 07:00 to 13:00.

#### 4.3 Relators

- Relator only: Marriage, Employment, SupplyContract, LeaseAgreement, OwnershipArrangement.
- Relator plus derived material relation: Marriage grounding `isMarriedTo`; Employment grounding `worksFor`; SupplyContract grounding `suppliesTo`; OwnershipArrangement grounding `coOwns`.

### 5. Relational cases

These examples correspond to `04-Relational.mermaid`.

#### 5.1 Domain relations

- Formal relation: John is older than Mary; one pancake is larger than another; Sunrise is closer to the market than to the station.
- Material relation: John is married to Mary; Mary employs Alex; Sunrise buys from FreshFarm; Customer Sarah reserves table 2 under a reservation arrangement.
- Relator-focused interpretation: when in doubt, ask whether the relation is backed by some social, legal, contractual, or institutional connection. If yes, model the relator and treat the binary relation as material or derived.

#### 5.2 Fundamental associations

- Characterization: Mary is characterized by her patience; the café is characterized by its hygiene rating.
- Mediation: Marriage mediates John and Mary; Employment mediates Sunrise and Alex the cook; SupplyContract mediates Sunrise and FreshFarm.
- Derivation: `isMarriedTo` is derived from Marriage; `worksFor` is derived from Employment; `suppliesTo` is derived from SupplyContract.
- Structuration: Mary’s height is structured by the value 168 cm; the coffee temperature is structured by 72°C; the rating is structured by a 1–5 scale value.
- Participation: John participates in this breakfast service; Mary participates in the brunch event; a customer participates in a payment event.

#### 5.3 Part-whole

- ComponentOf: grill component of kitchen, kitchen component of breakfast-place, menu board component of storefront.
- MemberOf: John member of the staff team, Mary member of the owners’ association, one chair member of the patio set if modeled collectively.
- SubCollectionOf: the weekend-staff group subcollection of the full staff team.
- SubQuantityOf: this milk subquantity of the milk stock; this butter portion subquantity of the butter block.
- Containment: croissant in display case, eggs in refrigerator, cash in register drawer. Use carefully when the relation is spatial containment rather than true ontological parthood.

### 6. Perdurants and events

These examples correspond to `05-Perdurant.mermaid`.

- Event: John and Mary’s wedding ceremony, a payment transaction, a delivery arrival, a customer placing an order.
- Complex event / process: the breakfast service from 07:00 to 11:00, the daily opening routine, the weekly supply cycle, the cooking process for a batch of pancakes.
- Event participation clues: if the modeler is talking about something that happens in time and has participants, temporal parts, or phases, it likely belongs in the perdurant branch.

## Recommended example replacements for the tree

The current tree already contains several good structural placeholders, but many examples can be made more coherent by aligning them to the breakfast-place story.

### Replace at the start level

- `Table` -> `Person` or `BreakfastPlace`.
- `Traveling` -> `BreakfastService` or `WeddingCeremony`.
- `Color` -> `CookingSkill` or `Marriage` depending on whether the branch is intrinsic moment or relator.

### Replace in the substantial subtree

- `Table`, `Spoon`, `Forest`, `Water` -> `Person`, `BreakfastPlace`, `StaffTeam`, `Coffee`.
- `Student`, `Employee` can stay, but `Cook`, `Customer`, `Supplier`, and `Owner` fit the story better.
- `Child`, `Adult` can stay because they are intuitive phase examples, and John/Mary can anchor the narrative.

### Replace in the moment subtree

- `Fragility` and `Skill` can be specialized to `ToasterFragility` and `JohnsCookingSkill`.
- `Marriage` is already a strong relator example and should remain central.
- `isMarriedTo` should remain the canonical material-relation example because it is intuitive and aligns with the shared story.

### Replace in the relational subtree

- `worksFor` can become `worksFor Sunrise` or be reframed through `Employment`.
- `Person participatesIn Meeting` can become `Cook participatesIn BreakfastService` or `Customer participatesIn PaymentEvent`.
- `Weight quality / Mass domain` can become `CoffeeTemperature / TemperatureValue` or `HygieneRating / RatingValue`.

### Replace in the perdurant subtree

- Use `WeddingCeremony`, `BreakfastService`, `PaymentTransaction`, and `IngredientDelivery` as the recurring event examples.

## Modeling cues for OntoUML or Tonto

These cues help a user decide what to look for before choosing concrete syntax.

- If the phrase starts to sound like "this particular thing" or "this particular happening," it likely belongs to the individual side.
- If the phrase sounds like a repeatable category such as Person, Customer, Marriage, or BreakfastService, it belongs to the universal/type side.
- If something depends on a bearer and cannot exist on its own, it is probably a moment: a quality, a mode, or a relator.
- If a relation seems social, legal, contractual, or institutional, look for the relator behind it instead of modeling only a bare binary relation.
- If something happens in time and has participants, it likely belongs in the perdurant branch.
- If a classification can cease to apply while the thing still exists, suspect role, phase, role mixin, or phase mixin rather than kind.

## Suggested minimal teaching set

If a smaller set is preferred for the tree itself, the following examples give broad coverage while staying easy to remember.

1. Person as Kind.
2. Husband / Wife / Cook / Customer as Roles.
3. Adult as Phase.
4. StaffTeam as Collective.
5. Coffee as Quantity.
6. John’s cooking skill as Mode.
7. Mary’s patience as Quality.
8. Marriage as Relator.
9. isMarriedTo as a derived Material Relation.
10. Employment as Relator grounding `worksFor`.
11. BreakfastService as Event with Participation.
12. Kitchen componentOf BreakfastPlace as ComponentOf.

