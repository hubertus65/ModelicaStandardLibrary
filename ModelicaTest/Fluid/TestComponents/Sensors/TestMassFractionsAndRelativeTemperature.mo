within ModelicaTest.Fluid.TestComponents.Sensors;
model TestMassFractionsAndRelativeTemperature "Test of the MassFractions, MassFractionsTwoPort and RelativeTemperature sensors of Modelica.Fluid.Sensors"
  extends Modelica.Icons.Example;

  Modelica.Blocks.Sources.Ramp TRamp(height=20, duration=1, offset=300)
    annotation (Placement(transformation(extent={{-100,30},{-80,50}})));
  Modelica.Blocks.Sources.RealExpression xWater(y=0.005 + 0.01*time)
    annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
  Modelica.Blocks.Sources.RealExpression xAir(y=1 - xWater.y)
    annotation (Placement(transformation(extent={{-100,-40},{-80,-20}})));
  Modelica.Fluid.Sources.Boundary_pT source(redeclare package Medium = Medium, use_T_in=true, use_X_in=true, p=1.1e5, nPorts=3)
    annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
  Modelica.Fluid.Sensors.MassFractions massFractions1(redeclare package Medium = Medium, substanceName="water")
    annotation (Placement(transformation(extent={{-20,40},{0,60}})));
  Modelica.Fluid.Sensors.MassFractionsTwoPort massFractionsTwoPort1(redeclare package Medium = Medium, substanceName="water")
    annotation (Placement(transformation(extent={{-20,-10},{0,10}})));
  Modelica.Fluid.Fittings.SimpleGenericOrifice orifice1(redeclare package Medium = Medium, diameter=0.05, zeta=2)
    annotation (Placement(transformation(extent={{15,-10},{35,10}})));
  Modelica.Fluid.Sensors.RelativeTemperature relativeTemperature1(redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{15,-60},{35,-40}})));
  Modelica.Fluid.Sources.Boundary_pT sink(redeclare package Medium = Medium, p=1e5, T=290, nPorts=2)
    annotation (Placement(transformation(extent={{60,-10},{80,10}})));
  inner Modelica.Fluid.System system
    annotation (Placement(transformation(extent={{60,-90},{80,-70}})));
  replaceable package Medium = Modelica.Media.Air.MoistAir constrainedby Modelica.Media.Interfaces.PartialMedium "Medium in all components";
equation
  connect(TRamp.y, source.T_in) annotation (Line(points={{-79,40},{-70,40},{-70,0},{-62,0}}, color={0,0,127}));
  connect(xWater.y, source.X_in[1]) annotation (Line(points={{-79,0},{-62,0}}, color={0,0,127}));
  connect(xAir.y, source.X_in[2]) annotation (Line(points={{-79,-30},{-70,-30},{-70,0},{-62,0}}, color={0,0,127}));
  connect(source.ports[1], massFractionsTwoPort1.port_a) annotation (Line(points={{-39,0},{-22,0}}, color={0,127,255}));
  connect(massFractionsTwoPort1.port_b, orifice1.port_a) annotation (Line(points={{1,0},{13,0}}, color={0,127,255}));
  connect(orifice1.port_b, sink.ports[1]) annotation (Line(points={{36,0},{58,0}}, color={0,127,255}));
  connect(source.ports[2], massFractions1.port) annotation (Line(points={{-39,0},{-30,0},{-30,50},{-22,50}}, color={0,127,255}));
  connect(source.ports[3], relativeTemperature1.port_a) annotation (Line(points={{-39,0},{-13,0},{-13,-50},{13,-50}}, color={0,127,255}));
  connect(relativeTemperature1.port_b, sink.ports[2]) annotation (Line(points={{36,-50},{47,-50},{47,0},{58,0}}, color={0,127,255}));
  annotation (experiment(StopTime=1),
    Documentation(info="<html>
<p>
Moist air flows from a source with ramping temperature (300 K to 320 K) and
water mass fraction (0.005 to 0.015) through an orifice into a sink at 290 K.
The source composition is measured with
<a href=\"modelica://Modelica.Fluid.Sensors.MassFractions\">MassFractions</a> (one port) and
<a href=\"modelica://Modelica.Fluid.Sensors.MassFractionsTwoPort\">MassFractionsTwoPort</a> (in the flow).
<a href=\"modelica://Modelica.Fluid.Sensors.RelativeTemperature\">RelativeTemperature</a> measures
the temperature difference between source and sink (10 K to 30 K).
</p>
</html>"));
end TestMassFractionsAndRelativeTemperature;
