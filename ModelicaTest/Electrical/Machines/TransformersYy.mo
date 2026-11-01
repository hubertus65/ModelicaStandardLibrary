within ModelicaTest.Electrical.Machines;
model TransformersYy "Test of the transient transformers of vector group Yy"
  extends Modelica.Icons.Example;

  Modelica.Electrical.Polyphase.Sources.SineVoltage source(m=3, V=fill(sqrt(2/3)*100, 3), f=fill(50, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-90,-20})));
  Modelica.Electrical.Polyphase.Basic.Star starS(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-100})));
  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-90,-150})));
  parameter Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData data(C1="Y", C2="y")
    annotation (Placement(transformation(extent={{-100,70},{-80,90}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yy.Yy00 yy00(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,50})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYy00(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,20})));
  Modelica.Electrical.Polyphase.Basic.Star starLYy00(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-20})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yy00(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-10,80})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Yy00(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-40,80})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yy.Yy02 yy02(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={20,50})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYy02(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={20,20})));
  Modelica.Electrical.Polyphase.Basic.Star starLYy02(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={20,-20})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yy02(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={20,80})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Yy02(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={60,80})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yy.Yy04 yy04(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={90,50})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYy04(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={90,20})));
  Modelica.Electrical.Polyphase.Basic.Star starLYy04(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={90,-20})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yy04(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={90,80})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Yy04(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={120,80})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yy.Yy06 yy06(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,-90})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYy06(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-120})));
  Modelica.Electrical.Polyphase.Basic.Star starLYy06(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-150})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yy06(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-10,-50})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Yy06(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-40,-50})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yy.Yy08 yy08(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={20,-90})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYy08(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={20,-120})));
  Modelica.Electrical.Polyphase.Basic.Star starLYy08(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={20,-150})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yy08(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={20,-50})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Yy08(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={60,-50})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yy.Yy10 yy10(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={90,-90})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYy10(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={90,-120})));
  Modelica.Electrical.Polyphase.Basic.Star starLYy10(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={90,-150})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yy10(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={90,-50})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Yy10(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={120,-50})));
