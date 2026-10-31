within ModelicaTest.Fluid.TestUtilities;
model TestRegRootDerAndCubicHermite "Test of Modelica.Fluid.Utilities.regRoot_der and cubicHermite"
  extends Modelica.Icons.Example;
  import Modelica.Fluid.Utilities;

  Real x=2*time - 1 "Argument from -1 to 1";
  Real y=Utilities.regRoot(x, 0.01) "Regularized square root";
  Real der_y=der(y) "Time derivative of y, uses regRoot_der";
  Real der_yError=der_y - 2*(x^2/2 + 0.01^2)/(x^2 + 0.01^2)^1.25
    "Must be zero (analytic derivative of x/(x^2 + delta^2)^0.25 times dx/dt = 2)";
  Real h=Utilities.cubicHermite(x, -1, 1, 2, 0, -1, 0.5) "Cubic Hermite spline through (-1, 2) and (1, 0)";
  Real hError1=Utilities.cubicHermite(-1, -1, 1, 2, 0, -1, 0.5) - 2 "Must be zero (left end point)";
  Real hError2=Utilities.cubicHermite(1, -1, 1, 2, 0, -1, 0.5) "Must be zero (right end point)";
  annotation (experiment(StopTime=1.0), Documentation(info="<html>
<p>
Differentiates
<a href=\"modelica://Modelica.Fluid.Utilities.regRoot\">regRoot</a> explicitly with
<code>der()</code>, so that its derivative function regRoot_der is used. The
result is compared with the analytic derivative of x/(x<sup>2</sup> + &delta;<sup>2</sup>)<sup>1/4</sup>
(<code>der_yError</code> must be zero). Also evaluates
<a href=\"modelica://Modelica.Fluid.Utilities.cubicHermite\">cubicHermite</a>; it must
reproduce the end point values (<code>hError1</code>, <code>hError2</code>).
</p>
</html>"));
end TestRegRootDerAndCubicHermite;
