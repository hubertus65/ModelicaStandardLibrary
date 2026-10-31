within ImpactFailures;
model ComplexSumReduction
  "OCT crashes (StackOverflowError) on a sum over time-varying Complex in QuasiStatic.Polyphase.Basic.MutualInductor"
  extends Modelica.Icons.Example;
  Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Ground ground;
  Modelica.Electrical.QuasiStatic.Polyphase.Sources.VoltageSource source(m=3, f=50, V=fill(100, 3),
    gamma(fixed=true, start=0));
  Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starS(m=3);
  Modelica.Electrical.QuasiStatic.Polyphase.Basic.MutualInductor mutualInductor(m=3,
    L=[0.1, 0.02, 0.02; 0.02, 0.1, 0.02; 0.02, 0.02, 0.1]);
  Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor load(m=3, R_ref=fill(10, 3));
  Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starL(m=3);
equation
  connect(source.plug_n, starS.plug_p);
  connect(starS.pin_n, ground.pin);
  connect(source.plug_p, mutualInductor.plug_p);
  connect(mutualInductor.plug_n, load.plug_p);
  connect(load.plug_n, starL.plug_p);
  connect(starL.pin_n, ground.pin);
  annotation (experiment(StopTime=1), Documentation(info="<html>
<p>
<strong>Failure:</strong> the OCT compiler crashes while compiling this model:
</p>
<pre>
Compiler crashed:
java.lang.StackOverflowError
  at org.jmodelica.modelica.compiler.FRecordConstructor.&lt;init&gt;(Unknown Source)
  at org.jmodelica.modelica.compiler.FRecordType.createRecordConstructorCell(Unknown Source)
  at org.jmodelica.modelica.compiler.FType.createRecordConstructor(Unknown Source)
  at org.jmodelica.modelica.compiler.FExp.scalarize(Unknown Source)
  at org.jmodelica.modelica.compiler.FExp.scalarRecordFExp(Unknown Source)
  ...
</pre>
<p>
<strong>Trigger:</strong> the voltage equation of MutualInductor, a sum over time-varying Complex operator
records: <code>v[l] = sum(j*omega*L[l, k]*i[k] for k in 1:m)</code>. A local copy of the component with
<code>sum({j*omega*L[l, k]*i[k] for k in 1:m})</code> crashes the same way. A copy with real-valued scalar
products, <code>v[l] = j*omega*Complex(L[l, :]*i.re, L[l, :]*i.im)</code>, compiles and simulates.
</p>
<p>
<strong>Other tools:</strong> OpenModelica 1.27.1 simulates this model, and its currents match the analytic
solution. Dymola 2026x translates it.
</p>
<p>
<strong>Workaround in the MSL:</strong> modelica/ModelicaStandardLibrary#4846 rewrites the sum in real
arithmetic. OpenModelica results are unchanged within 4.3e-13.
</p>
</html>"));
end ComplexSumReduction;
