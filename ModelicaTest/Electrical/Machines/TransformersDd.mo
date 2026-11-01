within ModelicaTest.Electrical.Machines;
model TransformersDd "Test of the transient transformers of vector group Dd"
  extends Modelica.Icons.Example;

  Modelica.Electrical.Polyphase.Sources.SineVoltage source(m=3, V=fill(sqrt(2/3)*100, 3), f=fill(50, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-90,-10})));
  Modelica.Electrical.Polyphase.Basic.Star starS(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-50})));
  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-90,-100})));
  parameter Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData data(C1="D", C2="d")
    annotation (Placement(transformation(extent={{-100,70},{-80,90}})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Dd.Dd00 dd00(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-50,50},{-30,70}})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadDd00(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,30})));
  Modelica.Electrical.Polyphase.Basic.Star starLDd00(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,0})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Dd.Dd02 dd02(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,60})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadDd02(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,30})));
  Modelica.Electrical.Polyphase.Basic.Star starLDd02(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,0})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Dd.Dd04 dd04(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,60})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadDd04(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,30})));
  Modelica.Electrical.Polyphase.Basic.Star starLDd04(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,0})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Dd.Dd06 dd06(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-40})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadDd06(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-70})));
  Modelica.Electrical.Polyphase.Basic.Star starLDd06(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-100})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Dd.Dd08 dd08(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-40})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadDd08(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-70})));
  Modelica.Electrical.Polyphase.Basic.Star starLDd08(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-100})));
  Modelica.Electrical.Machines.BasicMachines.Transformers.Dd.Dd10 dd10(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,-40})));
  Modelica.Electrical.Polyphase.Basic.Resistor loadDd10(m=3, R=fill(1/3, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,-70})));
  Modelica.Electrical.Polyphase.Basic.Star starLDd10(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,-100})));
equation
  connect(source.plug_n, starS.plug_p) annotation (Line(points={{-100,-10},{-104,-10},{-104,-50},{-100,-50}}, color={0,0,255}));
  connect(starS.pin_n, ground.p) annotation (Line(points={{-80,-50},{-76,-50},{-76,-100},{-80,-100}}, color={0,0,255}));
  connect(source.plug_p, dd00.plug1) annotation (Line(points={{-80,-10},{-54,-10},{-54,60},{-50,60}}, color={0,0,255}));
  connect(dd00.plug2, loadDd00.plug_p) annotation (Line(points={{-30,60},{-26,60},{-26,44},{-40,44},{-40,40}}, color={0,0,255}));
  connect(loadDd00.plug_n, starLDd00.plug_p) annotation (Line(points={{-40,20},{-40,10}}, color={0,0,255}));
  connect(starLDd00.pin_n, ground.p) annotation (Line(points={{-40,-10},{-40,-20},{-76,-20},{-76,-100},{-80,-100}}, color={0,0,255}));
  connect(source.plug_p, dd02.plug1) annotation (Line(points={{-80,-10},{-54,-10},{-54,72},{-14,72},{-14,60},{-10,60}}, color={0,0,255}));
  connect(dd02.plug2, loadDd02.plug_p) annotation (Line(points={{10,60},{14,60},{14,44},{0,44},{0,40}}, color={0,0,255}));
  connect(loadDd02.plug_n, starLDd02.plug_p) annotation (Line(points={{0,20},{0,10}}, color={0,0,255}));
  connect(starLDd02.pin_n, ground.p) annotation (Line(points={{0,-10},{0,-14},{-40,-14},{-40,-20},{-76,-20},{-76,-100},{-80,-100}}, color={0,0,255}));
  connect(source.plug_p, dd04.plug1) annotation (Line(points={{-80,-10},{-54,-10},{-54,72},{16,72},{16,60},{20,60}}, color={0,0,255}));
  connect(dd04.plug2, loadDd04.plug_p) annotation (Line(points={{40,60},{44,60},{44,44},{30,44},{30,40}}, color={0,0,255}));
  connect(loadDd04.plug_n, starLDd04.plug_p) annotation (Line(points={{30,20},{30,10}}, color={0,0,255}));
  connect(starLDd04.pin_n, ground.p) annotation (Line(points={{30,-10},{30,-14},{-40,-14},{-40,-20},{-76,-20},{-76,-100},{-80,-100}}, color={0,0,255}));
  connect(source.plug_p, dd06.plug1) annotation (Line(points={{-80,-10},{-60,-10},{-60,-26},{-40,-26},{-40,-30}}, color={0,0,255}));
  connect(dd06.plug2, loadDd06.plug_p) annotation (Line(points={{-40,-50},{-40,-60}}, color={0,0,255}));
  connect(loadDd06.plug_n, starLDd06.plug_p) annotation (Line(points={{-40,-80},{-40,-90}}, color={0,0,255}));
  connect(starLDd06.pin_n, ground.p) annotation (Line(points={{-40,-110},{-40,-114},{-76,-114},{-76,-100},{-80,-100}}, color={0,0,255}));
  connect(source.plug_p, dd08.plug1) annotation (Line(points={{-80,-10},{-60,-10},{-60,-26},{0,-26},{0,-30}}, color={0,0,255}));
  connect(dd08.plug2, loadDd08.plug_p) annotation (Line(points={{0,-50},{0,-60}}, color={0,0,255}));
  connect(loadDd08.plug_n, starLDd08.plug_p) annotation (Line(points={{0,-80},{0,-90}}, color={0,0,255}));
  connect(starLDd08.pin_n, ground.p) annotation (Line(points={{0,-110},{0,-114},{-76,-114},{-76,-100},{-80,-100}}, color={0,0,255}));
  connect(source.plug_p, dd10.plug1) annotation (Line(points={{-80,-10},{-60,-10},{-60,-26},{30,-26},{30,-30}}, color={0,0,255}));
  connect(dd10.plug2, loadDd10.plug_p) annotation (Line(points={{30,-50},{30,-60}}, color={0,0,255}));
  connect(loadDd10.plug_n, starLDd10.plug_p) annotation (Line(points={{30,-80},{30,-90}}, color={0,0,255}));
  connect(starLDd10.pin_n, ground.p) annotation (Line(points={{30,-110},{30,-114},{-76,-114},{-76,-100},{-80,-100}}, color={0,0,255}));
  annotation (Diagram(coordinateSystem(extent={{-120,-120},{100,100}})),
    experiment(StopTime=0.1),
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
