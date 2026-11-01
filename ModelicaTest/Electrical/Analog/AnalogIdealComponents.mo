within ModelicaTest.Electrical.Analog;
model AnalogIdealComponents "Test of switches, ideal operational amplifiers, IdealTransformer, IdealTriac and Idle of Modelica.Electrical.Analog.Ideal"
  extends Modelica.Icons.Example;

  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={10,-340})));
  Modelica.Electrical.Analog.Sources.SineVoltage sine(V=1, f=50)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-90,-140})));
  Modelica.Electrical.Analog.Sources.PulseVoltage control(V=1, width=50, period=0.02)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-90,50})));
  Modelica.Electrical.Analog.Ideal.ControlledIdealOpeningSwitch openingSwitch
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,80})));
  Modelica.Electrical.Analog.Basic.Resistor R_opening(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-10,80})));
  Modelica.Electrical.Analog.Sources.ConstantVoltage dcArc(V=100)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-90,130})));
  Modelica.Electrical.Analog.Basic.Inductor L_arc(L=1e-3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-60,130})));
  Modelica.Electrical.Analog.Ideal.ControlledOpenerWithArc openerWithArc(V0=30, dVdt=1e4, Vmax=60)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,20})));
  Modelica.Electrical.Analog.Basic.Resistor R_arc(R=10)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={-10,20})));
  Modelica.Blocks.Sources.BooleanPulse booleanControl(width=50, period=0.02)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-40})));
  Modelica.Electrical.Analog.Ideal.IdealIntermediateSwitch intermediateSwitch
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,-40})));
  Modelica.Electrical.Analog.Basic.Resistor R_inter1(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-10,-20})));
  Modelica.Electrical.Analog.Basic.Resistor R_inter2(R=2)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-10,-60})));
  Modelica.Electrical.Analog.Ideal.ControlledIdealIntermediateSwitch controlledIntermediateSwitch
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,-100})));
  Modelica.Electrical.Analog.Basic.Resistor R_cinter1(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-10,-100})));
  Modelica.Electrical.Analog.Basic.Resistor R_cinter2(R=2)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-10,-130})));
  Modelica.Electrical.Analog.Basic.Resistor R_in1(R=1e3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={20,80})));
  Modelica.Electrical.Analog.Basic.Resistor R_fb1(R=2e3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={50,110})));
  Modelica.Electrical.Analog.Ideal.IdealOpAmp idealOpAmp
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={50,80})));
  Modelica.Electrical.Analog.Basic.Resistor R_in2(R=1e3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={20,20})));
  Modelica.Electrical.Analog.Basic.Resistor R_fb2(R=3e3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={50,50})));
  Modelica.Electrical.Analog.Ideal.IdealOpAmp3Pin idealOpAmp3Pin
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={50,20})));
  Modelica.Electrical.Analog.Basic.Resistor R_in3(R=1e3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={20,-40})));
  Modelica.Electrical.Analog.Basic.Resistor R_fb3(R=20e3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={50,-10})));
  Modelica.Electrical.Analog.Ideal.IdealOpAmpLimited idealOpAmpLimited
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={50,-40})));
  Modelica.Electrical.Analog.Sources.SupplyVoltage supply(Vps=5, Vns=-5)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={90,-90})));
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimited idealizedOpAmpLimited(V0=1e4, Vps=3, Vns=-3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={50,-170})));
  Modelica.Electrical.Analog.Ideal.IdealTransformer idealTransformer(n=2)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,-200})));
  Modelica.Electrical.Analog.Basic.Resistor R_transformer(R=10)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-10,-200})));
  Modelica.Blocks.Sources.BooleanPulse fire(width=20, period=0.01, startTime=0.002)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-240})));
  Modelica.Electrical.Analog.Ideal.IdealTriac idealTriac
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,-240})));
  Modelica.Electrical.Analog.Basic.Resistor R_triac(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-10,-240})));
  Modelica.Electrical.Analog.Ideal.Idle idle
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,-280})));
  Modelica.Electrical.Analog.Basic.Resistor R_idle(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-10,-280})));
