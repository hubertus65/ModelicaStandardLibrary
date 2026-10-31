within ModelicaTest.Electrical.Analog;
model AmplifierWithOpAmpDetailed_SmallSignal = Modelica.Electrical.Analog.Examples.AmplifierWithOpAmpDetailed(sineVoltage(V=4))
  "Variant of AmplifierWithOpAmpDetailed with a smaller input amplitude"
  annotation (experiment(StopTime=0.003, Interval=1.2e-6, Tolerance=2e-007), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.Analog.Examples.AmplifierWithOpAmpDetailed\">AmplifierWithOpAmpDetailed</a> with an input amplitude of 4 V instead of 12 V, so that the
OpAmpDetailed operates without hitting its supply limits.
</p>
</html>"));
