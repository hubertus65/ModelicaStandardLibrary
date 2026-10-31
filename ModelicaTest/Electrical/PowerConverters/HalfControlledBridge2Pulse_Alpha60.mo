within ModelicaTest.Electrical.PowerConverters;
model HalfControlledBridge2Pulse_Alpha60 = Modelica.Electrical.PowerConverters.Examples.ACDC.RectifierBridge2Pulse.HalfControlledBridge2Pulse(constantFiringAngle=1.0471975511965976)
  "Variant of HalfControlledBridge2Pulse with a firing angle of 60 degree"
  annotation (experiment(StopTime=0.1, Tolerance=1e-06, Interval=0.0002), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.PowerConverters.Examples.ACDC.RectifierBridge2Pulse.HalfControlledBridge2Pulse\">HalfControlledBridge2Pulse</a> with a firing angle of 60 degree instead of 30 degree.
</p>
</html>"));
