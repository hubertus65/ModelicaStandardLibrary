within ModelicaTest.Electrical.Machines;
model TransformersYd "Test of the transient transformers of vector group Yd"
  extends Modelica.Icons.Example;

  Modelica.Electrical.Polyphase.Sources.SineVoltage source(m=3, V=fill(sqrt(2/3)*100, 3), f=fill(50, 3))
    annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
  Modelica.Electrical.Polyphase.Basic.Star starS(m=3)
    annotation (Placement(transformation(extent={{-100,-50},{-80,-30}})));
  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-100,-90},{-80,-70}})));
  parameter Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData data(C1="Y", C2="d")
    annotation (Placement(transformation(extent={{-100,70},{-80,90}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01 yd01(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-50,50},{-30,70}})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYd01(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-50,20},{-30,40}})));
  Modelica.Electrical.Polyphase.Basic.Star starLYd01(m=3)
    annotation (Placement(transformation(extent={{-50,-5},{-30,15}})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yd01(R=1e6)
    annotation (Placement(transformation(extent={{-40,75},{-20,95}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd03 yd03(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-25,50},{-5,70}})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYd03(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-25,20},{-5,40}})));
  Modelica.Electrical.Polyphase.Basic.Star starLYd03(m=3)
    annotation (Placement(transformation(extent={{-25,-5},{-5,15}})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yd03(R=1e6)
    annotation (Placement(transformation(extent={{-15,75},{5,95}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd05 yd05(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{0,50},{20,70}})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYd05(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{0,20},{20,40}})));
  Modelica.Electrical.Polyphase.Basic.Star starLYd05(m=3)
    annotation (Placement(transformation(extent={{0,-5},{20,15}})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yd05(R=1e6)
    annotation (Placement(transformation(extent={{10,75},{30,95}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd07 yd07(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-50,-40},{-30,-20}})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYd07(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-50,-70},{-30,-50}})));
  Modelica.Electrical.Polyphase.Basic.Star starLYd07(m=3)
    annotation (Placement(transformation(extent={{-50,-95},{-30,-75}})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yd07(R=1e6)
    annotation (Placement(transformation(extent={{-40,-15},{-20,5}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd09 yd09(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-25,-40},{-5,-20}})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYd09(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-25,-70},{-5,-50}})));
  Modelica.Electrical.Polyphase.Basic.Star starLYd09(m=3)
    annotation (Placement(transformation(extent={{-25,-95},{-5,-75}})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yd09(R=1e6)
    annotation (Placement(transformation(extent={{-15,-15},{5,5}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd11 yd11(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{0,-40},{20,-20}})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYd11(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{0,-70},{20,-50}})));
  Modelica.Electrical.Polyphase.Basic.Star starLYd11(m=3)
    annotation (Placement(transformation(extent={{0,-95},{20,-75}})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yd11(R=1e6)
    annotation (Placement(transformation(extent={{10,-15},{30,5}})));
equation
  connect(source.plug_n, starS.plug_p) annotation (Line(points={{-79,0},{-106,0},{-106,-40},{-102,-40}}, color={0,0,127}));
  connect(starS.pin_n, ground.p) annotation (Line(points={{-79,-40},{-106,-40},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(source.plug_p, yd01.plug1) annotation (Line(points={{-79,0},{-66,0},{-66,60},{-52,60}}, color={0,0,127}));
  connect(yd01.plug2, loadYd01.plug_p) annotation (Line(points={{-29,60},{-56,60},{-56,30},{-52,30}}, color={0,0,127}));
  connect(loadYd01.plug_n, starLYd01.plug_p) annotation (Line(points={{-29,30},{-56,30},{-56,5},{-52,5}}, color={0,0,127}));
  connect(starLYd01.pin_n, ground.p) annotation (Line(points={{-29,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(yd01.starpoint1, earth1Yd01.p) annotation (Line(points={{-29,60},{-46,60},{-46,85},{-42,85}}, color={0,0,127}));
  connect(earth1Yd01.n, ground.p) annotation (Line(points={{-19,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(source.plug_p, yd03.plug1) annotation (Line(points={{-79,0},{-53,0},{-53,60},{-27,60}}, color={0,0,127}));
  connect(yd03.plug2, loadYd03.plug_p) annotation (Line(points={{-4,60},{-31,60},{-31,30},{-27,30}}, color={0,0,127}));
  connect(loadYd03.plug_n, starLYd03.plug_p) annotation (Line(points={{-4,30},{-31,30},{-31,5},{-27,5}}, color={0,0,127}));
  connect(starLYd03.pin_n, ground.p) annotation (Line(points={{-4,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(yd03.starpoint1, earth1Yd03.p) annotation (Line(points={{-4,60},{-21,60},{-21,85},{-17,85}}, color={0,0,127}));
  connect(earth1Yd03.n, ground.p) annotation (Line(points={{6,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(source.plug_p, yd05.plug1) annotation (Line(points={{-79,0},{-40,0},{-40,60},{-2,60}}, color={0,0,127}));
  connect(yd05.plug2, loadYd05.plug_p) annotation (Line(points={{21,60},{-6,60},{-6,30},{-2,30}}, color={0,0,127}));
  connect(loadYd05.plug_n, starLYd05.plug_p) annotation (Line(points={{21,30},{-6,30},{-6,5},{-2,5}}, color={0,0,127}));
  connect(starLYd05.pin_n, ground.p) annotation (Line(points={{21,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(yd05.starpoint1, earth1Yd05.p) annotation (Line(points={{21,60},{4,60},{4,85},{8,85}}, color={0,0,127}));
  connect(earth1Yd05.n, ground.p) annotation (Line(points={{31,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(source.plug_p, yd07.plug1) annotation (Line(points={{-79,0},{-66,0},{-66,-30},{-52,-30}}, color={0,0,127}));
  connect(yd07.plug2, loadYd07.plug_p) annotation (Line(points={{-29,-30},{-56,-30},{-56,-60},{-52,-60}}, color={0,0,127}));
  connect(loadYd07.plug_n, starLYd07.plug_p) annotation (Line(points={{-29,-60},{-56,-60},{-56,-85},{-52,-85}}, color={0,0,127}));
  connect(starLYd07.pin_n, ground.p) annotation (Line(points={{-29,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(yd07.starpoint1, earth1Yd07.p) annotation (Line(points={{-29,-30},{-46,-30},{-46,-5},{-42,-5}}, color={0,0,127}));
  connect(earth1Yd07.n, ground.p) annotation (Line(points={{-19,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(source.plug_p, yd09.plug1) annotation (Line(points={{-79,0},{-53,0},{-53,-30},{-27,-30}}, color={0,0,127}));
  connect(yd09.plug2, loadYd09.plug_p) annotation (Line(points={{-4,-30},{-31,-30},{-31,-60},{-27,-60}}, color={0,0,127}));
  connect(loadYd09.plug_n, starLYd09.plug_p) annotation (Line(points={{-4,-60},{-31,-60},{-31,-85},{-27,-85}}, color={0,0,127}));
  connect(starLYd09.pin_n, ground.p) annotation (Line(points={{-4,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(yd09.starpoint1, earth1Yd09.p) annotation (Line(points={{-4,-30},{-21,-30},{-21,-5},{-17,-5}}, color={0,0,127}));
  connect(earth1Yd09.n, ground.p) annotation (Line(points={{6,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(source.plug_p, yd11.plug1) annotation (Line(points={{-79,0},{-40,0},{-40,-30},{-2,-30}}, color={0,0,127}));
  connect(yd11.plug2, loadYd11.plug_p) annotation (Line(points={{21,-30},{-6,-30},{-6,-60},{-2,-60}}, color={0,0,127}));
  connect(loadYd11.plug_n, starLYd11.plug_p) annotation (Line(points={{21,-60},{-6,-60},{-6,-85},{-2,-85}}, color={0,0,127}));
  connect(starLYd11.pin_n, ground.p) annotation (Line(points={{21,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(yd11.starpoint1, earth1Yd11.p) annotation (Line(points={{21,-30},{4,-30},{4,-5},{8,-5}}, color={0,0,127}));
  connect(earth1Yd11.n, ground.p) annotation (Line(points={{31,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
  annotation (experiment(StopTime=0.1),
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
