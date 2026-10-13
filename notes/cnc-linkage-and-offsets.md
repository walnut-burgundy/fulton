# Litt's rods, real obstructions, and planar cutter offsets

Original deductions for SUN FULTON-CNC-01. These supplement, rather than
replace, the [two worked inverse fibers](cnc-constraint-fibers.md).

## The recovered Litt source

Daniel Litt's 29-post thread starts at
[status 1291142806807941131](https://twitter.com/littmath/status/1291142806807941131),
published 2020-08-05. Its text and illustrations were recovered through the
[syndicated author thread](https://threadreaderapp.com/thread/1291142806807941131.html).
This is an informal thread, not a linkage theorem in a paper. Original
platform access was not independently authenticated. No illustrations are
rehosted here.

Posts 7–18 give two pinned unit rods and intersecting circles, including the
tangent case and quotient ℝ[y]/(y²). Posts 21–27 discuss length-tolerance
annuli and their different area scaling. Post 19, [status 1291143968080777217](https://twitter.com/littmath/status/1291143968080777217),
depicts five straight rods between fixed endpoints, with four interior
joints. Length values are not declared; equal unit lengths below are our
specialization. The thread does not calculate that chain's local scheme.

The two-rod source is the same branch-merger mechanism as Case A, with
different lengths. It supplies no separate verified example with obstruction
first appearing at order three or higher. The chain does, however, expose
a different distinction: real rigidity can coexist with a **reduced**
positive-dimensional algebraic scheme. That calculation is ours.

The word ball-and-socket in the thread must not conceal the dimension:
its displayed circle equations use a plane. We impose a planar mechanism
for the following calculation. A spatial version has different algebra.

## A fully extended chain

Take n positive rigid lengths length_i and fixed endpoints (0,0) and
(sum length_i,0). Let the i-th bar displacement be
(horizontal_i, transverse_i). Retain all equations

    horizontal_i² + transverse_i² = length_i²,
    sum horizontal_i = sum length_i,
    sum transverse_i = 0.

At the extended pose horizontal_i=length_i, transverse_i=0. The positive
horizontal branch is fixed locally: each length_i is nonzero, so the implicit
function theorem eliminates horizontal_i as
√(length_i²−transverse_i²). Eliminating transverse_n by the sum equation,
the remaining local scalar constraint begins with

    sum transverse_i² / length_i = 0,

up to a nonzero factor and terms of degree four or greater. No other branch
of a square root is silently discarded: this is a neighborhood of the
declared extended pose, where all horizontal_i remain positive.

This quadratic form is positive definite on sum transverse_i=0. Every
nonzero first-order transverse velocity is therefore obstructed at second
order over ℝ. The triangle inequality gives an independent finite check:
equality between endpoint distance and sum of rigid lengths forces all bars
to lie collinearly in the same direction. The real feasible set consists of
one pose, with no continuous nonconstant rigid motion.

Over a characteristic-zero algebraic field, the completed local ring is
formally equivalent to a nondegenerate quadratic hypersurface in n−1
transverse variables. One can successively remove higher-order terms by
formal coordinate changes because the quadratic form is invertible and
2 is a unit. Thus the local scheme has dimension n−2 and tangent dimension
n−1. For n=2, the equation is a scalar square: the doubled point returns.
For n≥3, the quadratic is squarefree, hence the completed ring, and therefore
the local ring, is reduced. For n=3 it splits into two conjugate branches
over ℂ; for n=5 it is a reduced three-dimensional quadric singularity after
formal coordinate change. The real-radical ideal of the sole real pose is
larger than the ordinary radical of this reduced scheme.

For three equal unit bars use interior joints (first_x,first_y),
(second_x,second_y) and endpoints (0,0),(3,0). The original ideal is

    (first_x² + first_y² − 1,
     (second_x−first_x)² + (second_y−first_y)² − 1,
     (3−second_x)² + second_y² − 1).

At (1,0,2,0) its Jacobian has rank two, and its tangent dimension is two.
The local quadratic obstruction is

    first_y² + (second_y−first_y)² + second_y²
    = 2 × (first_y² − first_y×second_y + second_y²).

It is positive definite over ℝ and squarefree over QQ. The exact experiment
checks the original global dimension, tangent rank and reduced quadratic
cone. Reducedness of the **local full chain scheme** uses the implicit-function
and formal-coordinate argument above; it is not falsely reported as a
Macaulay2 radical computation of the five-bar ideal.

For a spatial chain the same argument uses two transverse coordinates per
bar. Tangent dimension is 2(n−1), local scheme dimension 2n−3; even two
extended rods have a reduced quadratic cone over ℂ instead of a double
point. Planarity is material, not cosmetic.

**Gain:** a counterexample to “an isolated real pose plus extra Jacobian
kernel means nilpotents.” Higher-order real obstructions and ordinary local
algebra already describe it; no new Fulton invariant or CNC avoidance method
is established. This also prevents mistaking complex continuation branches
for physically usable motion.

## Length tolerance: a concrete finite version of Litt's idea

Declare two planar rods nominally length 1, anchors (0,0),(2,0), and an
independent symmetric **absolute length tolerance** ε>0 for each rod:

    1−ε ≤ distance(elbow,anchor_i) ≤ 1+ε,  i=1,2.

This is a geometric tolerance model, not a force/stiffness law. For small ε,
write elbow=(1+ξ,η), ξ=ε×u, η=√ε×v. Expanding each distance gives limiting
inequalities

    |u+v²/2| ≤ 1,   |−u+v²/2| ≤ 1,

equivalently |u|+v²/2 ≤ 1. The limiting area's integral is 8√2/3, so the
physical tolerance-locus area is

    (8√2/3) × ε^(3/2) + o(ε^(3/2)).

For a fixed transverse two-circle intersection the gradients are independent;
each small rectangle of length errors transforms with a nonzero Jacobian,
giving area proportional to ε². At anchor separation d∈(0,2), the two local
regions together have leading area 8ε²/(d√(1−d²/4)). This formula is not
uniform as d→2; the tangent scaling replaces it.

An exact bound, independent of asymptotic notation, follows by adding the
two upper squared-distance inequalities:

    ξ² + η² ≤ 2ε + ε²,
    |η| ≤ √(2ε+ε²).

Subtracting the squared-distance inequalities also gives |ξ| ≤ ε,
bounding the rescaled horizontal coordinate used in the area limit.

The vertical bound is attained at ξ=0 with both lengths 1+ε. This explicitly
defines the inequalities behind the square-root play. Formal nilpotents do
not supply this displacement bound. A measured compliance law, force/load
model, temperature and dynamic response would be additional physical inputs.

## Walker and Ghrist: checked attribution limits

[Kevin Walker's scanned thesis](https://canyon23.net/math/1985thesis.pdf)
has title *Configuration Spaces of Linkages*, Princeton BA, 23 April 1985.
The opening of §1 defines configurations by fixed edge lengths in the plane;
the preceding §0.2 describes fibered products. Its scan's separate warning
states a proof gap in Proposition 3.3 and points to Hausmann. The title,
warning and opening definitions were inspected; no assertion here uses
Proposition 3.3 or claims to repair it.

Ghrist's [official book page](https://www2.math.upenn.edu/~ghrist/notes.html)
identifies *Elementary Applied Topology*, edition 1.0 (2014), and chapter 1
as Manifolds. Direct retrieval of that page/chapter returned HTTP 403 in
this environment. The indexed publisher/author page was available, but the
book's exact Walker citation and the assertion that Walker “inspired chapter
1” were **not verified**. A mathematical resemblance or earlier conversation
does not establish that personal/historical attribution.

Litt's link to [Kapovich–Millson](https://www.math.ucdavis.edu/~kapovich/EPR/KM_2002.pdf)
was read at pp. 1051–1054. It distinguishes the original length-equation ideal
from the ideal of all polynomials vanishing on the real configuration set,
and notes its extra degenerate-triangle convention. Its universality results
are not an automatic license to prescribe arbitrary nilpotents for an actual
head mechanism. No universality theorem is needed for either main case.

## Planar offsets: a separate contribution

The [existing suspension note](../references/mikhail-gromov/suspension-response-geometry.md)
already derives the correct local normal-offset factor. Transfer it to a
regular planar boundary z(s) with Euclidean arc length, oriented unit tangent
T and unit normal N, using T′=κN, N′=−κT:

    offset(s,r)=z(s)+rN(s),
    ∂offset/∂s=(1−rκ)T,   ∂offset/∂r=N.

Thus 1−rκ=0 detects a **local focal singularity**. The radius r must have
the same length units as z; κ has inverse-length units. This is not a
determinant in an arbitrarily scaled measurement space. Normal lines from
distant portions can meet while both local factors are nonzero. Their
global collision is a different problem.

For z(t)=(t,t²/2), in consistent synthetic units,

    N(t)=(−t,1)/√(1+t²),   κ(t)=(1+t²)^(−3/2),
    offset(t,r)=(t−rt/√(1+t²), t²/2+r/√(1+t²)).

At r=5/4, the distinct parameters t=±3/4 both map to (0,41/32). At each,
1−rκ=9/25 ≠ 0. Their tangent directions differ, so this is a regular
self-intersection, not a local rank failure. Local focal points for this
radius occur instead at t=±√(r^(2/3)−1). At r=1,t=0 the expansions begin
offset_x=t³/2+O(t⁵), offset_y=1+3t⁴/8+O(t⁶); the vertex is more degenerate
than a generic semicubical offset cusp.

For cutter compensation the normal side, stock/void convention and tool
radius must be declared. A candidate center must obey real inequalities
such as distance(center,forbidden_stock) ≥ radius+margin, plus holder and
swept-volume constraints. The local focal test and pairwise offset test are
useful geometric diagnostics but do not prove those inequalities. The
existing source note supports the differential construction; this parabola
calculation is original, with exact rational checks in the experiment.

### A concrete residual-intersection connection

Fulton Example 9.2.6, pp. 164–165, considers a parametrized plane curve:
coordinate differences vanish automatically on the source diagonal.
Dividing them by its equation gives a residual scheme. Off that diagonal
it describes distinct-parameter double points; its diagonal intersection
is defined by the derivatives and records ramification.

For this offset use t=2u/(1−u²), speed=(1+u²)/(1−u²), |u|<1 for the
real positive-speed chart. Both coordinates are rational functions of u.
Invert all denominators before interpreting the equations. The executable
calculation divides the two cross-multiplied coordinate differences by
u−v and checks the pair u=1/3,v=−1/3. It remains in the residual scheme,
while u=v=1/3 does not. The divided difference on the diagonal equals the
corresponding numerator derivative times denominator minus numerator times
denominator derivative, so it detects local stationarity separately.
The executable verifies that the chosen pair lies in the denominator chart;
it does not enumerate an unsaturated global locus outside that chart.

The target diagonal in A²×A² is a regular codimension-two embedding;
the source diagonal in the product of the smooth parameter chart is a
Cartier divisor. These supply the local hypotheses of §9.2. We compute
the residual **scheme**, not a claimed global enumerative double-point
number. Saturating by u−v instead would answer a different question and
could remove isolated ramification data. No such saturation is used.

**Gain:** demonstrated distinct local and global offset failures, and a
source-justified residual construction separating mandatory diagonal
coincidences from informative ones. Divided differences and standard curve
geometry already give the same calculation. Applying it to actual planar
cutter compensation is plausible but untested; no speed or clearance
advantage from Fulton has been established.
