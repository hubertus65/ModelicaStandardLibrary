within ModelicaTest;
package ComplexBlocks "Test models for Modelica.ComplexBlocks"
  extends Modelica.Icons.ExamplesPackage;

  model ComplexMathFunctions "Test of the complex function blocks of Modelica.ComplexBlocks.ComplexMath"
    extends Modelica.Icons.Example;

    Modelica.ComplexBlocks.Sources.ComplexRotatingPhasor complexRotatingPhasor1(magnitude=0.8, w=2*Modelica.Constants.pi)
      annotation (Placement(transformation(extent={{-90,50},{-70,70}})));
    Modelica.ComplexBlocks.Sources.ComplexExpression complexExpression1(y=Complex(1.5 + 0.8*cos(2*Modelica.Constants.pi*time), 0.8*sin(2*Modelica.Constants.pi*time)))
      annotation (Placement(transformation(extent={{-90,-100},{-70,-80}})));
    Modelica.ComplexBlocks.ComplexMath.Sin sin1
      annotation (Placement(transformation(extent={{-30,90},{-10,110}})));
    Modelica.ComplexBlocks.ComplexMath.Cos cos1
      annotation (Placement(transformation(extent={{-30,60},{-10,80}})));
    Modelica.ComplexBlocks.ComplexMath.Tan tan1
      annotation (Placement(transformation(extent={{-30,30},{-10,50}})));
    Modelica.ComplexBlocks.ComplexMath.Asin asin1
      annotation (Placement(transformation(extent={{-30,0},{-10,20}})));
    Modelica.ComplexBlocks.ComplexMath.Acos acos1
      annotation (Placement(transformation(extent={{-30,-30},{-10,-10}})));
    Modelica.ComplexBlocks.ComplexMath.Atan atan1
      annotation (Placement(transformation(extent={{10,90},{30,110}})));
    Modelica.ComplexBlocks.ComplexMath.Sinh sinh1
      annotation (Placement(transformation(extent={{10,60},{30,80}})));
    Modelica.ComplexBlocks.ComplexMath.Cosh cosh1
      annotation (Placement(transformation(extent={{10,30},{30,50}})));
    Modelica.ComplexBlocks.ComplexMath.Tanh tanh1
      annotation (Placement(transformation(extent={{10,0},{30,20}})));
    Modelica.ComplexBlocks.ComplexMath.Conj conj1
      annotation (Placement(transformation(extent={{10,-30},{30,-10}})));
    Modelica.ComplexBlocks.ComplexMath.Sin sinConjugate(useConjugateInput=true)
      annotation (Placement(transformation(extent={{50,90},{70,110}})));
    Modelica.ComplexBlocks.ComplexMath.Exp exp1
      annotation (Placement(transformation(extent={{-30,-70},{-10,-50}})));
    Modelica.ComplexBlocks.ComplexMath.Log log1
      annotation (Placement(transformation(extent={{-30,-100},{-10,-80}})));
    Modelica.ComplexBlocks.ComplexMath.Sqrt sqrt1
      annotation (Placement(transformation(extent={{-30,-130},{-10,-110}})));
  equation
    connect(complexRotatingPhasor1.y, sin1.u) annotation (Line(points={{-69,60},{-50,60},{-50,100},{-32,100}}, color={85,170,255}));
    connect(complexRotatingPhasor1.y, cos1.u) annotation (Line(points={{-69,60},{-50,60},{-50,70},{-32,70}}, color={85,170,255}));
    connect(complexRotatingPhasor1.y, tan1.u) annotation (Line(points={{-69,60},{-50,60},{-50,40},{-32,40}}, color={85,170,255}));
    connect(complexRotatingPhasor1.y, asin1.u) annotation (Line(points={{-69,60},{-50,60},{-50,10},{-32,10}}, color={85,170,255}));
    connect(complexRotatingPhasor1.y, acos1.u) annotation (Line(points={{-69,60},{-50,60},{-50,-20},{-32,-20}}, color={85,170,255}));
    connect(complexRotatingPhasor1.y, atan1.u) annotation (Line(points={{-69,60},{-30,60},{-30,100},{8,100}}, color={85,170,255}));
    connect(complexRotatingPhasor1.y, sinh1.u) annotation (Line(points={{-69,60},{-30,60},{-30,70},{8,70}}, color={85,170,255}));
    connect(complexRotatingPhasor1.y, cosh1.u) annotation (Line(points={{-69,60},{-30,60},{-30,40},{8,40}}, color={85,170,255}));
    connect(complexRotatingPhasor1.y, tanh1.u) annotation (Line(points={{-69,60},{-30,60},{-30,10},{8,10}}, color={85,170,255}));
    connect(complexRotatingPhasor1.y, conj1.u) annotation (Line(points={{-69,60},{-30,60},{-30,-20},{8,-20}}, color={85,170,255}));
    connect(complexRotatingPhasor1.y, sinConjugate.u) annotation (Line(points={{-69,60},{-10,60},{-10,100},{48,100}}, color={85,170,255}));
    connect(complexExpression1.y, exp1.u) annotation (Line(points={{-69,-90},{-50,-90},{-50,-60},{-32,-60}}, color={85,170,255}));
    connect(complexExpression1.y, log1.u) annotation (Line(points={{-69,-90},{-32,-90}}, color={85,170,255}));
    connect(complexExpression1.y, sqrt1.u) annotation (Line(points={{-69,-90},{-50,-90},{-50,-120},{-32,-120}}, color={85,170,255}));
    annotation (Diagram(coordinateSystem(extent={{-100,-140},{100,120}})),
      experiment(StopTime=1),
      Documentation(info="<html>
<p>
Tests the elementary function blocks of
<a href=\"modelica://Modelica.ComplexBlocks.ComplexMath\">Modelica.ComplexBlocks.ComplexMath</a>.
</p>
<ul>
<li>The trigonometric and hyperbolic functions, their inverses and Conj get a phasor of magnitude 0.8
    rotating once per second. It stays inside the unit circle, away from the branch points of
    Asin, Acos and Atan and from the poles of Tan and Tanh.</li>
<li>Exp, Log and Sqrt get a circle of radius 0.8 around 1.5 (built with
    Sources.ComplexExpression). It stays in the right half plane, so the branch cut of
    Log and Sqrt on the negative real axis is never crossed.</li>
<li><code>sinConjugate</code> tests <code>useConjugateInput=true</code>.</li>
</ul>
</html>"));
  end ComplexMathFunctions;

  model ComplexMathOperators "Test of complex arithmetic, conversion, Bode and transfer function blocks of Modelica.ComplexBlocks.ComplexMath"
    extends Modelica.Icons.Example;

    Modelica.ComplexBlocks.Sources.ComplexRotatingPhasor complexRotatingPhasor1(magnitude=1, w=2*Modelica.Constants.pi)
      annotation (Placement(transformation(extent={{-90,80},{-70,100}})));
    Modelica.ComplexBlocks.Sources.ComplexExpression complexStep1(y=Complex(if time < 0.5 then 0.5 else 1.5, if time < 0.5 then 0 else 1))
      annotation (Placement(transformation(extent={{-90,30},{-70,50}})));
    Modelica.ComplexBlocks.Sources.ComplexConstant complexConstant1(k=Complex(2,1))
      annotation (Placement(transformation(extent={{-90,-20},{-70,0}})));
    Modelica.ComplexBlocks.Sources.ComplexConstant complexConstant2(k=Complex(1,0))
      annotation (Placement(transformation(extent={{-90,-100},{-70,-80}})));
    Modelica.Blocks.Sources.Ramp frequencyRamp(height=100, duration=1, offset=1)
      annotation (Placement(transformation(extent={{-30,-140},{-10,-120}})));
    Modelica.ComplexBlocks.ComplexMath.Add add1(k1=Complex(1,0), k2=Complex(0,-1))
      annotation (Placement(transformation(extent={{-30,90},{-10,110}})));
    Modelica.ComplexBlocks.Sources.ComplexExpression upperHalfPlane1(y=Complex(0.5 + cos(2*Modelica.Constants.pi*time), 3 + sin(2*Modelica.Constants.pi*time)))
      annotation (Placement(transformation(extent={{-90,-60},{-70,-40}})));
    Modelica.ComplexBlocks.ComplexMath.Product product1
      annotation (Placement(transformation(extent={{20,90},{40,110}})));
    Modelica.ComplexBlocks.ComplexMath.ComplexToReal complexToReal1
      annotation (Placement(transformation(extent={{20,30},{40,50}})));
    Modelica.ComplexBlocks.ComplexMath.ComplexToPolar complexToPolar1
      annotation (Placement(transformation(extent={{20,0},{40,20}})));
    Modelica.ComplexBlocks.ComplexMath.PolarToComplex polarToComplex1
      annotation (Placement(transformation(extent={{60,0},{80,20}})));
    Modelica.ComplexBlocks.ComplexMath.Bode bode1
      annotation (Placement(transformation(extent={{20,-40},{40,-20}})));
    Modelica.ComplexBlocks.ComplexMath.TransferFunction transferFunction1(b={1}, a={0.1,1})
      annotation (Placement(transformation(extent={{20,-100},{40,-80}})));
  equation
    connect(complexRotatingPhasor1.y, add1.u1) annotation (Line(points={{-69,90},{-50,90},{-50,106},{-32,106}}, color={85,170,255}));
    connect(complexStep1.y, add1.u2) annotation (Line(points={{-69,40},{-50,40},{-50,94},{-32,94}}, color={85,170,255}));
    connect(complexRotatingPhasor1.y, product1.u1) annotation (Line(points={{-69,90},{-26,90},{-26,106},{18,106}}, color={85,170,255}));
    connect(complexConstant1.y, product1.u2) annotation (Line(points={{-69,-10},{-26,-10},{-26,94},{18,94}}, color={85,170,255}));
    connect(add1.y, complexToReal1.u) annotation (Line(points={{-9,100},{4,100},{4,40},{18,40}}, color={85,170,255}));
    connect(upperHalfPlane1.y, complexToPolar1.u) annotation (Line(points={{-69,-50},{-26,-50},{-26,10},{18,10}}, color={85,170,255}));
    connect(complexToPolar1.len, polarToComplex1.len) annotation (Line(points={{41,16},{58,16}}, color={0,0,127}));
    connect(complexToPolar1.phi, polarToComplex1.phi) annotation (Line(points={{41,4},{58,4}}, color={0,0,127}));
    connect(upperHalfPlane1.y, bode1.u) annotation (Line(points={{-69,-50},{-26,-50},{-26,-24},{18,-24}}, color={85,170,255}));
    connect(complexConstant1.y, bode1.divisor) annotation (Line(points={{-69,-10},{-26,-10},{-26,-36},{18,-36}}, color={85,170,255}));
    connect(complexConstant2.y, transferFunction1.u) annotation (Line(points={{-69,-90},{18,-90}}, color={85,170,255}));
    connect(frequencyRamp.y, transferFunction1.w) annotation (Line(points={{-9,-130},{30,-130},{30,-102}}, color={0,0,127}));
    annotation (Diagram(coordinateSystem(extent={{-100,-150},{100,120}})),
      experiment(StopTime=1),
      Documentation(info="<html>
<p>
Tests Add, Product, ComplexToReal, ComplexToPolar, PolarToComplex, Bode
and TransferFunction of
<a href=\"modelica://Modelica.ComplexBlocks.ComplexMath\">Modelica.ComplexBlocks.ComplexMath</a>.
Feedback, Gain, Division and Add3 are tested separately in
<a href=\"modelica://ModelicaTest.ComplexBlocks.ComplexMathConjugateIfExpressions\">ComplexMathConjugateIfExpressions</a>.
</p>
<p>
The input of ComplexToPolar and Bode (<code>upperHalfPlane1</code>, a unit circle
around 0.5+3j) stays in the upper half plane, so the compared angles have no
&plusmn;&pi; jumps. <code>polarToComplex1</code> converts the output of
<code>complexToPolar1</code> back and must reproduce <code>upperHalfPlane1.y</code>.
<code>transferFunction1</code> evaluates 1/(0.1&middot;jw + 1) while w ramps from
1 to 101 rad/s. The step input is built with Sources.ComplexExpression;
Sources.ComplexStep is tested separately in
<a href=\"modelica://ModelicaTest.ComplexBlocks.ComplexStep\">ComplexStep</a>.
</p>
</html>"));
  end ComplexMathOperators;

  model ComplexRouting "Test of the routing blocks of Modelica.ComplexBlocks.Routing"
    extends Modelica.Icons.Example;

    Modelica.ComplexBlocks.Sources.ComplexRotatingPhasor complexRotatingPhasor1(magnitude=1, w=2*Modelica.Constants.pi)
      annotation (Placement(transformation(extent={{-90,50},{-70,70}})));
    Modelica.ComplexBlocks.Sources.ComplexExpression complexStep1(y=Complex(if time < 0.5 then 0 else 1, if time < 0.5 then 0 else -1))
      annotation (Placement(transformation(extent={{-90,10},{-70,30}})));
    Modelica.ComplexBlocks.Sources.ComplexConstant complexConstant1(k=Complex(-1,2))
      annotation (Placement(transformation(extent={{-90,-30},{-70,-10}})));
    Modelica.ComplexBlocks.Routing.Replicator replicator1(nout=3)
      annotation (Placement(transformation(extent={{-30,80},{-10,100}})));
    Modelica.ComplexBlocks.Routing.Replicator replicator2(nout=2, useConjugateInput=true)
      annotation (Placement(transformation(extent={{-30,50},{-10,70}})));
    Modelica.ComplexBlocks.Routing.ComplexPassThrough complexPassThrough1
      annotation (Placement(transformation(extent={{-30,20},{-10,40}})));
    Modelica.ComplexBlocks.Routing.ExtractSignal extractSignal1(nin=3, nout=2, extract={3,1})
      annotation (Placement(transformation(extent={{10,-10},{30,10}})));
    Modelica.ComplexBlocks.Routing.Extractor extractor1(nin=3)
      annotation (Placement(transformation(extent={{10,-50},{30,-30}})));
    Modelica.ComplexBlocks.Routing.Extractor extractor2(nin=3, allowOutOfRange=true, outOfRangeValue=Complex(-10,-10))
      annotation (Placement(transformation(extent={{50,-50},{70,-30}})));
    Modelica.Blocks.Sources.IntegerStep integerStep1(height=2, offset=1, startTime=0.5)
      annotation (Placement(transformation(extent={{-30,-90},{-10,-70}})));
    Modelica.Blocks.Sources.IntegerStep integerStep2(height=4, offset=1, startTime=0.5)
      annotation (Placement(transformation(extent={{10,-90},{30,-70}})));
  equation
    connect(complexRotatingPhasor1.y, replicator1.u) annotation (Line(points={{-69,60},{-50,60},{-50,90},{-32,90}}, color={85,170,255}));
    connect(complexRotatingPhasor1.y, replicator2.u) annotation (Line(points={{-69,60},{-32,60}}, color={85,170,255}));
    connect(complexStep1.y, complexPassThrough1.u) annotation (Line(points={{-69,20},{-50,20},{-50,30},{-32,30}}, color={85,170,255}));
    connect(complexRotatingPhasor1.y, extractSignal1.u[1]) annotation (Line(points={{-69,60},{-30,60},{-30,0},{8,0}}, color={85,170,255}));
    connect(complexStep1.y, extractSignal1.u[2]) annotation (Line(points={{-69,20},{-30,20},{-30,0},{8,0}}, color={85,170,255}));
    connect(complexConstant1.y, extractSignal1.u[3]) annotation (Line(points={{-69,-20},{-30,-20},{-30,0},{8,0}}, color={85,170,255}));
    connect(complexRotatingPhasor1.y, extractor1.u[1]) annotation (Line(points={{-69,60},{-30,60},{-30,-40},{8,-40}}, color={85,170,255}));
    connect(complexStep1.y, extractor1.u[2]) annotation (Line(points={{-69,20},{-30,20},{-30,-40},{8,-40}}, color={85,170,255}));
    connect(complexConstant1.y, extractor1.u[3]) annotation (Line(points={{-69,-20},{-30,-20},{-30,-40},{8,-40}}, color={85,170,255}));
    connect(complexRotatingPhasor1.y, extractor2.u[1]) annotation (Line(points={{-69,60},{-10,60},{-10,-40},{48,-40}}, color={85,170,255}));
    connect(complexStep1.y, extractor2.u[2]) annotation (Line(points={{-69,20},{-10,20},{-10,-40},{48,-40}}, color={85,170,255}));
    connect(complexConstant1.y, extractor2.u[3]) annotation (Line(points={{-69,-20},{-10,-20},{-10,-40},{48,-40}}, color={85,170,255}));
    connect(integerStep1.y, extractor1.index) annotation (Line(points={{-9,-80},{20,-80},{20,-52}}, color={255,127,0}));
    connect(integerStep2.y, extractor2.index) annotation (Line(points={{31,-80},{60,-80},{60,-52}}, color={255,127,0}));
    annotation (experiment(StopTime=1),
      Documentation(info="<html>
<p>
Tests Replicator (also with <code>useConjugateInput=true</code>),
ComplexPassThrough, ExtractSignal and Extractor of
<a href=\"modelica://Modelica.ComplexBlocks.Routing\">Modelica.ComplexBlocks.Routing</a>.
Extractor picks element 1 and then element 3 after 0.5 s. A second Extractor with
<code>allowOutOfRange=true</code> switches to an index out of range and
outputs <code>outOfRangeValue</code> = -10-10j.
</p>
</html>"));
  end ComplexRouting;

  model ComplexStep "Test of Modelica.ComplexBlocks.Sources.ComplexStep"
    extends Modelica.Icons.Example;

    Modelica.ComplexBlocks.Sources.ComplexStep complexStep1(height=Complex(1,1), offset=Complex(0.5,0), startTime=0.5)
      annotation (Placement(transformation(extent={{-70,-10},{-50,10}})));
    Modelica.ComplexBlocks.Routing.ComplexPassThrough complexPassThrough1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  equation
    connect(complexStep1.y, complexPassThrough1.u) annotation (Line(points={{-49,0},{-12,0}}, color={85,170,255}));
    annotation (experiment(StopTime=1),
      Documentation(info="<html>
<p>
<a href=\"modelica://Modelica.ComplexBlocks.Sources.ComplexStep\">ComplexStep</a>
with a complex offset and a step of height 1+j at t = 0.5 s, once directly and
once through Routing.ComplexPassThrough.
</p>
<p>
Note: Modelon Impact (OCT) 2026 fails to compile this model. The generated C
code contains the record constructor
<code>Modelica.ComplexBlocks.Interfaces.ComplexOutput(0.0, 0.0)</code> from the
expression <code>if time &lt; startTime then Complex(0) else height</code> in ComplexStep.
</p>
</html>"));
  end ComplexStep;

  model ComplexMathConjugateIfExpressions "Test of Feedback, Gain, Division and Add3 of Modelica.ComplexBlocks.ComplexMath"
    extends Modelica.Icons.Example;

    Modelica.ComplexBlocks.Sources.ComplexRotatingPhasor complexRotatingPhasor1(magnitude=1, w=2*Modelica.Constants.pi)
      annotation (Placement(transformation(extent={{-90,50},{-70,70}})));
    Modelica.ComplexBlocks.Sources.ComplexConstant complexConstant1(k=Complex(0.5,0))
      annotation (Placement(transformation(extent={{-90,-10},{-70,10}})));
    Modelica.ComplexBlocks.Sources.ComplexConstant complexConstant2(k=Complex(2,1))
      annotation (Placement(transformation(extent={{-90,-70},{-70,-50}})));
    Modelica.ComplexBlocks.ComplexMath.Feedback feedback1
      annotation (Placement(transformation(extent={{-30,80},{-10,100}})));
    Modelica.ComplexBlocks.ComplexMath.Feedback feedback2(useConjugateInput2=true)
      annotation (Placement(transformation(extent={{-30,50},{-10,70}})));
    Modelica.ComplexBlocks.ComplexMath.Gain gain1(k=Complex(0,2))
      annotation (Placement(transformation(extent={{-30,20},{-10,40}})));
    Modelica.ComplexBlocks.ComplexMath.Gain gain2(k=Complex(1,1), useConjugateInput=true)
      annotation (Placement(transformation(extent={{-30,-10},{-10,10}})));
    Modelica.ComplexBlocks.ComplexMath.Division division1
      annotation (Placement(transformation(extent={{20,80},{40,100}})));
    Modelica.ComplexBlocks.ComplexMath.Division division2(useConjugateInput2=true)
      annotation (Placement(transformation(extent={{20,50},{40,70}})));
    Modelica.ComplexBlocks.ComplexMath.Add3 add3Default
      annotation (Placement(transformation(extent={{20,-10},{40,10}})));
    Modelica.ComplexBlocks.ComplexMath.Add3 add3Conjugate(k2=Complex(-1,0), k3=Complex(0,2), useConjugateInput3=true)
      annotation (Placement(transformation(extent={{20,-50},{40,-30}})));
  equation
    connect(complexRotatingPhasor1.y, feedback1.u1) annotation (Line(points={{-69,60},{-50,60},{-50,96},{-32,96}}, color={85,170,255}));
    connect(complexConstant2.y, feedback1.u2) annotation (Line(points={{-69,-60},{-20,-60},{-20,78}}, color={85,170,255}));
    connect(complexRotatingPhasor1.y, feedback2.u1) annotation (Line(points={{-69,60},{-50,60},{-50,66},{-32,66}}, color={85,170,255}));
    connect(complexConstant2.y, feedback2.u2) annotation (Line(points={{-69,-60},{-20,-60},{-20,48}}, color={85,170,255}));
    connect(complexRotatingPhasor1.y, gain1.u) annotation (Line(points={{-69,60},{-50,60},{-50,30},{-32,30}}, color={85,170,255}));
    connect(complexRotatingPhasor1.y, gain2.u) annotation (Line(points={{-69,60},{-50,60},{-50,0},{-32,0}}, color={85,170,255}));
    connect(complexRotatingPhasor1.y, division1.u1) annotation (Line(points={{-69,60},{-26,60},{-26,96},{18,96}}, color={85,170,255}));
    connect(complexConstant2.y, division1.u2) annotation (Line(points={{-69,-60},{-26,-60},{-26,84},{18,84}}, color={85,170,255}));
    connect(complexRotatingPhasor1.y, division2.u1) annotation (Line(points={{-69,60},{-26,60},{-26,66},{18,66}}, color={85,170,255}));
    connect(complexConstant2.y, division2.u2) annotation (Line(points={{-69,-60},{-26,-60},{-26,54},{18,54}}, color={85,170,255}));
    connect(complexRotatingPhasor1.y, add3Default.u1) annotation (Line(points={{-69,60},{-26,60},{-26,8},{18,8}}, color={85,170,255}));
    connect(complexConstant1.y, add3Default.u2) annotation (Line(points={{-69,0},{18,0}}, color={85,170,255}));
    connect(complexConstant2.y, add3Default.u3) annotation (Line(points={{-69,-60},{-26,-60},{-26,-8},{18,-8}}, color={85,170,255}));
    connect(complexRotatingPhasor1.y, add3Conjugate.u1) annotation (Line(points={{-69,60},{-26,60},{-26,-32},{18,-32}}, color={85,170,255}));
    connect(complexConstant1.y, add3Conjugate.u2) annotation (Line(points={{-69,0},{-26,0},{-26,-40},{18,-40}}, color={85,170,255}));
    connect(complexConstant2.y, add3Conjugate.u3) annotation (Line(points={{-69,-60},{-26,-60},{-26,-48},{18,-48}}, color={85,170,255}));
    annotation (experiment(StopTime=1),
      Documentation(info="<html>
<p>
Tests the blocks of
<a href=\"modelica://Modelica.ComplexBlocks.ComplexMath\">Modelica.ComplexBlocks.ComplexMath</a>
whose equations contain the inline expression
<code>if useConjugateInput then Modelica.ComplexMath.conj(u) else u</code>:
Feedback, Gain, Division and Add3. Each is used with and without conjugated inputs.
</p>
<p>
Note: Modelon Impact (OCT) 2026 fails to compile this model. After inlining
<code>conj()</code>, the generated C code contains the record constructor
<code>Modelica.ComplexBlocks.Interfaces.ComplexOutput(...)</code> of the connector
alias type. The same defect appears for Sources.ComplexStep (see ComplexStep).
</p>
</html>"));
  end ComplexMathConjugateIfExpressions;
end ComplexBlocks;
