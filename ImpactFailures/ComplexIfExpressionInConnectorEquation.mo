within ImpactFailures;
model ComplexIfExpressionInConnectorEquation
  "OCT generates C code that does not compile for a Complex if-expression in the equation of a ComplexOutput"
  extends Modelica.Icons.Example;
  Modelica.ComplexBlocks.Sources.ComplexRotatingPhasor src(magnitude=1, w=6.283185307179586);
  Modelica.ComplexBlocks.ComplexMath.Gain gain(k=Complex(1, 1), useConjugateInput=true);
  Modelica.ComplexBlocks.ComplexMath.ComplexToReal toReal;
  Modelica.ComplexBlocks.Sources.ComplexStep step(height=Complex(1, 1), offset=Complex(0.5, 0),
    startTime=0.5);
  Modelica.ComplexBlocks.ComplexMath.ComplexToReal stepToReal;
equation
  connect(src.y, gain.u);
  connect(gain.y, toReal.u);
  connect(step.y, stepToReal.u);
  annotation (experiment(StopTime=1), Documentation(info="<html>
<p>
<strong>Failure:</strong> the generated C code does not compile. The record constructor of the connector
type leaks into the C source:
</p>
<pre>
sources/..._equ.c: In function 'model_ode_derivatives_base':
error: 'Modelica' undeclared (first use in this function)
  _temp_..._13 = COND_EXP_EQ(_g_useConjugateInput_6, JMI_TRUE,
      (Modelica.ComplexBlocks.Interfaces.ComplexOutput(_g_u_re_7, - _g_u_im_8)).re, _g_u_re_7);
</pre>
<p>
<strong>Trigger:</strong> a Complex if-expression written inline in the equation of a
<code>ComplexOutput</code> connector:
</p>
<ul>
<li><code>y = k*(if useConjugateInput then Modelica.ComplexMath.conj(u) else u)</code> in ComplexMath.Gain,
and likewise in Feedback, Division and Add3</li>
<li><code>y = offset + (if time &lt; startTime then Complex(0) else height)</code> in Sources.ComplexStep</li>
</ul>
<p>
Each block alone reproduces it, and so do local copies of the blocks. Assigning the if-expression to a
protected <code>Complex</code> variable first compiles and simulates. ComplexMath.Add and Product already
do this through <code>u1Internal</code>/<code>u2Internal</code> of Interfaces.ComplexSI2SO.
</p>
<p>
<strong>Workaround in the MSL:</strong> modelica/ModelicaStandardLibrary#4847 uses intermediate variables in
the five blocks. OpenModelica results are bit-identical.
</p>
</html>"));
end ComplexIfExpressionInConnectorEquation;
