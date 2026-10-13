-- Right-handed active Rz(C)Rx(A), tool initially on negative Z.
-- Tool-direction pose (no specified roll). L=10 is synthetic.
R = QQ[axisX,axisY,axisZ,sinA,cosA,sinC,cosC];
carrier = ideal(sinA^2+cosA^2-1,sinC^2+cosC^2-1);
direction = matrix{{-sinA*sinC},{sinA*cosC},{-cosA}};
tip = matrix{{axisX-10*sinA*sinC},{axisY+10*sinA*cosC},{axisZ-10*cosA}};
poleFiber = (carrier + ideal(direction-matrix{{0},{0},{-1}})
    + ideal(tip-matrix{{0},{0},{0}}));
reducedPole = ideal(axisX,axisY,axisZ-10,sinA,cosA-1,sinC^2+cosC^2-1);
assert(poleFiber == reducedPole);
assert(radical poleFiber == poleFiber);
assert(dim(R/poleFiber) == 1);
print("pole_dimension=" | toString dim(R/poleFiber));
print("pole_radical_equals_original=" | toString(radical poleFiber == poleFiber));
print("pole_groebner=" | toString gens gb poleFiber);
-- Two real generic solutions for direction (0,3/5,-4/5).
nearFiber = (carrier + ideal(direction-matrix{{0},{3/5},{-4/5}})
    + ideal(tip-matrix{{0},{0},{0}}));
assert(dim(R/nearFiber) == 0);
assert(degree(R/nearFiber) == 2);
print("near_dimension=" | toString dim(R/nearFiber));
print("near_length_over_QQ=" | toString degree(R/nearFiber));
-- Angular tangent vectors use dsinA/dA=cosA, dcosA/dA=-sinA.
angularDerivative = matrix{{-cosA*sinC,-sinA*cosC},
    {cosA*cosC,-sinA*sinC},{sinA,0}};
degeneracy = carrier + minors(2,angularDerivative);
assert(degeneracy == carrier+ideal(sinA));
print("ambient_minors_groebner=" | toString gens gb degeneracy);
assert((transpose angularDerivative*angularDerivative
    -matrix{{1,0},{0,sinA^2}})%carrier == 0);
assert((det matrix{{-sinC,cosC},{cosC,sinC}}+1)%carrier == 0);
-- Rational meridian chart: direction=(0,2h/(1+h^2),-(1-h^2)/(1+h^2)).
P = QQ[h,sinA,cosA,sinC,cosC,inverseDenominator];
pathFamily = ideal(sinA^2+cosA^2-1,sinC^2+cosC^2-1,
    sinA*sinC,(1+h^2)*sinA*cosC-2*h,
    (1+h^2)*cosA-(1-h^2),inverseDenominator*(1+h^2)-1);
wholeSpecialFiber = pathFamily + ideal(h);
limitClosure = saturate(pathFamily,ideal(h));
limitFiber = limitClosure + ideal(h);
expectedLimit = ideal(h,sinA,cosA-1,sinC,cosC^2-1,inverseDenominator-1);
assert(limitFiber == expectedLimit);
assert(dim(P/wholeSpecialFiber) == 1);
assert(dim(P/limitFiber) == 0);
assert(degree(P/limitFiber) == 2);
assert(radical limitFiber == limitFiber);
print("whole_special_dimension=" | toString dim(P/wholeSpecialFiber));
print("punctured_limit_dimension=" | toString dim(P/limitFiber));
print("punctured_limit_length=" | toString degree(P/limitFiber));
print("punctured_limit_groebner=" | toString gens gb limitFiber);
-- An orthogonal meridian has disjoint limiting C settings.
orthogonalLimit = ideal(h,sinA,cosA-1,cosC,sinC^2-1,inverseDenominator-1);
assert(limitFiber+orthogonalLimit == ideal(1_P));
print "PASS case-b: reduced pole, two-point nearby fiber, minors, limiting settings";
exit 0;
