within ModelicaTest.Electrical.Machines;
model TransformersDd "Test of the transient transformers of vector group Dd"
  extends Modelica.Icons.Example;

  Modelica.Electrical.Polyphase.Sources.SineVoltage source(m=3, V=fill(sqrt(2/3)*100, 3), f=fill(50, 3))
    annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
  Modelica.Electrical.Polyphase.Basic.Star starS(m=3)
    annotation (Placement(transformation(extent={{-100,-50},{-80,-30}})));
  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-100,-90},{-80,-70}})));
  parameter Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData data(C1="D", C2="d")
    annotation (Placement(transformation(extent={{-100,70},{-80,90}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Dd.Dd00 dd00(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-50,50},{-30,70}})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadDd00(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-50,20},{-30,40}})));
  Modelica.Electrical.Polyphase.Basic.Star starLDd00(m=3)
    annotation (Placement(transformation(extent={{-50,-5},{-30,15}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Dd.Dd02 dd02(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-25,50},{-5,70}})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadDd02(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-25,20},{-5,40}})));
  Modelica.Electrical.Polyphase.Basic.Star starLDd02(m=3)
    annotation (Placement(transformation(extent={{-25,-5},{-5,15}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Dd.Dd04 dd04(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{0,50},{20,70}})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadDd04(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{0,20},{20,40}})));
  Modelica.Electrical.Polyphase.Basic.Star starLDd04(m=3)
    annotation (Placement(transformation(extent={{0,-5},{20,15}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Dd.Dd06 dd06(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-50,-40},{-30,-20}})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadDd06(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-50,-70},{-30,-50}})));
  Modelica.Electrical.Polyphase.Basic.Star starLDd06(m=3)
    annotation (Placement(transformation(extent={{-50,-95},{-30,-75}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Dd.Dd08 dd08(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-25,-40},{-5,-20}})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadDd08(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-25,-70},{-5,-50}})));
  Modelica.Electrical.Polyphase.Basic.Star starLDd08(m=3)
    annotation (Placement(transformation(extent={{-25,-95},{-5,-75}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Dd.Dd10 dd10(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{0,-40},{20,-20}})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadDd10(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{0,-70},{20,-50}})));
  Modelica.Electrical.Polyphase.Basic.Star starLDd10(m=3)
    annotation (Placement(transformation(extent={{0,-95},{20,-75}})));
equation
  connect(source.plug_n, starS.plug_p) annotation (Line(points={{-79,0},{-106,0},{-106,-40},{-102,-40}}, color={0,0,127}));
  connect(starS.pin_n, ground.p) annotation (Line(points={{-79,-40},{-106,-40},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(source.plug_p, dd00.plug1) annotation (Line(points={{-79,0},{-66,0},{-66,60},{-52,60}}, color={0,0,127}));
  connect(dd00.plug2, loadDd00.plug_p) annotation (Line(points={{-29,60},{-56,60},{-56,30},{-52,30}}, color={0,0,127}));
  connect(loadDd00.plug_n, starLDd00.plug_p) annotation (Line(points={{-29,30},{-56,30},{-56,5},{-52,5}}, color={0,0,127}));
  connect(starLDd00.pin_n, ground.p) annotation (Line(points={{-29,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(source.plug_p, dd02.plug1) annotation (Line(points={{-79,0},{-53,0},{-53,60},{-27,60}}, color={0,0,127}));
  connect(dd02.plug2, loadDd02.plug_p) annotation (Line(points={{-4,60},{-31,60},{-31,30},{-27,30}}, color={0,0,127}));
  connect(loadDd02.plug_n, starLDd02.plug_p) annotation (Line(points={{-4,30},{-31,30},{-31,5},{-27,5}}, color={0,0,127}));
  connect(starLDd02.pin_n, ground.p) annotation (Line(points={{-4,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(source.plug_p, dd04.plug1) annotation (Line(points={{-79,0},{-40,0},{-40,60},{-2,60}}, color={0,0,127}));
  connect(dd04.plug2, loadDd04.plug_p) annotation (Line(points={{21,60},{-6,60},{-6,30},{-2,30}}, color={0,0,127}));
  connect(loadDd04.plug_n, starLDd04.plug_p) annotation (Line(points={{21,30},{-6,30},{-6,5},{-2,5}}, color={0,0,127}));
  connect(starLDd04.pin_n, ground.p) annotation (Line(points={{21,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(source.plug_p, dd06.plug1) annotation (Line(points={{-79,0},{-66,0},{-66,-30},{-52,-30}}, color={0,0,127}));
  connect(dd06.plug2, loadDd06.plug_p) annotation (Line(points={{-29,-30},{-56,-30},{-56,-60},{-52,-60}}, color={0,0,127}));
  connect(loadDd06.plug_n, starLDd06.plug_p) annotation (Line(points={{-29,-60},{-56,-60},{-56,-85},{-52,-85}}, color={0,0,127}));
  connect(starLDd06.pin_n, ground.p) annotation (Line(points={{-29,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(source.plug_p, dd08.plug1) annotation (Line(points={{-79,0},{-53,0},{-53,-30},{-27,-30}}, color={0,0,127}));
  connect(dd08.plug2, loadDd08.plug_p) annotation (Line(points={{-4,-30},{-31,-30},{-31,-60},{-27,-60}}, color={0,0,127}));
  connect(loadDd08.plug_n, starLDd08.plug_p) annotation (Line(points={{-4,-60},{-31,-60},{-31,-85},{-27,-85}}, color={0,0,127}));
  connect(starLDd08.pin_n, ground.p) annotation (Line(points={{-4,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
  connect(source.plug_p, dd10.plug1) annotation (Line(points={{-79,0},{-40,0},{-40,-30},{-2,-30}}, color={0,0,127}));
  connect(dd10.plug2, loadDd10.plug_p) annotation (Line(points={{21,-30},{-6,-30},{-6,-60},{-2,-60}}, color={0,0,127}));
  connect(loadDd10.plug_n, starLDd10.plug_p) annotation (Line(points={{21,-60},{-6,-60},{-6,-85},{-2,-85}}, color={0,0,127}));
  connect(starLDd10.pin_n, ground.p) annotation (Line(points={{21,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
  annotation (experiment(StopTime=0.1),
    Documentation(info="<html>
<p>
All 6 transient transformers of vector group Dd (Dd00, Dd02, Dd04, Dd06, Dd08, Dd10), fed in parallel by a symmetric
3 phase source with 100 V line-to-line, each loaded by a symmetric resistive star load of 1/3 Ohm.
The transformer parameters are taken from a
<a href=\"modelica://Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData\">TransformerData</a>
record with C1=&quot;D&quot; and C2=&quot;d&quot;.
The phase 1 load voltages differ in their phase shift by 60 degree (clock number times 30 degree).
</p>
</html>"));
end TransformersDd;
