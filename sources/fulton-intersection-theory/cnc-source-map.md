# Intersection theory: source-to-CNC questions

SUN FULTON-CNC-01, 2026-10-13 UTC. These are original applications, not
claims that Fulton studied CNC machines. Read the [worked models](../../notes/cnc-constraint-fibers.md)
before interpreting a class as machine information.

## Source access and edition

William Fulton, *Intersection Theory*, second edition, Springer, 1998,
[DOI](https://doi.org/10.1007/978-1-4612-1700-8).
The publisher's chapter numbers in DOI suffixes are **one greater** than the
printed chapter numbers because the introduction has its own entry.

Publisher summaries and the [front matter](https://link.springer.com/content/pdf/bfm:978-1-4612-1700-8/1)
were read. Full publisher chapters require subscription access here. Actual
second-edition text was also consulted in the openly served OCR/scan at
`djvu.online/file/8KbyCnh9POwWS`; its distribution permission was not established.
It is an access observation, not a redistribution recommendation. No book,
page image, or copied passage is committed. For critical formulas the scan
was checked visually: pp. 86–87, 102–103, 120–121, 180–181, 196–197,
254–255. Section numbering below follows the printed pages, not PDF indices.
Other anchors are identified by actual OCR and publisher summaries; they
must not be described as a complete proof audit.

## Retained questions

| Source anchor | Mathematics and hypotheses | Machine object and calculation | Question answered / conclusion |
| --- | --- | --- | --- |
| [Ch. 4](https://link.springer.com/chapter/10.1007/978-1-4612-1700-8_5), §4.2, pp. 73–74 | Closed immersion with ideal J: normal cone has algebra ⊕ Jⁿ/Jⁿ⁺¹. For a regular embedding it is the normal bundle and its Segre class is inverse Chern class capped with the subscheme cycle. | Arm target circle pulled back to the elbow circle; pole point pulled back to the rotary carrier. | The arm cone has a nonreduced base; the pole cone is a line bundle over a reduced circle. A tangent cone at the support point is a different object. |
| [Ch. 5](https://link.springer.com/chapter/10.1007/978-1-4612-1700-8_6), §5.1, pp. 86–88; §5.2, pp. 89–90 | Deformation construction for a closed subscheme; the open blow-up family is flat and specializes to its normal cone. Specialization then acts on cycles. | Local arm chart J=(transverse²): transverse²=scale × normal is an explicit Rees-algebra chart. | Makes the doubled intersection visible in a flat algebraic model. The parameter is not elapsed machining time or an elastic modulus. |
| [Ch. 6](https://link.springer.com/chapter/10.1007/978-1-4612-1700-8_7), §6.3, Theorem 6.3, p. 102 | Cartesian square; original and pulled-back embeddings regular, of codimensions d and d′. The quotient of pulled-back normal bundle by the smaller normal bundle must be a vector bundle E, rank d−d′. Refined pullback gains c_top(E). | Pole in the direction sphere: d=2; its inverse circle in the two-rotary carrier: d′=1. E has rank one and is explicitly trivial. | Positive-dimensional freedom is an excess intersection; its refined zero-cycle class is zero here. That class neither empties the fiber nor enumerates usable settings. |
| [Ch. 7](https://link.springer.com/chapter/10.1007/978-1-4612-1700-8_8), §7.1, Definition/Proposition 7.1, pp. 120–121; §7.2, p. 126 | Proper intersection component; one embedding regular. Quotient length equals intersection multiplicity when the pulled-back equations form a regular sequence (in particular, the relevant local ring is Cohen–Macaulay). | Two smooth plane circles with an isolated intersection. The local equation on one circle has order two. | Justifies multiplicity 2 at each collinear limit. Length cannot simply be used for every arbitrary constraint ideal. |
| [Ch. 9](https://link.springer.com/chapter/10.1007/978-1-4612-1700-8_10), §9.2, Theorem 9.2, pp. 161–162; Example 9.2.6, pp. 164–165 | Pull back a regular embedding, with a chosen Cartier divisor inside its inverse image. Divide local equations by the divisor equation to define the residual scheme. | For a parametrized planar offset, pull back the target diagonal and divide both coordinate differences by u−v on the denominator chart. | Off the diagonal this records distinct-parameter coincidences; on it, derivatives record ramification. Exact crossing retained, automatic same-parameter coincidence removed. |
| [Ch. 10](https://link.springer.com/chapter/10.1007/978-1-4612-1700-8_11), §10.2, Proposition 10.2, pp. 180–181 | Proper family over the regular parameter base of §10.1; a cycle of the base dimension yields zero-cycle classes of constant degree. Theorem 10.2 adds regular-embedding/flatness hypotheses for intersection families. | Arm family over distance ≠ 0 is finite free of rank two, hence finite, proper and flat. | Two is the conserved **algebraic degree**, including nonreal solutions. It is not a conserved count of real usable poses. No conservation claim is made for the nonsaturated pole family. |
| [Ch. 11](https://link.springer.com/chapter/10.1007/978-1-4612-1700-8_12), §11.1, definition and Proposition 11.1, pp. 196–197 | Algebraically closed ground field; smooth parameter curve with distinguished point. Close the punctured total family, then take its special fiber. Proposition 11.1 concerns rational equivalence of the resulting cycles. | Rational meridian through the pole; saturate the total ideal by the parameter before specializing. QQ calculations are base-changed to ℂ for this source setting. | Only two settings are limits, although the entire special fiber is a circle. A vertical component is discarded for the limit calculation, not declared mechanically invalid. |
| [Ch. 14](https://link.springer.com/chapter/10.1007/978-1-4612-1700-8_15), §14.4, Theorem 14.4(a–c), pp. 254–255 | Bundle map of ranks e,f on a pure-dimensional scheme. Minors define D_k; expected codimension is (e−k)(f−k). Equality with its fundamental scheme cycle requires expected codimension and Cohen–Macaulayness (or the stated depth condition). | Intrinsic derivative from a 2D rotary carrier to the 2D sphere: codimension-one divisor sin(A)=0. Ambient 3×2 derivative has the same minors locus but fails its codimension-two expectation. | The intrinsic degeneracy class is zero in this affine model while the divisor is nonempty. Use the actual ideal for a diagnostic. |

For Theorem 14.4 the pushed-forward class is
det(c_(f−k+j−i)(F−E)) for 1 ≤ i,j ≤ e−k, capped with [X].
This does not determine D_k as a scheme.

## Investigated but not promoted

Chapter 9, §9.1 pp. 153–159 and §9.2 pp. 160–164, treats contributions
supported on a selected intersection component and residual contributions.
The publisher's chapter summary and the actual §9.2 text were inspected.
Theorem 9.2 starts with a selected Cartier divisor; arbitrary selected
subschemes require the blow-up construction. Neither main inverse case needs
a residual formula: the pole is the whole fiber and the arm intersection is
proper. Example 9.2.6 is retained separately for the offset double-point
calculation. Parameter saturation in Case B is **not** silently equated with
Fulton's residual-intersection theorem.

Sections 11.2–11.3, pp. 198–204, concern characteristic deformation sections
and distinguished varieties. Their source text was inspected as a research
lead. The elementary meridian calculation already determines the limits;
no new higher-order deformation invariant is asserted. Segre computations
beyond the two explicit local cones, residual algorithms, and global
enumerative compactifications remain untested.

## Algebra companions actually used

The current [Eisenbud–Harris repository](https://github.com/walnut-burgundy/Eisenbud-Harris/tree/b3a22b6555c658ab5c4b39a253a2c36a952dd7a4)
was read, especially its nonreduced-geometry and worked-algebra notes.
They are repository exposition, not a substitute for the books.
Eisenbud–Harris, [*The Geometry of Schemes*](https://doi.org/10.1007/b97680),
§II.3.1 (Example II-9, p. 58), §II.3.4 (pp. 70–79), and §V.3.1
(pp. 230–231), supplies the double-point/family and differential language;
actual text was consulted in the institutional-hosted PDF at
`webhomes.maths.ed.ac.uk/~v1ranick/papers/eisenbudharris.pdf`.
No redistribution permission is inferred. Its printed pagination differs
from the PDF index; see the section-level access record in the experiment README.

Smith–Sturmfels, [*Macaulay 2 and the Geometry of Schemes*](https://arxiv.org/abs/math/0003033),
Question 1's solution explicitly relates distinguished opens to saturation.
The [Stacks intersection-theory introduction](https://stacks.math.columbia.edu/tag/0AZ7)
independently distinguishes Tor-defined intersection multiplicity from
quotient length. The calculations below also prove the required local facts
directly; no unverified textbook theorem is needed to infer real feasibility.
