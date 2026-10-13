-- Equation-derived vector figure; coordinates in the figure are display units.
if #scriptCommandLine != 2 then error "usage: M2 --script diagram.m2 OUTPUT_SVG";
elbowHeight = 40*sqrt(15.)/4;
upperElbow = toString(220-elbowHeight);
lowerElbow = toString(220+elbowHeight);
svg = "<svg xmlns='http://www.w3.org/2000/svg' width='940' height='640' viewBox='0 0 940 640'>
<rect width='940' height='640' fill='#faf9f6'/>
<g font-family='sans-serif' fill='#1e293b'>
<text x='38' y='40' font-size='24'>A doubled point and a reduced free circle</text>
<text x='38' y='70' font-size='14'>Equation-derived configuration plots; colors identify inverse settings.</text>
<path d='M440 100 V595' stroke='#ccd1d7'/>
<text x='38' y='112' font-size='19'>Two-link arm: distance = 2</text>
<text x='38' y='136' font-size='14'>Lengths 2 and 1; elbows (7/4, +/-sqrt(15)/4)</text>
<g fill='none' stroke='#bcc4cd'><circle cx='150' cy='220' r='80'/><circle cx='230' cy='220' r='40'/></g>
<path d='M150 220 L220 " | upperElbow | " L230 220' fill='none' stroke='#1976b9' stroke-width='3'/>
<path d='M150 220 L220 " | lowerElbow | " L230 220' fill='none' stroke='#bc681a' stroke-width='3'/>
<circle cx='220' cy='" | upperElbow | "' r='5' fill='#1976b9'/><circle cx='220' cy='" | lowerElbow | "' r='5' fill='#bc681a'/>
<circle cx='150' cy='220' r='4'/><circle cx='230' cy='220' r='4'/>
<text x='38' y='326' font-size='19'>Two-link arm: distance = 3</text>
<text x='38' y='352' font-size='14'>One visible elbow, local algebra length 2</text>
<g fill='none' stroke='#bcc4cd'><circle cx='150' cy='460' r='100'/><circle cx='300' cy='460' r='50'/></g>
<path d='M150 460 L300 460' stroke='#1976b9' stroke-width='4'/>
<circle cx='250' cy='460' r='7' fill='#bc681a'/><circle cx='150' cy='460' r='4'/><circle cx='300' cy='460' r='4'/>
<text x='38' y='590' font-size='14'>The vertical tangent is obstructed at second order.</text>
<text x='490' y='112' font-size='19'>AC-head pole: configuration carrier</text>
<text x='490' y='136' font-size='14'>sin(C)^2 + cos(C)^2 = 1; A = 0</text>
<path d='M510 330 H810 M660 180 V480' stroke='#bcc4cd'/>
<circle cx='660' cy='330' r='120' fill='none' stroke='#4b5563' stroke-width='2'/>
<circle cx='540' cy='330' r='8' fill='#1976b9'/><circle cx='780' cy='330' r='8' fill='#1976b9'/>
<circle cx='660' cy='210' r='8' fill='#bc681a'/><circle cx='660' cy='450' r='8' fill='#bc681a'/>
<text x='816' y='335' font-size='14'>cos C</text><text x='675' y='182' font-size='14'>sin C</text>
<text x='490' y='516' font-size='14' fill='#1976b9'>Blue: limits along the Y meridian</text>
<text x='490' y='541' font-size='14' fill='#bc681a'>Orange: limits along the X meridian</text>
<text x='490' y='569' font-size='14'>The whole circle is reduced pole freedom.</text>
<text x='490' y='593' font-size='14'>The two meridians have disjoint limiting settings.</text>
</g></svg>";
scriptCommandLine#1 << svg << newline << close;
print "PASS equation-derived vector figure generated";
exit 0;
