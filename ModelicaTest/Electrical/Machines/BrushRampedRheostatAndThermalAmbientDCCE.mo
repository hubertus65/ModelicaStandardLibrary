within ModelicaTest.Electrical.Machines;
model BrushRampedRheostatAndThermalAmbientDCCE "Test of Losses.InductionMachines.Brush, Utilities.RampedRheostat and Thermal.DCMachines.ThermalAmbientDCCE"
  extends Modelica.Icons.Example;

  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-100,-100},{-80,-80}})));
  Modelica.Electrical.Polyphase.Sources.SineVoltage source(m=3, V=fill(50, 3), f=fill(50, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-90,30})));
  Modelica.Electrical.Polyphase.Basic.Star starS(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-90,-30})));
  Modelica.Electrical.Machines.Losses.InductionMachines.Brush brush(m=3, brushParameters(V=1, ILinear=0.5), useHeatPort=true)
    annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
  Modelica.Electrical.Polyphase.Basic.Resistor load(m=3, R=fill(1, 3))
    annotation (Placement(transformation(extent={{-20,40},{0,60}})));
  Modelica.Electrical.Machines.Utilities.RampedRheostat rheostat(m=3, RStart=10, tStart=0.2, tRamp=0.5)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={30,30})));
  Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCCE thermalAmbient(Ta=293.15, Te=313.15, Tse=323.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-50,-40})));
  Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow qArmature(Q_flow=100, T_ref=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-10,-20})));
  Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow qShunt(Q_flow=20)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={-10,-50})));
  Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow qSeries(Q_flow=10)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={-10,-80})));
equation
  connect(source.plug_n, starS.plug_p) annotation (Line(points={{-90,20},{-90,-20}}, color={0,0,255}));
  connect(starS.pin_n, ground.p) annotation (Line(points={{-90,-40},{-90,-80}}, color={0,0,255}));
  connect(source.plug_p, brush.plug_p) annotation (Line(points={{-90,40},{-90,50},{-60,50}}, color={0,0,255}));
  connect(brush.plug_n, load.plug_p) annotation (Line(points={{-39,50},{-22,50}}, color={0,0,255}));
  connect(load.plug_n, rheostat.plug_p) annotation (Line(points={{0,50},{24,50},{24,40}}, color={0,0,255}));
  connect(brush.heatPort, thermalAmbient.thermalPort.heatPortBrush) annotation (Line(points={{-60,40},{-64,40},{-64,-28},{-38,-28},{-38,-40},{-40,-40}}, color={191,0,0}));
  connect(qArmature.port, thermalAmbient.thermalPort.heatPortArmature) annotation (Line(points={{-20,-20},{-30,-20},{-30,-40},{-40,-40}}, color={191,0,0}));
  connect(qShunt.port, thermalAmbient.thermalPort.heatPortShuntExcitation) annotation (Line(points={{-10,-40},{-10,-36},{-36,-36},{-36,-40},{-40,-40}}, color={191,0,0}));
  connect(qSeries.port, thermalAmbient.thermalPort.heatPortSeriesExcitation) annotation (Line(points={{-10,-70},{-10,-62},{-36,-62},{-36,-40},{-40,-40}}, color={191,0,0}));
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
