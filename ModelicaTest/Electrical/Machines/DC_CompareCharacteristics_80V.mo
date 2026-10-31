within ModelicaTest.Electrical.Machines;
model DC_CompareCharacteristics_80V = Modelica.Electrical.Machines.Examples.DCMachines.DC_CompareCharacteristics(Va=80, Ve=80)
  "Variant of DC_CompareCharacteristics with armature and excitation voltages of 80 V"
  annotation (experiment(StopTime=6, Interval=0.001), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.Machines.Examples.DCMachines.DC_CompareCharacteristics\">DC_CompareCharacteristics</a> (permanent magnet, electrically excited, series
excited and the quasi-static DC machines) with armature and excitation voltages of 80 V instead
of 100 V.
</p>
</html>"));
