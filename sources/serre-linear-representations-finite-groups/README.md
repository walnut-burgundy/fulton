# Jean-Pierre Serre — *Linear Representations of Finite Groups*

## Citation

Jean-Pierre Serre, *Linear Representations of Finite Groups*, translated from the second French edition by Leonard L. Scott, Graduate Texts in Mathematics 42, Springer-Verlag, New York–Heidelberg, 1977.

- DOI: https://doi.org/10.1007/978-1-4684-9458-7
- Springer book page: https://link.springer.com/book/10.1007/978-1-4684-9458-7
- Hardcover ISBN: 978-0-387-90190-9
- eBook ISBN: 978-1-4684-9458-7
- Original French work: *Représentations linéaires des groupes finis*, 2nd ed., Hermann, Paris, 1971
- English translation: **Leonard L. Scott**

## Why this source is here

Serre is the compact finite-group representation-theory backbone behind several of the more specialized symmetric-group sources in this repository.

The book has three distinct layers:

1. representations and characters, beginning from elementary group theory and linear algebra;
2. characteristic-zero representation theory, including the group algebra, induced representations, Mackey’s criterion, Artin’s theorem, Brauer’s theorem, and rationality questions;
3. an introduction to Brauer theory and passage between characteristic zero and characteristic `p`.

For this repository, the first part is the immediate bridge. Diaconis explicitly recommends Serre while introducing the representation-theoretic tools used in *Group Representations in Probability and Statistics*. The later parts matter because they show which constructions are genuinely features of finite-group representation theory rather than accidents of `S_n` notation.

This source is also useful as a check against over-specializing too early: Young tableaux and Specht modules give unusually concrete access to symmetric-group representations, while Serre keeps the general finite-group structure visible underneath them.

## Redistribution status

**Link only. Do not mirror the book.**

Springer identifies the English edition as a copyrighted 1977 work. The published edition is not under a permissive redistribution license. Search results may expose scans hosted by universities or third parties, but discoverability is not permission to republish.

Use the Springer/DOI record as the canonical public reference unless a separately licensed edition is found. If a lawful open copy is later located, record the exact edition and license before adding it.

## Credit and thanks

Deep thanks to **Jean-Pierre Serre** for the book and to **Leonard L. Scott** for the English translation.

Serre’s own preface preserves several important pieces of provenance that should remain visible:

- **Gaston Berthier** and **Josiane Serre** are thanked for authorizing Serre to reproduce Part I, which had originally appeared as an appendix to their work on quantum chemistry;
- **Yves Balasko** is thanked for drafting an initial version of Part II from lecture notes;
- **Alexandre Grothendieck** is thanked for authorizing reproduction of the material that became Part III from its earlier 1965–66 form.

The mathematical ancestry named explicitly by the book includes **Ferdinand Georg Frobenius**, **Emil Artin**, **Richard Brauer**, **Paul Fong**, and **Richard Swan**, whose results organize major parts of the text. These are attributions to the mathematical results used and explained by the book, not claims of participation in this repository.

Credit is also due to **Springer-Verlag** for the English edition and to **Hermann** for the second French edition from which it was translated.

A later exhaustive citation inventory should be taken from the book’s own bibliographies. As elsewhere in this repository, distinguish carefully among author, translator, people thanked in the preface, originators of named theorems, and works merely cited.

## Pass 2 target

The other Fulton thread can write the source-level summary. It should preserve the book’s three-part change in level rather than flattening it into a list of theorems:

representation → character → group algebra/module structure → induction and character arithmetic → rationality → modular/Brauer theory.

For the symmetric-group project, mark which statements specialize especially cleanly to `S_n` and which are general finite-group facts that later tableau machinery is implementing concretely.