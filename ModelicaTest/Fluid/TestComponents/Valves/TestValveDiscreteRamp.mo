within ModelicaTest.Fluid.TestComponents.Valves;
model TestValveDiscreteRamp "Test of Modelica.Fluid.Valves.ValveDiscreteRamp"
  extends Modelica.Icons.Example;

  Modelica.Fluid.Sources.Boundary_pT source(redeclare package Medium = Medium, p=2e5, T=293.15, nPorts=1)
    annotation (Placement(transformation(extent={{-70,-10},{-50,10}})));
  Modelica.Fluid.Valves.ValveDiscreteRamp valve(redeclare package Medium = Medium, dp_nominal=1e5, m_flow_nominal=1, Topen=0.5, Tclose=0.3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.BooleanTable command(table={0.2, 1.2})
    annotation (Placement(transformation(extent={{-40,30},{-20,50}})));
  Modelica.Fluid.Sources.Boundary_pT sink(redeclare package Medium = Medium, p=1e5, T=293.15, nPorts=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={60,0})));
  inner Modelica.Fluid.System system
    annotation (Placement(transformation(extent={{60,-90},{80,-70}})));
  replaceable package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater constrainedby Modelica.Media.Interfaces.PartialMedium "Medium in all components";
equation
  connect(source.ports[1], valve.port_a) annotation (Line(points={{-49,0},{-12,0}}, color={0,127,255}));
  connect(valve.port_b, sink.ports[1]) annotation (Line(points={{10,0},{50,0}}, color={0,127,255}));
  connect(command.y, valve.open) annotation (Line(points={{-19,40},{0,40},{0,8}}, color={255,0,255}));
  annotation (experiment(StopTime=2),
    Documentation(info="<html>
<p>
<a href=\"modelica://Modelica.Fluid.Valves.ValveDiscreteRamp\">ValveDiscreteRamp</a> between a
2 bar source and a 1 bar sink. The valve is commanded open at t = 0.2 s and closed at
t = 1.2 s. It opens within <code>Topen</code> = 0.5 s and closes within
<code>Tclose</code> = 0.3 s. At full opening, the mass flow is the nominal 1 kg/s.
</p>
</html>"));
end TestValveDiscreteRamp;
