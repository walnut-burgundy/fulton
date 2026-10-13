# Two inverse-kinematic fibers: a doubled point and a free circle

SUN FULTON-CNC-01. Original worked mathematics for
[singularity-free-Gcode](https://github.com/isomorphisms/singularity-free-Gcode).
Source results, hypotheses and access limits are in the
[source map](../sources/fulton-intersection-theory/cnc-source-map.md).
Exact inputs and observed execution are in
[experiments](../sources/fulton-intersection-theory/experiments/README.md).
These models do not establish a machine-safe postprocessor.

## Case A: elbow positions for links of length 2 and 1

Fix the base at (0,0). Move the target along the positive horizontal line,
target(distance)=(distance,0), distance > 0. The moving elbow has coordinates
(elbow_x,elbow_y). Both lengths are exact; angles are unrestricted and links
have zero thickness. This describes inverse solutions for a commanded
endpoint, not a rigid arm whose endpoint is always pinned.

The original ideal over a characteristic-zero field is

    I_distance = (elbow_x² + elbow_y² − 4,
                  (elbow_x − distance)² + elbow_y² − 1).

Subtracting the equations gives

    elbow_x = (distance² + 3)/(2 × distance),
    elbow_y² = (9 − distance²) × (distance² − 1)/(4 × distance²).

Division is justified on distance ≠ 0. At distance=0 the original equations
differ by 3, so the fiber is empty even over ℂ. The excluded point is checked,
not discarded as inconvenient.

| Target | Elbow support over ℝ | Original fiber ring over ℝ |
| --- | --- | --- |
| 0 < distance < 1 | Empty | Reduced degree-two nonreal fiber |
| distance=1 | (2,0), folded collinear pose | ℝ[elbow_y]/(elbow_y²) |
| 1 < distance < 3 | Two elbow settings | Product of two copies of ℝ |
| distance=2 | (7/4, ±√15/4) | ℝ[elbow_y]/(elbow_y²−15/16) |
| distance=3 | (2,0), extended collinear pose | ℝ[elbow_y]/(elbow_y²) |
| distance=4 | Empty | ℝ[elbow_y]/(elbow_y²+105/64), isomorphic to ℂ as an ℝ-algebra |

Over ℂ, nonexceptional nonzero distances other than ±1,±3 have two reduced
geometric points. At a nonreal real-field fiber, one degree-two closed point
over ℝ becomes two points after extending the field; it is not an ℝ-valued
machine pose. Algebraic degree, scheme point count, and usable real count
must therefore have separate fields in any future receipt.

### What the limiting ideal retains

At distance=3 (and also 1), I=(elbow_x−2,elbow_y²). Its ordinary radical is
(elbow_x−2,elbow_y). Radicalization preserves the geometric support over an
algebraic closure but deliberately discards the class of elbow_y. In the
original quotient that class is nonzero and squares to zero. Basis {1,elbow_y}
gives local length two; the reduced quotient has length one.

The constraint Jacobian, with equations as rows, at the outer limit is

$$\begin{pmatrix}4&0\\-2&0\end{pmatrix}.$$

Its kernel is the vertical elbow direction, dimension one. The reduced
ideal's tangent space has dimension zero. Macaulay2 prints a transposed
Jacobian (variables as rows); the rank is the same. The original fiber has
dimension zero, so its one-dimensional tangent is not a finite freedom.

To see the obstruction without a rank threshold, put

    elbow_x = 2 + first_x × ε + second_x × ε²,
    elbow_y = first_y × ε + second_y × ε²,

and require the equations modulo ε³. The linear coefficients give first_x=0.
The quadratic coefficients give

    4 × second_x + first_y² = 0,
    −2 × second_x + first_y² = 0.

Hence first_y²=0, forcing first_y=0 over ℝ or ℂ. The dual-number direction
with ε²=0 does not extend to a nonzero second-order velocity. Conversely,
allowing the target to move makes two actual branches possible:

    distance = √(4−elbow_y²) + √(1−elbow_y²)
             = 3 − (3/4) × elbow_y² + O(elbow_y⁴).

The square roots are the positive horizontal projections near the outer
pose. For small positive target deficit Δ=3−distance,
elbow_y ≈ ±(2/√3)√Δ. This is a fold, with unbounded derivative against
distance at the endpoint. At the inner limit the difference of projections
gives distance=1+(1/4)elbow_y²+O(elbow_y⁴).

### Which intersection result is justified

Each circle is smooth at (2,0), the plane is nonsingular, and the two circles
have no shared component at distance=1 or 3. They intersect properly. In the
regular local ring of the first circle the second circle equation vanishes
to order two and is a non-zero-divisor. Thus the hypotheses of Fulton
Proposition 7.1(b) hold and **local quotient length 2 is intersection
multiplicity 2 here**. This is not a blanket formula for arbitrary ideals.

Use a local coordinate transverse=elbow_y on the smooth elbow circle. Its
completed local ring is k[[transverse]]. The inverse target subscheme is
J=(transverse²), since its other analytic factor is a unit. Its normal cone
in that circle has ring k[[transverse]]/(transverse²)[normal]. By contrast,
the tangent cone of the zero-dimensional fiber at its reduced support is
Spec k[transverse]/(transverse²). The former has an additional normal-cone
variable; the latter does not.

Fulton's §5.1 construction is represented in this local model by

    transverse² = scale × normal.

For scale ≠ 0, normal is determined. At scale=0 the base remains doubled.
The polynomial model is torsion-free over k[scale], hence flat; completion
gives the stated local version. This is deformation to a cone of an
embedding, not the target-distance family and not physical vibration.

Over B=k[distance,distance⁻¹], the actual target family is
B[elbow_y]/(elbow_y²−H(distance)), with H given above. Every element has a
unique form a+b×elbow_y. It is free of rank two, finite and proper over B.
Thus Fulton's conservation-of-number hypotheses are met for its fiber
cycles: algebraic degree remains two while real feasibility changes.

### Fair comparison

Analytic IK already gives cos(relative_elbow_angle)=(distance²−5)/4 and the
two signs of the angle. Its fold expansion gives the same square-root
conditioning. The usual two-joint endpoint Jacobian has determinant
2 × sin(relative_elbow_angle). A continuation solver tracking the sign and
checking real reachability reaches the same conclusion. Higher derivatives
produce the obstruction above. Derivative-based deflation replaces
transverse² by the additional condition 2×transverse=0 to isolate the
support for numerical solving, while multiplicity must be retained separately.

Fulton adds a justified intersection multiplicity, a cone-based account of
the merger, and a conservation statement with precise hypotheses. No
additional avoidance algorithm, faster solve, or clearance estimate is
established over analytic IK plus local algebra in this model.

## Case B: the repository's AC head

The CNC snapshot supplies an idealized **head**, rotation order Rz(C)Rx(A),
and symbolic tool length L. It supplies no calibrated numerical L, joint
limits, rotary pivot offsets, holder mesh, actual machine identity or
controller convention. We can verify the equations of this stated model;
we cannot call it measured machine kinematics. The exact executable sample
uses L=10 in arbitrary consistent length units.

Declare a fixed right-handed world frame, active rotations and column vectors.
The Cartesian head reference point is (axis_x,axis_y,axis_z); A rotates about
the intermediate X axis, followed by C about world Z. The initial tool axis
points along negative Z. The full frame rotation is Rz(C)Rx(A). Tool length
is measured from the coincident rotary reference point to the tip along this
axis. For this model, with no rotary offsets,

    direction = (−sinA × sinC, sinA × cosC, −cosA),
    tip = (axis_x,axis_y,axis_z) + L × direction.

These signs follow by multiplying (0,0,−L): Rx gives
(0,L×sinA,−L×cosA); Rz gives (−L×sinA×sinC,L×sinA×cosC,−L×cosA).
Checks: A=0 gives direction (0,0,−1); A=π/2,C=0 gives (0,1,0);
A=π/2,C=π/2 gives (−1,0,0). This resolves the old note's warning about
inconsistent thread formulas without claiming physical validation.

The commanded pose in this case is **tip plus oriented unit tool direction**.
Roll around that direction is unspecified. It has dimension five. A fully
specified SO(3) frame is a different target and removes the pole's C freedom.
An AC table rotates the workpiece; its inverse frame action and pivot
translations must be derived separately. The head formula is not a table formula.

### Original polynomial ideal

The smooth rotary carrier is

    Q = Spec k[sinA,cosA,sinC,cosC] /
             (sinA²+cosA²−1, sinC²+cosC²−1).

Together with the three Cartesian coordinates the configuration carrier
has dimension five. The direction target is the affine unit sphere
nx²+ny²+nz²=1, dimension two; it is not unconstrained affine three-space.
For commanded tip p and direction n, retain the ideal

    (sinA²+cosA²−1, sinC²+cosC²−1,
     −sinA×sinC−nx, sinA×cosC−ny, −cosA−nz,
     axis_x−L×sinA×sinC−px,
     axis_y+L×sinA×cosC−py,
     axis_z−L×cosA−pz).

No equation is first radicalized. Since translation is free and uniquely
recovered from p−L×n, eliminating Cartesian coordinates loses no fiber
structure. It says nothing about finite stroke limits.

### Pole versus nearby fiber

At n=(0,0,−1), cosA=1. The equations imply

    sinA×sinC=0, sinA×cosC=0,
    sinC²+cosC²=1.

Multiplying the first two relations by sinC and cosC and adding proves
sinA=0 **in the original quotient**. It is wrong to keep only sinA²=0 and
call the fiber doubled. At p=(0,0,0), L=10, the complete ideal is exactly

    (axis_x,axis_y,axis_z−10,sinA,cosA−1,sinC²+cosC²−1).

It is prime over ℝ and QQ and remains smooth and reduced over ℂ. Its
dimension is one. The real fiber is a circle of C settings, with angles
understood modulo 2π. Real joint-range limits could truncate that circle.
At the opposite pole cosA=−1 the same argument applies.

For a generic real direction away from the poles,

    cosA=−nz,
    sinA=±√(nx²+ny²),
    sinC=−nx/sinA, cosC=ny/sinA.

The two signed settings are equivalent by (A,C) ↔ (−A,C+π) as tool
directions, not necessarily as complete machine/holder configurations.
For n=(0,3/5,−4/5), the two solutions have sinA=±3/5, cosA=4/5,
sinC=0, cosC=±1 with matching signs. Each is reduced. Fiber dimension zero
equals the expected dimension 5−5; the pole has excess dimension one.
The configuration carrier itself remains smooth, as does its pole fiber.
The critical object is the tool-direction map.

### Differential and degeneracy scheme

Use angles in radians, or their globally defined tangent fields on the conics.
For direction alone its two angular derivative columns are

    direction_A = (−cosA×sinC, cosA×cosC, sinA),
    direction_C = (−sinA×cosC, −sinA×sinC, 0).

They are orthogonal with squared lengths 1 and sinA². Singular values for
the declared Euclidean direction metric are 1 and |sinA|. At the pole the
direction rank drops from two to one and full tip/direction rank from five
to four. For the full rotation frame, the independent angular velocities
have distinct axes, so the two-dimensional rotation map is immersive even
at A=0: losing roll in the target changes the problem.

The 2×2 minors of the ambient 3×2 matrix, together with carrier equations,
generate exactly (sinA). This is the **actual degeneracy scheme**.
For the intrinsic tangent-bundle map Q→sphere, the ranks are 2 and 2,
so rank ≤1 has expected codimension one, which holds. Q is smooth, hence
Cohen–Macaulay. Fulton Theorem 14.4(c) applies to its divisor cycle.
Both determinants of tangent bundles are trivial: Q has global conic
tangent frames, while T(sphere)⊕O ≅ O³ using its unit normal. Its Chern
class formula therefore gives class zero for this principal divisor.
The nonempty divisor remains detectable by its ideal.

If the target is mistakenly treated as affine three-space, the bundle ranks
are 2 and 3. Expected codimension becomes two, while the same actual
degeneracy scheme has codimension one. Identifying a Thom–Porteous class
with the actual fundamental cycle would then violate the hypotheses.

### Excess intersection, rather than nilpotent freedom

Pull back the pole point's codimension-two regular embedding into the sphere
along Q→sphere. Its inverse D is a regular codimension-one divisor in Q,
locally defined by sinA near cosA=1. Its normal line maps to the constant
two-dimensional normal space of the target point by

    1 ↦ (−sinC,cosC).

This injection has a global complement (cosC,sinC); the determinant of
these two columns is −1. Hence the quotient excess bundle E is a trivial
line bundle. Fulton's Theorem 6.3 gives

    refined pole pullback [Q] = c₁(E) ∩ [D] = 0 in A₀(D).

Also s(D,Q)=[D], since its normal line is trivial. These calculations
formalize the excess. A zero rational-equivalence class is not an empty
configuration set, a collision result, or a number of real inverse settings.
No finite local quotient length is assigned to this positive-dimensional fiber.

### Limits use the whole path family

Take a rationally parametrized meridian through the lower pole:

    n(h)=(0, 2h/(1+h²), −(1−h²)/(1+h²)).

Use the chart 1+h² ≠ 0. The executable ideal retains
inverse_denominator×(1+h²)−1 rather than multiplying denominators and
forgetting their possible complex zeros. For h ≠ 0 the fiber has
sinC=0, cosC=±1 and sinA×cosC=2h/(1+h²).

At h=0, the unsaturated family has the whole pole circle. Saturating its
total ideal by h computes the closure of the punctured family. Specializing
**after** that saturation gives exactly

    sinA=0, cosA=1, sinC=0, cosC²=1,

two reduced limiting points. The inverse-denominator variable becomes 1.
These operations neither replace the actual exceptional fiber by its radical
nor remove valid pole settings from the machine model. They answer the
different question: which settings can a lift of this particular nonzero
meridian approach? The reduced limit closure is finite free of rank two over
the parameter chart; the unsaturated family is not flat at h=0.

This is precisely the distinction made by Fulton §11.1. The calculation
over QQ commutes with base extension to ℂ, where the chapter's ground-field
hypothesis holds. Real feasibility is then checked on the two real points.

An orthogonal meridian has limiting settings cosC=0, sinC=±1. Its limit
ideal and the first meridian's limit ideal sum to the unit ideal. A continuous
tool-direction path that arrives along one and leaves along the other, with
the pole occurring at only one time, therefore has no continuous exact
joint lift. Choosing the sign of A does not repair the disjoint limits.
Holding the tip and direction at the pole for an interval allows continuous
C rotation in this ideal model. Finite rotary speed/acceleration bounds
require a sufficiently long dwell and an admissible schedule; collision,
holder orientation and stroke limits require additional checks.

This is a bounded diagnostic, not a permission to insert a dwell in a cut.
Algebraic exceptional freedom is not enough to certify a time-parametrized
machine motion.

### Fair comparison

Analytic atan2/arccos IK, branch continuation preserving the approach meridian,
and the explicit singular values can detect the same limiting settings and
conditioning. A second-order or predictor-corrector method can carry the
path-dependent information too. Fulton contributes an exact separation
between full exceptional fiber, normal/excess data, and punctured-family
limit. No superiority over competent analytic continuation is demonstrated.
For this model an exact limiting-setting compatibility diagnostic is justified;
general path lifting, collision-safe avoidance, and performance gains remain
untested.

## Physical inequalities must stay separate

For a declared obstacle and full tool/holder geometry, let clearance(q) be
their minimum signed separation with a declared sign convention. If an actual
displacement bound ||disturbance(t)|| ≤ bound(t) and a corresponding geometric
Lipschitz bound K are established, nominal clearance(q(t)) > K×bound(t)+margin
can support a conservative separation claim. Neither case has supplied those
measurements, bounds, swept volumes or time laws. A formal ε with ε²=0 is
not bound(t). No clearance or gouge-avoidance claim is made here.
