within ModelicaTest.Electrical.Machines;
model TransformersYz "Test of the transient transformers of vector group Yz"
  extends Modelica.Icons.Example;

  Modelica.Electrical.Polyphase.Sources.SineVoltage source(m=3, V=fill(sqrt(2/3)*100, 3), f=fill(50, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-90,-20})));
  Modelica.Electrical.Polyphase.Basic.Star starS(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-100})));
  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-90,-150})));
  parameter Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData data(C1="Y", C2="z")
    annotation (Placement(transformation(extent={{-100,70},{-80,90}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yz.Yz01 yz01(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,50})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYz01(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,20})));
  Modelica.Electrical.Polyphase.Basic.Star starLYz01(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-20})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yz01(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-10,80})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Yz01(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-40,80})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yz.Yz03 yz03(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={20,50})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYz03(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={20,20})));
  Modelica.Electrical.Polyphase.Basic.Star starLYz03(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={20,-20})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yz03(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={20,80})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Yz03(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={60,80})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yz.Yz05 yz05(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={90,50})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYz05(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={90,20})));
  Modelica.Electrical.Polyphase.Basic.Star starLYz05(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={90,-20})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yz05(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={90,80})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Yz05(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={120,80})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yz.Yz07 yz07(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,-90})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYz07(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-120})));
  Modelica.Electrical.Polyphase.Basic.Star starLYz07(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-150})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yz07(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-10,-50})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Yz07(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-40,-50})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yz.Yz09 yz09(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={20,-90})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYz09(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={20,-120})));
  Modelica.Electrical.Polyphase.Basic.Star starLYz09(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={20,-150})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yz09(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={20,-50})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Yz09(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={60,-50})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yz.Yz11 yz11(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={90,-90})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYz11(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={90,-120})));
  Modelica.Electrical.Polyphase.Basic.Star starLYz11(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={90,-150})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yz11(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={90,-50})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Yz11(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={120,-50})));
