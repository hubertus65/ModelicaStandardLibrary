within ModelicaTest.Fluid.TestComponents.Fittings;
model TestBendsAndOrifices "Test of the bend, thick edged orifice and volume flow rate resistances of Modelica.Fluid.Fittings"
  extends Modelica.Icons.Example;

  Modelica.Blocks.Sources.TimeTable p_table(table=[0,0.5e5; 10,2e5])
    annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
  Modelica.Fluid.Sources.Boundary_pT source(redeclare package Medium = Medium, use_p_in=true, T=293.15, nPorts=5)
    annotation (Placement(transformation(extent={{-70,-10},{-50,10}})));
  Modelica.Fluid.Fittings.Bends.CurvedBend curvedBend(redeclare package Medium = Medium, geometry(d_hyd=0.05, R_0=0.2))
    annotation (Placement(transformation(extent={{-10,70},{10,90}})));
  Modelica.Fluid.Fittings.Bends.EdgedBend edgedBend(redeclare package Medium = Medium, geometry(d_hyd=0.05, delta=Modelica.Constants.pi/4))
    annotation (Placement(transformation(extent={{-10,30},{10,50}})));
  Modelica.Fluid.Fittings.Orifices.ThickEdgedOrifice orificeRectangular(redeclare package Medium = Medium, geometry=Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices.rectangular(width=0.05, height=0.03, venaWidth=0.03, venaHeight=0.02, venaLength=0.01))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Modelica.Fluid.Fittings.Orifices.ThickEdgedOrifice orificeGeneral(redeclare package Medium = Medium, geometry=Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices.general(crossArea=1.5e-3, perimeter=0.16, venaCrossArea=6e-4, venaPerimeter=0.1, venaLength=0.01))
    annotation (Placement(transformation(extent={{-10,-50},{10,-30}})));
  Modelica.Fluid.Fittings.GenericResistances.VolumeFlowRate volumeFlowRate(redeclare package Medium = Medium, a=1e9, b=1e5)
    annotation (Placement(transformation(extent={{-10,-90},{10,-70}})));
  Modelica.Fluid.Sources.Boundary_pT sink(redeclare package Medium = Medium, p=1e5, T=293.15, nPorts=5)
    annotation (Placement(transformation(extent={{50,-10},{70,10}})));
  inner Modelica.Fluid.System system
    annotation (Placement(transformation(extent={{60,-90},{80,-70}})));
  replaceable package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater constrainedby Modelica.Media.Interfaces.PartialMedium "Medium in all components";
equation
  connect(p_table.y, source.p_in) annotation (Line(points={{-79,0},{-72,0}}, color={0,0,127}));
  connect(source.ports[1], curvedBend.port_a) annotation (Line(points={{-49,0},{-30,0},{-30,80},{-12,80}}, color={0,127,255}));
  connect(source.ports[2], edgedBend.port_a) annotation (Line(points={{-49,0},{-30,0},{-30,40},{-12,40}}, color={0,127,255}));
  connect(source.ports[3], orificeRectangular.port_a) annotation (Line(points={{-49,0},{-12,0}}, color={0,127,255}));
  connect(source.ports[4], orificeGeneral.port_a) annotation (Line(points={{-49,0},{-30,0},{-30,-40},{-12,-40}}, color={0,127,255}));
  connect(source.ports[5], volumeFlowRate.port_a) annotation (Line(points={{-49,0},{-30,0},{-30,-80},{-12,-80}}, color={0,127,255}));
  connect(curvedBend.port_b, sink.ports[1]) annotation (Line(points={{11,80},{30,80},{30,0},{48,0}}, color={0,127,255}));
  connect(edgedBend.port_b, sink.ports[2]) annotation (Line(points={{11,40},{30,40},{30,0},{48,0}}, color={0,127,255}));
  connect(orificeRectangular.port_b, sink.ports[3]) annotation (Line(points={{11,0},{48,0}}, color={0,127,255}));
  connect(orificeGeneral.port_b, sink.ports[4]) annotation (Line(points={{11,-40},{30,-40},{30,0},{48,0}}, color={0,127,255}));
  connect(volumeFlowRate.port_b, sink.ports[5]) annotation (Line(points={{11,-80},{30,-80},{30,0},{48,0}}, color={0,127,255}));
  annotation (experiment(StopTime=10),
    Documentation(info="<html>
<p>
A pressure source that ramps from 0.5 bar to 2 bar drives water through five
resistances in parallel, each to a 1 bar sink: CurvedBend, EdgedBend,
ThickEdgedOrifice (rectangular and general cross section, built with the
geometry functions of Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices)
and GenericResistances.VolumeFlowRate. The flow reverses at t = 3.3 s, when the
source pressure passes 1 bar, so both flow directions and the regularization
around zero flow are exercised.
</p>
</html>"));
end TestBendsAndOrifices;
