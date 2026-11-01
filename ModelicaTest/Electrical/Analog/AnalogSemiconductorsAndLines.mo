within ModelicaTest.Electrical.Analog;
model AnalogSemiconductorsAndLines "Test of semiconductors, transmission lines and the PowerSensor of Modelica.Electrical.Analog"
  extends Modelica.Icons.Example;

  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-10,-210},{10,-190}})));
  Modelica.Electrical.Analog.Sources.SineVoltage sine(V=10, f=50)
    annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
  Modelica.Electrical.Analog.Sensors.PowerSensor powerSensor
    annotation (Placement(transformation(extent={{-70,100},{-50,120}})));
  Modelica.Electrical.Analog.Semiconductors.Diode diode
    annotation (Placement(transformation(extent={{-40,100},{-20,120}})));
  Modelica.Electrical.Analog.Basic.Resistor R_diode(R=10)
    annotation (Placement(transformation(extent={{-10,100},{10,120}})));
  Modelica.Electrical.Analog.Semiconductors.Diode2 diode2
    annotation (Placement(transformation(extent={{-40,75},{-20,95}})));
  Modelica.Electrical.Analog.Basic.Resistor R_diode2(R=10)
    annotation (Placement(transformation(extent={{-10,75},{10,95}})));
  Modelica.Electrical.Analog.Semiconductors.ZDiode zDiode
    annotation (Placement(transformation(extent={{-40,50},{-20,70}})));
  Modelica.Electrical.Analog.Basic.Resistor R_zDiode(R=10)
    annotation (Placement(transformation(extent={{-10,50},{10,70}})));
  Modelica.Electrical.Analog.Sources.PulseCurrent gate(I=0.05, width=10, period=0.01, startTime=0.001)
    annotation (Placement(transformation(extent={{-10.0,-10.0},{10.0,10.0}},rotation = 90.0,origin = {-90.0,30.0})));
  Modelica.Electrical.Analog.Sources.PulseCurrent gateTriac(I=0.05, width=10, period=0.01, startTime=0.001)
    annotation (Placement(transformation(extent={{-100,-20},{-80,0}})));
  Modelica.Electrical.Analog.Semiconductors.Thyristor thyristor
    annotation (Placement(transformation(extent={{-40,20},{-20,40}})));
  Modelica.Electrical.Analog.Basic.Resistor R_thyristor(R=10)
    annotation (Placement(transformation(extent={{-10,20},{10,40}})));
  Modelica.Electrical.Analog.Semiconductors.SimpleTriac simpleTriac
    annotation (Placement(transformation(extent={{-40,-10},{-20,10}})));
  Modelica.Electrical.Analog.Basic.Resistor R_triac(R=10)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Modelica.Electrical.Analog.Sources.ConstantVoltage vdd(V=5)
    annotation (Placement(transformation(extent={{20,100},{40,120}})));
  Modelica.Electrical.Analog.Semiconductors.PMOS pmos
    annotation (Placement(transformation(extent={{50,90},{70,110}})));
  Modelica.Electrical.Analog.Semiconductors.NMOS nmos
    annotation (Placement(transformation(extent={{50,60},{70,80}})));
  Modelica.Electrical.Analog.Basic.Capacitor C_load(C=1e-9)
    annotation (Placement(transformation(extent={{80,75},{100,95}})));
  Modelica.Electrical.Analog.Semiconductors.NPN npn
    annotation (Placement(transformation(extent={{50,20},{70,40}})));
  Modelica.Electrical.Analog.Basic.Resistor R_npn(R=1e3)
    annotation (Placement(transformation(extent={{80,10},{100,30}})));
  Modelica.Electrical.Analog.Semiconductors.PNP pnp
    annotation (Placement(transformation(extent={{50,-20},{70,0}})));
  Modelica.Electrical.Analog.Basic.Resistor R_pnp(R=1e3)
    annotation (Placement(transformation(extent={{80,-30},{100,-10}})));
  Modelica.Electrical.Analog.Sources.ConstantVoltage vee(V=15)
    annotation (Placement(transformation(extent={{20,-50},{40,-30}})));
  Modelica.Electrical.Analog.Sources.StepVoltage step(V=1, startTime=0.005)
    annotation (Placement(transformation(extent={{-100,-90},{-80,-70}})));
  Modelica.Electrical.Analog.Lines.OLine oLine(r=1, l=1e-6, g=1e-9, c=1e-9, length=100, N=5)
    annotation (Placement(transformation(extent={{-60,-70},{-40,-50}})));
  Modelica.Electrical.Analog.Basic.Resistor R_oLine(R=50)
    annotation (Placement(transformation(extent={{-30,-70},{-10,-50}})));
  Modelica.Electrical.Analog.Lines.ULine uLine(r=10, c=1e-9, length=100, N=5)
    annotation (Placement(transformation(extent={{-60,-100},{-40,-80}})));
  Modelica.Electrical.Analog.Basic.Resistor R_uLine(R=50)
    annotation (Placement(transformation(extent={{-30,-100},{-10,-80}})));
  Modelica.Electrical.Analog.Lines.M_OLine mOLine(lines=2, N=3, length=100, r={1, 1}, l={1e-6, 2e-7, 1e-6}, g={1e-9, 1e-10, 1e-9}, c={1e-9, 2e-10, 1e-9})
    annotation (Placement(transformation(extent={{-60,-130},{-40,-110}})));
  Modelica.Electrical.Analog.Basic.Resistor R_mOLine1(R=50)
    annotation (Placement(transformation(extent={{-30,-125},{-10,-105}})));
  Modelica.Electrical.Analog.Basic.Resistor R_mOLine2(R=50)
    annotation (Placement(transformation(extent={{-30,-135},{-10,-115}})));
  Modelica.Electrical.Analog.Lines.TLine tLine(Z0=50, TD=1e-3)
    annotation (Placement(transformation(extent={{10,-70},{30,-50}})));
  Modelica.Electrical.Analog.Basic.Resistor R_tLine(R=100)
    annotation (Placement(transformation(extent={{40,-70},{60,-50}})));
  Modelica.Electrical.Analog.Lines.TLine1 tLine1(Z0=50, TD=1e-3)
    annotation (Placement(transformation(extent={{10,-100},{30,-80}})));
  Modelica.Electrical.Analog.Basic.Resistor R_tLine1(R=100)
    annotation (Placement(transformation(extent={{40,-100},{60,-80}})));
  Modelica.Electrical.Analog.Lines.TLine2 tLine2(Z0=50, F=250, NL=0.25)
    annotation (Placement(transformation(extent={{10,-130},{30,-110}})));
  Modelica.Electrical.Analog.Basic.Resistor R_tLine2(R=100)
    annotation (Placement(transformation(extent={{40,-130},{60,-110}})));
  Modelica.Electrical.Analog.Lines.TLine3 tLine3(Z0=50, F=250)
    annotation (Placement(transformation(extent={{10,-160},{30,-140}})));
  Modelica.Electrical.Analog.Basic.Resistor R_tLine3(R=100)
    annotation (Placement(transformation(extent={{40,-160},{60,-140}})));
