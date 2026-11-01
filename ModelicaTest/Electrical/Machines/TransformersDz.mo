within ModelicaTest.Electrical.Machines;
model TransformersDz "Test of the transient transformers of vector group Dz"
  extends Modelica.Icons.Example;

  Modelica.Electrical.Polyphase.Sources.SineVoltage source(m=3, V=fill(sqrt(2/3)*100, 3), f=fill(50, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-90,-20})));
  Modelica.Electrical.Polyphase.Basic.Star starS(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-100})));
  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-90,-150})));
  parameter Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData data(C1="D", C2="z")
    annotation (Placement(transformation(extent={{-100,70},{-80,90}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Dz.Dz00 dz00(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,50})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadDz00(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,20})));
  Modelica.Electrical.Polyphase.Basic.Star starLDz00(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-20})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Dz00(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-10,80})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Dz.Dz02 dz02(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,50})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadDz02(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,20})));
  Modelica.Electrical.Polyphase.Basic.Star starLDz02(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-20})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Dz02(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={20,80})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Dz.Dz04 dz04(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,50})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadDz04(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,20})));
  Modelica.Electrical.Polyphase.Basic.Star starLDz04(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,-20})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Dz04(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={60,80})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Dz.Dz06 dz06(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,-90})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadDz06(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-120})));
  Modelica.Electrical.Polyphase.Basic.Star starLDz06(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-150})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Dz06(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-10,-50})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Dz.Dz08 dz08(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-90})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadDz08(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-120})));
  Modelica.Electrical.Polyphase.Basic.Star starLDz08(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-150})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Dz08(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={20,-50})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Dz.Dz10 dz10(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,-90})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadDz10(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,-120})));
  Modelica.Electrical.Polyphase.Basic.Star starLDz10(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,-150})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Dz10(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={60,-50})));
