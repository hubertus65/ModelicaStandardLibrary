within ModelicaTest.Electrical.Analog;
model AnalogBasicComponents "Test of controlled sources, variable elements, M_Transformer, OpAmp, Potentiometer and TranslationalEMF"
  extends Modelica.Icons.Example;

  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-10,-210},{10,-190}})));
  Modelica.Electrical.Analog.Sources.SineVoltage sine(V=1, f=50)
    annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
  Modelica.Electrical.Analog.Basic.VCV vcv(gain=2)
    annotation (Placement(transformation(extent={{-60,90},{-40,110}})));
  Modelica.Electrical.Analog.Basic.Resistor R_vcv(R=1)
    annotation (Placement(transformation(extent={{-30,90},{-10,110}})));
  Modelica.Electrical.Analog.Basic.VCC vcc(transConductance=0.5)
    annotation (Placement(transformation(extent={{-60,60},{-40,80}})));
  Modelica.Electrical.Analog.Basic.Resistor R_vcc(R=1)
    annotation (Placement(transformation(extent={{-30,60},{-10,80}})));
  Modelica.Electrical.Analog.Basic.Resistor R_sense(R=2)
    annotation (Placement(transformation(extent={{-80,30},{-60,50}})));
  Modelica.Electrical.Analog.Basic.CCV ccv(transResistance=3)
    annotation (Placement(transformation(extent={{-60,30},{-40,50}})));
  Modelica.Electrical.Analog.Basic.Resistor R_ccv(R=1)
    annotation (Placement(transformation(extent={{-30,30},{-10,50}})));
  Modelica.Electrical.Analog.Basic.Resistor R_sense2(R=2)
    annotation (Placement(transformation(extent={{-80,0},{-60,20}})));
  Modelica.Electrical.Analog.Basic.CCC ccc(gain=4)
    annotation (Placement(transformation(extent={{-60,0},{-40,20}})));
  Modelica.Electrical.Analog.Basic.Resistor R_ccc(R=1)
    annotation (Placement(transformation(extent={{-30,0},{-10,20}})));
  Modelica.Blocks.Sources.Ramp ramp(height=1e-3, duration=0.1, offset=1e-4)
    annotation (Placement(transformation(extent={{10,110},{30,130}})));
  Modelica.Blocks.Sources.Ramp rampL(height=1e-3, duration=0.1, offset=1e-4)
    annotation (Placement(transformation(extent={{40,110},{60,130}})));
  Modelica.Electrical.Analog.Basic.VariableCapacitor variableCapacitor
    annotation (Placement(transformation(extent={{10,80},{30,100}})));
  Modelica.Electrical.Analog.Basic.VariableInductor variableInductor
    annotation (Placement(transformation(extent={{10,50},{30,70}})));
  Modelica.Electrical.Analog.Basic.VariableConductor variableConductor
    annotation (Placement(transformation(extent={{10,20},{30,40}})));
  Modelica.Blocks.Sources.Ramp conductance(height=1, duration=0.1, offset=0.1)
    annotation (Placement(transformation(extent={{40,20},{60,40}})));
  Modelica.Electrical.Analog.Basic.Resistor R_cap(R=10)
    annotation (Placement(transformation(extent={{40.0,80.0},{60.0,100.0}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Basic.Resistor R_ind(R=1)
    annotation (Placement(transformation(extent={{40,50},{60,70}})));
  Modelica.Electrical.Analog.Basic.M_Transformer mTransformer(N=2, L={1e-2, 0.9e-2, 1e-2})
    annotation (Placement(transformation(extent={{-60,-40},{-40,-20}})));
  Modelica.Electrical.Analog.Basic.Resistor R_secondary(R=10)
    annotation (Placement(transformation(extent={{-30,-40},{-10,-20}})));
  Modelica.Electrical.Analog.Basic.Resistor R_primary(R=1)
    annotation (Placement(transformation(extent={{-80,-40},{-60,-20}})));
  Modelica.Electrical.Analog.Basic.OpAmp opAmp(Slope=1e4)
    annotation (Placement(transformation(extent={{-60,-90},{-40,-70}})));
  Modelica.Electrical.Analog.Sources.SupplyVoltage supply(Vps=15, Vns=-15)
    annotation (Placement(transformation(extent={{-90,-120},{-70,-100}})));
  Modelica.Electrical.Analog.Basic.Resistor R_feedback(R=1e4)
    annotation (Placement(transformation(extent={{-30,-80},{-10,-60}})));
  Modelica.Electrical.Analog.Basic.Resistor R_ground(R=1e4)
    annotation (Placement(transformation(extent={{-30,-110},{-10,-90}})));
  Modelica.Electrical.Analog.Basic.Potentiometer potentiometer(R=100, useRinput=true)
    annotation (Placement(transformation(extent={{10,-40},{30,-20}})));
  Modelica.Blocks.Sources.Ramp wiper(height=1, duration=0.1)
    annotation (Placement(transformation(extent={{10,-10},{30,10}})));
  Modelica.Electrical.Analog.Basic.Resistor R_wiper(R=100)
    annotation (Placement(transformation(extent={{40,-60},{60,-40}})));
  Modelica.Electrical.Analog.Basic.TranslationalEMF emf(k=2)
    annotation (Placement(transformation(extent={{10,-110},{30,-90}})));
  Modelica.Electrical.Analog.Basic.Resistor R_emf(R=1)
    annotation (Placement(transformation(extent={{-10,-110},{10,-90}})));
  Modelica.Mechanics.Translational.Components.Mass mass(m=0.01, s(start=0, fixed=true), v(start=0, fixed=true))
    annotation (Placement(transformation(extent={{40,-110},{60,-90}})));
  Modelica.Mechanics.Translational.Components.Spring spring(c=1000)
    annotation (Placement(transformation(extent={{60,-110},{80,-90}})));
  Modelica.Mechanics.Translational.Components.Fixed fixed
    annotation (Placement(transformation(extent={{80,-110},{100,-90}})));
equation
  connect(sine.n, ground.p) annotation (Line(points={{-79,0},{-46,0},{-46,-200},{-12,-200}}, color={0,0,127}));
  connect(sine.p, vcv.p1) annotation (Line(points={{-79,0},{-70,0},{-70,100},{-62,100}}, color={0,0,127}));
  connect(vcv.n1, ground.p) annotation (Line(points={{-39,100},{-26,100},{-26,-200},{-12,-200}}, color={0,0,127}));
  connect(vcv.p2, R_vcv.p) annotation (Line(points={{-39,100},{-32,100}}, color={0,0,127}));
  connect(R_vcv.n, vcv.n2) annotation (Line(points={{-9,100},{-62,100}}, color={0,0,127}));
  connect(vcv.n2, ground.p) annotation (Line(points={{-39,100},{-26,100},{-26,-200},{-12,-200}}, color={0,0,127}));
  connect(sine.p, vcc.p1) annotation (Line(points={{-79,0},{-70,0},{-70,70},{-62,70}}, color={0,0,127}));
  connect(vcc.n1, ground.p) annotation (Line(points={{-39,70},{-26,70},{-26,-200},{-12,-200}}, color={0,0,127}));
  connect(vcc.p2, R_vcc.p) annotation (Line(points={{-39,70},{-32,70}}, color={0,0,127}));
  connect(R_vcc.n, vcc.n2) annotation (Line(points={{-9,70},{-62,70}}, color={0,0,127}));
  connect(vcc.n2, ground.p) annotation (Line(points={{-39,70},{-26,70},{-26,-200},{-12,-200}}, color={0,0,127}));
  connect(sine.p, R_sense.p) annotation (Line(points={{-79,0},{-86,0},{-86,40},{-82,40}}, color={0,0,127}));
  connect(R_sense.n, ccv.p1) annotation (Line(points={{-59,40},{-62,40}}, color={0,0,127}));
  connect(ccv.n1, ground.p) annotation (Line(points={{-39,40},{-26,40},{-26,-200},{-12,-200}}, color={0,0,127}));
  connect(ccv.p2, R_ccv.p) annotation (Line(points={{-39,40},{-32,40}}, color={0,0,127}));
  connect(R_ccv.n, ccv.n2) annotation (Line(points={{-9,40},{-62,40}}, color={0,0,127}));
  connect(ccv.n2, ground.p) annotation (Line(points={{-39,40},{-26,40},{-26,-200},{-12,-200}}, color={0,0,127}));
  connect(sine.p, R_sense2.p) annotation (Line(points={{-79,0},{-86,0},{-86,10},{-82,10}}, color={0,0,127}));
  connect(R_sense2.n, ccc.p1) annotation (Line(points={{-59,10},{-62,10}}, color={0,0,127}));
  connect(ccc.n1, ground.p) annotation (Line(points={{-39,10},{-26,10},{-26,-200},{-12,-200}}, color={0,0,127}));
  connect(ccc.p2, R_ccc.p) annotation (Line(points={{-39,10},{-32,10}}, color={0,0,127}));
  connect(R_ccc.n, ccc.n2) annotation (Line(points={{-9,10},{-62,10}}, color={0,0,127}));
  connect(ccc.n2, ground.p) annotation (Line(points={{-39,10},{-26,10},{-26,-200},{-12,-200}}, color={0,0,127}));
  connect(ramp.y, variableCapacitor.C) annotation (Line(points={{31,120},{4,120},{4,90},{8,90}}, color={0,0,127}));
  connect(sine.p, variableCapacitor.p) annotation (Line(points={{-79,0},{-36,0},{-36,90},{8,90}}, color={0,0,127}));
  connect(variableCapacitor.n, R_cap.p) annotation (Line(points={{31,90},{38,90}}, color={0,0,127}));
  connect(R_cap.n, ground.p) annotation (Line(points={{61,90},{-16,90},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(rampL.y, variableInductor.L) annotation (Line(points={{61,120},{4,120},{4,60},{8,60}}, color={0,0,127}));
  connect(sine.p, variableInductor.p) annotation (Line(points={{-79,0},{-36,0},{-36,60},{8,60}}, color={0,0,127}));
  connect(variableInductor.n, R_ind.p) annotation (Line(points={{31,60},{38,60}}, color={0,0,127}));
  connect(R_ind.n, ground.p) annotation (Line(points={{61,60},{-16,60},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(conductance.y, variableConductor.G) annotation (Line(points={{61,30},{8,30}}, color={0,0,127}));
  connect(sine.p, variableConductor.p) annotation (Line(points={{-79,0},{-36,0},{-36,30},{8,30}}, color={0,0,127}));
  connect(variableConductor.n, ground.p) annotation (Line(points={{31,30},{-16,30},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(sine.p, R_primary.p) annotation (Line(points={{-79,0},{-86,0},{-86,-30},{-82,-30}}, color={0,0,127}));
  connect(R_primary.n, mTransformer.p[1]) annotation (Line(points={{-59,-30},{-62,-30}}, color={0,0,127}));
  connect(mTransformer.n[1], ground.p) annotation (Line(points={{-39,-30},{-26,-30},{-26,-200},{-12,-200}}, color={0,0,127}));
  connect(mTransformer.p[2], R_secondary.p) annotation (Line(points={{-39,-30},{-32,-30}}, color={0,0,127}));
  connect(R_secondary.n, mTransformer.n[2]) annotation (Line(points={{-9,-30},{-62,-30}}, color={0,0,127}));
  connect(mTransformer.n[2], ground.p) annotation (Line(points={{-39,-30},{-26,-30},{-26,-200},{-12,-200}}, color={0,0,127}));
  connect(sine.p, opAmp.in_p) annotation (Line(points={{-79,0},{-70,0},{-70,-80},{-62,-80}}, color={0,0,127}));
  connect(opAmp.out, R_feedback.p) annotation (Line(points={{-39,-80},{-36,-80},{-36,-70},{-32,-70}}, color={0,0,127}));
  connect(R_feedback.n, opAmp.in_n) annotation (Line(points={{-9,-70},{-66,-70},{-66,-80},{-62,-80}}, color={0,0,127}));
  connect(opAmp.in_n, R_ground.p) annotation (Line(points={{-39,-80},{-36,-80},{-36,-100},{-32,-100}}, color={0,0,127}));
  connect(R_ground.n, ground.p) annotation (Line(points={{-9,-100},{-16,-100},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(supply.pin_p, opAmp.VMax) annotation (Line(points={{-69,-110},{-66,-110},{-66,-80},{-62,-80}}, color={0,0,127}));
  connect(supply.pin_n, opAmp.VMin) annotation (Line(points={{-69,-110},{-66,-110},{-66,-80},{-62,-80}}, color={0,0,127}));
  connect(supply.ground, ground.p) annotation (Line(points={{-69,-110},{-40,-110},{-40,-200},{-12,-200}}, color={0,0,127}));
  connect(wiper.y, potentiometer.r) annotation (Line(points={{31,0},{4,0},{4,-30},{8,-30}}, color={0,0,127}));
  connect(sine.p, potentiometer.pin_p) annotation (Line(points={{-79,0},{-36,0},{-36,-30},{8,-30}}, color={0,0,127}));
  connect(potentiometer.pin_n, ground.p) annotation (Line(points={{31,-30},{-16,-30},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(potentiometer.contact, R_wiper.p) annotation (Line(points={{31,-30},{34,-30},{34,-50},{38,-50}}, color={0,0,127}));
  connect(R_wiper.n, ground.p) annotation (Line(points={{61,-50},{-16,-50},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(sine.p, R_emf.p) annotation (Line(points={{-79,0},{-46,0},{-46,-100},{-12,-100}}, color={0,0,127}));
  connect(R_emf.n, emf.p) annotation (Line(points={{11,-100},{8,-100}}, color={0,0,127}));
  connect(emf.n, ground.p) annotation (Line(points={{31,-100},{-16,-100},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(emf.flange, mass.flange_a) annotation (Line(points={{31,-100},{38,-100}}, color={0,0,0}));
  connect(mass.flange_b, spring.flange_a) annotation (Line(points={{61,-100},{58,-100}}, color={0,127,0}));
  connect(spring.flange_b, fixed.flange) annotation (Line(points={{81,-100},{78,-100}}, color={0,127,0}));
  annotation (Diagram(coordinateSystem(extent={{-100,-220},{100,140}})),
    experiment(StopTime=0.1),
    Documentation(info="<html>
<p>
A 50 Hz sine voltage drives elements of
<a href=\"modelica://Modelica.Electrical.Analog.Basic\">Modelica.Electrical.Analog.Basic</a>:
the controlled sources VCV, VCC, CCV and CCC (each loaded with a resistor), VariableCapacitor,
VariableInductor and VariableConductor with ramping values, an M_Transformer with two coupled windings,
an OpAmp as non-inverting amplifier (gain 2), a Potentiometer whose wiper moves from 0 to 1, and a
TranslationalEMF that drives a mass against a spring.
</p>
</html>"));
end AnalogBasicComponents;
