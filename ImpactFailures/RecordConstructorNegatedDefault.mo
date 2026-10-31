within ImpactFailures;
model RecordConstructorNegatedDefault
  "OCT negates a record field when another field defaults to its negation and the record constructor is called"
  extends Modelica.Icons.Example;
  record Neg "Field b defaults to the negation of field a"
    Real a=1;
    Real b=-a;
  end Neg;
  record Twice "Field b defaults to twice field a (works)"
    Real a=1;
    Real b=2*a;
  end Twice;
  Neg n=Neg() "Expected a = 1, b = -1; OCT gives a = -1, b = -1";
  Neg n5=Neg(a=5) "Expected a = 5, b = -5; OCT gives a = -5, b = -5";
  Neg m(a=5) "Component modifier instead of the constructor: a = 5, b = -5 (correct)";
  Twice t=Twice() "a = 1, b = 2 (correct)";
  Modelica.Media.Common.BridgmansTables bt=Modelica.Media.Common.BridgmansTables(v=1e-3, p=1e5, T=300,
    s=400, cp=4180, alpha=2e-4, gamma=4.5e-10)
    "Expected dTp = 1 (default) and dhp = cp; OCT gives dTp = -1 and dhp = -cp";
  annotation (experiment(StopTime=1), Documentation(info="<html>
<p>
<strong>Failure:</strong> wrong values, no error or warning. When a record has a field whose default is the
unary negation of another field (<code>Real b=-a</code>), a call of the record constructor returns the
negated value for <em>both</em> fields: <code>Neg()</code> gives <code>a = -1</code> instead of 1, and even
an explicit argument is negated, <code>Neg(a=5)</code> gives <code>a = -5</code>. Integer fields behave the
same way. OpenModelica gives the expected values.
</p>
<p>
<strong>Isolation:</strong> defaults <code>b=2*a</code> and <code>b=a + 1</code> are correct, so is
<code>b=-c</code> when <code>c</code> is bound to an expression of an input (<code>c=2*x</code>).
Declaring the record with a component modifier, <code>Neg m(a=5)</code>, instead of calling the
constructor is correct as well. That suggests the alias <code>b = -a</code> is eliminated with the sign
applied to the wrong side.
</p>
<p>
<strong>MSL impact:</strong> <a href=\"modelica://Modelica.Media.Common.BridgmansTables\">BridgmansTables</a>
declares <code>dTp=1</code>, <code>dpT=-dTp</code> and several more negated pairs
(<code>dpv=-dvp</code>, <code>dps=-dsp</code>, ...). Called as a constructor, Impact returns
<code>dTp = -1</code> and <code>dhp = -cp</code>. The MSL itself does not use BridgmansTables, so there is
no MSL pull request; the ModelicaTest test <code>ModelicaTest.Media.ThermoFluidSpecialRecords</code>
uses the component-modifier form as the workaround.
</p>
</html>"));
end RecordConstructorNegatedDefault;
