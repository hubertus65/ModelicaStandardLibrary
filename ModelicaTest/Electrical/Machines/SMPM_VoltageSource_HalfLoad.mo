within ModelicaTest.Electrical.Machines;
model SMPM_VoltageSource_HalfLoad = Modelica.Electrical.Machines.Examples.SynchronousMachines.SMPM_VoltageSource(TLoad=90.7)
  "Variant of SMPM_VoltageSource with half the nominal load torque"
  annotation (experiment(StopTime=2.0, Interval=1E-4, Tolerance=1e-06), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.Machines.Examples.SynchronousMachines.SMPM_VoltageSource\">SMPM_VoltageSource</a> (SinCosResolver, SinCosEvaluation) with half the
nominal load torque.
</p>
</html>"));
