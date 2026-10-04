# Persi W. Diaconis — *Group Representations in Probability and Statistics*

## Citation

Persi W. Diaconis, *Group Representations in Probability and Statistics*, Institute of Mathematical Statistics Lecture Notes—Monograph Series, vol. 11, Institute of Mathematical Statistics, Hayward, California, 1988, vi + 198 pp.

- Institute of Mathematical Statistics series page: https://imstat.org/journals-and-publications/lecture-notes-monograph-series/
- Stanford Statistics technical-report record: https://statistics.stanford.edu/technical-reports/group-representations-probability-and-statistics
- Stanford Digital Repository record linked by the department: https://purl.stanford.edu/ps020md6873
- Google Books bibliographic record: https://books.google.com/books?id=LKvvAAAAMAAJ
- ISBN-10: 0-940600-14-5
- ISBN-13: 978-0-940600-14-0
- Library of Congress Catalog Card Number: 88-82779

The Stanford Statistics record is dated April 1987 and identifies the work as technical report EFS NSF 269. Treat that as an authoritative earlier report/version associated with the project; do not silently assume that it is byte-for-byte identical to the 1988 IMS monograph.

## Why this source is here

This book makes the statistics connection explicit rather than treating representation theory only as internal algebra.

Its path is unusually close to the questions driving this repository:

1. representations, characters, Fourier inversion, and products of groups;
2. random walks on groups, including random transpositions and the symmetric group;
3. permutation data and partially ranked data;
4. metrics on groups and homogeneous spaces;
5. representation theory of `S_n`;
6. spectral analysis and analysis of variance;
7. statistical models, including models for permutations and partially ranked data.

That makes it a primary source for issue #1, “Explore regression on the symmetric group.” In particular, Diaconis treats ordinary statistical procedures through group actions, discusses permutation data in representation-theoretic coordinates, and develops models whose parameters live in representation-derived pieces. This is a much better starting point than inventing a coordinate encoding of permutations and calling the result group regression.

Diaconis also explicitly recommends Serre’s *Linear Representations of Finite Groups* as a compact source to learn alongside the foundational representation material, so the Serre dossier belongs next to this one.

## Redistribution status

**Link only. Do not mirror the book.**

The 1988 front matter gives copyright to the **Institute of Mathematical Statistics** and states that all rights are reserved. The existence of readable copies or an institutional repository record does not by itself grant this repository permission to republish the book.

The Stanford technical-report record and Stanford Digital Repository are legitimate places to point readers. If an explicit redistribution license is later found for a particular Stanford-hosted file, record the exact file, version, and license before adding any local copy. Do not use third-party scan sites as provenance.

## Credit and thanks

Deep thanks to **Persi W. Diaconis** for making finite-group representation theory answer concrete questions about shuffling, ranking, permutation data, spectral analysis, and statistical models, and to the **Institute of Mathematical Statistics** for publishing the monograph.

The book’s own front matter and preface make a substantial network of contributors visible. Preserve that network rather than collapsing the work to a single author name:

- **Shanti S. Gupta** — series editor for the IMS Lecture Notes—Monograph Series;
- **Jessica Utts** and **Jose L. Gonzalez** — identified in the production front matter as managing the series through the IMS Business Office;
- **Jim Fill**, **Arunas Rudvalis**, and **Hansmartin Zeuner** — singled out by Diaconis as particularly helpful critics/proofreaders;
- **Douglas Critchlow**, **Peter Matthews**, **Andy Greenhalgh**, and **Dan Rockmore** — students whose thesis work and ideas enriched the material;
- **Peter Fortini**, **Arthur Silverberg**, and **Joe Verducci** — authors of unpublished thesis work Diaconis says he was able to quote;
- **André Broder** and **Jim Reeds** — credited for sharing card-shuffling ideas appearing in the notes;
- **Bradley Efron** and **Charles Stein** — explicitly credited in the preface for helping orient the statistical side of the work;
- the unnamed graduate students and faculty who attended the Harvard, Stanford, Ohio State, and St. Flour versions of the lectures and served as critics and proofreaders.

The introductory bibliography also deliberately points readers toward **Jean-Pierre Serre**, **Gordon James**, **I. N. Herstein**, **Joseph Rotman**, **Michio Suzuki**, **Charles W. Curtis**, **Irving Reiner**, **Dudley E. Littlewood**, and **Adalbert Kerber**. Those names are part of the intellectual trail being followed here, not a claim that they contributed to this repository.

A later exhaustive citation inventory should be generated from the monograph’s own reference section rather than reconstructed from search-engine snippets. The repository’s credit rule requires keeping “cited by the source” distinct from “helped produce the source.”

## Pass 2 target

The other Fulton thread can do the source-level summary. It should keep the statistical arc visible rather than summarizing this as a generic representation-theory text:

permutation/ranking data → group action → invariant metric or representation decomposition → spectral/ANOVA components → model family → inference/computation.

It should also flag every place where Diaconis explicitly leaves a theory, algorithm, or statistical construction open for development, since those are likely to intersect the regression-on-`S_n` issue.