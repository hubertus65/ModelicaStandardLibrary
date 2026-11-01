within ModelicaTest.Fluid.TestComponents.Pipes;
model TestStaticPipeFlowModels "Test of the default flow model of StaticPipe and of the NoFriction wall friction functions"
  extends Modelica.Icons.Example;

  Modelica.Blocks.Sources.Ramp pRamp(height=2e5, duration=2, offset=1e5)
    annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
  Modelica.Fluid.Sources.Boundary_pT source(redeclare package Medium = Medium, use_p_in=true, T=293.15, nPorts=3)
    annotation (Placement(transformation(extent={{-70,-10},{-50,10}})));
  Modelica.Fluid.Pipes.StaticPipe pipeDefault(redeclare package Medium = Medium, length=10, diameter=0.05)
    annotation (Placement(transformation(extent={{-20,40},{0,60}})));
  Modelica.Fluid.Pipes.StaticPipe pipeNoFriction(redeclare package Medium = Medium, length=10, diameter=0.05, redeclare model FlowModel = Modelica.Fluid.Pipes.BaseClasses.FlowModels.DetailedPipeFlow(redeclare package WallFriction = Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction))
    annotation (Placement(transformation(extent={{-30,-10},{-10,10}})));
  Modelica.Fluid.Pipes.StaticPipe pipeNoFrictionCentral(redeclare package Medium = Medium, length=10, diameter=0.05, redeclare model FlowModel = Modelica.Fluid.Pipes.BaseClasses.FlowModels.DetailedPipeFlow(redeclare package WallFriction = Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction, useUpstreamScheme=false))
    annotation (Placement(transformation(extent={{-30,-60},{-10,-40}})));
  Modelica.Fluid.Fittings.SimpleGenericOrifice orifice1(redeclare package Medium = Medium, diameter=0.02, zeta=10)
    annotation (Placement(transformation(extent={{10,-10},{30,10}})));
  Modelica.Fluid.Fittings.SimpleGenericOrifice orifice2(redeclare package Medium = Medium, diameter=0.02, zeta=10)
    annotation (Placement(transformation(extent={{10,-60},{30,-40}})));
  Modelica.Fluid.Sources.Boundary_pT sink(redeclare package Medium = Medium, p=1e5, T=293.15, nPorts=3)
    annotation (Placement(transformation(extent={{60,-10},{80,10}})));
  inner Modelica.Fluid.System system
    annotation (Placement(transformation(extent={{60,-90},{80,-70}})));
  replaceable package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater constrainedby Modelica.Media.Interfaces.PartialMedium "Medium in all components";
equation
  connect(pRamp.y, source.p_in) annotation (Line(points={{-79,0},{-76,0},{-76,8},{-72,8}}, color={0,0,127}));
  connect(source.ports[1], pipeDefault.port_a) annotation (Line(points={{-50,2.67},{-40,2.67},{-40,50},{-20,50}}, color={0,127,255}));
  connect(pipeDefault.port_b, sink.ports[1]) annotation (Line(points={{0,50},{86,50},{86,2.67},{80,2.67}}, color={0,127,255}));
  connect(source.ports[2], pipeNoFriction.port_a) annotation (Line(points={{-50,0},{-30,0}}, color={0,127,255}));
  connect(pipeNoFriction.port_b, orifice1.port_a) annotation (Line(points={{-9,0},{8,0}}, color={0,127,255}));
  connect(orifice1.port_b, sink.ports[2]) annotation (Line(points={{30,0},{50,0},{50,12},{84,12},{84,0},{80,0}}, color={0,127,255}));
  connect(source.ports[3], pipeNoFrictionCentral.port_a) annotation (Line(points={{-50,-2.67},{-34,-2.67},{-34,-50},{-30,-50}}, color={0,127,255}));
  connect(pipeNoFrictionCentral.port_b, orifice2.port_a) annotation (Line(points={{-9,-50},{8,-50}}, color={0,127,255}));
  connect(orifice2.port_b, sink.ports[3]) annotation (Line(points={{30,-50},{84,-50},{84,-2.67},{80,-2.67}}, color={0,127,255}));
  annotation (experiment(StopTime=2),
    Documentation(info="<html>
<p>
Water flows from a source whose pressure ramps from 1 bar to 3 bar into a 1 bar sink.
<code>pipeDefault</code> is a StaticPipe with its default
<a href=\"modelica://Modelica.Fluid.Pipes.BaseClasses.PartialStraightPipe\">FlowModel</a>.
The two other pipes use DetailedPipeFlow with
<a href=\"modelica://Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction\">WallFriction.NoFriction</a>
and are followed by an orifice that determines the flow:
</p>
<ul>
<li><code>pipeNoFriction</code> (default settings) calls pressureLoss_m_flow_staticHead.</li>
<li><code>pipeNoFrictionCentral</code> (<code>useUpstreamScheme=false</code>, i.e. continuous flow
  reversal) calls pressureLoss_m_flow.</li>
</ul>
<p>
Both must have zero pressure drop. NoFriction.massFlowRate_dp and
massFlowRate_dp_staticHead consist only of <code>assert(false, ...)</code>; they are never
called, because NoFriction sets <code>dp_is_zero = true</code>, and are not tested.
</p>
</html>"));
end TestStaticPipeFlowModels;
