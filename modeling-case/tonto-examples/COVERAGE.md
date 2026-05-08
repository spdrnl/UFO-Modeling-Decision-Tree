# Tonto EBNF Coverage Matrix

Status values:

- Covered: executable example exists.
- Partial: example exists, but coverage is narrow or should be validator-confirmed.
- Missing: no executable example yet.
- Skipped: intentionally not modeled as executable Tonto.

## Packages and Imports

| Construct | Status | Example file | Notes |
|---|---|---|---|
| `package` | Covered | all `.tonto` files | Regular package declarations. |
| `global package` | Covered | `X-5-language-coverage.tonto` | Compact language-coverage example. |
| `import` | Covered | `X-4-property-refinements.tonto` | Plain import. |
| `import ... as ...` | Covered | `X-5-language-coverage.tonto` | Alias import. |

## Class Declarations

| Construct | Status | Example file | Notes |
|---|---|---|---|
| `class` | Covered | `X-5-language-coverage.tonto` | Generic class coverage only. |
| `kind`, `collective`, `quantity` | Covered | `2-substantial-types.tonto`, `4-relations-and-associations.tonto` | Core substantials. |
| `quality`, `mode`, `extrinsicMode`, `relator` | Covered | `3-moment-types.tonto`, `X-3-refined-class-distinctions.tonto` | Moment categories. |
| `intrinsicMode` | Covered | `X-3-refined-class-distinctions.tonto`, `X-5-language-coverage.tonto` | Intrinsic mode examples. |
| `event`, `situation` | Covered | `5-perdurants-and-events.tonto`, `1-individuals.tonto` | `process` still missing. |
| `process` | Covered | `5-perdurants-and-events.tonto`, `X-5-language-coverage.tonto` | Process examples. |
| `category`, `mixin`, `phaseMixin`, `roleMixin` | Covered | `2-substantial-types.tonto` | Non-sortals. |
| `historicalRoleMixin` | Covered | `X-3-refined-class-distinctions.tonto` | Refined class distinction. |
| `subkind`, `phase`, `role`, `historicalRole` | Covered | `2-substantial-types.tonto`, `X-3-refined-class-distinctions.tonto` | Sortal specializations. |
| `type`, `powertype` | Covered | `6-2-other-higher-order-types.tonto`, `6-1-powertypes.tonto` | Higher-order types. |
| `of ...` ontological natures | Covered | `X-5-language-coverage.tonto` | Covers all nature literals. |
| `(instanceOf ...)` | Covered | `6-1-powertypes.tonto` | Higher-order examples. |
| Multiple `specializes` targets | Covered | `X-5-language-coverage.tonto` | Compact language-coverage example. |
| `label` and `description` blocks | Covered | `X-5-language-coverage.tonto` | Class and datatype examples. |

## Datatypes, Enums, and Attributes

| Construct | Status | Example file | Notes |
|---|---|---|---|
| `datatype` | Covered | `2b-abstract-types.tonto`, `3-moment-types.tonto` | Simple datatype. |
| `datatype of abstract-individuals` | Covered | `X-5-language-coverage.tonto` | Abstract datatype example. |
| Datatype attributes | Covered | `X-5-language-coverage.tonto` | Attribute examples. |
| `enum` | Covered | `2b-abstract-types.tonto` | Simple enum. |
| Datatype/enum specialization | Covered | `X-5-language-coverage.tonto` | Datatype and enum specialization. |
| `attribute type reference` | Covered | `3-moment-types.tonto`, `X-5-language-coverage.tonto` | Attribute references. |
| Attribute cardinalities | Covered | `X-5-language-coverage.tonto` | Explicit `[1]`, `[0..1]`, `[1..*]`, `[*]`. |
| Attribute meta-attributes | Covered | `X-5-language-coverage.tonto` | `ordered`, `const`, `derived`, and combined form. |

## Relations

| Construct | Status | Example file | Notes |
|---|---|---|---|
| External relation syntax | Covered | many files | Main relation style. |
| Internal relation syntax | Covered | `X-5-language-coverage.tonto` | Executable internal relation. |
| Named relations | Covered | many files | Relation names used. |
| Unnamed relations | Covered | `X-5-language-coverage.tonto` | Compact relation example. |
| Association `--` | Covered | many files | Standard relation. |
| Aggregation `<>--` | Covered | `4-relations-and-associations.tonto` | Part-whole examples. |
| Composition `<o>--` | Covered | `X-5-language-coverage.tonto` | Composition connector. |
| Inverted connectors `--<>`, `--<o>` | Covered | `X-5-language-coverage.tonto` | Inverted connector examples. |
| Relation cardinalities | Covered | many files | Several forms used. |
| End names | Covered | `X-4-property-refinements.tonto` | `sinks`, `industrialSinks`. |
| Relation-end meta-attributes | Covered | `X-4-property-refinements.tonto` | `ordered`, `const`, `derived`. |
| Relation specialization | Covered | `X-2-relation-meta-properties.tonto` | `founded` specializes `isAffiliatedWith`. |
| `inverseOf` | Partial | `X-2-relation-meta-properties.tonto` | Needs validator confirmation. |
| `subsets`, `redefines` | Partial | `X-4-property-refinements.tonto` | Executable examples added; qualified relation-end references need validator confirmation. |

## Relation Stereotypes

| Construct | Status | Example file | Notes |
|---|---|---|---|
| `formal`, `material`, `derivation` | Covered | `4-relations-and-associations.tonto` | Domain relations. |
| `comparative` | Covered | `X-2-relation-meta-properties.tonto` | Comparative relation. |
| `characterization`, `mediation`, `externalDependence` | Covered | `3-moment-types.tonto`, `X-3-refined-class-distinctions.tonto` | Fundamental relations. |
| `inherence`, `value` | Covered | `X-3-refined-class-distinctions.tonto`, `X-5-language-coverage.tonto` | Inherence and value examples. |
| `componentOf`, `memberOf`, `subCollectionOf`, `subQuantityOf` | Covered | `4-relations-and-associations.tonto` | Part-whole. |
| `instantiation` | Covered | `6-1-powertypes.tonto` | Higher-order example. |
| `participation` | Covered | `4-relations-and-associations.tonto` | Event participation. |
| `participational` | Covered | `5-perdurants-and-events.tonto` | Event participant relation. |
| `historicalDependence` | Covered | `X-3-refined-class-distinctions.tonto` | Historical dependence examples. |
| `creation`, `termination`, `manifestation`, `bringsAbout`, `triggers` | Covered | `5-perdurants-and-events.tonto` | Event/situation relation examples. |
| `composition`, `aggregation` | Covered | `X-5-language-coverage.tonto` | Stereotype and connector examples. |
| `constitution` | Covered | `X-5-language-coverage.tonto` | Constitution example. |
| Custom stereotype | Covered | `4-relations-and-associations.tonto` | `@containment`. |

## Generalization Sets

| Construct | Status | Example file | Notes |
|---|---|---|---|
| Full `genset` syntax | Covered | `X-1-generalization-sets.tonto` | Block form. |
| Short `genset ... where ... specializes ...` | Covered | `X-1-generalization-sets.tonto` | Short form. |
| `disjoint`, `complete` | Covered | `X-1-generalization-sets.tonto` | Prefix form. |
| `categorizer` | Covered | `X-1-generalization-sets.tonto` | Categorizer example. |
| Relation generalization sets | Partial | `X-2-relation-meta-properties.tonto` | Executable example added; relation references need validator confirmation. |