equation
  connect(sine.n, ground.p) annotation (Line(points={{-100,-140},{-104,-140},{-104,-292},{10,-292},{10,-330}}, color={0,0,255}));
  connect(control.n, ground.p) annotation (Line(points={{-90,40},{-90,-20},{-102,-20},{-102,-292},{10,-292},{10,-330}}, color={0,0,255}));
  connect(sine.p, openingSwitch.p) annotation (Line(points={{-80,-140},{-54,-140},{-54,80},{-50,80}}, color={0,0,255}));
  connect(openingSwitch.n, R_opening.p) annotation (Line(points={{-30,80},{-20,80}}, color={0,0,255}));
  connect(R_opening.n, ground.p) annotation (Line(points={{0,80},{4,80},{4,78},{2,78},{2,-20},{4,-20},{4,-60},{10,-60},{10,-330}}, color={0,0,255}));
  connect(control.p, openingSwitch.control) annotation (Line(points={{-90,60},{-90,94},{-40,94},{-40,90}}, color={0,0,255}));
  connect(dcArc.p, L_arc.p) annotation (Line(points={{-90,140},{-90,144},{-60,144},{-60,140}}, color={0,0,255}));
  connect(L_arc.n, openerWithArc.p) annotation (Line(points={{-60,120},{-60,20},{-50,20}}, color={0,0,255}));
  connect(openerWithArc.n, R_arc.p) annotation (Line(points={{-30,20},{-22,20},{-22,6},{-10,6},{-10,10}}, color={0,0,255}));
  connect(R_arc.n, dcArc.n) annotation (Line(points={{-10,30},{-10,60},{2,60},{2,116},{-90,116},{-90,120}}, color={0,0,255}));
  connect(dcArc.n, ground.p) annotation (Line(points={{-90,120},{-90,116},{2,116},{2,-20},{4,-20},{4,-60},{10,-60},{10,-330}}, color={0,0,255}));
  connect(control.p, openerWithArc.control) annotation (Line(points={{-90,60},{-90,64},{-40,64},{-40,30}}, color={0,0,255}));
  connect(sine.p, intermediateSwitch.p1) annotation (Line(points={{-80,-140},{-54,-140},{-54,-36},{-50,-36}}, color={0,0,255}));
  connect(ground.p, intermediateSwitch.p2) annotation (Line(points={{10,-330},{10,-240},{2,-240},{2,-214},{10,-214},{10,-74},{-52,-74},{-52,-40},{-50,-40}}, color={0,0,255}));
  connect(intermediateSwitch.n1, R_inter1.p) annotation (Line(points={{-30,-36},{-24,-36},{-24,-20},{-20,-20}}, color={0,0,255}));
  connect(intermediateSwitch.n2, R_inter2.p) annotation (Line(points={{-30,-40},{-24,-40},{-24,-60},{-20,-60}}, color={0,0,255}));
  connect(R_inter1.n, ground.p) annotation (Line(points={{0,-20},{4,-20},{4,-60},{10,-60},{10,-330}}, color={0,0,255}));
  connect(R_inter2.n, ground.p) annotation (Line(points={{0,-60},{10,-60},{10,-330}}, color={0,0,255}));
  connect(booleanControl.y, intermediateSwitch.control) annotation (Line(points={{-79,-40},{-60,-40},{-60,-24},{-40,-24},{-40,-28}}, color={255,0,255}));
  connect(sine.p, controlledIntermediateSwitch.p1) annotation (Line(points={{-80,-140},{-54,-140},{-54,-96},{-50,-96}}, color={0,0,255}));
  connect(ground.p, controlledIntermediateSwitch.p2) annotation (Line(points={{10,-330},{10,-112},{-52,-112},{-52,-100},{-50,-100}}, color={0,0,255}));
  connect(controlledIntermediateSwitch.n1, R_cinter1.p) annotation (Line(points={{-30,-96},{-24,-96},{-24,-100},{-20,-100}}, color={0,0,255}));
  connect(controlledIntermediateSwitch.n2, R_cinter2.p) annotation (Line(points={{-30,-100},{-26,-100},{-26,-130},{-20,-130}}, color={0,0,255}));
  connect(R_cinter1.n, ground.p) annotation (Line(points={{0,-100},{10,-100},{10,-330}}, color={0,0,255}));
  connect(R_cinter2.n, ground.p) annotation (Line(points={{0,-130},{10,-130},{10,-330}}, color={0,0,255}));
  connect(control.p, controlledIntermediateSwitch.control) annotation (Line(points={{-90,60},{-90,64},{-62,64},{-62,-86},{-40,-86},{-40,-90}}, color={0,0,255}));
  connect(sine.p, R_in1.p) annotation (Line(points={{-80,-140},{-54,-140},{-54,4},{6,4},{6,80},{10,80}}, color={0,0,255}));
  connect(R_in1.n, idealOpAmp.n1) annotation (Line(points={{30,80},{36,80},{36,86},{40,86}}, color={0,0,255}));
  connect(idealOpAmp.p1, ground.p) annotation (Line(points={{40,74},{32,74},{32,-20},{4,-20},{4,-60},{10,-60},{10,-330}}, color={0,0,255}));
  connect(idealOpAmp.p2, R_fb1.n) annotation (Line(points={{60,80},{64,80},{64,110},{60,110}}, color={0,0,255}));
  connect(R_fb1.p, idealOpAmp.n1) annotation (Line(points={{40,110},{36,110},{36,86},{40,86}}, color={0,0,255}));
  connect(idealOpAmp.n2, ground.p) annotation (Line(points={{50,70},{50,66},{32,66},{32,-20},{4,-20},{4,-60},{10,-60},{10,-330}}, color={0,0,255}));
  connect(sine.p, R_in2.p) annotation (Line(points={{-80,-140},{-54,-140},{-54,4},{6,4},{6,20},{10,20}}, color={0,0,255}));
  connect(R_in2.n, idealOpAmp3Pin.in_n) annotation (Line(points={{30,20},{36,20},{36,26},{40,26}}, color={0,0,255}));
  connect(idealOpAmp3Pin.in_p, ground.p) annotation (Line(points={{40,14},{32,14},{32,-20},{4,-20},{4,-60},{10,-60},{10,-330}}, color={0,0,255}));
  connect(idealOpAmp3Pin.out, R_fb2.n) annotation (Line(points={{60,20},{64,20},{64,50},{60,50}}, color={0,0,255}));
  connect(R_fb2.p, idealOpAmp3Pin.in_n) annotation (Line(points={{40,50},{36,50},{36,26},{40,26}}, color={0,0,255}));
  connect(sine.p, R_in3.p) annotation (Line(points={{-80,-140},{-54,-140},{-54,-72},{6,-72},{6,-40},{10,-40}}, color={0,0,255}));
  connect(R_in3.n, idealOpAmpLimited.in_n) annotation (Line(points={{30,-40},{36,-40},{36,-34},{40,-34}}, color={0,0,255}));
  connect(idealOpAmpLimited.in_p, ground.p) annotation (Line(points={{40,-46},{36,-46},{36,-164},{10,-164},{10,-330}}, color={0,0,255}));
  connect(idealOpAmpLimited.out, R_fb3.n) annotation (Line(points={{60,-40},{64,-40},{64,-10},{60,-10}}, color={0,0,255}));
  connect(R_fb3.p, idealOpAmpLimited.in_n) annotation (Line(points={{40,-10},{36,-10},{36,-34},{40,-34}}, color={0,0,255}));
  connect(supply.pin_p, idealOpAmpLimited.VMax) annotation (Line(points={{80,-90},{70,-90},{70,-26},{50,-26},{50,-30}}, color={0,0,255}));
  connect(supply.pin_n, idealOpAmpLimited.VMin) annotation (Line(points={{100,-90},{104,-90},{104,-54},{50,-54},{50,-50}}, color={0,0,255}));
  connect(supply.ground, ground.p) annotation (Line(points={{90,-90},{90,-110},{36,-110},{36,-164},{10,-164},{10,-330}}, color={0,0,255}));
  connect(sine.p, idealizedOpAmpLimited.in_p) annotation (Line(points={{-80,-140},{-54,-140},{-54,-176},{40,-176}}, color={0,0,255}));
  connect(idealizedOpAmpLimited.in_n, ground.p) annotation (Line(points={{40,-164},{10,-164},{10,-330}}, color={0,0,255}));
  connect(sine.p, idealTransformer.p1) annotation (Line(points={{-80,-140},{-54,-140},{-54,-190},{-50,-190}}, color={0,0,255}));
  connect(idealTransformer.n1, ground.p) annotation (Line(points={{-50,-210},{-56,-210},{-56,-214},{2,-214},{2,-240},{10,-240},{10,-330}}, color={0,0,255}));
  connect(idealTransformer.p2, R_transformer.p) annotation (Line(points={{-30,-190},{-22,-190},{-22,-186},{-10,-186},{-10,-190}}, color={0,0,255}));
  connect(R_transformer.n, idealTransformer.n2) annotation (Line(points={{-10,-210},{-10,-214},{-26,-214},{-26,-210},{-30,-210}}, color={0,0,255}));
  connect(idealTransformer.n2, ground.p) annotation (Line(points={{-30,-210},{-26,-210},{-26,-214},{2,-214},{2,-240},{10,-240},{10,-330}}, color={0,0,255}));
  connect(sine.p, idealTriac.p) annotation (Line(points={{-80,-140},{-54,-140},{-54,-226},{-26,-226},{-26,-240},{-30,-240}}, color={0,0,255}));
  connect(idealTriac.n, R_triac.p) annotation (Line(points={{-50,-240},{-54,-240},{-54,-228},{-24,-228},{-24,-240},{-20,-240}}, color={0,0,255}));
  connect(R_triac.n, ground.p) annotation (Line(points={{0,-240},{10,-240},{10,-330}}, color={0,0,255}));
  connect(fire.y, idealTriac.fire1) annotation (Line(points={{-79,-240},{-60,-240},{-60,-256},{-50,-256},{-50,-251.4}}, color={255,0,255}));
  connect(sine.p, R_idle.p) annotation (Line(points={{-80,-140},{-54,-140},{-54,-208},{-58,-208},{-58,-226},{-26,-226},{-26,-278},{-24,-278},{-24,-280},{-20,-280}}, color={0,0,255}));
  connect(R_idle.n, ground.p) annotation (Line(points={{0,-280},{10,-280},{10,-330}}, color={0,0,255}));
  connect(sine.p, idle.p) annotation (Line(points={{-80,-140},{-54,-140},{-54,-226},{-56,-226},{-56,-280},{-50,-280}}, color={0,0,255}));
  connect(idle.n, ground.p) annotation (Line(points={{-30,-280},{-26,-280},{-26,-292},{10,-292},{10,-330}}, color={0,0,255}));
  annotation (Diagram(coordinateSystem(extent={{-120,-360},{120,160}})),
    experiment(StopTime=0.1),
    Documentation(info="<html>
<p>
Tests elements of
<a href=\"modelica://Modelica.Electrical.Analog.Ideal\">Modelica.Electrical.Analog.Ideal</a>:
</p>
<ul>
<li>ControlledIdealOpeningSwitch switching a resistive load, and ControlledOpenerWithArc switching an
  inductive 100 V DC circuit (the arc is extinguished when its voltage exceeds the supply), both
  controlled by a voltage pulse</li>
<li>IdealIntermediateSwitch and ControlledIdealIntermediateSwitch, which swap two connections</li>
<li>IdealOpAmp (four pins), IdealOpAmp3Pin and IdealOpAmpLimited as inverting amplifiers, and the
  obsolete IdealizedOpAmpLimited as comparator (OpAmpLimited is tested in AnalogOpAmpLimited)</li>
<li>IdealTransformer (ratio 2) and IdealTriac fired by a pulse</li>
<li>Idle in parallel to a resistor (no current)</li>
</ul>
</html>"));
end AnalogIdealComponents;
