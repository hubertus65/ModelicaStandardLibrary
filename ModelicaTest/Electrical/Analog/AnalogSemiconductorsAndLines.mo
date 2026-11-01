within ModelicaTest.Electrical.Analog;
model AnalogSemiconductorsAndLines "Test of semiconductors, transmission lines and the PowerSensor of Modelica.Electrical.Analog"
  extends Modelica.Icons.Example;

  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-290})));
  Modelica.Electrical.Analog.Sources.SineVoltage sine(V=10, f=50)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-90,-20})));
  Modelica.Electrical.Analog.Sensors.PowerSensor powerSensor
    annotation (Placement(transformation(extent={{-70,100},{-50,120}})));
  Modelica.Electrical.Analog.Semiconductors.Diode diode
    annotation (Placement(transformation(extent={{-40,100},{-20,120}})));
  Modelica.Electrical.Analog.Basic.Resistor R_diode(R=10)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,110})));
  Modelica.Electrical.Analog.Semiconductors.Diode2 diode2
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={-30,80})));
  Modelica.Electrical.Analog.Basic.Resistor R_diode2(R=10)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,80})));
  Modelica.Electrical.Analog.Semiconductors.ZDiode zDiode
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-30,40})));
  Modelica.Electrical.Analog.Basic.Resistor R_zDiode(R=10)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,40})));
  Modelica.Electrical.Analog.Sources.PulseCurrent gate(I=0.05, width=10, period=0.01, startTime=0.001)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-90,10})));
  Modelica.Electrical.Analog.Sources.PulseCurrent gateTriac(I=0.05, width=10, period=0.01, startTime=0.001)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={-90,-50})));
  Modelica.Electrical.Analog.Semiconductors.Thyristor thyristor
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,10})));
  Modelica.Electrical.Analog.Basic.Resistor R_thyristor(R=10)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,10})));
  Modelica.Electrical.Analog.Semiconductors.SimpleTriac simpleTriac
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-20})));
  Modelica.Electrical.Analog.Basic.Resistor R_triac(R=10)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-20})));
  Modelica.Electrical.Analog.Sources.ConstantVoltage vdd(V=5)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={30,110})));
  Modelica.Electrical.Analog.Semiconductors.PMOS pmos
    annotation (Placement(transformation(extent={{50,90},{70,110}})));
  Modelica.Electrical.Analog.Semiconductors.NMOS nmos
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={60,50})));
  Modelica.Electrical.Analog.Basic.Capacitor C_load(C=1e-9)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={90,80})));
  Modelica.Electrical.Analog.Semiconductors.NPN npn
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={60,10})));
  Modelica.Electrical.Analog.Basic.Resistor R_npn(R=1e3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={90,0})));
  Modelica.Electrical.Analog.Semiconductors.PNP pnp
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={60,-50})));
  Modelica.Electrical.Analog.Basic.Resistor R_pnp(R=1e3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={90,-60})));
  Modelica.Electrical.Analog.Sources.ConstantVoltage vee(V=15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={30,-80})));
  Modelica.Electrical.Analog.Sources.StepVoltage step(V=1, startTime=0.005)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-90,-130})));
  Modelica.Electrical.Analog.Lines.OLine oLine(r=1, l=1e-6, g=1e-9, c=1e-9, length=100, N=5)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-50,-110})));
  Modelica.Electrical.Analog.Basic.Resistor R_oLine(R=50)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-20,-110})));
  Modelica.Electrical.Analog.Lines.ULine uLine(r=10, c=1e-9, length=100, N=5)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-50,-140})));
  Modelica.Electrical.Analog.Basic.Resistor R_uLine(R=50)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-20,-140})));
  Modelica.Electrical.Analog.Lines.M_OLine mOLine(lines=2, N=3, length=100, r={1, 1}, l={1e-6, 2e-7, 1e-6}, g={1e-9, 1e-10, 1e-9}, c={1e-9, 2e-10, 1e-9})
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-50,-180})));
  Modelica.Electrical.Analog.Basic.Resistor R_mOLine1(R=50)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-20,-180})));
  Modelica.Electrical.Analog.Basic.Resistor R_mOLine2(R=50)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-20,-210})));
  Modelica.Electrical.Analog.Lines.TLine tLine(Z0=50, TD=1e-3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={20,-110})));
  Modelica.Electrical.Analog.Basic.Resistor R_tLine(R=100)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={50,-110})));
  Modelica.Electrical.Analog.Lines.TLine1 tLine1(Z0=50, TD=1e-3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={20,-140})));
  Modelica.Electrical.Analog.Basic.Resistor R_tLine1(R=100)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={50,-140})));
  Modelica.Electrical.Analog.Lines.TLine2 tLine2(Z0=50, F=250, NL=0.25)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={20,-180})));
  Modelica.Electrical.Analog.Basic.Resistor R_tLine2(R=100)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={50,-180})));
  Modelica.Electrical.Analog.Lines.TLine3 tLine3(Z0=50, F=250)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={20,-240})));
  Modelica.Electrical.Analog.Basic.Resistor R_tLine3(R=100)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={50,-240})));
