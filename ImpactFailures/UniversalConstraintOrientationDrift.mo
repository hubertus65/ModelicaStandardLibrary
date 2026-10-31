within ImpactFailures;
model UniversalConstraintOrientationDrift
  "OCT does not keep the orientation of a body attached by a UniversalConstraint; the result depends on the tolerance"
  extends Modelica.Mechanics.MultiBody.Examples.Constraints.UniversalConstraint;
  annotation (experiment(StopTime=1, Tolerance=1e-6), Documentation(info="<html>
<p>
<strong>Failure:</strong> wrong results, no error or warning. This is the unmodified MSL example
<a href=\"modelica://Modelica.Mechanics.MultiBody.Examples.Constraints.UniversalConstraint\">Constraints.UniversalConstraint</a>.
It moves two identical bodies, one attached by a
<a href=\"modelica://Modelica.Mechanics.MultiBody.Joints.Universal\">Universal</a> joint and one by a
<a href=\"modelica://Modelica.Mechanics.MultiBody.Joints.Constraints.Universal\">Constraints.Universal</a>,
so both must move the same way. In Modelon Impact the joint side is right, but the orientation of
<code>bodyOfConstraint</code> drifts. Its result changes with the solver tolerance and converges neither
to the joint side nor to OpenModelica:
</p>
<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
<tr><th>at t = 1 s</th><th>OpenModelica 1.27.1, rtol 1e-6 and 1e-8</th>
<th>Impact, rtol 1e-6</th><th>Impact, rtol 1e-8</th></tr>
<tr><td>bodyOfConstraint.frame_a.R.T[1,1]</td><td>0.5736</td><td>0.3789</td><td>0.5732</td></tr>
<tr><td>bodyOfConstraint.frame_a.R.T[2,3]</td><td>0.5010</td><td>0.8749</td><td>0.4769</td></tr>
<tr><td>bodyOfConstraint.body.w_a[1]</td><td>0.7067</td><td>1.4229</td><td>0.6758</td></tr>
<tr><td>joint.w_a</td><td>-1.56309</td><td>-1.56309</td><td>-1.56309</td></tr>
</table>
<p>
<strong>Isolation:</strong> the angular velocity of the joint side agrees to six digits at both
tolerances; only the body behind the constraint is wrong. The constraint fixes the relative position and one
relative angle, so its orientation residue closes a kinematic loop, and that residue is apparently not kept
during integration. Variants of RevoluteConstraint, SphericalConstraint and PrismaticConstraint (stiffer
spring) give consistent results in Impact at rtol 1e-6 and 1e-4.
</p>
<p>
<strong>Workaround:</strong> none in the model. The ModelicaTest test
<code>ModelicaTest.MultiBody.UniversalConstraint_StiffSpring</code> (branch <code>coverage-improvement</code>)
runs on OpenModelica.
</p>
</html>"));
end UniversalConstraintOrientationDrift;
