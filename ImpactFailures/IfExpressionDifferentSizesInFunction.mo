within ImpactFailures;
model IfExpressionDifferentSizesInFunction
  "OCT rejects Frames.smallRotation: if-expression with branches of different sizes and a function input as condition"
  extends Modelica.Icons.Example;
  import Modelica.Mechanics.MultiBody.Frames;
  import TM = Modelica.Mechanics.MultiBody.Frames.TransformationMatrices;
  Real a = 1e-3*time "Small rotation angle";
  Real phiTM[3] = TM.smallRotation(TM.axesRotations({1, 2, 3}, {a, 2*a, -a}))
    "Angles of the small rotation (TransformationMatrices)";
  Real resTM[6] = TM.smallRotation(TM.axesRotations({1, 2, 3}, {a, 2*a, -a}), true)
    "Angles and residues (TransformationMatrices)";
  Real phiF[3] = Frames.smallRotation(Frames.axesRotations({1, 2, 3}, {a, 2*a, -a}, {0, 0, 0}))
    "Angles of the small rotation (Frames)";
  Real resF[6] = Frames.smallRotation(Frames.axesRotations({1, 2, 3}, {a, 2*a, -a}, {0, 0, 0}), true)
    "Angles and residues (Frames)";
  annotation (experiment(StopTime=1), Documentation(info="<html>
<p>
<strong>Failure:</strong> OCT rejects both functions:
</p>
<pre>
Error at line 21, column 10, in function 'Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.smallRotation':
    If-expression with branches that have different array sizes must have parameter test-expression:
    {T[2,3], - T[1,3], T[1,2], T[1,1] - 1, T[2,2] - 1, T[1,1] * T[2,2] - T[2,1] * T[1,2] - 1} has size [6]
    {T[2,3], - T[1,3], T[1,2]} has size [3]
</pre>
<p>
<strong>Trigger:</strong> <code>phi := if withResidues then {...6 elements...} else {...3 elements...}</code>,
where <code>withResidues</code> is a function input, not a parameter expression. This follows the
specification rule that branches of different sizes need a parameter condition, so the MSL code is the
problem here rather than OCT. OpenModelica 1.27.1 accepts it.
</p>
<p>
<strong>Workaround in the MSL:</strong> modelica/ModelicaStandardLibrary#4848 assigns <code>phi</code> in an
if-statement. Its size is already fixed by the declaration <code>phi[if withResidues then 6 else 3]</code>.
OpenModelica results are bit-identical, and OCT compiles and simulates the changed functions.
</p>
</html>"));
end IfExpressionDifferentSizesInFunction;
