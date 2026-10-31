within ModelicaTest.Electrical.Machines;
model TransformersYz "Test of the transient transformers of vector group Yz"
  extends Modelica.Icons.Example;

  Modelica.Electrical.Polyphase.Sources.SineVoltage source(m=3, V=fill(sqrt(2/3)*100, 3), f=fill(50, 3))
    annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
  Modelica.Electrical.Polyphase.Basic.Star starS(m=3)
    annotation (Placement(transformation(extent={{-100,-50},{-80,-30}})));
  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-100,-90},{-80,-70}})));
  parameter Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData data(C1="Y", C2="z")
    annotation (Placement(transformation(extent={{-100,70},{-80,90}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yz.Yz01 yz01(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-50,50},{-30,70}})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYz01(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-50,20},{-30,40}})));
  Modelica.Electrical.Polyphase.Basic.Star starLYz01(m=3)
    annotation (Placement(transformation(extent={{-50,-5},{-30,15}})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yz01(R=1e6)
    annotation (Placement(transformation(extent={{-40,75},{-20,95}})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Yz01(R=1e6)
    annotation (Placement(transformation(extent={{-30,75},{-10,95}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yz.Yz03 yz03(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-25,50},{-5,70}})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYz03(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-25,20},{-5,40}})));
  Modelica.Electrical.Polyphase.Basic.Star starLYz03(m=3)
    annotation (Placement(transformation(extent={{-25,-5},{-5,15}})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yz03(R=1e6)
    annotation (Placement(transformation(extent={{-15,75},{5,95}})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Yz03(R=1e6)
    annotation (Placement(transformation(extent={{-5,75},{15,95}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yz.Yz05 yz05(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{0,50},{20,70}})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYz05(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{0,20},{20,40}})));
  Modelica.Electrical.Polyphase.Basic.Star starLYz05(m=3)
    annotation (Placement(transformation(extent={{0,-5},{20,15}})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yz05(R=1e6)
    annotation (Placement(transformation(extent={{10,75},{30,95}})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Yz05(R=1e6)
    annotation (Placement(transformation(extent={{20,75},{40,95}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yz.Yz07 yz07(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-50,-40},{-30,-20}})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYz07(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-50,-70},{-30,-50}})));
  Modelica.Electrical.Polyphase.Basic.Star starLYz07(m=3)
    annotation (Placement(transformation(extent={{-50,-95},{-30,-75}})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yz07(R=1e6)
    annotation (Placement(transformation(extent={{-40,-15},{-20,5}})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Yz07(R=1e6)
    annotation (Placement(transformation(extent={{-30,-15},{-10,5}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yz.Yz09 yz09(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-25,-40},{-5,-20}})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYz09(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-25,-70},{-5,-50}})));
  Modelica.Electrical.Polyphase.Basic.Star starLYz09(m=3)
    annotation (Placement(transformation(extent={{-25,-95},{-5,-75}})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yz09(R=1e6)
    annotation (Placement(transformation(extent={{-15,-15},{5,5}})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Yz09(R=1e6)
    annotation (Placement(transformation(extent={{-5,-15},{15,5}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Yz.Yz11 yz11(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{0,-40},{20,-20}})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadYz11(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{0,-70},{20,-50}})));
  Modelica.Electrical.Polyphase.Basic.Star starLYz11(m=3)
    annotation (Placement(transformation(extent={{0,-95},{20,-75}})));
  Modelica.Electrical.Analog.Basic.Resistor earth1Yz11(R=1e6)
    annotation (Placement(transformation(extent={{10,-15},{30,5}})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Yz11(R=1e6)
    annotation (Placement(transformation(extent={{20,-15},{40,5}})));
equation
  connect(source.plug_n, starS.plug_p) annotation (Line(points={{-79,0},{-106,0},{-106,-40},{-102,-40}}, color={0,0,127}));
  connect(starS.pin_n, ground.p) annotation (Line(points={{-79,-40},{-106,-40},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(source.plug_p, yz01.plug1) annotation (Line(points={{-79,0},{-66,0},{-66,60},{-52,60}}, color={0,0,127}));
  connect(yz01.plug2, loadYz01.plug_p) annotation (Line(points={{-29,60},{-56,60},{-56,30},{-52,30}}, color={0,0,127}));
  connect(loadYz01.plug_n, starLYz01.plug_p) annotation (Line(points={{-29,30},{-56,30},{-56,5},{-52,5}}, color={0,0,127}));
  connect(starLYz01.pin_n, ground.p) annotation (Line(points={{-29,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(yz01.starpoint1, earth1Yz01.p) annotation (Line(points={{-29,60},{-46,60},{-46,85},{-42,85}}, color={0,0,127}));
  connect(earth1Yz01.n, ground.p) annotation (Line(points={{-19,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(yz01.starpoint2, earth2Yz01.p) annotation (Line(points={{-29,60},{-36,60},{-36,85},{-32,85}}, color={0,0,127}));
  connect(earth2Yz01.n, ground.p) annotation (Line(points={{-9,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(source.plug_p, yz03.plug1) annotation (Line(points={{-79,0},{-53,0},{-53,60},{-27,60}}, color={0,0,127}));
  connect(yz03.plug2, loadYz03.plug_p) annotation (Line(points={{-4,60},{-31,60},{-31,30},{-27,30}}, color={0,0,127}));
  connect(loadYz03.plug_n, starLYz03.plug_p) annotation (Line(points={{-4,30},{-31,30},{-31,5},{-27,5}}, color={0,0,127}));
  connect(starLYz03.pin_n, ground.p) annotation (Line(points={{-4,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(yz03.starpoint1, earth1Yz03.p) annotation (Line(points={{-4,60},{-21,60},{-21,85},{-17,85}}, color={0,0,127}));
  connect(earth1Yz03.n, ground.p) annotation (Line(points={{6,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(yz03.starpoint2, earth2Yz03.p) annotation (Line(points={{-4,60},{-11,60},{-11,85},{-7,85}}, color={0,0,127}));
  connect(earth2Yz03.n, ground.p) annotation (Line(points={{16,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(source.plug_p, yz05.plug1) annotation (Line(points={{-79,0},{-40,0},{-40,60},{-2,60}}, color={0,0,127}));
  connect(yz05.plug2, loadYz05.plug_p) annotation (Line(points={{21,60},{-6,60},{-6,30},{-2,30}}, color={0,0,127}));
  connect(loadYz05.plug_n, starLYz05.plug_p) annotation (Line(points={{21,30},{-6,30},{-6,5},{-2,5}}, color={0,0,127}));
  connect(starLYz05.pin_n, ground.p) annotation (Line(points={{21,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(yz05.starpoint1, earth1Yz05.p) annotation (Line(points={{21,60},{4,60},{4,85},{8,85}}, color={0,0,127}));
  connect(earth1Yz05.n, ground.p) annotation (Line(points={{31,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(yz05.starpoint2, earth2Yz05.p) annotation (Line(points={{21,60},{14,60},{14,85},{18,85}}, color={0,0,127}));
  connect(earth2Yz05.n, ground.p) annotation (Line(points={{41,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(source.plug_p, yz07.plug1) annotation (Line(points={{-79,0},{-66,0},{-66,-30},{-52,-30}}, color={0,0,127}));
  connect(yz07.plug2, loadYz07.plug_p) annotation (Line(points={{-29,-30},{-56,-30},{-56,-60},{-52,-60}}, color={0,0,127}));
  connect(loadYz07.plug_n, starLYz07.plug_p) annotation (Line(points={{-29,-60},{-56,-60},{-56,-85},{-52,-85}}, color={0,0,127}));
  connect(starLYz07.pin_n, ground.p) annotation (Line(points={{-29,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(yz07.starpoint1, earth1Yz07.p) annotation (Line(points={{-29,-30},{-46,-30},{-46,-5},{-42,-5}}, color={0,0,127}));
  connect(earth1Yz07.n, ground.p) annotation (Line(points={{-19,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(yz07.starpoint2, earth2Yz07.p) annotation (Line(points={{-29,-30},{-36,-30},{-36,-5},{-32,-5}}, color={0,0,127}));
  connect(earth2Yz07.n, ground.p) annotation (Line(points={{-9,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(source.plug_p, yz09.plug1) annotation (Line(points={{-79,0},{-53,0},{-53,-30},{-27,-30}}, color={0,0,127}));
  connect(yz09.plug2, loadYz09.plug_p) annotation (Line(points={{-4,-30},{-31,-30},{-31,-60},{-27,-60}}, color={0,0,127}));
  connect(loadYz09.plug_n, starLYz09.plug_p) annotation (Line(points={{-4,-60},{-31,-60},{-31,-85},{-27,-85}}, color={0,0,127}));
  connect(starLYz09.pin_n, ground.p) annotation (Line(points={{-4,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(yz09.starpoint1, earth1Yz09.p) annotation (Line(points={{-4,-30},{-21,-30},{-21,-5},{-17,-5}}, color={0,0,127}));
  connect(earth1Yz09.n, ground.p) annotation (Line(points={{6,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(yz09.starpoint2, earth2Yz09.p) annotation (Line(points={{-4,-30},{-11,-30},{-11,-5},{-7,-5}}, color={0,0,127}));
  connect(earth2Yz09.n, ground.p) annotation (Line(points={{16,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(source.plug_p, yz11.plug1) annotation (Line(points={{-79,0},{-40,0},{-40,-30},{-2,-30}}, color={0,0,127}));
  connect(yz11.plug2, loadYz11.plug_p) annotation (Line(points={{21,-30},{-6,-30},{-6,-60},{-2,-60}}, color={0,0,127}));
  connect(loadYz11.plug_n, starLYz11.plug_p) annotation (Line(points={{21,-60},{-6,-60},{-6,-85},{-2,-85}}, color={0,0,127}));
  connect(starLYz11.pin_n, ground.p) annotation (Line(points={{21,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(yz11.starpoint1, earth1Yz11.p) annotation (Line(points={{21,-30},{4,-30},{4,-5},{8,-5}}, color={0,0,127}));
  connect(earth1Yz11.n, ground.p) annotation (Line(points={{31,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(yz11.starpoint2, earth2Yz11.p) annotation (Line(points={{21,-30},{14,-30},{14,-5},{18,-5}}, color={0,0,127}));
  connect(earth2Yz11.n, ground.p) annotation (Line(points={{41,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
  annotation (experiment(StopTime=0.1),
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
