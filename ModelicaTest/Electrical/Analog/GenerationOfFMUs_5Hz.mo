within ModelicaTest.Electrical.Analog;
model GenerationOfFMUs_5Hz = Modelica.Electrical.Analog.Examples.GenerationOfFMUs(sine12(f=5), sine34(f=5))
  "Variant of GenerationOfFMUs with a source frequency of 5 Hz"
  annotation (experiment(StopTime=1, Interval=0.001), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.Analog.Examples.GenerationOfFMUs\">GenerationOfFMUs</a> with a source frequency of 5 Hz instead of 2 Hz for the
GeneralCurrentToVoltageAdaptor and GeneralVoltageToCurrentAdaptor circuits.
</p>
</html>"));