equation
  connect(sine.n, ground.p) annotation (Line(points={{-90,-30},{-90,-34},{0,-34},{0,-280}}, color={0,0,255}));
  connect(vdd.n, ground.p) annotation (Line(points={{20,110},{12,110},{12,-80},{0,-80},{0,-280}}, color={0,0,255}));
  connect(vee.n, ground.p) annotation (Line(points={{20,-80},{0,-80},{0,-280}}, color={0,0,255}));
  connect(step.n, ground.p) annotation (Line(points={{-100,-130},{-104,-130},{-104,-192},{-50,-192},{-50,-230},{0,-230},{0,-280}}, color={0,0,255}));
  connect(sine.p, powerSensor.pc) annotation (Line(points={{-90,-10},{-90,-6},{-88,-6},{-88,-4},{-74,-4},{-74,110},{-70,110}}, color={0,0,255}));
  connect(powerSensor.nc, diode.p) annotation (Line(points={{-49,110},{-42,110}}, color={0,0,255}));
  connect(diode.n, R_diode.p) annotation (Line(points={{-20,110},{-12,110},{-12,124},{0,124},{0,120}}, color={0,0,255}));
  connect(R_diode.n, ground.p) annotation (Line(points={{0,100},{0,96},{12,96},{12,-80},{0,-80},{0,-280}}, color={0,0,255}));
  connect(sine.p, powerSensor.pv) annotation (Line(points={{-90,-10},{-90,-6},{-88,-6},{-88,-4},{-74,-4},{-74,124},{-60,124},{-60,120}}, color={0,0,255}));
  connect(powerSensor.nv, ground.p) annotation (Line(points={{-60,100},{-60,96},{12,96},{12,-80},{0,-80},{0,-280}}, color={0,0,255}));
  connect(sine.p, diode2.p) annotation (Line(points={{-90,-10},{-90,-6},{-88,-6},{-88,-4},{-44,-4},{-44,66},{-30,66},{-30,70}}, color={0,0,255}));
  connect(diode2.n, R_diode2.p) annotation (Line(points={{-30,90},{-30,94},{0,94},{0,90}}, color={0,0,255}));
  connect(R_diode2.n, ground.p) annotation (Line(points={{0,70},{0,60},{12,60},{12,-80},{0,-80},{0,-280}}, color={0,0,255}));
  connect(sine.p, zDiode.n) annotation (Line(points={{-90,-10},{-90,-6},{-88,-6},{-88,-4},{-44,-4},{-44,22},{-30,22},{-30,30}}, color={0,0,255}));
  connect(zDiode.p, R_zDiode.p) annotation (Line(points={{-30,50},{-30,54},{0,54},{0,50}}, color={0,0,255}));
  connect(R_zDiode.n, ground.p) annotation (Line(points={{0,30},{0,26},{12,26},{12,-80},{0,-80},{0,-280}}, color={0,0,255}));
  connect(sine.p, thyristor.Anode) annotation (Line(points={{-90,-10},{-90,-4},{-44,-4},{-44,10},{-40,10}}, color={0,0,255}));
  connect(thyristor.Cathode, R_thyristor.p) annotation (Line(points={{-20,10},{-12,10},{-12,24},{0,24},{0,20}}, color={0,0,255}));
  connect(R_thyristor.n, ground.p) annotation (Line(points={{0,0},{0,-4},{2,-4},{2,-6},{12,-6},{12,-80},{0,-80},{0,-280}}, color={0,0,255}));
  connect(gate.p, thyristor.Gate) annotation (Line(points={{-90,20},{-90,24},{-16,24},{-16,20},{-20,20}}, color={0,0,255}));
  connect(gate.n, thyristor.Cathode) annotation (Line(points={{-90,0},{-90,-4},{-102,-4},{-102,26},{-12,26},{-12,10},{-20,10}}, color={0,0,255}));
  connect(sine.p, simpleTriac.p) annotation (Line(points={{-90,-10},{-90,-6},{-88,-6},{-88,-4},{-16,-4},{-16,-20},{-20,-20}}, color={0,0,255}));
  connect(simpleTriac.n, R_triac.p) annotation (Line(points={{-40,-20},{-44,-20},{-44,-6},{0,-6},{0,-10}}, color={0,0,255}));
  connect(R_triac.n, ground.p) annotation (Line(points={{0,-30},{0,-280}}, color={0,0,255}));
  connect(gateTriac.p, simpleTriac.g) annotation (Line(points={{-90,-60},{-90,-64},{-44,-64},{-44,-30},{-40,-30}}, color={0,0,255}));
  connect(gateTriac.n, simpleTriac.n) annotation (Line(points={{-90,-40},{-90,-36},{-46,-36},{-46,-20},{-40,-20}}, color={0,0,255}));
  connect(vdd.p, pmos.S) annotation (Line(points={{40,110},{48,110},{48,88},{74,88},{74,94},{70,94}}, color={0,0,255}));
  connect(vdd.p, pmos.B) annotation (Line(points={{40,110},{48,110},{48,88},{74,88},{74,100},{70,100}}, color={0,0,255}));
  connect(pmos.D, nmos.D) annotation (Line(points={{70,106},{76,106},{76,56},{70,56}}, color={0,0,255}));
  connect(nmos.S, ground.p) annotation (Line(points={{70,44},{74,44},{74,38},{12,38},{12,-80},{0,-80},{0,-280}}, color={0,0,255}));
  connect(nmos.B, ground.p) annotation (Line(points={{70,50},{74,50},{74,38},{12,38},{12,-80},{0,-80},{0,-280}}, color={0,0,255}));
  connect(sine.p, pmos.G) annotation (Line(points={{-90,-10},{-90,-6},{-88,-6},{-88,-4},{-44,-4},{-44,66},{46,66},{46,94},{50,94}}, color={0,0,255}));
  connect(sine.p, nmos.G) annotation (Line(points={{-90,-10},{-90,-6},{-88,-6},{-88,-4},{-44,-4},{-44,66},{46,66},{46,44},{50,44}}, color={0,0,255}));
  connect(pmos.D, C_load.p) annotation (Line(points={{70,106},{90,106},{90,90}}, color={0,0,255}));
  connect(C_load.n, ground.p) annotation (Line(points={{90,70},{90,50},{74,50},{74,38},{12,38},{12,-80},{0,-80},{0,-280}}, color={0,0,255}));
  connect(vee.p, npn.C) annotation (Line(points={{40,-80},{74,-80},{74,16},{70,16}}, color={0,0,255}));
  connect(sine.p, npn.B) annotation (Line(points={{-90,-10},{-90,-6},{-88,-6},{-88,-4},{-44,-4},{-44,22},{46,22},{46,10},{50,10}}, color={0,0,255}));
  connect(npn.E, R_npn.p) annotation (Line(points={{70,4},{78,4},{78,14},{90,14},{90,10}}, color={0,0,255}));
  connect(R_npn.n, ground.p) annotation (Line(points={{90,-10},{90,-36},{72,-36},{72,-38},{12,-38},{12,-80},{0,-80},{0,-280}}, color={0,0,255}));
  connect(ground.p, pnp.C) annotation (Line(points={{0,-280},{0,-80},{12,-80},{12,-38},{72,-38},{72,-44},{70,-44}}, color={0,0,255}));
  connect(sine.p, pnp.B) annotation (Line(points={{-90,-10},{-90,-6},{-88,-6},{-88,-4},{-16,-4},{-16,-32},{10,-32},{10,-50},{50,-50}}, color={0,0,255}));
  connect(pnp.E, R_pnp.p) annotation (Line(points={{70,-56},{78,-56},{78,-46},{90,-46},{90,-50}}, color={0,0,255}));
  connect(R_pnp.n, vee.p) annotation (Line(points={{90,-70},{90,-80},{40,-80}}, color={0,0,255}));
  connect(step.p, oLine.p1) annotation (Line(points={{-80,-130},{-64,-130},{-64,-110},{-60,-110}}, color={0,0,255}));
  connect(oLine.p2, R_oLine.p) annotation (Line(points={{-40,-110},{-30,-110}}, color={0,0,255}));
  connect(R_oLine.n, ground.p) annotation (Line(points={{-10,-110},{0,-110},{0,-280}}, color={0,0,255}));
  connect(oLine.p3, ground.p) annotation (Line(points={{-50,-120},{-50,-124},{0,-124},{0,-280}}, color={0,0,255}));
  connect(step.p, uLine.p1) annotation (Line(points={{-80,-130},{-64,-130},{-64,-140},{-60,-140}}, color={0,0,255}));
  connect(uLine.p2, R_uLine.p) annotation (Line(points={{-40,-140},{-30,-140}}, color={0,0,255}));
  connect(R_uLine.n, ground.p) annotation (Line(points={{-10,-140},{0,-140},{0,-280}}, color={0,0,255}));
  connect(uLine.p3, ground.p) annotation (Line(points={{-50,-150},{-50,-154},{0,-154},{0,-280}}, color={0,0,255}));
  connect(step.p, mOLine.p[1]) annotation (Line(points={{-80,-130},{-64,-130},{-64,-180},{-60,-180}}, color={0,0,255}));
  connect(step.p, mOLine.p[2]) annotation (Line(points={{-80,-130},{-64,-130},{-64,-180},{-60,-180}}, color={0,0,255}));
  connect(mOLine.n[1], R_mOLine1.p) annotation (Line(points={{-40,-180},{-30,-180}}, color={0,0,255}));
  connect(mOLine.n[2], R_mOLine2.p) annotation (Line(points={{-40,-180},{-36,-180},{-36,-210},{-30,-210}}, color={0,0,255}));
  connect(R_mOLine1.n, ground.p) annotation (Line(points={{-10,-180},{0,-180},{0,-280}}, color={0,0,255}));
  connect(R_mOLine2.n, ground.p) annotation (Line(points={{-10,-210},{0,-210},{0,-280}}, color={0,0,255}));
  connect(mOLine.refPin, ground.p) annotation (Line(points={{-50,-190},{-50,-230},{0,-230},{0,-280}}, color={0,0,255}));
  connect(step.p, tLine.p1) annotation (Line(points={{-80,-130},{-64,-130},{-64,-128},{6,-128},{6,-100},{10,-100}}, color={0,0,255}));
  connect(tLine.n1, ground.p) annotation (Line(points={{10,-120},{0,-120},{0,-280}}, color={0,0,255}));
  connect(tLine.p2, R_tLine.p) annotation (Line(points={{30,-100},{38,-100},{38,-96},{50,-96},{50,-100}}, color={0,0,255}));
  connect(R_tLine.n, tLine.n2) annotation (Line(points={{50,-120},{50,-124},{34,-124},{34,-120},{30,-120}}, color={0,0,255}));
  connect(tLine.n2, ground.p) annotation (Line(points={{30,-120},{34,-120},{34,-152},{0,-152},{0,-280}}, color={0,0,255}));
  connect(step.p, tLine1.p1) annotation (Line(points={{-80,-130},{-64,-130},{-64,-128},{6,-128},{6,-130},{10,-130}}, color={0,0,255}));
  connect(tLine1.n1, ground.p) annotation (Line(points={{10,-150},{0,-150},{0,-280}}, color={0,0,255}));
  connect(tLine1.p2, R_tLine1.p) annotation (Line(points={{30,-130},{38,-130},{38,-126},{50,-126},{50,-130}}, color={0,0,255}));
  connect(R_tLine1.n, tLine1.n2) annotation (Line(points={{50,-150},{50,-154},{34,-154},{34,-150},{30,-150}}, color={0,0,255}));
  connect(tLine1.n2, ground.p) annotation (Line(points={{30,-150},{34,-150},{34,-152},{0,-152},{0,-280}}, color={0,0,255}));
  connect(step.p, tLine2.p1) annotation (Line(points={{-80,-130},{-64,-130},{-64,-168},{6,-168},{6,-170},{10,-170}}, color={0,0,255}));
  connect(tLine2.n1, ground.p) annotation (Line(points={{10,-190},{0,-190},{0,-280}}, color={0,0,255}));
  connect(tLine2.p2, R_tLine2.p) annotation (Line(points={{30,-170},{38,-170},{38,-166},{50,-166},{50,-170}}, color={0,0,255}));
  connect(R_tLine2.n, tLine2.n2) annotation (Line(points={{50,-190},{50,-194},{34,-194},{34,-190},{30,-190}}, color={0,0,255}));
  connect(tLine2.n2, ground.p) annotation (Line(points={{30,-190},{34,-190},{34,-194},{0,-194},{0,-280}}, color={0,0,255}));
  connect(step.p, tLine3.p1) annotation (Line(points={{-80,-130},{-64,-130},{-64,-168},{6,-168},{6,-230},{10,-230}}, color={0,0,255}));
  connect(tLine3.n1, ground.p) annotation (Line(points={{10,-250},{0,-250},{0,-280}}, color={0,0,255}));
  connect(tLine3.p2, R_tLine3.p) annotation (Line(points={{30,-230},{38,-230},{38,-226},{50,-226},{50,-230}}, color={0,0,255}));
  connect(R_tLine3.n, tLine3.n2) annotation (Line(points={{50,-250},{50,-254},{34,-254},{34,-250},{30,-250}}, color={0,0,255}));
  connect(tLine3.n2, ground.p) annotation (Line(points={{30,-250},{34,-250},{34,-254},{0,-254},{0,-280}}, color={0,0,255}));
  annotation (Diagram(coordinateSystem(extent={{-120,-300},{100,140}})),
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
