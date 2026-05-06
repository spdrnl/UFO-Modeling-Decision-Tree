# UFO / OntoUML / Tonto modeling instructions

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
