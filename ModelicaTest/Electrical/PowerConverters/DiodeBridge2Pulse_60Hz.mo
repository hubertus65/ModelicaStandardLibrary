within ModelicaTest.Electrical.PowerConverters;
model DiodeBridge2Pulse_60Hz = Modelica.Electrical.PowerConverters.Examples.ACDC.RectifierBridge2Pulse.DiodeBridge2Pulse(Vrms=230, f=60, R=50)
  "Variant of DiodeBridge2Pulse with a 230 V, 60 Hz supply and a 50 Ohm load"
  annotation (experiment(StopTime=0.1, Tolerance=1e-06, Interval=0.0002), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.PowerConverters.Examples.ACDC.RectifierBridge2Pulse.DiodeBridge2Pulse\">DiodeBridge2Pulse</a> with a 230 V, 60 Hz supply and a 50 Ohm load.
</p>
</html>"));
