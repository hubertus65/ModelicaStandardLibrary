within ModelicaTest.Electrical.Machines;
model TransformersYd "Test of the transient transformers of vector group Yd"
  extends Modelica.Icons.Example;

  Modelica.Electrical.Polyphase.Sources.SineVoltage source(m=3, V=fill(sqrt(2/3)*100, 3), f=fill(50, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-90,-20})));
  Modelica.Electrical.Polyphase.Basic.Star starS(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-100})));
  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-90,-150})));
  parameter Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData data(C1="Y", C2="d")
    annotation (Placement(transformation(extent={{-100,70},{-80,90}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01 yd01(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,50})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYd01(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,20})));
  Modelica.Electrical.Polyphase.Basic.Star starLYd01(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-20})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yd01(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-10,80})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd03 yd03(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,50})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYd03(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,20})));
  Modelica.Electrical.Polyphase.Basic.Star starLYd03(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-20})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yd03(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={20,80})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd05 yd05(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,50})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYd05(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,20})));
  Modelica.Electrical.Polyphase.Basic.Star starLYd05(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,-20})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yd05(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={60,80})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd07 yd07(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,-90})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYd07(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-120})));
  Modelica.Electrical.Polyphase.Basic.Star starLYd07(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-150})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yd07(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-10,-50})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd09 yd09(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-90})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYd09(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-120})));
  Modelica.Electrical.Polyphase.Basic.Star starLYd09(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-150})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yd09(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={20,-50})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd11 yd11(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,-90})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYd11(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,-120})));
  Modelica.Electrical.Polyphase.Basic.Star starLYd11(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,-150})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yd11(R=1e6)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={60,-50})));
