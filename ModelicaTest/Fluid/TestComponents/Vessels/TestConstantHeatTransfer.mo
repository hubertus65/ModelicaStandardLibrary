within ModelicaTest.Fluid.TestComponents.Vessels;
model TestConstantHeatTransfer "Test of Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.ConstantHeatTransfer"
  extends Modelica.Icons.Example;

  Modelica.Fluid.Vessels.ClosedVolume volume(redeclare package Medium = Medium, V=0.01, use_portsData=false, nPorts=1, use_HeatTransfer=true, redeclare model HeatTransfer = Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.ConstantHeatTransfer(alpha0=500), T_start=293.15, energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature wall(T=353.15)
    annotation (Placement(transformation(extent={{-70,-10},{-50,10}})));
  Modelica.Fluid.Sources.Boundary_pT pressure(redeclare package Medium = Medium, p=1e5, T=293.15, nPorts=1)
    annotation (Placement(transformation(extent={{50,-10},{70,10}})));
  inner Modelica.Fluid.System system
    annotation (Placement(transformation(extent={{60,-90},{80,-70}})));
  replaceable package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater constrainedby Modelica.Media.Interfaces.PartialMedium "Medium in all components";
equation
  connect(wall.port, volume.heatPort) annotation (Line(points={{-49,0},{-12,0}}, color={191,0,0}));
  connect(pressure.ports[1], volume.ports[1]) annotation (Line(points={{71,0},{-12,0}}, color={0,127,255}));
  annotation (experiment(StopTime=600),
    Documentation(info="<html>
<p>
A closed volume of 10 l of water at 20 &deg;C is heated through its wall by a 80 &deg;C
boundary, using
<a href=\"modelica://Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.ConstantHeatTransfer\">ConstantHeatTransfer</a>
with alpha0 = 500 W/(m2.K). The water temperature approaches the wall temperature
exponentially. A pressure boundary fixes the pressure of the incompressible water;
there is no flow through it, because the density is constant.
</p>
</html>"));
end TestConstantHeatTransfer;
