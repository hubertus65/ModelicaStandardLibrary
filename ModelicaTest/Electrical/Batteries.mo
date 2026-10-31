within ModelicaTest.Electrical;
package Batteries "Test models for Modelica.Electrical.Batteries"
  extends Modelica.Icons.ExamplesPackage;

  model CCCV_StackRC_Isc1500 = Modelica.Electrical.Batteries.Examples.CCCV_StackRC(Isc=1500)
    "Variant of CCCV_StackRC with a short-circuit current of 1500 A"
    annotation (experiment(StopTime=1200, Interval=0.1, Tolerance=1e-06), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.Batteries.Examples.CCCV_StackRC\">CCCV_StackRC</a> (CellRCStack, StackRC with sensors, CCCVcharger) with a
cell short-circuit current of 1500 A instead of 1200 A, i.e. a smaller inner resistance.
</p>
</html>"));

  model CCCV_Stack_Isc1500 = Modelica.Electrical.Batteries.Examples.CCCV_Stack(Isc=1500)
    "Variant of CCCV_Stack with a short-circuit current of 1500 A"
    annotation (experiment(StopTime=1200, Interval=0.1, Tolerance=1e-06), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.Batteries.Examples.CCCV_Stack\">CCCV_Stack</a> (CellStack, Stack with sensors, CCCVcharger) with a cell
short-circuit current of 1500 A instead of 1200 A.
</p>
</html>"));

  model SuperCapDischargeCharge_400A = Modelica.Electrical.Batteries.Examples.SuperCapDischargeCharge(gain(k=400))
    "Variant of SuperCapDischargeCharge with a pulse current of 400 A"
    annotation (experiment(StopTime=720, Interval=0.01, Tolerance=1e-06), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.Batteries.Examples.SuperCapDischargeCharge\">SuperCapDischargeCharge</a> (SuperCap, PulseSeries) with a pulse current amplitude
of 400 A instead of 300 A.
</p>
</html>"));

  model ShowImpedance_Qnom7200 = Modelica.Electrical.Batteries.Examples.ShowImpedance(cellData(Qnom=7200))
    "Variant of ShowImpedance with a nominal charge of 7200 As"
    annotation (experiment(Interval=0.0001, StopTime=1), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.Batteries.Examples.ShowImpedance\">ShowImpedance</a> (Utilities.Impedance) with a nominal cell charge of
7200 As instead of 3600 As.
</p>
</html>"));
end Batteries;
