within ModelicaTest.Electrical.Machines;
model SpacePhasorsBlocksComponentsAndFunctions "Test of blocks, components and functions of Modelica.Electrical.Machines.SpacePhasors"
  extends Modelica.Icons.Example;

  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-70,-90},{-50,-70}})));
  Modelica.Electrical.Polyphase.Sources.SineVoltage source(m=3, V=fill(100, 3), f=fill(50, 3))
    annotation (Placement(transformation(extent={{-100,10},{-80,30}})));
  Modelica.Electrical.Polyphase.Basic.Star starS(m=3)
    annotation (Placement(transformation(extent={{-100,-30},{-80,-10}})));
  Modelica.Electrical.Machines.SpacePhasors.Components.SpacePhasor spacePhasorA
    annotation (Placement(transformation(extent={{-70,10},{-50,30}})));
  Modelica.Electrical.Analog.Basic.Resistor rZeroA(R=1)
    annotation (Placement(transformation(extent={{-70,-30},{-50,-10}})));
  Modelica.Electrical.Machines.SpacePhasors.Components.Rotator rotator
    annotation (Placement(transformation(extent={{-30,10},{-10,30}})));
  Modelica.Blocks.Sources.Constant angle(k=Modelica.Constants.pi/6)
    annotation (Placement(transformation(extent={{-30,50},{-10,70}})));
  Modelica.Electrical.Machines.SpacePhasors.Components.SpacePhasor spacePhasorB
    annotation (Placement(transformation(extent={{10,10},{30,30}})));
  Modelica.Electrical.Analog.Basic.Resistor rZeroB(R=1)
    annotation (Placement(transformation(extent={{10,-30},{30,-10}})));
  Modelica.Electrical.Polyphase.Basic.Resistor load(m=3, R=fill(10, 3))
    annotation (Placement(transformation(extent={{50,10},{70,30}})));
  Modelica.Electrical.Polyphase.Basic.Star starL(m=3)
    annotation (Placement(transformation(extent={{50,-30},{70,-10}})));
  Modelica.Blocks.Sources.Constant absolute(k=2)
    annotation (Placement(transformation(extent={{-70,-130},{-50,-110}})));
  Modelica.Blocks.Sources.Ramp phi(height=2*Modelica.Constants.pi, duration=0.04)
    annotation (Placement(transformation(extent={{-70,-160},{-50,-140}})));
  Modelica.Electrical.Machines.SpacePhasors.Blocks.FromPolar fromPolar
    annotation (Placement(transformation(extent={{-30,-140},{-10,-120}})));
  Modelica.Electrical.Machines.SpacePhasors.Blocks.QuasiRMS quasiRMS
    annotation (Placement(transformation(extent={{10,-140},{30,-120}})));
  Real fp[2] = Modelica.Electrical.Machines.SpacePhasors.Functions.FromPolar(2, 100*time) "Function FromPolar";
  Real tp = Modelica.Electrical.Machines.SpacePhasors.Functions.ToPolar({cos(100*time), 2*sin(100*time)}) "Function ToPolar, absolute value";
  Real rot[2] = Modelica.Electrical.Machines.SpacePhasors.Functions.Rotator({1, 0.5}, 100*time) "Function Rotator";
  Real fsp[3] = Modelica.Electrical.Machines.SpacePhasors.Functions.FromSpacePhasor({cos(100*time), sin(100*time)}, 0.1, 3) "Function FromSpacePhasor";
  Real qrms = Modelica.Electrical.Machines.SpacePhasors.Functions.quasiRMS(fsp) "Function quasiRMS";
equation
  connect(source.plug_n, starS.plug_p) annotation (Line(points={{-79,20},{-106,20},{-106,-20},{-102,-20}}, color={0,0,127}));
  connect(starS.pin_n, ground.p) annotation (Line(points={{-79,-20},{-76,-20},{-76,-80},{-72,-80}}, color={0,0,127}));
  connect(source.plug_p, spacePhasorA.plug_p) annotation (Line(points={{-79,20},{-72,20}}, color={0,0,127}));
  connect(spacePhasorA.plug_n, starS.plug_p) annotation (Line(points={{-49,20},{-106,20},{-106,-20},{-102,-20}}, color={0,0,127}));
  connect(spacePhasorA.zero, rZeroA.p) annotation (Line(points={{-49,20},{-76,20},{-76,-20},{-72,-20}}, color={0,0,127}));
  connect(rZeroA.n, spacePhasorA.ground) annotation (Line(points={{-49,-20},{-76,-20},{-76,20},{-72,20}}, color={0,0,127}));
  connect(spacePhasorA.spacePhasor, rotator.spacePhasor_a) annotation (Line(points={{-49,20},{-32,20}}, color={0,0,127}));
  connect(angle.y, rotator.angle) annotation (Line(points={{-9,60},{-36,60},{-36,20},{-32,20}}, color={0,0,127}));
  connect(rotator.spacePhasor_b, spacePhasorB.spacePhasor) annotation (Line(points={{-9,20},{8,20}}, color={0,0,127}));
  connect(spacePhasorB.plug_p, load.plug_p) annotation (Line(points={{31,20},{48,20}}, color={0,0,127}));
  connect(load.plug_n, starL.plug_p) annotation (Line(points={{71,20},{44,20},{44,-20},{48,-20}}, color={0,0,127}));
  connect(spacePhasorB.plug_n, starL.plug_p) annotation (Line(points={{31,20},{40,20},{40,-20},{48,-20}}, color={0,0,127}));
  connect(starL.pin_n, ground.p) annotation (Line(points={{71,-20},{-76,-20},{-76,-80},{-72,-80}}, color={0,0,127}));
  connect(spacePhasorB.zero, rZeroB.p) annotation (Line(points={{31,20},{4,20},{4,-20},{8,-20}}, color={0,0,127}));
  connect(rZeroB.n, spacePhasorB.ground) annotation (Line(points={{31,-20},{4,-20},{4,20},{8,20}}, color={0,0,127}));
  connect(absolute.y, fromPolar.u[1]) annotation (Line(points={{-49,-120},{-40,-120},{-40,-130},{-32,-130}}, color={0,0,127}));
  connect(phi.y, fromPolar.u[2]) annotation (Line(points={{-49,-150},{-40,-150},{-40,-130},{-32,-130}}, color={0,0,127}));
  connect(fromPolar.y, quasiRMS.u) annotation (Line(points={{-9,-130},{8,-130}}, color={0,0,127}));
  annotation (Diagram(coordinateSystem(extent={{-100,-170},{100,100}})),
    experiment(StopTime=0),
    Documentation(info="<html>
<p>
A symmetric 3 phase source (100 V, 50 Hz) is transformed to a space phasor by
<a href=\"modelica://Modelica.Electrical.Machines.SpacePhasors.Components.SpacePhasor\">SpacePhasor</a>,
rotated by 30 degree by
<a href=\"modelica://Modelica.Electrical.Machines.SpacePhasors.Components.Rotator\">Rotator</a>
and transformed back to a resistive 3 phase load. The zero sequence paths are closed by 1 Ohm
resistors between the zero and ground pins of the SpacePhasor components. The blocks FromPolar and QuasiRMS convert a
space phasor given by absolute value 2 and a ramped angle. The functions FromPolar, ToPolar,
Rotator, FromSpacePhasor and quasiRMS are evaluated for time dependent arguments.
</p>
</html>"));
end SpacePhasorsBlocksComponentsAndFunctions;
