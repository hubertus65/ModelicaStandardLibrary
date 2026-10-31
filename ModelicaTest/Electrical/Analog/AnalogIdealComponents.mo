within ModelicaTest.Electrical.Analog;
model AnalogIdealComponents "Test of switches, ideal operational amplifiers, IdealTransformer, IdealTriac and Idle of Modelica.Electrical.Analog.Ideal"
  extends Modelica.Icons.Example;

  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-10,-210},{10,-190}})));
  Modelica.Electrical.Analog.Sources.SineVoltage sine(V=1, f=50)
    annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
  Modelica.Electrical.Analog.Sources.PulseVoltage control(V=1, width=50, period=0.02)
    annotation (Placement(transformation(extent={{-100,70},{-80,90}})));
  Modelica.Electrical.Analog.Ideal.ControlledIdealOpeningSwitch openingSwitch
    annotation (Placement(transformation(extent={{-60,90},{-40,110}})));
  Modelica.Electrical.Analog.Basic.Resistor R_opening(R=1)
    annotation (Placement(transformation(extent={{-30,90},{-10,110}})));
  Modelica.Electrical.Analog.Sources.ConstantVoltage dcArc(V=100)
    annotation (Placement(transformation(extent={{-100,120},{-80,140}})));
  Modelica.Electrical.Analog.Basic.Inductor L_arc(L=1e-3)
    annotation (Placement(transformation(extent={{-80,120},{-60,140}})));
  Modelica.Electrical.Analog.Ideal.ControlledOpenerWithArc openerWithArc(V0=30, dVdt=1e4, Vmax=60)
    annotation (Placement(transformation(extent={{-60,60},{-40,80}})));
  Modelica.Electrical.Analog.Basic.Resistor R_arc(R=10)
    annotation (Placement(transformation(extent={{-30,60},{-10,80}})));
  Modelica.Blocks.Sources.BooleanPulse booleanControl(width=50, period=0.02)
    annotation (Placement(transformation(extent={{-100,30},{-80,50}})));
  Modelica.Electrical.Analog.Ideal.IdealIntermediateSwitch intermediateSwitch
    annotation (Placement(transformation(extent={{-60,30},{-40,50}})));
  Modelica.Electrical.Analog.Basic.Resistor R_inter1(R=1)
    annotation (Placement(transformation(extent={{-30,35},{-10,55}})));
  Modelica.Electrical.Analog.Basic.Resistor R_inter2(R=2)
    annotation (Placement(transformation(extent={{-30,25},{-10,45}})));
  Modelica.Electrical.Analog.Ideal.ControlledIdealIntermediateSwitch controlledIntermediateSwitch
    annotation (Placement(transformation(extent={{-60,0},{-40,20}})));
  Modelica.Electrical.Analog.Basic.Resistor R_cinter1(R=1)
    annotation (Placement(transformation(extent={{-30,5},{-10,25}})));
  Modelica.Electrical.Analog.Basic.Resistor R_cinter2(R=2)
    annotation (Placement(transformation(extent={{-30,-5},{-10,15}})));
  Modelica.Electrical.Analog.Basic.Resistor R_in1(R=1e3)
    annotation (Placement(transformation(extent={{0,90},{20,110}})));
  Modelica.Electrical.Analog.Basic.Resistor R_fb1(R=2e3)
    annotation (Placement(transformation(extent={{30,100},{50,120}})));
  Modelica.Electrical.Analog.Ideal.IdealOpAmp idealOpAmp
    annotation (Placement(transformation(extent={{30,90},{50,110}})));
  Modelica.Electrical.Analog.Basic.Resistor R_in2(R=1e3)
    annotation (Placement(transformation(extent={{0,60},{20,80}})));
  Modelica.Electrical.Analog.Basic.Resistor R_fb2(R=3e3)
    annotation (Placement(transformation(extent={{30,70},{50,90}})));
  Modelica.Electrical.Analog.Ideal.IdealOpAmp3Pin idealOpAmp3Pin
    annotation (Placement(transformation(extent={{30,60},{50,80}})));
  Modelica.Electrical.Analog.Basic.Resistor R_in3(R=1e3)
    annotation (Placement(transformation(extent={{0,30},{20,50}})));
  Modelica.Electrical.Analog.Basic.Resistor R_fb3(R=20e3)
    annotation (Placement(transformation(extent={{30,40},{50,60}})));
  Modelica.Electrical.Analog.Ideal.IdealOpAmpLimited idealOpAmpLimited
    annotation (Placement(transformation(extent={{30,30},{50,50}})));
  Modelica.Electrical.Analog.Sources.SupplyVoltage supply(Vps=5, Vns=-5)
    annotation (Placement(transformation(extent={{70,10},{90,30}})));
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimited idealizedOpAmpLimited(V0=1e4, Vps=3, Vns=-3)
    annotation (Placement(transformation(extent={{30,-40},{50,-20}})));
  Modelica.Electrical.Analog.Ideal.IdealTransformer idealTransformer(n=2)
    annotation (Placement(transformation(extent={{-60,-70},{-40,-50}})));
  Modelica.Electrical.Analog.Basic.Resistor R_transformer(R=10)
    annotation (Placement(transformation(extent={{-30,-70},{-10,-50}})));
  Modelica.Blocks.Sources.BooleanPulse fire(width=20, period=0.01, startTime=0.002)
    annotation (Placement(transformation(extent={{-100,-110},{-80,-90}})));
  Modelica.Electrical.Analog.Ideal.IdealTriac idealTriac
    annotation (Placement(transformation(extent={{-60,-110},{-40,-90}})));
  Modelica.Electrical.Analog.Basic.Resistor R_triac(R=1)
    annotation (Placement(transformation(extent={{-30,-110},{-10,-90}})));
  Modelica.Electrical.Analog.Ideal.Idle idle
    annotation (Placement(transformation(extent={{-60,-150},{-40,-130}})));
  Modelica.Electrical.Analog.Basic.Resistor R_idle(R=1)
    annotation (Placement(transformation(extent={{-30,-150},{-10,-130}})));
