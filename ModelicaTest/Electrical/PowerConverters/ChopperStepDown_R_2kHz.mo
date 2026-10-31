within ModelicaTest.Electrical.PowerConverters;
model ChopperStepDown_R_2kHz = Modelica.Electrical.PowerConverters.Examples.DCDC.ChopperStepDown.ChopperStepDown_R(f=2000)
  "Variant of ChopperStepDown_R with a switching frequency of 2 kHz"
  annotation (experiment(StopTime=0.1, Interval=1e-05, Tolerance=1e-06), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.PowerConverters.Examples.DCDC.ChopperStepDown.ChopperStepDown_R\">ChopperStepDown_R</a> with a switching frequency of 2 kHz instead of 1 kHz.
</p>
</html>"));
