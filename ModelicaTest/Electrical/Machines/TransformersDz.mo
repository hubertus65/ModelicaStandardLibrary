within ModelicaTest.Electrical.Machines;
model TransformersDz "Test of the transient transformers of vector group Dz"
  extends Modelica.Icons.Example;

  Modelica.Electrical.Polyphase.Sources.SineVoltage source(m=3, V=fill(sqrt(2/3)*100, 3), f=fill(50, 3))
    annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
  Modelica.Electrical.Polyphase.Basic.Star starS(m=3)
    annotation (Placement(transformation(extent={{-100,-50},{-80,-30}})));
  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-100,-90},{-80,-70}})));
  parameter Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData data(C1="D", C2="z")
    annotation (Placement(transformation(extent={{-100,70},{-80,90}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Dz.Dz00 dz00(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-50,50},{-30,70}})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadDz00(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-50,20},{-30,40}})));
  Modelica.Electrical.Polyphase.Basic.Star starLDz00(m=3)
    annotation (Placement(transformation(extent={{-50,-5},{-30,15}})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Dz00(R=1e6)
    annotation (Placement(transformation(extent={{-30,75},{-10,95}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Dz.Dz02 dz02(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-25,50},{-5,70}})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadDz02(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-25,20},{-5,40}})));
  Modelica.Electrical.Polyphase.Basic.Star starLDz02(m=3)
    annotation (Placement(transformation(extent={{-25,-5},{-5,15}})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Dz02(R=1e6)
    annotation (Placement(transformation(extent={{-5,75},{15,95}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Dz.Dz04 dz04(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{0,50},{20,70}})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadDz04(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{0,20},{20,40}})));
  Modelica.Electrical.Polyphase.Basic.Star starLDz04(m=3)
    annotation (Placement(transformation(extent={{0,-5},{20,15}})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Dz04(R=1e6)
    annotation (Placement(transformation(extent={{20,75},{40,95}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Dz.Dz06 dz06(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-50,-40},{-30,-20}})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadDz06(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-50,-70},{-30,-50}})));
  Modelica.Electrical.Polyphase.Basic.Star starLDz06(m=3)
    annotation (Placement(transformation(extent={{-50,-95},{-30,-75}})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Dz06(R=1e6)
    annotation (Placement(transformation(extent={{-30,-15},{-10,5}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Dz.Dz08 dz08(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-25,-40},{-5,-20}})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadDz08(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-25,-70},{-5,-50}})));
  Modelica.Electrical.Polyphase.Basic.Star starLDz08(m=3)
    annotation (Placement(transformation(extent={{-25,-95},{-5,-75}})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Dz08(R=1e6)
    annotation (Placement(transformation(extent={{-5,-15},{15,5}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Dz.Dz10 dz10(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{0,-40},{20,-20}})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadDz10(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{0,-70},{20,-50}})));
  Modelica.Electrical.Polyphase.Basic.Star starLDz10(m=3)
    annotation (Placement(transformation(extent={{0,-95},{20,-75}})));
  Modelica.Electrical.Analog.Basic.Resistor earth2Dz10(R=1e6)
    annotation (Placement(transformation(extent={{20,-15},{40,5}})));
equation
  connect(source.plug_n, starS.plug_p) annotation (Line(points={{-79,0},{-106,0},{-106,-40},{-102,-40}}, color={0,0,127}));
  connect(starS.pin_n, ground.p) annotation (Line(points={{-79,-40},{-106,-40},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(source.plug_p, dz00.plug1) annotation (Line(points={{-79,0},{-66,0},{-66,60},{-52,60}}, color={0,0,127}));
  connect(dz00.plug2, loadDz00.plug_p) annotation (Line(points={{-29,60},{-56,60},{-56,30},{-52,30}}, color={0,0,127}));
  connect(loadDz00.plug_n, starLDz00.plug_p) annotation (Line(points={{-29,30},{-56,30},{-56,5},{-52,5}}, color={0,0,127}));
  connect(starLDz00.pin_n, ground.p) annotation (Line(points={{-29,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(dz00.starpoint2, earth2Dz00.p) annotation (Line(points={{-29,60},{-36,60},{-36,85},{-32,85}}, color={0,0,127}));
  connect(earth2Dz00.n, ground.p) annotation (Line(points={{-9,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(source.plug_p, dz02.plug1) annotation (Line(points={{-79,0},{-53,0},{-53,60},{-27,60}}, color={0,0,127}));
  connect(dz02.plug2, loadDz02.plug_p) annotation (Line(points={{-4,60},{-31,60},{-31,30},{-27,30}}, color={0,0,127}));
  connect(loadDz02.plug_n, starLDz02.plug_p) annotation (Line(points={{-4,30},{-31,30},{-31,5},{-27,5}}, color={0,0,127}));
  connect(starLDz02.pin_n, ground.p) annotation (Line(points={{-4,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(dz02.starpoint2, earth2Dz02.p) annotation (Line(points={{-4,60},{-11,60},{-11,85},{-7,85}}, color={0,0,127}));
  connect(earth2Dz02.n, ground.p) annotation (Line(points={{16,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(source.plug_p, dz04.plug1) annotation (Line(points={{-79,0},{-40,0},{-40,60},{-2,60}}, color={0,0,127}));
  connect(dz04.plug2, loadDz04.plug_p) annotation (Line(points={{21,60},{-6,60},{-6,30},{-2,30}}, color={0,0,127}));
  connect(loadDz04.plug_n, starLDz04.plug_p) annotation (Line(points={{21,30},{-6,30},{-6,5},{-2,5}}, color={0,0,127}));
  connect(starLDz04.pin_n, ground.p) annotation (Line(points={{21,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(dz04.starpoint2, earth2Dz04.p) annotation (Line(points={{21,60},{14,60},{14,85},{18,85}}, color={0,0,127}));
  connect(earth2Dz04.n, ground.p) annotation (Line(points={{41,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(source.plug_p, dz06.plug1) annotation (Line(points={{-79,0},{-66,0},{-66,-30},{-52,-30}}, color={0,0,127}));
  connect(dz06.plug2, loadDz06.plug_p) annotation (Line(points={{-29,-30},{-56,-30},{-56,-60},{-52,-60}}, color={0,0,127}));
  connect(loadDz06.plug_n, starLDz06.plug_p) annotation (Line(points={{-29,-60},{-56,-60},{-56,-85},{-52,-85}}, color={0,0,127}));
  connect(starLDz06.pin_n, ground.p) annotation (Line(points={{-29,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(dz06.starpoint2, earth2Dz06.p) annotation (Line(points={{-29,-30},{-36,-30},{-36,-5},{-32,-5}}, color={0,0,127}));
  connect(earth2Dz06.n, ground.p) annotation (Line(points={{-9,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(source.plug_p, dz08.plug1) annotation (Line(points={{-79,0},{-53,0},{-53,-30},{-27,-30}}, color={0,0,127}));
  connect(dz08.plug2, loadDz08.plug_p) annotation (Line(points={{-4,-30},{-31,-30},{-31,-60},{-27,-60}}, color={0,0,127}));
  connect(loadDz08.plug_n, starLDz08.plug_p) annotation (Line(points={{-4,-60},{-31,-60},{-31,-85},{-27,-85}}, color={0,0,127}));
  connect(starLDz08.pin_n, ground.p) annotation (Line(points={{-4,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(dz08.starpoint2, earth2Dz08.p) annotation (Line(points={{-4,-30},{-11,-30},{-11,-5},{-7,-5}}, color={0,0,127}));
  connect(earth2Dz08.n, ground.p) annotation (Line(points={{16,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(source.plug_p, dz10.plug1) annotation (Line(points={{-79,0},{-40,0},{-40,-30},{-2,-30}}, color={0,0,127}));
  connect(dz10.plug2, loadDz10.plug_p) annotation (Line(points={{21,-30},{-6,-30},{-6,-60},{-2,-60}}, color={0,0,127}));
  connect(loadDz10.plug_n, starLDz10.plug_p) annotation (Line(points={{21,-60},{-6,-60},{-6,-85},{-2,-85}}, color={0,0,127}));
  connect(starLDz10.pin_n, ground.p) annotation (Line(points={{21,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(dz10.starpoint2, earth2Dz10.p) annotation (Line(points={{21,-30},{14,-30},{14,-5},{18,-5}}, color={0,0,127}));
  connect(earth2Dz10.n, ground.p) annotation (Line(points={{41,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
  annotation (experiment(StopTime=0.1),
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
