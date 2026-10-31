within ModelicaTest.Electrical.Machines;
model DCPM_Drive_FastRamp = Modelica.Electrical.Machines.Examples.DCMachines.DCPM_Drive(ramp1(duration=0.25))
  "Variant of DCPM_Drive with a faster voltage ramp of the first machine"
  annotation (experiment(StopTime=2.0, Interval=1E-4, Tolerance=1E-6), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.Machines.Examples.DCMachines.DCPM_Drive\">DCPM_Drive</a> (Utilities.Coupling, Voltage2DutyCycle) with a voltage
ramp duration of 0.25 s instead of 0.5 s for the first machine.
</p>
</html>"));