equation
  connect(source.plug_n, starS.plug_p) annotation (Line(points={{-100,-20},{-104,-20},{-104,-100},{-100,-100}}, color={0,0,255}));
  connect(starS.pin_n, ground.p) annotation (Line(points={{-80,-100},{-76,-100},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(source.plug_p, yy00.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,50},{-50,50}}, color={0,0,255}));
  connect(yy00.plug2, loadYy00.plug_p) annotation (Line(points={{-30,50},{-26,50},{-26,34},{-40,34},{-40,30}}, color={0,0,255}));
  connect(loadYy00.plug_n, starLYy00.plug_p) annotation (Line(points={{-40,10},{-40,-10}}, color={0,0,255}));
  connect(starLYy00.pin_n, ground.p) annotation (Line(points={{-40,-30},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yy00.starpoint1, earth1Yy00.p) annotation (Line(points={{-45,40},{-45,36},{-44,36},{-44,32},{4,32},{4,80},{0,80}}, color={0,0,255}));
  connect(earth1Yy00.n, ground.p) annotation (Line(points={{-20,80},{-26,80},{-26,68},{-60,68},{-60,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yy00.starpoint2, earth2Yy00.p) annotation (Line(points={{-35,40},{-35,36},{-28,36},{-28,80},{-30,80}}, color={0,0,255}));
  connect(earth2Yy00.n, ground.p) annotation (Line(points={{-50,80},{-60,80},{-60,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(source.plug_p, yy02.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,6},{6,6},{6,50},{10,50}}, color={0,0,255}));
  connect(yy02.plug2, loadYy02.plug_p) annotation (Line(points={{30,50},{34,50},{34,34},{20,34},{20,30}}, color={0,0,255}));
  connect(loadYy02.plug_n, starLYy02.plug_p) annotation (Line(points={{20,10},{20,-10}}, color={0,0,255}));
  connect(starLYy02.pin_n, ground.p) annotation (Line(points={{20,-30},{20,-34},{-40,-34},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yy02.starpoint1, earth1Yy02.p) annotation (Line(points={{15,40},{15,36},{32,36},{32,80},{30,80}}, color={0,0,255}));
  connect(earth1Yy02.n, ground.p) annotation (Line(points={{10,80},{6,80},{6,92},{-52,92},{-52,80},{-60,80},{-60,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yy02.starpoint2, earth2Yy02.p) annotation (Line(points={{25,40},{25,36},{24,36},{24,32},{74,32},{74,80},{70,80}}, color={0,0,255}));
  connect(earth2Yy02.n, ground.p) annotation (Line(points={{50,80},{40,80},{40,92},{-52,92},{-52,80},{-60,80},{-60,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(source.plug_p, yy04.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,6},{76,6},{76,50},{80,50}}, color={0,0,255}));
  connect(yy04.plug2, loadYy04.plug_p) annotation (Line(points={{100,50},{104,50},{104,34},{90,34},{90,30}}, color={0,0,255}));
  connect(loadYy04.plug_n, starLYy04.plug_p) annotation (Line(points={{90,10},{90,-10}}, color={0,0,255}));
  connect(starLYy04.pin_n, ground.p) annotation (Line(points={{90,-30},{90,-34},{78,-34},{78,-36},{20,-36},{20,-34},{-40,-34},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yy04.starpoint1, earth1Yy04.p) annotation (Line(points={{85,40},{85,36},{78,36},{78,68},{104,68},{104,80},{100,80}}, color={0,0,255}));
  connect(earth1Yy04.n, ground.p) annotation (Line(points={{80,80},{76,80},{76,92},{-52,92},{-52,80},{-60,80},{-60,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yy04.starpoint2, earth2Yy04.p) annotation (Line(points={{95,40},{95,36},{134,36},{134,80},{130,80}}, color={0,0,255}));
  connect(earth2Yy04.n, ground.p) annotation (Line(points={{110,80},{106,80},{106,-38},{78,-38},{78,-36},{20,-36},{20,-34},{-40,-34},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(source.plug_p, yy06.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-90},{-50,-90}}, color={0,0,255}));
  connect(yy06.plug2, loadYy06.plug_p) annotation (Line(points={{-30,-90},{-26,-90},{-26,-106},{-40,-106},{-40,-110}}, color={0,0,255}));
  connect(loadYy06.plug_n, starLYy06.plug_p) annotation (Line(points={{-40,-130},{-40,-140}}, color={0,0,255}));
  connect(starLYy06.pin_n, ground.p) annotation (Line(points={{-40,-160},{-40,-164},{-76,-164},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yy06.starpoint1, earth1Yy06.p) annotation (Line(points={{-45,-100},{-45,-104},{-44,-104},{-44,-108},{4,-108},{4,-50},{0,-50}}, color={0,0,255}));
  connect(earth1Yy06.n, ground.p) annotation (Line(points={{-20,-50},{-26,-50},{-26,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yy06.starpoint2, earth2Yy06.p) annotation (Line(points={{-35,-100},{-35,-104},{-28,-104},{-28,-50},{-30,-50}}, color={0,0,255}));
  connect(earth2Yy06.n, ground.p) annotation (Line(points={{-50,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(source.plug_p, yy08.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-36},{6,-36},{6,-90},{10,-90}}, color={0,0,255}));
  connect(yy08.plug2, loadYy08.plug_p) annotation (Line(points={{30,-90},{34,-90},{34,-106},{20,-106},{20,-110}}, color={0,0,255}));
  connect(loadYy08.plug_n, starLYy08.plug_p) annotation (Line(points={{20,-130},{20,-140}}, color={0,0,255}));
  connect(starLYy08.pin_n, ground.p) annotation (Line(points={{20,-160},{20,-164},{-76,-164},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yy08.starpoint1, earth1Yy08.p) annotation (Line(points={{15,-100},{15,-104},{32,-104},{32,-50},{30,-50}}, color={0,0,255}));
  connect(earth1Yy08.n, ground.p) annotation (Line(points={{10,-50},{6,-50},{6,-48},{4,-48},{4,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yy08.starpoint2, earth2Yy08.p) annotation (Line(points={{25,-100},{25,-104},{24,-104},{24,-108},{74,-108},{74,-50},{70,-50}}, color={0,0,255}));
  connect(earth2Yy08.n, ground.p) annotation (Line(points={{50,-50},{40,-50},{40,-36},{20,-36},{20,-34},{-40,-34},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(source.plug_p, yy10.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-36},{6,-36},{6,-38},{76,-38},{76,-90},{80,-90}}, color={0,0,255}));
  connect(yy10.plug2, loadYy10.plug_p) annotation (Line(points={{100,-90},{104,-90},{104,-106},{90,-106},{90,-110}}, color={0,0,255}));
  connect(loadYy10.plug_n, starLYy10.plug_p) annotation (Line(points={{90,-130},{90,-140}}, color={0,0,255}));
  connect(starLYy10.pin_n, ground.p) annotation (Line(points={{90,-160},{90,-164},{-76,-164},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yy10.starpoint1, earth1Yy10.p) annotation (Line(points={{85,-100},{85,-104},{78,-104},{78,-62},{104,-62},{104,-50},{100,-50}}, color={0,0,255}));
  connect(earth1Yy10.n, ground.p) annotation (Line(points={{80,-50},{76,-50},{76,-48},{78,-48},{78,-36},{20,-36},{20,-34},{-40,-34},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yy10.starpoint2, earth2Yy10.p) annotation (Line(points={{95,-100},{95,-104},{134,-104},{134,-50},{130,-50}}, color={0,0,255}));
  connect(earth2Yy10.n, ground.p) annotation (Line(points={{110,-50},{106,-50},{106,-38},{78,-38},{78,-36},{20,-36},{20,-34},{-40,-34},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  annotation (Diagram(coordinateSystem(extent={{-120,-180},{140,100}})),
    experiment(StopTime=0.1),
    Documentation(info="<html>
<p>
All 6 transient transformers of vector group Yy (Yy00, Yy02, Yy04, Yy06, Yy08, Yy10), fed in parallel by a symmetric
3 phase source with 100 V line-to-line, each loaded by a symmetric resistive star load of 1/3 Ohm.
The transformer parameters are taken from a
<a href=\"modelica://Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData\">TransformerData</a>
record with C1=&quot;Y&quot; and C2=&quot;y&quot;. The primary and secondary starpoints are grounded by an earthing resistance of 1 MOhm.
The phase 1 load voltages differ in their phase shift by 60 degree (clock number times 30 degree).
</p>
</html>"));
end TransformersYy;
