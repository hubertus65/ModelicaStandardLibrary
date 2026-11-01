within ModelicaTest.Fluid.TestUtilities;
model VectorizedPortsFluidAndHeat
  "Test of the vectorized connectors Modelica.Fluid.Interfaces.FluidPorts_a and HeatPorts_b"
  extends Modelica.Icons.Example;
  package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater "Medium";
  model FluidJunction "Lossless junction of two fluid ports, as FluidPorts_a"
    replaceable package Medium = Modelica.Media.Interfaces.PartialMedium "Medium";
    Modelica.Fluid.Interfaces.FluidPorts_a ports[2](redeclare each package Medium=Medium)
      "Two fluid ports"
      annotation (Placement(transformation(extent={{-40,90},{40,110}})));
  equation
    ports[1].p = ports[2].p;
    ports[1].m_flow + ports[2].m_flow = 0;
    ports[1].h_outflow = inStream(ports[2].h_outflow);
    ports[2].h_outflow = inStream(ports[1].h_outflow);
    ports[1].Xi_outflow = inStream(ports[2].Xi_outflow);
    ports[2].Xi_outflow = inStream(ports[1].Xi_outflow);
    ports[1].C_outflow = inStream(ports[2].C_outflow);
    ports[2].C_outflow = inStream(ports[1].C_outflow);
    annotation (Icon(graphics={
          Rectangle(extent={{-40,90},{40,-40}}, lineColor={0,127,255}, fillColor={0,127,255},
            fillPattern=FillPattern.Solid),
          Text(extent={{-150,-50},{150,-90}}, textString="%name", textColor={0,0,255})}));
  end FluidJunction;
  model HeatJunction "Ideal thermal connection of two heat ports, as HeatPorts_b"
    Modelica.Fluid.Interfaces.HeatPorts_b heatPorts[2] "Two heat ports"
      annotation (Placement(transformation(extent={{-40,90},{40,110}})));
  equation
    heatPorts[1].T = heatPorts[2].T;
    heatPorts[1].Q_flow + heatPorts[2].Q_flow = 0;
    annotation (Icon(graphics={
          Rectangle(extent={{-40,90},{40,-40}}, lineColor={191,0,0}, fillColor={191,0,0},
            fillPattern=FillPattern.Solid),
          Text(extent={{-150,-50},{150,-90}}, textString="%name", textColor={0,0,255})}));
  end HeatJunction;
  inner Modelica.Fluid.System system "System properties"
    annotation (Placement(transformation(extent={{-90,70},{-70,90}})));
  Modelica.Fluid.Sources.Boundary_pT source(redeclare package Medium=Medium, p=2e5, T=300, nPorts=1)
    "Pressure source"
    annotation (Placement(transformation(extent={{-90,30},{-70,50}})));
  Modelica.Fluid.Sources.Boundary_pT sink(redeclare package Medium=Medium, p=1e5, T=300, nPorts=1,
    use_p_in=true) "Sink with variable pressure"
    annotation (Placement(transformation(extent={{70,30},{50,50}})));
  Modelica.Blocks.Sources.Ramp pSink(height=0.5e5, duration=1, offset=1e5) "Sink pressure"
    annotation (Placement(transformation(extent={{110,38},{90,58}})));
  Modelica.Fluid.Fittings.SimpleGenericOrifice orifice(redeclare package Medium=Medium, diameter=0.02,
    zeta=2) "Orifice"
    annotation (Placement(transformation(extent={{-10,30},{10,50}})));
  FluidJunction junction(redeclare package Medium=Medium) "Junction with FluidPorts_a"
    annotation (Placement(transformation(extent={{-40,0},{-20,20}})));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature hot(T=350) "Hot side"
    annotation (Placement(transformation(extent={{-90,-50},{-70,-30}})));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature cold(T=300) "Cold side"
    annotation (Placement(transformation(extent={{90,-50},{70,-30}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor conductor(G=2) "Conductance"
    annotation (Placement(transformation(extent={{-50,-50},{-30,-30}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor conductor2(G=3) "Second conductance"
    annotation (Placement(transformation(extent={{30,-50},{50,-30}})));
  HeatJunction heatJunction "Junction with HeatPorts_b"
    annotation (Placement(transformation(extent={{-10,-80},{10,-60}})));
equation
  connect(source.ports[1], junction.ports[1])
    annotation (Line(points={{-70,40},{-32,40},{-32,20}}, color={0,127,255}));
  connect(junction.ports[2], orifice.port_a)
    annotation (Line(points={{-28,20},{-28,40},{-10,40}}, color={0,127,255}));
  connect(orifice.port_b, sink.ports[1])
    annotation (Line(points={{10,40},{50,40}}, color={0,127,255}));
  connect(pSink.y, sink.p_in)
    annotation (Line(points={{89,48},{72,48}}, color={0,0,127}));
  connect(hot.port, conductor.port_a)
    annotation (Line(points={{-70,-40},{-50,-40}}, color={191,0,0}));
  connect(conductor.port_b, heatJunction.heatPorts[1])
    annotation (Line(points={{-30,-40},{-2,-40},{-2,-60}}, color={191,0,0}));
  connect(heatJunction.heatPorts[2], conductor2.port_a)
    annotation (Line(points={{2,-60},{2,-40},{30,-40}}, color={191,0,0}));
  connect(conductor2.port_b, cold.port)
    annotation (Line(points={{50,-40},{70,-40}}, color={191,0,0}));
  annotation (Diagram(coordinateSystem(extent={{-100,-100},{120,100}})),
    experiment(StopTime=1), Documentation(info="<html>
<p>
The vectorized connectors
<a href=\"modelica://Modelica.Fluid.Interfaces.FluidPorts_a\">FluidPorts_a</a> and
<a href=\"modelica://Modelica.Fluid.Interfaces.HeatPorts_b\">HeatPorts_b</a> are not used anywhere in the
MSL. Each is used by a small junction model in series with an orifice (flow from 2 bar to a sink rising
from 1 to 1.5 bar) and between two thermal conductances (350 K and 300 K, G = 2 and 3 W/K: 60 W, junction at
320 K).
</p>
</html>"));
end VectorizedPortsFluidAndHeat;