equation
  connect(sine.n, ground.p) annotation (Line(points={{-79,0},{-46,0},{-46,-200},{-12,-200}}, color={0,0,127}));
  connect(control.n, ground.p) annotation (Line(points={{-79,80},{-46,80},{-46,-200},{-12,-200}}, color={0,0,127}));
  connect(sine.p, openingSwitch.p) annotation (Line(points={{-79,0},{-70,0},{-70,100},{-62,100}}, color={0,0,127}));
  connect(openingSwitch.n, R_opening.p) annotation (Line(points={{-39,100},{-32,100}}, color={0,0,127}));
  connect(R_opening.n, ground.p) annotation (Line(points={{-9,100},{-16,100},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(control.p, openingSwitch.control) annotation (Line(points={{-79,80},{-70,80},{-70,100},{-62,100}}, color={0,0,127}));
  connect(dcArc.p, L_arc.p) annotation (Line(points={{-79,130},{-82,130}}, color={0,0,127}));
  connect(L_arc.n, openerWithArc.p) annotation (Line(points={{-59,130},{-66,130},{-66,70},{-62,70}}, color={0,0,127}));
  connect(openerWithArc.n, R_arc.p) annotation (Line(points={{-39,70},{-32,70}}, color={0,0,127}));
  connect(R_arc.n, dcArc.n) annotation (Line(points={{-9,70},{-106,70},{-106,130},{-102,130}}, color={0,0,127}));
  connect(dcArc.n, ground.p) annotation (Line(points={{-79,130},{-46,130},{-46,-200},{-12,-200}}, color={0,0,127}));
  connect(control.p, openerWithArc.control) annotation (Line(points={{-79,80},{-70,80},{-70,70},{-62,70}}, color={0,0,127}));
  connect(sine.p, intermediateSwitch.p1) annotation (Line(points={{-79,0},{-70,0},{-70,40},{-62,40}}, color={0,0,127}));
  connect(ground.p, intermediateSwitch.p2) annotation (Line(points={{11,-200},{-66,-200},{-66,40},{-62,40}}, color={0,0,127}));
  connect(intermediateSwitch.n1, R_inter1.p) annotation (Line(points={{-39,40},{-36,40},{-36,45},{-32,45}}, color={0,0,127}));
  connect(intermediateSwitch.n2, R_inter2.p) annotation (Line(points={{-39,40},{-36,40},{-36,35},{-32,35}}, color={0,0,127}));
  connect(R_inter1.n, ground.p) annotation (Line(points={{-9,45},{-16,45},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(R_inter2.n, ground.p) annotation (Line(points={{-9,35},{-16,35},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(booleanControl.y, intermediateSwitch.control) annotation (Line(points={{-79,40},{-62,40}}, color={255,0,255}));
  connect(sine.p, controlledIntermediateSwitch.p1) annotation (Line(points={{-79,0},{-70,0},{-70,10},{-62,10}}, color={0,0,127}));
  connect(ground.p, controlledIntermediateSwitch.p2) annotation (Line(points={{11,-200},{-66,-200},{-66,10},{-62,10}}, color={0,0,127}));
  connect(controlledIntermediateSwitch.n1, R_cinter1.p) annotation (Line(points={{-39,10},{-36,10},{-36,15},{-32,15}}, color={0,0,127}));
  connect(controlledIntermediateSwitch.n2, R_cinter2.p) annotation (Line(points={{-39,10},{-36,10},{-36,5},{-32,5}}, color={0,0,127}));
  connect(R_cinter1.n, ground.p) annotation (Line(points={{-9,15},{-16,15},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(R_cinter2.n, ground.p) annotation (Line(points={{-9,5},{-16,5},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(control.p, controlledIntermediateSwitch.control) annotation (Line(points={{-79,80},{-70,80},{-70,10},{-62,10}}, color={0,0,127}));
  connect(sine.p, R_in1.p) annotation (Line(points={{-79,0},{-40,0},{-40,100},{-2,100}}, color={0,0,127}));
  connect(R_in1.n, idealOpAmp.n1) annotation (Line(points={{21,100},{28,100}}, color={0,0,127}));
  connect(idealOpAmp.p1, ground.p) annotation (Line(points={{51,100},{-16,100},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(idealOpAmp.p2, R_fb1.n) annotation (Line(points={{51,100},{24,100},{24,110},{28,110}}, color={0,0,127}));
  connect(R_fb1.p, idealOpAmp.n1) annotation (Line(points={{51,110},{24,110},{24,100},{28,100}}, color={0,0,127}));
  connect(idealOpAmp.n2, ground.p) annotation (Line(points={{51,100},{-16,100},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(sine.p, R_in2.p) annotation (Line(points={{-79,0},{-40,0},{-40,70},{-2,70}}, color={0,0,127}));
  connect(R_in2.n, idealOpAmp3Pin.in_n) annotation (Line(points={{21,70},{28,70}}, color={0,0,127}));
  connect(idealOpAmp3Pin.in_p, ground.p) annotation (Line(points={{51,70},{-16,70},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(idealOpAmp3Pin.out, R_fb2.n) annotation (Line(points={{51,70},{24,70},{24,80},{28,80}}, color={0,0,127}));
  connect(R_fb2.p, idealOpAmp3Pin.in_n) annotation (Line(points={{51,80},{24,80},{24,70},{28,70}}, color={0,0,127}));
  connect(sine.p, R_in3.p) annotation (Line(points={{-79,0},{-40,0},{-40,40},{-2,40}}, color={0,0,127}));
  connect(R_in3.n, idealOpAmpLimited.in_n) annotation (Line(points={{21,40},{28,40}}, color={0,0,127}));
  connect(idealOpAmpLimited.in_p, ground.p) annotation (Line(points={{51,40},{-16,40},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(idealOpAmpLimited.out, R_fb3.n) annotation (Line(points={{51,40},{24,40},{24,50},{28,50}}, color={0,0,127}));
  connect(R_fb3.p, idealOpAmpLimited.in_n) annotation (Line(points={{51,50},{24,50},{24,40},{28,40}}, color={0,0,127}));
  connect(supply.pin_p, idealOpAmpLimited.VMax) annotation (Line(points={{91,20},{24,20},{24,40},{28,40}}, color={0,0,127}));
  connect(supply.pin_n, idealOpAmpLimited.VMin) annotation (Line(points={{91,20},{24,20},{24,40},{28,40}}, color={0,0,127}));
  connect(supply.ground, ground.p) annotation (Line(points={{91,20},{-16,20},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(sine.p, idealizedOpAmpLimited.in_p) annotation (Line(points={{-79,0},{-26,0},{-26,-30},{28,-30}}, color={0,0,127}));
  connect(idealizedOpAmpLimited.in_n, ground.p) annotation (Line(points={{51,-30},{-16,-30},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(sine.p, idealTransformer.p1) annotation (Line(points={{-79,0},{-70,0},{-70,-60},{-62,-60}}, color={0,0,127}));
  connect(idealTransformer.n1, ground.p) annotation (Line(points={{-39,-60},{-26,-60},{-26,-200},{-12,-200}}, color={0,0,127}));
  connect(idealTransformer.p2, R_transformer.p) annotation (Line(points={{-39,-60},{-32,-60}}, color={0,0,127}));
  connect(R_transformer.n, idealTransformer.n2) annotation (Line(points={{-9,-60},{-62,-60}}, color={0,0,127}));
  connect(idealTransformer.n2, ground.p) annotation (Line(points={{-39,-60},{-26,-60},{-26,-200},{-12,-200}}, color={0,0,127}));
  connect(sine.p, idealTriac.p) annotation (Line(points={{-79,0},{-70,0},{-70,-100},{-62,-100}}, color={0,0,127}));
  connect(idealTriac.n, R_triac.p) annotation (Line(points={{-39,-100},{-32,-100}}, color={0,0,127}));
  connect(R_triac.n, ground.p) annotation (Line(points={{-9,-100},{-16,-100},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(fire.y, idealTriac.fire1) annotation (Line(points={{-79,-100},{-62,-100}}, color={255,0,255}));
  connect(sine.p, R_idle.p) annotation (Line(points={{-79,0},{-56,0},{-56,-140},{-32,-140}}, color={0,0,127}));
  connect(R_idle.n, ground.p) annotation (Line(points={{-9,-140},{-16,-140},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(sine.p, idle.p) annotation (Line(points={{-79,0},{-70,0},{-70,-140},{-62,-140}}, color={0,0,127}));
  connect(idle.n, ground.p) annotation (Line(points={{-39,-140},{-26,-140},{-26,-200},{-12,-200}}, color={0,0,127}));
  annotation (Diagram(coordinateSystem(extent={{-100,-220},{100,150}})),
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
