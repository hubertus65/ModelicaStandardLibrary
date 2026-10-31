within ModelicaTest.Electrical.Machines;
model BrushRampedRheostatAndThermalAmbientDCCE "Test of Losses.InductionMachines.Brush, Utilities.RampedRheostat and Thermal.DCMachines.ThermalAmbientDCCE"
  extends Modelica.Icons.Example;

  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-100,-100},{-80,-80}})));
  Modelica.Electrical.Polyphase.Sources.SineVoltage source(m=3, V=fill(50, 3), f=fill(50, 3))
    annotation (Placement(transformation(extent={{-100,20},{-80,40}})));
  Modelica.Electrical.Polyphase.Basic.Star starS(m=3)
    annotation (Placement(transformation(extent={{-100,-40},{-80,-20}})));
  Modelica.Electrical.Machines.Losses.InductionMachines.Brush brush(m=3, brushParameters(V=1, ILinear=0.5), useHeatPort=true)
    annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
  Modelica.Electrical.Polyphase.Basic.Resistor load(m=3, R=fill(1, 3))
    annotation (Placement(transformation(extent={{-20,40},{0,60}})));
  Modelica.Electrical.Machines.Utilities.RampedRheostat rheostat(m=3, RStart=10, tStart=0.2, tRamp=0.5)
    annotation (Placement(transformation(extent={{20,20},{40,40}})));
  Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCCE thermalAmbient(Ta=293.15, Te=313.15, Tse=323.15)
    annotation (Placement(transformation(extent={{-60,-50},{-40,-30}})));
  Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow qArmature(Q_flow=100, T_ref=293.15)
    annotation (Placement(transformation(extent={{-20,-30},{0,-10}})));
  Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow qShunt(Q_flow=20)
    annotation (Placement(transformation(extent={{-20,-60},{0,-40}})));
  Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow qSeries(Q_flow=10)
    annotation (Placement(transformation(extent={{-20,-90},{0,-70}})));
equation
  connect(source.plug_n, starS.plug_p) annotation (Line(points={{-79,30},{-106,30},{-106,-30},{-102,-30}}, color={0,0,127}));
  connect(starS.pin_n, ground.p) annotation (Line(points={{-79,-30},{-106,-30},{-106,-90},{-102,-90}}, color={0,0,127}));
  connect(source.plug_p, brush.plug_p) annotation (Line(points={{-79,30},{-70,30},{-70,50},{-62,50}}, color={0,0,127}));
  connect(brush.plug_n, load.plug_p) annotation (Line(points={{-39,50},{-22,50}}, color={0,0,127}));
  connect(load.plug_n, rheostat.plug_p) annotation (Line(points={{1,50},{10,50},{10,30},{18,30}}, color={0,0,127}));
  connect(brush.heatPort, thermalAmbient.thermalPort.heatPortBrush) annotation (Line(points={{-39,50},{-66,50},{-66,-40},{-62,-40}}, color={0,0,127}));
  connect(qArmature.port, thermalAmbient.thermalPort.heatPortArmature) annotation (Line(points={{1,-20},{-66,-20},{-66,-40},{-62,-40}}, color={191,0,0}));
  connect(qShunt.port, thermalAmbient.thermalPort.heatPortShuntExcitation) annotation (Line(points={{1,-50},{-66,-50},{-66,-40},{-62,-40}}, color={191,0,0}));
  connect(qSeries.port, thermalAmbient.thermalPort.heatPortSeriesExcitation) annotation (Line(points={{1,-80},{-66,-80},{-66,-40},{-62,-40}}, color={191,0,0}));
  annotation (experiment(StopTime=1),
    Documentation(info="<html>
<p>
A symmetric 3 phase source (50 V, 50 Hz) feeds a polyphase
<a href=\"modelica://Modelica.Electrical.Machines.Losses.InductionMachines.Brush\">Brush</a>
(V=1 V, ILinear=0.5 A, with heat port) in series with a
<a href=\"modelica://Modelica.Electrical.Machines.Utilities.RampedRheostat\">RampedRheostat</a>,
whose resistance is reduced from 10 Ohm to zero between 0.2 s and 0.7 s, and a 1 Ohm load
(the rheostat star point is grounded internally).
The
<a href=\"modelica://Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCCE\">ThermalAmbientDCCE</a>
prescribes the temperatures of a thermal port of a compound excited DC machine; the brush losses and
fixed heat flows are fed into its sub-ports and measured by the heat flow outputs of the ambient.
Note: Modelica.Electrical.Machines has no compound excited DC machine model using this thermal ambient.
</p>
</html>"));
end BrushRampedRheostatAndThermalAmbientDCCE;
