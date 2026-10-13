-- Exact constraint fibers, not physical acceptance. Run with M2 --script.
R = QQ[elbowX,elbowY];
armFiber = distance -> ideal(elbowX^2+elbowY^2-4,
    (elbowX-distance)^2+elbowY^2-1);
scan({1,2,3,4}, distance -> (
    fiberIdeal := armFiber distance;
    print("distance=" | toString distance);
    print("groebner=" | toString gens gb fiberIdeal);
    print("dimension=" | toString dim(R/fiberIdeal));
    print("length_over_QQ=" | toString degree(R/fiberIdeal));
    print("radical=" | toString radical fiberIdeal);
    assert(dim(R/fiberIdeal) == 0);
    assert(degree(R/fiberIdeal) == 2)));
outerFiber = armFiber 3;
innerFiber = armFiber 1;
assert(outerFiber == ideal(elbowX-2,elbowY^2));
assert(innerFiber == outerFiber);
assert(radical outerFiber == ideal(elbowX-2,elbowY));
assert(armFiber 2 == ideal(elbowX-7/4,elbowY^2-15/16));
assert(armFiber 4 == ideal(elbowX-19/8,elbowY^2+105/64));
assert(armFiber 0 == ideal(1_R));
outerDerivative = sub(jacobian gens outerFiber,{elbowX=>2,elbowY=>0});
reducedDerivative = sub(jacobian gens radical outerFiber,{elbowX=>2,elbowY=>0});
print("outer_jacobian=" | toString outerDerivative);
print("outer_tangent_dimension=" | toString(2-rank outerDerivative));
print("reduced_tangent_dimension=" | toString(2-rank reducedDerivative));
assert(rank outerDerivative == 1);
assert(rank reducedDerivative == 2);
Family = QQ[distance,elbowX,elbowY,inverseDistance,MonomialOrder=>Lex];
familyIdeal = ideal(elbowX^2+elbowY^2-4,
    (elbowX-distance)^2+elbowY^2-1,distance*inverseDistance-1);
assert((2*distance*elbowX-distance^2-3)%familyIdeal == 0);
assert((4*distance^2*elbowY^2-(9-distance^2)*(distance^2-1))%familyIdeal == 0);
Jets = QQ[firstX,firstY,secondX,secondY];
secondOrderConditions = ideal(4*firstX,-2*firstX,
    4*secondX+firstX^2+firstY^2,
    -2*secondX+firstX^2+firstY^2);
print("second_order_obstruction=" | toString gens gb secondOrderConditions);
assert((firstY^2)%secondOrderConditions == 0);
Cone = QQ[transverse,scale,normal];
deformation = ideal(transverse^2-scale*normal);
assert(sub(deformation,{scale=>0}) == ideal(transverse^2));
print "PASS case-a: full ideal, support, tangent, length, family identity, obstruction";
exit 0;
