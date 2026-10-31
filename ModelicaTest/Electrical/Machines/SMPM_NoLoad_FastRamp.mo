within ModelicaTest.Electrical.Machines;
model SMPM_NoLoad_FastRamp = Modelica.Electrical.Machines.Examples.SynchronousMachines.SMPM_NoLoad(ramp(duration=0.08))
  "Variant of SMPM_NoLoad with a faster speed ramp"
  annotation (experiment(StopTime=0.32, Interval=0.0001), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.Machines.Examples.SynchronousMachines.SMPM_NoLoad\">SMPM_NoLoad</a> (HallSensor) with a speed ramp duration of 0.08 s
instead of 0.16 s.
</p>
</html>"));
