within ModelicaTest.Electrical.Analog;
model AD_DA_conversion_N4 = Modelica.Electrical.Analog.Examples.AD_DA_conversion(N=4)
  "Variant of AD_DA_conversion with a 4 bit signal width"
  annotation (experiment(StopTime=0.2), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.Analog.Examples.AD_DA_conversion\">AD_DA_conversion</a> with a signal width of 4 bit instead of 7 bit for the
AD_Converter and DA_Converter: the quantization steps of the reconstructed sine are 16 times
larger.
</p>
</html>"));