equation
  connect(source.plug_n, starS.plug_p) annotation (Line(points={{-100,-20},{-104,-20},{-104,-100},{-100,-100}}, color={0,0,255}));
  connect(starS.pin_n, ground.p) annotation (Line(points={{-80,-100},{-76,-100},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(source.plug_p, dz00.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,50},{-50,50}}, color={0,0,255}));
  connect(dz00.plug2, loadDz00.plug_p) annotation (Line(points={{-30,50},{-26,50},{-26,34},{-40,34},{-40,30}}, color={0,0,255}));
  connect(loadDz00.plug_n, starLDz00.plug_p) annotation (Line(points={{-40,10},{-40,-10}}, color={0,0,255}));
  connect(starLDz00.pin_n, ground.p) annotation (Line(points={{-40,-30},{-40,-70},{-76,-70},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(dz00.starpoint2, earth2Dz00.p) annotation (Line(points={{-35,40},{-35,36},{-12,36},{-12,68},{4,68},{4,80},{0,80}}, color={0,0,255}));
  connect(earth2Dz00.n, ground.p) annotation (Line(points={{-20,80},{-60,80},{-60,-70},{-76,-70},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(source.plug_p, dz02.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,62},{-14,62},{-14,50},{-10,50}}, color={0,0,255}));
  connect(dz02.plug2, loadDz02.plug_p) annotation (Line(points={{10,50},{14,50},{14,34},{0,34},{0,30}}, color={0,0,255}));
  connect(loadDz02.plug_n, starLDz02.plug_p) annotation (Line(points={{0,10},{0,-10}}, color={0,0,255}));
  connect(starLDz02.pin_n, ground.p) annotation (Line(points={{0,-30},{0,-38},{-40,-38},{-40,-70},{-76,-70},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(dz02.starpoint2, earth2Dz02.p) annotation (Line(points={{5,40},{5,36},{18,36},{18,68},{34,68},{34,80},{30,80}}, color={0,0,255}));
  connect(earth2Dz02.n, ground.p) annotation (Line(points={{10,80},{6,80},{6,66},{-60,66},{-60,-70},{-76,-70},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(source.plug_p, dz04.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,62},{16,62},{16,50},{20,50}}, color={0,0,255}));
  connect(dz04.plug2, loadDz04.plug_p) annotation (Line(points={{40,50},{44,50},{44,34},{30,34},{30,30}}, color={0,0,255}));
  connect(loadDz04.plug_n, starLDz04.plug_p) annotation (Line(points={{30,10},{30,-10}}, color={0,0,255}));
  connect(starLDz04.pin_n, ground.p) annotation (Line(points={{30,-30},{30,-36},{6,-36},{6,-38},{-40,-38},{-40,-70},{-76,-70},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(dz04.starpoint2, earth2Dz04.p) annotation (Line(points={{35,40},{35,36},{74,36},{74,80},{70,80}}, color={0,0,255}));
  connect(earth2Dz04.n, ground.p) annotation (Line(points={{50,80},{46,80},{46,-50},{40,-50},{40,-38},{-40,-38},{-40,-70},{-76,-70},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(source.plug_p, dz06.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-90},{-50,-90}}, color={0,0,255}));
  connect(dz06.plug2, loadDz06.plug_p) annotation (Line(points={{-30,-90},{-26,-90},{-26,-106},{-40,-106},{-40,-110}}, color={0,0,255}));
  connect(loadDz06.plug_n, starLDz06.plug_p) annotation (Line(points={{-40,-130},{-40,-140}}, color={0,0,255}));
  connect(starLDz06.pin_n, ground.p) annotation (Line(points={{-40,-160},{-40,-164},{-76,-164},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(dz06.starpoint2, earth2Dz06.p) annotation (Line(points={{-35,-100},{-35,-104},{-20,-104},{-20,-70},{4,-70},{4,-50},{0,-50}}, color={0,0,255}));
  connect(earth2Dz06.n, ground.p) annotation (Line(points={{-20,-50},{-40,-50},{-40,-70},{-76,-70},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(source.plug_p, dz08.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-78},{-14,-78},{-14,-90},{-10,-90}}, color={0,0,255}));
  connect(dz08.plug2, loadDz08.plug_p) annotation (Line(points={{10,-90},{14,-90},{14,-106},{0,-106},{0,-110}}, color={0,0,255}));
  connect(loadDz08.plug_n, starLDz08.plug_p) annotation (Line(points={{0,-130},{0,-140}}, color={0,0,255}));
  connect(starLDz08.pin_n, ground.p) annotation (Line(points={{0,-160},{0,-164},{-76,-164},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(dz08.starpoint2, earth2Dz08.p) annotation (Line(points={{5,-100},{5,-104},{18,-104},{18,-62},{34,-62},{34,-50},{30,-50}}, color={0,0,255}));
  connect(earth2Dz08.n, ground.p) annotation (Line(points={{10,-50},{6,-50},{6,-38},{-40,-38},{-40,-70},{-76,-70},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(source.plug_p, dz10.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-78},{16,-78},{16,-90},{20,-90}}, color={0,0,255}));
  connect(dz10.plug2, loadDz10.plug_p) annotation (Line(points={{40,-90},{44,-90},{44,-106},{30,-106},{30,-110}}, color={0,0,255}));
  connect(loadDz10.plug_n, starLDz10.plug_p) annotation (Line(points={{30,-130},{30,-140}}, color={0,0,255}));
  connect(starLDz10.pin_n, ground.p) annotation (Line(points={{30,-160},{30,-164},{-76,-164},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(dz10.starpoint2, earth2Dz10.p) annotation (Line(points={{35,-100},{35,-104},{74,-104},{74,-50},{70,-50}}, color={0,0,255}));
  connect(earth2Dz10.n, ground.p) annotation (Line(points={{50,-50},{40,-50},{40,-38},{-40,-38},{-40,-70},{-76,-70},{-76,-150},{-80,-150}}, color={0,0,255}));
  annotation (Diagram(coordinateSystem(extent={{-120,-180},{100,100}})),
    experiment(StopTime=0.1),
    Documentation(info="<html>
<p>
All 6 transient transformers of vector group Dz (Dz00, Dz02, Dz04, Dz06, Dz08, Dz10), fed in parallel by a symmetric
3 phase source with 100 V line-to-line, each loaded by a symmetric resistive star load of 1/3 Ohm.
The transformer parameters are taken from a
<a href=\"modelica://Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData\">TransformerData</a>
record with C1=&quot;D&quot; and C2=&quot;z&quot;. The secondary starpoints are grounded by an earthing resistance of 1 MOhm.
The phase 1 load voltages differ in their phase shift by 60 degree (clock number times 30 degree).
</p>
</html>"));
end TransformersDz;
