# UFO Decision Tree Entry Glossary

## Modeling cues for OntoUML or Tonto

These cues help a user decide what to look for before choosing concrete syntax.

- If the phrase starts to sound like "this particular thing" or "this particular happening," it likely belongs to the individual side.
- If the phrase sounds like a repeatable category such as Person, Customer, Marriage, or BreakfastService, it belongs to the universal/type side.
- If something depends on a bearer and cannot exist on its own, it is probably a moment: a quality, a mode, or a relator.
- If a relation seems social, legal, contractual, or institutional, look for the relator behind it instead of modeling only a bare binary relation.
- If something happens in time and has participants, it likely belongs in the perdurant branch.
- If a classification can cease to apply while the thing still exists, suspect role, phase, role mixin, or phase mixin rather than kind.

### Suggested initial decision tree walkthrough

The following examples give broad coverage while staying easy to remember.

1. Person as Kind.
2. Husband / Wife / Cook / Customer as Roles.
3. Adult as Phase.
4. StaffTeam as Collective.
5. A portion of coffee as Quantity.
6. John’s cooking skill as Mode.
7. Mary’s patience as Quality.
8. Marriage as Relator.
9. isMarriedTo as a derived Material Relation.
10. Employment as Relator grounding `worksFor`.
11. BreakfastService as Event with Participation.
12. Kitchen componentOf BreakfastPlace as ComponentOf.

