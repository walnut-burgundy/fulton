-- Three unit rods, planar, endpoints (0,0) and (3,0).
R = QQ[firstX,firstY,secondX,secondY];
chain = ideal(firstX^2+firstY^2-1,
    (secondX-firstX)^2+(secondY-firstY)^2-1,
    (3-secondX)^2+secondY^2-1);
atStraight = {firstX=>1,firstY=>0,secondX=>2,secondY=>0};
chainDerivative = sub(jacobian gens chain,atStraight);
assert(dim(R/chain) == 1);
assert(rank chainDerivative == 2);
print("three_rod_global_scheme_dimension=" | toString dim(R/chain));
print("straight_tangent_dimension=" | toString(4-rank chainDerivative));
T = QQ[firstTransverse,secondTransverse];
obstruction = firstTransverse^2+(secondTransverse-firstTransverse)^2+secondTransverse^2;
assert(obstruction == 2*(firstTransverse^2-firstTransverse*secondTransverse+secondTransverse^2));
assert(radical ideal(obstruction) == ideal(obstruction));
print("three_rod_quadratic_obstruction=" | toString obstruction);
print("quadratic_cone_reduced=" | toString(radical ideal(obstruction) == ideal(obstruction)));
-- Offset of (t,t^2/2), positive normal radius 5/4.
Q = QQ[parameter,speed];
assert(sub(speed^2-1-parameter^2,{parameter=>3/4,speed=>5/4}) == 0);
assert(sub(parameter*speed-(5/4)*parameter,{parameter=>3/4,speed=>5/4}) == 0);
assert(sub(parameter*speed-(5/4)*parameter,{parameter=>-3/4,speed=>5/4}) == 0);
crossingHeight = (3/4)^2/2+(5/4)/(5/4);
localJacobianFactor = 1-(5/4)/(5/4)^3;
assert(crossingHeight == 41/32);
assert(localJacobianFactor == 9/25);
print("offset_crossing_height=" | toString crossingHeight);
print("offset_regular_factor_at_crossing=" | toString localJacobianFactor);
-- Fulton's Example 9.2.6: remove the obligatory diagonal factor.
-- t=2u/(1-u^2), speed=(1+u^2)/(1-u^2); physical chart |u|<1.
D = QQ[u,v];
radius = 5/4;
xDenominator = (1-u^2)*(1+u^2);
xNumerator = 2*u*((1-radius)+(1+radius)*u^2);
yDenominator = (1-u^2)^2*(1+u^2);
yNumerator = 2*u^2*(1+u^2)+radius*(1-u^2)^3;
xDifference = xNumerator*sub(xDenominator,{u=>v})-sub(xNumerator,{u=>v})*xDenominator;
yDifference = yNumerator*sub(yDenominator,{u=>v})-sub(yNumerator,{u=>v})*yDenominator;
assert(xDifference%(u-v) == 0 and yDifference%(u-v) == 0);
residual = ideal(xDifference//(u-v),yDifference//(u-v));
assert(sub(residual,{u=>1/3,v=>-1/3}) == ideal(0_QQ));
assert(sub(residual,{u=>1/3,v=>1/3}) == ideal(1_QQ));
assert(sub(xDenominator*yDenominator,{u=>1/3}) != 0);
diagonalX = sub(xDifference//(u-v),{v=>u});
assert(diagonalX == diff(u,xNumerator)*xDenominator-xNumerator*diff(u,xDenominator));
print "offset_residual_off_diagonal=true";
print "offset_residual_diagonal_at_crossing=false";
print "PASS linkage-offset: tangent obstruction, reduced cone, regular double point";
exit 0;