equation
  connect(source.plug_n, starS.plug_p) annotation (Line(points={{-100,-20},{-104,-20},{-104,-100},{-100,-100}}, color={0,0,255}));
  connect(starS.pin_n, ground.p) annotation (Line(points={{-80,-100},{-76,-100},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(source.plug_p, yz01.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,50},{-50,50}}, color={0,0,255}));
  connect(yz01.plug2, loadYz01.plug_p) annotation (Line(points={{-30,50},{-26,50},{-26,34},{-40,34},{-40,30}}, color={0,0,255}));
  connect(loadYz01.plug_n, starLYz01.plug_p) annotation (Line(points={{-40,10},{-40,-10}}, color={0,0,255}));
  connect(starLYz01.pin_n, ground.p) annotation (Line(points={{-40,-30},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yz01.starpoint1, earth1Yz01.p) annotation (Line(points={{-45,40},{-45,36},{-44,36},{-44,32},{4,32},{4,80},{0,80}}, color={0,0,255}));
  connect(earth1Yz01.n, ground.p) annotation (Line(points={{-20,80},{-26,80},{-26,68},{-60,68},{-60,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yz01.starpoint2, earth2Yz01.p) annotation (Line(points={{-35,40},{-35,36},{-28,36},{-28,80},{-30,80}}, color={0,0,255}));
  connect(earth2Yz01.n, ground.p) annotation (Line(points={{-50,80},{-60,80},{-60,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(source.plug_p, yz03.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,6},{6,6},{6,50},{10,50}}, color={0,0,255}));
  connect(yz03.plug2, loadYz03.plug_p) annotation (Line(points={{30,50},{34,50},{34,34},{20,34},{20,30}}, color={0,0,255}));
  connect(loadYz03.plug_n, starLYz03.plug_p) annotation (Line(points={{20,10},{20,-10}}, color={0,0,255}));
  connect(starLYz03.pin_n, ground.p) annotation (Line(points={{20,-30},{20,-34},{-40,-34},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yz03.starpoint1, earth1Yz03.p) annotation (Line(points={{15,40},{15,36},{32,36},{32,80},{30,80}}, color={0,0,255}));
  connect(earth1Yz03.n, ground.p) annotation (Line(points={{10,80},{6,80},{6,92},{-52,92},{-52,80},{-60,80},{-60,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yz03.starpoint2, earth2Yz03.p) annotation (Line(points={{25,40},{25,36},{24,36},{24,32},{74,32},{74,80},{70,80}}, color={0,0,255}));
  connect(earth2Yz03.n, ground.p) annotation (Line(points={{50,80},{40,80},{40,92},{-52,92},{-52,80},{-60,80},{-60,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(source.plug_p, yz05.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,6},{76,6},{76,50},{80,50}}, color={0,0,255}));
  connect(yz05.plug2, loadYz05.plug_p) annotation (Line(points={{100,50},{104,50},{104,34},{90,34},{90,30}}, color={0,0,255}));
  connect(loadYz05.plug_n, starLYz05.plug_p) annotation (Line(points={{90,10},{90,-10}}, color={0,0,255}));
  connect(starLYz05.pin_n, ground.p) annotation (Line(points={{90,-30},{90,-34},{78,-34},{78,-36},{20,-36},{20,-34},{-40,-34},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yz05.starpoint1, earth1Yz05.p) annotation (Line(points={{85,40},{85,36},{78,36},{78,68},{104,68},{104,80},{100,80}}, color={0,0,255}));
  connect(earth1Yz05.n, ground.p) annotation (Line(points={{80,80},{76,80},{76,92},{-52,92},{-52,80},{-60,80},{-60,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yz05.starpoint2, earth2Yz05.p) annotation (Line(points={{95,40},{95,36},{134,36},{134,80},{130,80}}, color={0,0,255}));
  connect(earth2Yz05.n, ground.p) annotation (Line(points={{110,80},{106,80},{106,-38},{78,-38},{78,-36},{20,-36},{20,-34},{-40,-34},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(source.plug_p, yz07.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-90},{-50,-90}}, color={0,0,255}));
  connect(yz07.plug2, loadYz07.plug_p) annotation (Line(points={{-30,-90},{-26,-90},{-26,-106},{-40,-106},{-40,-110}}, color={0,0,255}));
  connect(loadYz07.plug_n, starLYz07.plug_p) annotation (Line(points={{-40,-130},{-40,-140}}, color={0,0,255}));
  connect(starLYz07.pin_n, ground.p) annotation (Line(points={{-40,-160},{-40,-164},{-76,-164},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yz07.starpoint1, earth1Yz07.p) annotation (Line(points={{-45,-100},{-45,-104},{-44,-104},{-44,-108},{4,-108},{4,-50},{0,-50}}, color={0,0,255}));
  connect(earth1Yz07.n, ground.p) annotation (Line(points={{-20,-50},{-26,-50},{-26,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yz07.starpoint2, earth2Yz07.p) annotation (Line(points={{-35,-100},{-35,-104},{-28,-104},{-28,-50},{-30,-50}}, color={0,0,255}));
  connect(earth2Yz07.n, ground.p) annotation (Line(points={{-50,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(source.plug_p, yz09.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-36},{6,-36},{6,-90},{10,-90}}, color={0,0,255}));
  connect(yz09.plug2, loadYz09.plug_p) annotation (Line(points={{30,-90},{34,-90},{34,-106},{20,-106},{20,-110}}, color={0,0,255}));
  connect(loadYz09.plug_n, starLYz09.plug_p) annotation (Line(points={{20,-130},{20,-140}}, color={0,0,255}));
  connect(starLYz09.pin_n, ground.p) annotation (Line(points={{20,-160},{20,-164},{-76,-164},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yz09.starpoint1, earth1Yz09.p) annotation (Line(points={{15,-100},{15,-104},{32,-104},{32,-50},{30,-50}}, color={0,0,255}));
  connect(earth1Yz09.n, ground.p) annotation (Line(points={{10,-50},{6,-50},{6,-48},{4,-48},{4,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yz09.starpoint2, earth2Yz09.p) annotation (Line(points={{25,-100},{25,-104},{24,-104},{24,-108},{74,-108},{74,-50},{70,-50}}, color={0,0,255}));
  connect(earth2Yz09.n, ground.p) annotation (Line(points={{50,-50},{40,-50},{40,-36},{20,-36},{20,-34},{-40,-34},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(source.plug_p, yz11.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-36},{6,-36},{6,-38},{76,-38},{76,-90},{80,-90}}, color={0,0,255}));
  connect(yz11.plug2, loadYz11.plug_p) annotation (Line(points={{100,-90},{104,-90},{104,-106},{90,-106},{90,-110}}, color={0,0,255}));
  connect(loadYz11.plug_n, starLYz11.plug_p) annotation (Line(points={{90,-130},{90,-140}}, color={0,0,255}));
  connect(starLYz11.pin_n, ground.p) annotation (Line(points={{90,-160},{90,-164},{-76,-164},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yz11.starpoint1, earth1Yz11.p) annotation (Line(points={{85,-100},{85,-104},{78,-104},{78,-62},{104,-62},{104,-50},{100,-50}}, color={0,0,255}));
  connect(earth1Yz11.n, ground.p) annotation (Line(points={{80,-50},{76,-50},{76,-48},{78,-48},{78,-36},{20,-36},{20,-34},{-40,-34},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yz11.starpoint2, earth2Yz11.p) annotation (Line(points={{95,-100},{95,-104},{134,-104},{134,-50},{130,-50}}, color={0,0,255}));
  connect(earth2Yz11.n, ground.p) annotation (Line(points={{110,-50},{106,-50},{106,-38},{78,-38},{78,-36},{20,-36},{20,-34},{-40,-34},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  annotation (Diagram(coordinateSystem(extent={{-120,-180},{140,100}})),
    experiment(StopTime=0.1),
    Documentation(info="<html>
<p>
All 6 transient transformers of vector group Yz (Yz01, Yz03, Yz05, Yz07, Yz09, Yz11), fed in parallel by a symmetric
3 phase source with 100 V line-to-line, each loaded by a symmetric resistive star load of 1/3 Ohm.
The transformer parameters are taken from a
<a href=\"modelica://Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData\">TransformerData</a>
record with C1=&quot;Y&quot; and C2=&quot;z&quot;. The primary and secondary starpoints are grounded by an earthing resistance of 1 MOhm.
The phase 1 load voltages differ in their phase shift by 60 degree (clock number times 30 degree).
</p>
</html>"));
end TransformersYz;
