within ModelicaTest.Magnetic.QuasiStatic.FundamentalWave;
model SMPM_OpenCircuit_HalfSpeed = Modelica.Magnetic.QuasiStatic.FundamentalWave.Examples.BasicMachines.SynchronousMachines.SMPM_OpenCircuit(constantSpeed(w_fixed=78.53981633974483))
  "Variant of SMPM_OpenCircuit at half the nominal speed"
  annotation (experiment(StopTime=0.1, Interval=1E-4, Tolerance=1E-6), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Magnetic.QuasiStatic.FundamentalWave.Examples.BasicMachines.SynchronousMachines.SMPM_OpenCircuit\">SMPM_OpenCircuit</a> (QuasiStatic Polyphase and SinglePhase PotentialSensor)
driven at half the nominal speed, so the open-circuit voltages are half as large.
</p>
</html>"));
