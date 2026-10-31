within ModelicaTest.Electrical.PowerConverters;
model ChopperBuckBoost_DutyCycle_36V = Modelica.Electrical.PowerConverters.Examples.DCDC.ChopperBuckBoost.ChopperBuckBoost_DutyCycle(VHV=36)
  "Variant of ChopperBuckBoost_DutyCycle with a high voltage side of 36 V"
  annotation (experiment(StopTime=0.1, Interval=1e-06, Tolerance=1e-06), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.PowerConverters.Examples.DCDC.ChopperBuckBoost.ChopperBuckBoost_DutyCycle\">ChopperBuckBoost_DutyCycle</a> with a high voltage side of 36 V instead of 24 V.
</p>
</html>"));
