# From Gromov's curvature geometry to a suspension response map

Date: 2026-09-11.

**Status: original application/synthesis note. This is not a result about a calibrated truck, a theorem attributed to Gromov about suspension, or a new representation-theoretic conclusion.**

The [existing reading guide](sign-and-geometric-meaning-of-curvature.md) is the source-level companion. This application is kept beside it so the source and our deductions remain distinguishable.

## Sources and cross-posts

[G] M. Gromov, *Sign and Geometric Meaning of Curvature*, Rendiconti del Seminario Matematico e Fisico di Milano 61 (1991), 9–123. [Official author page](https://www.ihes.fr/~gromov/expository/34/); [official PDF](https://www.ihes.fr/~gromov/wp-content/uploads/2018/08/177.pdf). The source anchors below follow the existing guide and ASE source record; this cross-post is not a new page-by-page audit of the paper. The existing redistribution note is unchanged; the PDF is not copied here.

[A] [ASE's full Dakota derivation](https://github.com/the-twin-pines/ASE/blob/a4-suspension-steering/notes/dakota-cam-jacobian-curvature.md), inspected source blob `4e0e47d6813db3c4dc5bc1dd68f23f9c98fe9287`, and its [source record](https://github.com/the-twin-pines/ASE/blob/a4-suspension-steering/sources/reviewed/gromov-curvature-suspension.md). [ASE's cross-repository evidence plan](https://github.com/the-twin-pines/ASE/blob/a4-suspension-steering/notes/suspension-response-cross-repository.md) owns the mechanical/measurement boundary.

[E] [Econometrician: identification and uncertainty](https://github.com/bl4ckb4ll/econometrician/blob/main/notes/suspension-response-identification.md).

[C] [Coxeter: structures, coordinates, and exact claims](https://github.com/isomorphismes/coxeter/blob/main/notes/suspension-response-structure.md).

## 1. What transfers from the paper

The relevant source progression is [G, §0] on the second fundamental form and equidistant deformation, [G, §1] on metric geometry and local flatness, and [G, §2] on sectional curvature and the Gauss equation. Later scalar/Ricci/curvature-operator positivity results do not apply just because an adjustment response is nonlinear.

The transferable constructions are concrete: tangent approximation, departure normal to the tangent, an explicitly chosen induced metric, and loss of regularity of normal offsets. Their application to measured alignment outcomes is our deduction, not the paper's subject.

## 2. Declare the map and metric

Fix a repeatable settled mechanical state and other conditions `eta`. Let two controls `q` map to measurements `F(q;eta)`; in ASE the first controls are front/rear eccentric rotations or separately declared pivot displacements, and the first outputs are camber and caster.

Choose a fixed positive-definite output metric `W=L^T L` and write

$$Z(q)=L F(q;\eta),\qquad J=DZ,\qquad g=J^TJ.$$

A tolerance metric and a noise-covariance metric express different questions. This is geometry in a space of outcomes, not physical distance inside the suspension. Units must be carried with the metric. Rank, smoothness, and a repeatable branch are prerequisites, not fitted conclusions.

There are already four different objects: the first derivative `J`, coordinate second derivatives `D^2Z`, curvature of a constrained path in outcome space, and intrinsic curvature of `g`. Do not give them a single curvature label.

## 3. Coordinate acceleration versus normal departure

For a regular curve `z(t)` in standardized outcome space,

$$P_\perp=I-\frac{z'z'^T}{z'^Tz'},\qquad B=P_\perp z''.$$

`B` is the normal part of acceleration for the chosen parameter; the normal acceleration per squared speed gives the curvature vector. In an oriented plane,

$$\kappa=\frac{\det(z',z'')}{\|z'\|^3}.$$

A reparameterization changes speed and tangential acceleration. It does not change curvature magnitude at a regular point of the same curve. Reversing traversal or reflecting the oriented output plane changes the corresponding signed convention.

For the composition from cam rotation through pivot displacement,

$$D^2(F\circ c)[v,w]=D^2F[Dc\,v,Dc\,w]+DF\,D^2c[v,w].$$

The second term lies in the full response tangent image. Under a locally invertible input reparameterization, it disappears after normal projection. In the special example `F(u)=A u`, a single cosine-displacement eccentric traces a line with nonzero acceleration but zero path curvature wherever the path is regular. Nonlinearity in cam angle alone therefore does not establish bending.

## 4. A useful flatness theorem for two controls and two outputs

Suppose `F` is a smooth local diffeomorphism from an open two-dimensional control patch into a two-dimensional output space with constant `W`. Then `z=L F(q)` is a local coordinate system and

$$g=F^*W=dz_1^2+dz_2^2.$$

Consequently this particular metric is locally flat. Complicated metric entries in cam coordinates do not contradict the result. At rank loss the pullback becomes degenerate; it is not then a nonsingular Riemannian metric with an ordinary sectional-curvature value.

For the synthetic map

$$F(a,b)=(a,b+c a^2),\qquad
 g=\begin{pmatrix}1+4c^2a^2&2ca\\2ca&1\end{pmatrix},$$

the ambient response metric is flat, while fixing `b` produces a parabola with signed curvature

$$\kappa=\frac{2c}{(1+4c^2a^2)^{3/2}}.$$

This is the key counterexample: a constrained adjustment path can bend inside a flat two-control response geometry. Changing the metric, adding measurements, or considering a different state manifold changes the mathematical problem.

Also, Gromov's discussion of Gaussian curvature as a Jacobian concerns the **Gauss normal map** with its geometric structure. The determinant of an arbitrary cam-to-angle Jacobian is not Gaussian curvature. Its sign records orientation, and its magnitude depends on coordinate scales.

## 5. A surface in a larger measurement space

With two controls and `m>2` standardized outputs, a rank-two map is locally an immersed surface. Define

$$P_\perp=I-J(J^TJ)^{-1}J^T,\qquad
 B_{ij}=P_\perp\,\partial_i\partial_j Z.$$

The normal-valued second fundamental form measures second-order departure that no first-order combination of the two controls reproduces. In the flat ambient measurement space, the Gauss equation gives

$$K=\frac{\langle B_{11},B_{22}\rangle-\|B_{12}\|^2}{\det g}.$$

This is genuine intrinsic Gaussian curvature of the declared response metric. It is not inferred from the numerical signs of camber or caster. In higher codimension the second fundamental form has no single positive/negative scalar sign without further structure.

A normal residual is uncorrectable by the chosen controls **to first order at that point**. It may become accessible by a finite move or by another physical input. It does not, by itself, diagnose damaged hardware.

## 6. Equidistant tolerance bands and the inverse problem

For a unit-speed attainable curve choose `T'=kappa N` and `N'=-kappa T`. Its normal offsets are

$$\Psi(s,r)=z(s)+rN(s),\qquad
 \Psi_s=(1-r\kappa)T,\qquad \Psi_r=N.$$

The oriented area Jacobian is `1-r kappa`. Its zero is a local loss of regularity of normal coordinates. Normal intersections from distant curve segments are a separate, possibly earlier, obstruction to a unique nearest point.

For `z_star=z(s_0)+r N(s_0)` and `E(s)=||z(s)-z_star||^2/2`, direct differentiation gives

$$E'(s_0)=0,\qquad E''(s_0)=1-r\kappa(s_0).$$

At a nondegenerate local minimum,

$$\delta s=\frac{T\cdot\delta z_{star}}{1-r\kappa}.$$

This transfers the normal-offset construction literally into measurement space: curvature, residual side, and uncertainty scale jointly affect how stable a nearest-attainable-setting inference can be. The denominator approaching zero signals loss of local inverse stability, not proof of such a problem on the truck.

## 7. What remains a proposed application

ASE has not supplied an identified numerical cam response, its Hessians, or a tolerance-band radius. Econometrician's note describes what could identify them and what confounding could prevent it. Synthetic algebra checks cannot establish the mechanism's fitted accuracy or the reliability of an adjustment.

The geometry also does not validate a speculative CP^n/SO(n) type theory, an optimizer, or a compiler rewrite. Such uses require their own spaces, metrics, maps, hypotheses, and evidence. These links preserve a source trail without promoting resemblance to a theorem.
