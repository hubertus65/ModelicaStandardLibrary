within ModelicaTest.Electrical.Analog;
model ControlledSwitchWithArc_100V = Modelica.Electrical.Analog.Examples.ControlledSwitchWithArc(constantVoltage1(V=100), constantVoltage2(V=100))
  "Variant of ControlledSwitchWithArc with a supply voltage of 100 V"
  annotation (experiment(StopTime=6, Interval=0.00025, Tolerance=1e-006), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.Analog.Examples.ControlledSwitchWithArc\">ControlledSwitchWithArc</a> with a supply voltage of 100 V instead of 50 V for the
ControlledIdealClosingSwitch and the ControlledCloserWithArc.
</p>
</html>"));