equation
  connect(source.plug_n, starS.plug_p) annotation (Line(points={{-100,-20},{-104,-20},{-104,-100},{-100,-100}}, color={0,0,255}));
  connect(starS.pin_n, ground.p) annotation (Line(points={{-80,-100},{-76,-100},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(source.plug_p, yd01.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,50},{-50,50}}, color={0,0,255}));
  connect(yd01.plug2, loadYd01.plug_p) annotation (Line(points={{-30,50},{-26,50},{-26,34},{-40,34},{-40,30}}, color={0,0,255}));
  connect(loadYd01.plug_n, starLYd01.plug_p) annotation (Line(points={{-40,10},{-40,-10}}, color={0,0,255}));
  connect(starLYd01.pin_n, ground.p) annotation (Line(points={{-40,-30},{-40,-36},{-76,-36},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yd01.starpoint1, earth1Yd01.p) annotation (Line(points={{-45,40},{-45,36},{-52,36},{-52,92},{4,92},{4,80},{0,80}}, color={0,0,255}));
  connect(earth1Yd01.n, ground.p) annotation (Line(points={{-20,80},{-24,80},{-24,-36},{-76,-36},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(source.plug_p, yd03.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,32},{-14,32},{-14,50},{-10,50}}, color={0,0,255}));
  connect(yd03.plug2, loadYd03.plug_p) annotation (Line(points={{10,50},{14,50},{14,34},{0,34},{0,30}}, color={0,0,255}));
  connect(loadYd03.plug_n, starLYd03.plug_p) annotation (Line(points={{0,10},{0,-10}}, color={0,0,255}));
  connect(starLYd03.pin_n, ground.p) annotation (Line(points={{0,-30},{0,-36},{-76,-36},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yd03.starpoint1, earth1Yd03.p) annotation (Line(points={{-5,40},{-5,36},{-12,36},{-12,68},{34,68},{34,80},{30,80}}, color={0,0,255}));
  connect(earth1Yd03.n, ground.p) annotation (Line(points={{10,80},{6,80},{6,66},{-24,66},{-24,-36},{-76,-36},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(source.plug_p, yd05.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,32},{16,32},{16,50},{20,50}}, color={0,0,255}));
  connect(yd05.plug2, loadYd05.plug_p) annotation (Line(points={{40,50},{44,50},{44,34},{30,34},{30,30}}, color={0,0,255}));
  connect(loadYd05.plug_n, starLYd05.plug_p) annotation (Line(points={{30,10},{30,-10}}, color={0,0,255}));
  connect(starLYd05.pin_n, ground.p) annotation (Line(points={{30,-30},{30,-34},{6,-34},{6,-36},{-76,-36},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yd05.starpoint1, earth1Yd05.p) annotation (Line(points={{25,40},{25,36},{74,36},{74,80},{70,80}}, color={0,0,255}));
  connect(earth1Yd05.n, ground.p) annotation (Line(points={{50,80},{40,80},{40,66},{-24,66},{-24,-36},{-76,-36},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(source.plug_p, yd07.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-90},{-50,-90}}, color={0,0,255}));
  connect(yd07.plug2, loadYd07.plug_p) annotation (Line(points={{-30,-90},{-26,-90},{-26,-106},{-40,-106},{-40,-110}}, color={0,0,255}));
  connect(loadYd07.plug_n, starLYd07.plug_p) annotation (Line(points={{-40,-130},{-40,-140}}, color={0,0,255}));
  connect(starLYd07.pin_n, ground.p) annotation (Line(points={{-40,-160},{-40,-164},{-76,-164},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yd07.starpoint1, earth1Yd07.p) annotation (Line(points={{-45,-100},{-45,-104},{-52,-104},{-52,-38},{4,-38},{4,-50},{0,-50}}, color={0,0,255}));
  connect(earth1Yd07.n, ground.p) annotation (Line(points={{-20,-50},{-76,-50},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(source.plug_p, yd09.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-78},{-14,-78},{-14,-90},{-10,-90}}, color={0,0,255}));
  connect(yd09.plug2, loadYd09.plug_p) annotation (Line(points={{10,-90},{14,-90},{14,-106},{0,-106},{0,-110}}, color={0,0,255}));
  connect(loadYd09.plug_n, starLYd09.plug_p) annotation (Line(points={{0,-130},{0,-140}}, color={0,0,255}));
  connect(starLYd09.pin_n, ground.p) annotation (Line(points={{0,-160},{0,-164},{-76,-164},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yd09.starpoint1, earth1Yd09.p) annotation (Line(points={{-5,-100},{-5,-104},{-12,-104},{-12,-62},{34,-62},{34,-50},{30,-50}}, color={0,0,255}));
  connect(earth1Yd09.n, ground.p) annotation (Line(points={{10,-50},{6,-50},{6,-36},{-76,-36},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(source.plug_p, yd11.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-78},{16,-78},{16,-90},{20,-90}}, color={0,0,255}));
  connect(yd11.plug2, loadYd11.plug_p) annotation (Line(points={{40,-90},{44,-90},{44,-106},{30,-106},{30,-110}}, color={0,0,255}));
  connect(loadYd11.plug_n, starLYd11.plug_p) annotation (Line(points={{30,-130},{30,-140}}, color={0,0,255}));
  connect(starLYd11.pin_n, ground.p) annotation (Line(points={{30,-160},{30,-164},{-76,-164},{-76,-150},{-80,-150}}, color={0,0,255}));
  connect(yd11.starpoint1, earth1Yd11.p) annotation (Line(points={{25,-100},{25,-104},{74,-104},{74,-50},{70,-50}}, color={0,0,255}));
  connect(earth1Yd11.n, ground.p) annotation (Line(points={{50,-50},{40,-50},{40,-38},{6,-38},{6,-36},{-76,-36},{-76,-150},{-80,-150}}, color={0,0,255}));
  annotation (Diagram(coordinateSystem(extent={{-120,-180},{100,100}})),
    experiment(StopTime=0.1),
    Documentation(info="<html>
<p>
All 6 transient transformers of vector group Yd (Yd01, Yd03, Yd05, Yd07, Yd09, Yd11), fed in parallel by a symmetric
3 phase source with 100 V line-to-line, each loaded by a symmetric resistive star load of 1/3 Ohm.
The transformer parameters are taken from a
<a href=\"modelica://Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData\">TransformerData</a>
record with C1=&quot;Y&quot; and C2=&quot;d&quot;. The primary starpoints are grounded by an earthing resistance of 1 MOhm.
The phase 1 load voltages differ in their phase shift by 60 degree (clock number times 30 degree).
</p>
</html>"));
end TransformersYd;
