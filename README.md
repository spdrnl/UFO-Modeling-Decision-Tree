UFO Modeling Decision Tree
==========================
The UFO Modeling Decision Tree is step-by-step guide designed to help novice modelers navigate the Unified Foundational Ontology (UFO). This project provides a structured path to help you decide which UFO entity best represents a concept in your domain, using a series of intuitive questions.

## Project goals
The primary aim is to provide a clear overview of the different UFO entities, helping to get a "feel" for the framework without getting lost in formal logic. While the project was born from a learning journey, it has been refined to reflect the core pillars of UFO-A (Structural) and UFO-B (Events/Perdurants).

After you get a "feel", reading official UFO documentation should be more straightforward. It is recommended to do this, since the tree is a practical guide and not meant to be a replacement for the official documentation.

<img src="decision-tree/png/00-Start.png" alt="UFO Decision Tree Preview" style="width:50%; height:auto;display: block;">

## Key Characteristics
To make modeling as efficient as possible, this decision tree follows a few design principles:

- Type-Individual Mirroring: There is a symmetry between the Universal (Type) tree and the Individual (Instance) tree. This ensures that the logic you use to define a category (e.g., "Person") is the same logic you use to classify a specific fact (e.g., "John").
- Referential Consistency: To reduce complexity, the Individual tree acts as a "mirror." For well-understood structures like Part-Whole relations, the Individual tree refers you back to the Type tree's laws rather than duplicating the entire sub-tree.
- Module Integration: The flow seamlessly bridges structural categories (UFO-A) with dynamic event mereology (UFO-B).
- Visual Guidance: Consistent color-coding helps you stay oriented:

    - Green: Substantial Types (Objects, Kinds)
    - Orange: Moment Types (Properties, Relators)
    - Blue: Perdurant Types (Events, Processes)
    - Purple: Fundamental Associations (Characterization, Mediation, etc.)
    - Yellow: Part-Whole Relations (ComponentOf, MemberOf, etc.)
    - Light gray: Abstract types
    - Darker gray: Individuals
    - White: Decision tree nodes
- Occurrence Terminology: "Occurrence" is used for non-intentional atomic events to create clearer distinction from Actions. UFO uses "Event" generically
- Situation: Includes situation individuals from recent UFO extensions, representing states of affairs that trigger or result from events.

## Getting Started
There are several ways to get started:
- Start browsing the decision tree.
- Read an overview of UFO A and B in the guideline document.
- Work through the modeling case provided with its textual Tonto UFO models.

### Start browsing the decision tree
A PNG rendering of the tree is provided in the `decision-tree/png` folder.
1. Start here: Open `00-Start.png` to classify your term as Individual or Universal
2. For Types: Follow the Universal branch through Substantial, Moment, or Perdurant trees
3. For Instances: Open `01-Individual.png` to navigate instance-level entities and relations
4. Examples provided: Each decision node includes concrete examples to guide you

#### A small example: Modeling "John's Marriage to Mary"

As a Type (Universal):

- Individual or Universal? → Universal
- Unary or Binary? → Unary (Marriage is an entity)
- 1st-order or Higher? → 1st-order
- Endurant or Perdurant? → Endurant
- Independent? → No (depends on people involved)
- Intrinsic or Relator? → Relator (mediates relationship)


→ Result: Relator type

As an Instance (Individual):

- Individual or Universal? → Individual
- Unary or Binary? → Unary (this specific marriage)
- Endurant/Perdurant/Situation? → Endurant
- Substantial or Moment? → Moment

  → Result: Moment individual (specifically: a relator individual)

### Read an overview of UFO A and B in the guideline document
The guideline document is a textual introductionary overview of UFO-A and B. It provides background information and definitions that accompany the decision tree.

### Work through the modeling case
The modeling case includes a Tonto UFO model that reflects the fictional "Sunrise Breakfast Place" run by John and Mary. The modeling case can be found in the `modeling-case` folder.

## Theoretical Liberties and Streamlining
To keep the tree accessible for rapid modeling, some strategic "corner-cutting" was applied where a formal distinction might cause "decision fatigue" for beginners:

- Participation Placement: Placed in the Relational tree to emphasize its role as a link between objects and events.
- Mode/Disposition Grouping: Combined into a single node for a smoother entry point.
- Abstract Simplification: Using "Fixed value space" as a practical rule of thumb to distinguish between Datatypes and Enumerations.
- Domain Relation: Used as an umbrella term for both Formal and Material relations to match common modeling practice. These relations are about the domain that is modeled.

In the guideline document there is a more elaborate explanation of the different parts of the tree that provide a deeper understanding.

## Learn More
- [Official UFO Documentation](https://nemo.inf.ufes.br/projetos/ufo/)
- [OntoUML Documentation](https://ontouml.readthedocs.io/)
- [UFO 2022 Paper](https://philpapers.org/archive/PORUUF.pdf)

## Rendering
For rendering the mmdc mermaid cli tool is used. See render.sh for more information.

## Dependencies
The Mermaid CLI mmdc tool is required for rendering.

## Issues
Preferably the tree should be rendered as plain SVG and be openable in Inkscape. This is not working yet.

## Contributing
Contributions are welcome! Please submit a pull request with your changes.

## License

This project is licensed under the [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/).

You may:
- Share — copy and redistribute the material in any medium or format.
- Adapt — remix, transform, and build upon the material.

Under the following terms:
- Attribution — appropriate credit must be given, a link to the license must be provided, and changes must be indicated.
- NonCommercial — the material may not be used for commercial purposes, including paid trainings, commercial consulting, or commercial publications, without separate permission.
- ShareAlike — if the material is remixed, transformed, or built upon, the contributions must be distributed under the same license.

This project is intended to remain a shared, non-commercial learning resource. Improvements are encouraged through pull requests to this repository.

If commercial use is desired, request separate permission from the maintainer.