### Modeling case
An elaborate example of a UFO model can be found in the [UFO Modeling Case](https://github.com/UFO-Universally/ufo-modeling-case).

## UFO Meta Model

UFO distinguishes between things that exist in the domain and the types or relations used to classify them. At the most general level, a modeler first decides whether a term refers to an **individual** or a **universal**.

An **individual** is a concrete or abstract particular, such as John, a specific breakfast service, Mary's patience, or a specific monetary value. A **universal** is repeatable: it classifies possible individuals or links, such as `Person`, `Customer`, `Marriage`, `BreakfastService`, or `worksFor`.

Universals may be **unary** or **binary**. Unary universals are types/classes. Binary universals are relations or associations. Unary universals are further divided by the kind of thing they classify: **substantials**, **moments**, **perdurants**, **abstract types**, and **higher-order types**. Binary universals are divided into **domain relations**, **part-whole relations**, and **fundamental associations**.

### Core Meta Model

| Meta-model area | Main idea | Terms introduced later |
| --- | --- | --- |
| Individual vs. universal | Separates particular things from repeatable classifiers. | Individual, universal, type, relation |
| Unary vs. binary universal | Separates classifiers of one thing from links between things. | Generic Type, Generic Link, relation, association |
| Endurant vs. perdurant | Separates things that persist through time from things that unfold in time. | Endurant type, perdurant type, event, action, activity, process |
| Substantial vs. moment | Separates independent bearers from dependent properties, qualities, modes, and relators. | Substantial type, moment type, quality, mode, relator |
| Abstract vs. concrete | Separates value-like entities from entities located in concrete reality. | Abstract Type, datatype, enumeration |
| First-order vs. higher-order | Separates types of individuals from types whose instances are themselves types. | 1st-order type, higher-order type, powertype |
| Domain relation vs. fundamental association | Separates domain facts from UFO structural links used to explain those facts. | Formal relation, material relation, characterization, mediation, derivation |
| Part-whole structure | Classifies different whole/part patterns according to the type of whole. | ComponentOf, MemberOf, SubCollectionOf, SubQuantityOf |

### UFO Meta Properties

The substantial-type branch uses meta properties to decide which stereotype a type should receive. These properties are not usually domain terms themselves; they are diagnostic questions about how a type behaves across possible situations.

| Meta property | Question to ask | How it affects classification |
| --- | --- | --- |
| Identity principle | Does the type provide or inherit criteria for counting and reidentifying its instances? | Types with identity are **sortals**. Types without identity are **non-sortals** such as category, mixin, role mixin, or phase mixin. |
| Supplies identity | Does the type provide its own identity principle rather than only inheriting one? | A sortal that supplies identity is an **ultimate sortal**, such as kind, collective, or quantity. |
| Rigidity | Must every instance of the type instantiate it whenever that instance exists? | Rigid types include kinds, collectives, quantities, subkinds, and categories. |
| Anti-rigidity | Can an instance stop being classified by the type while continuing to exist? | Anti-rigid sortals become **roles** or **phases**. Anti-rigid non-sortals become **role mixins** or **phase mixins**. |
| Semi-rigidity | Is the type essential to some instances but accidental to others? | Semi-rigid non-sortals are modeled as **Semi-Rigid Mixins**. |
| Relational dependence | Does the type apply because the instance stands in a relation to something else? | Relationally dependent anti-rigid types are **roles** or **role mixins**. |
| Intrinsic dependence | Does the type apply because of an intrinsic state of the instance? | Intrinsically dependent anti-rigid types are **phases** or **phase mixins**. |
| Existential dependence | Can instances exist without a bearer or relatum? | Dependent endurants are **moments**; independent endurants are **substantials**. |
| Relator grounding | Is a relation grounded in a mediating entity such as a contract, marriage, or employment? | Grounded social, legal, or institutional relations are **material relations** derived from **relators**. |
| Value structure | Does a quality need a value space to represent measurement or classification? | Qualities are structured by **datatypes** or **enumerations**. |
| Atomicity | Is an event treated as indivisible for the model's purpose? | Atomic perdurants become **actions** or **occurrences**; complex perdurants become **activities** or **processes**. |
| Intentionality | Is the event intentionally performed by an agent? | Intentional perdurants are **actions** or **activities**; non-intentional perdurants are **occurrences** or **processes**. |

### How the Properties Lead to Stereotypes

For substantial types, the key path is: first ask whether the type is a **sortal**. If it is a sortal, ask whether it is rigid or anti-rigid. Rigid sortals are either ultimate sortals, such as **Kind (Functional complex)**, **Collective (Collective kind)**, and **Quantity (Quantity kind)**, or specializations such as **Subkind**. Anti-rigid sortals are split by dependence: relational dependence gives **Role**, while intrinsic state dependence gives **Phase**.

If a substantial type is not a sortal, it does not provide identity by itself. Rigid non-sortals become **Category**. Semi-rigid non-sortals become **Semi-Rigid Mixin**. Anti-rigid non-sortals become **RoleMixin** or **PhaseMixin**, again depending on whether the condition is relational or intrinsic.

For moment types, the main question is whether the moment inheres in a bearer as an **intrinsic moment** or mediates other entities as a **relator**. Intrinsic moments are refined into **qualities** and **modes**. Qualities are connected to value structures, while modes may include **dispositions** and **extrinsic modes**. Relators explain **material relations** through **mediation** and **derivation**.

For perdurants, the key questions are whether the event is **atomic** or **complex**, and whether it is **intentional**. This produces **Action**, **Occurrence**, **Activity**, and **Process**.

For binary universals, UFO separates ordinary domain links from structural modeling associations. Domain links include **formal relations**, **material relations**, and **part-whole relations**. Fundamental associations, such as **Characterization**, **Mediation**, **Participation**, and **BringsAbout**, express the ontological structure behind those domain links.

## Glossary per decision subtree
In this section a glossary is provided for each decision subtree. The function of the glossary is to provide a link between the description of the UFO Meta Model and the graphical decision trees. The style of the trees is very succinct for layout reasons. In this section additional clarification is provided.

Also, in the modeling case, per subtree Tonto textual UFO models are provided per subtree for further illustration.

### 00-Start

| Entry | Meaning |
| --- | --- |
| Term | Any candidate domain expression to classify in the model. |
| Individual | A particular entity, event, situation, value, or link instance. |
| Universal | A type or relation whose instances can occur in the domain. |
| Unary type | A type/classifying expression with one argument place, such as `Person` or `BreakfastService`. |
| Binary type | A relation or association expression with two argument places, such as `worksFor` or `componentOf`. |
| Generic Type | A provisional class/type before the more specific UFO stereotype is selected. |
| Generic Link | A provisional relational expression before deciding between relation and association. |
| 1st-order type | A type whose instances are individuals. |
| Higher-order type | A type whose instances are themselves types. |
| Concrete type | A type whose instances are concrete entities in time, such as objects, moments, or events. |
| Abstract Type | A type whose instances are abstract values or value spaces. |
| Endurant type | A type whose instances persist through time while being wholly present whenever they exist. |
| Perdurant type | A type whose instances unfold in time, such as events, actions, activities, or processes. |
| Substantial type | An endurant type whose instances are existentially independent bearers. |
| Moment type | An endurant type whose instances depend on another entity as bearer or relatum. |
| Domain relation | A domain-level relation between entities, including formal and material relations. |
| Part-whole relation | A meronymic relation connecting a part to a whole. |
| Fundamental association | A foundational UFO association used to connect modeling constructs, such as characterization, mediation, or participation. |

### 02a-Substantial

| Entry | Meaning |
| --- | --- |
| Sortal | A type that carries or inherits identity criteria for its instances. |
| Ultimate sortal | A sortal that supplies its own identity principle. |
| Kind (Functional complex) | A rigid ultimate sortal for functional complexes, such as persons or organizations. |
| Collective (Collective kind) | A rigid ultimate sortal for collections whose members play a unifying role. |
| Quantity (Quantity kind) | A rigid ultimate sortal for portions of matter. |
| Subkind | A rigid specialization of a kind, collective, or quantity. |
| Role | An anti-rigid sortal whose application depends on a relational or contextual condition. |
| Phase | An anti-rigid sortal whose application depends on an intrinsic state. |
| Category | A rigid non-sortal type that abstracts over multiple identity principles. |
| Semi-Rigid Mixin | A non-sortal type that is essential to some instances and accidental to others. |
| RoleMixin | An anti-rigid non-sortal type whose application depends on a relational or contextual condition. |
| PhaseMixin | An anti-rigid non-sortal type whose application depends on an intrinsic state. |

### 02b-Abstract

| Entry | Meaning |
| --- | --- |
| Datatype | An abstract type whose instances come from a value space, often numeric, textual, or structured. |
| Enumeration | An abstract type with a fixed set of named values. |

### 03-Moment

| Entry | Meaning |
| --- | --- |
| Intrinsic moment type | A moment type whose instances inhere in a bearer. |
| Quality type | An intrinsic moment type measurable or comparable through a value space. |
| Perceivable quality type | A quality type directly available through perception, such as color, smell, or temperature. |
| Non-perceivable quality type | A quality type not directly perceived, such as age, balance, or rate. |
| Nominal quality type | A quality type used for names, identifiers, labels, statuses, or other nominal values. |
| Value space | The datatype or enumeration used to structure or measure a quality. |
| Mode | An intrinsic moment type that is not primarily modeled as a quality. |
| Disposition | A mode directed toward characteristic events that may remain unmanifested. |
| Other intrinsic mode | An intrinsic mode that is not a disposition. |
| Extrinsic mode | A mode that depends on its bearer and also on external relata. |
| Relator type | A moment type that mediates two or more entities and can ground material relations. |
| Derived material relation | A material relation derived from an underlying relator. |
| Relator only | A relator modeled without separately introducing a derived material relation. |

### 04a-Relation

| Entry | Meaning |
| --- | --- |
| Formal relation | A domain relation that depends only on intrinsic properties of its relata. |
| Material relation | A domain relation grounded in a relator. |
| ComponentOf | A part-whole relation between a component and a functional complex. |
| MemberOf | A part-whole relation between a member and a collective. |
| SubCollectionOf | A part-whole relation between a subcollection and a collection. |
| SubQuantityOf | A part-whole relation between a subquantity and a quantity. |
| Containment | A non-standard spatial inclusion relation, used when ordinary part-whole stereotypes do not apply. |

### 04b-Association

| Entry | Meaning |
| --- | --- |
| Characterization | A fundamental association connecting a bearer to an intrinsic moment; at the individual level this corresponds to inherence. |
| Mediation | A fundamental association connecting a relator to the entities it mediates. |
| Derivation | A fundamental association connecting a material relation to the relator from which it is derived. |
| Structuration | A fundamental association connecting a quality to the value structure used to represent it. |
| Participation | A fundamental association connecting an object to an event in which it participates. |
| Creation / Termination | A fundamental association connecting events to objects or situations they create or terminate. |
| Manifestation | A fundamental association connecting an event to a mode or disposition it manifests. |
| BringsAbout | A fundamental association connecting an event to a situation it brings about. |
| Triggers | A fundamental association connecting a situation to an event it triggers. |

### 05-Perdurant

| Entry | Meaning |
| --- | --- |
| Atomic event type | A perdurant type whose instances are not decomposed into smaller event parts for the model's purpose. |
| Action | An intentional atomic event type. |
| Occurrence | A non-intentional atomic event type. |
| Complex event type | A perdurant type whose instances are composed of event parts. |
| Activity | An intentional complex event type. |
| Process | A non-intentional complex event type. |

### 06-Higher-order

| Entry | Meaning |
| --- | --- |
| Powertype | A higher-order type whose instances are subtypes of a base type. |
| Substantial powertype | A powertype whose instances are substantial types. |
| Moment powertype | A powertype whose instances are moment types. |
| Perdurant powertype | A powertype whose instances are perdurant types. |
| Other higher-order type | A higher-order type whose instances are types but that is not constrained as a powertype. |