equation
  connect(sine.n, ground.p) annotation (Line(points={{-79,0},{-46,0},{-46,-200},{-12,-200}}, color={0,0,127}));
  connect(vdd.n, ground.p) annotation (Line(points={{41,110},{-16,110},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(vee.n, ground.p) annotation (Line(points={{41,-40},{-16,-40},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(step.n, ground.p) annotation (Line(points={{-79,-80},{-46,-80},{-46,-200},{-12,-200}}, color={0,0,127}));
  connect(sine.p, powerSensor.pc) annotation (Line(points={{-79,0},{-76,0},{-76,110},{-72,110}}, color={0,0,127}));
  connect(powerSensor.nc, diode.p) annotation (Line(points={{-49,110},{-42,110}}, color={0,0,127}));
  connect(diode.n, R_diode.p) annotation (Line(points={{-19,110},{-12,110}}, color={0,0,127}));
  connect(R_diode.n, ground.p) annotation (Line(points={{11,110},{-16,110},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(sine.p, powerSensor.pv) annotation (Line(points={{-79,0},{-76,0},{-76,110},{-72,110}}, color={0,0,127}));
  connect(powerSensor.nv, ground.p) annotation (Line(points={{-49,110},{-30,110},{-30,-200},{-12,-200}}, color={0,0,127}));
  connect(sine.p, diode2.p) annotation (Line(points={{-79,0},{-60,0},{-60,85},{-42,85}}, color={0,0,127}));
  connect(diode2.n, R_diode2.p) annotation (Line(points={{-19,85},{-12,85}}, color={0,0,127}));
  connect(R_diode2.n, ground.p) annotation (Line(points={{11,85},{-16,85},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(sine.p, zDiode.n) annotation (Line(points={{-79,0},{-60,0},{-60,60},{-42,60}}, color={0,0,127}));
  connect(zDiode.p, R_zDiode.p) annotation (Line(points={{-19,60},{-12,60}}, color={0,0,127}));
  connect(R_zDiode.n, ground.p) annotation (Line(points={{11,60},{-16,60},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(sine.p, thyristor.Anode) annotation (Line(points={{-79,0},{-60,0},{-60,30},{-42,30}}, color={0,0,127}));
  connect(thyristor.Cathode, R_thyristor.p) annotation (Line(points={{-19,30},{-12,30}}, color={0,0,127}));
  connect(R_thyristor.n, ground.p) annotation (Line(points={{11,30},{-16,30},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(gate.p, thyristor.Gate) annotation (Line(points={{-90,20},{-90,14},{-55,14},{-55,46},{-20,46},{-20,40}}, color={0,0,127}));
  connect(gate.n, thyristor.Cathode) annotation (Line(points={{-90,40},{-90,48.55},{-14,48.55},{-14,30},{-20,30}}, color={0,0,127}));
  connect(sine.p, simpleTriac.p) annotation (Line(points={{-79,0},{-42,0}}, color={0,0,127}));
  connect(simpleTriac.n, R_triac.p) annotation (Line(points={{-19,0},{-12,0}}, color={0,0,127}));
  connect(R_triac.n, ground.p) annotation (Line(points={{11,0},{-16,0},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(gateTriac.p, simpleTriac.g) annotation (Line(points={{-79,-10},{-60,-10},{-60,0},{-42,0}}, color={0,0,127}));
  connect(gateTriac.n, simpleTriac.n) annotation (Line(points={{-79,-10},{-60,-10},{-60,0},{-42,0}}, color={0,0,127}));
  connect(vdd.p, pmos.S) annotation (Line(points={{41,110},{44,110},{44,100},{48,100}}, color={0,0,127}));
  connect(vdd.p, pmos.B) annotation (Line(points={{41,110},{44,110},{44,100},{48,100}}, color={0,0,127}));
  connect(pmos.D, nmos.D) annotation (Line(points={{71,100},{44,100},{44,70},{48,70}}, color={0,0,127}));
  connect(nmos.S, ground.p) annotation (Line(points={{71,70},{-16,70},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(nmos.B, ground.p) annotation (Line(points={{71,70},{-16,70},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(sine.p, pmos.G) annotation (Line(points={{-79,0},{-16,0},{-16,100},{48,100}}, color={0,0,127}));
  connect(sine.p, nmos.G) annotation (Line(points={{-79,0},{-16,0},{-16,70},{48,70}}, color={0,0,127}));
  connect(pmos.D, C_load.p) annotation (Line(points={{71,100},{74,100},{74,85},{78,85}}, color={0,0,127}));
  connect(C_load.n, ground.p) annotation (Line(points={{101,85},{-16,85},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(vee.p, npn.C) annotation (Line(points={{41,-40},{44,-40},{44,30},{48,30}}, color={0,0,127}));
  connect(sine.p, npn.B) annotation (Line(points={{-79,0},{-16,0},{-16,30},{48,30}}, color={0,0,127}));
  connect(npn.E, R_npn.p) annotation (Line(points={{71,30},{74,30},{74,20},{78,20}}, color={0,0,127}));
  connect(R_npn.n, ground.p) annotation (Line(points={{101,20},{-16,20},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(ground.p, pnp.C) annotation (Line(points={{11,-200},{30,-200},{30,-10},{48,-10}}, color={0,0,127}));
  connect(sine.p, pnp.B) annotation (Line(points={{-79,0},{-16,0},{-16,-10},{48,-10}}, color={0,0,127}));
  connect(pnp.E, R_pnp.p) annotation (Line(points={{71,-10},{74,-10},{74,-20},{78,-20}}, color={0,0,127}));
  connect(R_pnp.n, vee.p) annotation (Line(points={{101,-20},{14,-20},{14,-40},{18,-40}}, color={0,0,127}));
  connect(step.p, oLine.p1) annotation (Line(points={{-79,-80},{-70,-80},{-70,-60},{-62,-60}}, color={0,0,127}));
  connect(oLine.p2, R_oLine.p) annotation (Line(points={{-39,-60},{-32,-60}}, color={0,0,127}));
  connect(R_oLine.n, ground.p) annotation (Line(points={{-9,-60},{-16,-60},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(oLine.p3, ground.p) annotation (Line(points={{-39,-60},{-26,-60},{-26,-200},{-12,-200}}, color={0,0,127}));
  connect(step.p, uLine.p1) annotation (Line(points={{-79,-80},{-70,-80},{-70,-90},{-62,-90}}, color={0,0,127}));
  connect(uLine.p2, R_uLine.p) annotation (Line(points={{-39,-90},{-32,-90}}, color={0,0,127}));
  connect(R_uLine.n, ground.p) annotation (Line(points={{-9,-90},{-16,-90},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(uLine.p3, ground.p) annotation (Line(points={{-39,-90},{-26,-90},{-26,-200},{-12,-200}}, color={0,0,127}));
  connect(step.p, mOLine.p[1]) annotation (Line(points={{-79,-80},{-70,-80},{-70,-120},{-62,-120}}, color={0,0,127}));
  connect(step.p, mOLine.p[2]) annotation (Line(points={{-79,-80},{-70,-80},{-70,-120},{-62,-120}}, color={0,0,127}));
  connect(mOLine.n[1], R_mOLine1.p) annotation (Line(points={{-39,-120},{-36,-120},{-36,-115},{-32,-115}}, color={0,0,127}));
  connect(mOLine.n[2], R_mOLine2.p) annotation (Line(points={{-39,-120},{-36,-120},{-36,-125},{-32,-125}}, color={0,0,127}));
  connect(R_mOLine1.n, ground.p) annotation (Line(points={{-9,-115},{-16,-115},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(R_mOLine2.n, ground.p) annotation (Line(points={{-9,-125},{-16,-125},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(mOLine.refPin, ground.p) annotation (Line(points={{-39,-120},{-26,-120},{-26,-200},{-12,-200}}, color={0,0,127}));
  connect(step.p, tLine.p1) annotation (Line(points={{-79,-80},{-36,-80},{-36,-60},{8,-60}}, color={0,0,127}));
  connect(tLine.n1, ground.p) annotation (Line(points={{31,-60},{-16,-60},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(tLine.p2, R_tLine.p) annotation (Line(points={{31,-60},{38,-60}}, color={0,0,127}));
  connect(R_tLine.n, tLine.n2) annotation (Line(points={{61,-60},{8,-60}}, color={0,0,127}));
  connect(tLine.n2, ground.p) annotation (Line(points={{31,-60},{-16,-60},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(step.p, tLine1.p1) annotation (Line(points={{-79,-80},{-36,-80},{-36,-90},{8,-90}}, color={0,0,127}));
  connect(tLine1.n1, ground.p) annotation (Line(points={{31,-90},{-16,-90},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(tLine1.p2, R_tLine1.p) annotation (Line(points={{31,-90},{38,-90}}, color={0,0,127}));
  connect(R_tLine1.n, tLine1.n2) annotation (Line(points={{61,-90},{8,-90}}, color={0,0,127}));
  connect(tLine1.n2, ground.p) annotation (Line(points={{31,-90},{-16,-90},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(step.p, tLine2.p1) annotation (Line(points={{-79,-80},{-36,-80},{-36,-120},{8,-120}}, color={0,0,127}));
  connect(tLine2.n1, ground.p) annotation (Line(points={{31,-120},{-16,-120},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(tLine2.p2, R_tLine2.p) annotation (Line(points={{31,-120},{38,-120}}, color={0,0,127}));
  connect(R_tLine2.n, tLine2.n2) annotation (Line(points={{61,-120},{8,-120}}, color={0,0,127}));
  connect(tLine2.n2, ground.p) annotation (Line(points={{31,-120},{-16,-120},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(step.p, tLine3.p1) annotation (Line(points={{-79,-80},{-36,-80},{-36,-150},{8,-150}}, color={0,0,127}));
  connect(tLine3.n1, ground.p) annotation (Line(points={{31,-150},{-16,-150},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(tLine3.p2, R_tLine3.p) annotation (Line(points={{31,-150},{38,-150}}, color={0,0,127}));
  connect(R_tLine3.n, tLine3.n2) annotation (Line(points={{61,-150},{8,-150}}, color={0,0,127}));
  connect(tLine3.n2, ground.p) annotation (Line(points={{31,-150},{-16,-150},{-16,-200},{-12,-200}}, color={0,0,127}));
  annotation (Diagram(coordinateSystem(extent={{-100,-220},{100,130}})),
    experiment(StopTime=0),
    Documentation(info="<html>
<p>
A 10 V, 50 Hz sine voltage drives the semiconductors Diode, Diode2 and ZDiode (each in series with a
resistor), a Thyristor and a SimpleTriac fired by a gate current pulse, an NMOS/PMOS inverter and
NPN/PNP emitter followers of
<a href=\"modelica://Modelica.Electrical.Analog.Semiconductors\">Modelica.Electrical.Analog.Semiconductors</a>.
A 1 V step is applied to the transmission lines OLine, ULine, M_OLine and the lossless lines TLine,
TLine1, TLine2 and TLine3 of
<a href=\"modelica://Modelica.Electrical.Analog.Lines\">Modelica.Electrical.Analog.Lines</a>, each terminated
with a resistor. A PowerSensor measures the power of the diode branch.
</p>
</html>"));
end AnalogSemiconductorsAndLines;
