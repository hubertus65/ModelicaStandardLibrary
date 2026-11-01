within ModelicaTest.Electrical.Analog;
model AnalogBasicComponents "Test of controlled sources, variable elements, M_Transformer, OpAmp, Potentiometer and TranslationalEMF"
  extends Modelica.Icons.Example;

  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,-200})));
  Modelica.Electrical.Analog.Sources.SineVoltage sine(V=1, f=50)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-90,0})));
  Modelica.Electrical.Analog.Basic.VCV vcv(gain=2)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,100})));
  Modelica.Electrical.Analog.Basic.Resistor R_vcv(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,100})));
  Modelica.Electrical.Analog.Basic.VCC vcc(transConductance=0.5)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,70})));
  Modelica.Electrical.Analog.Basic.Resistor R_vcc(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,70})));
  Modelica.Electrical.Analog.Basic.Resistor R_sense(R=2)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,40})));
  Modelica.Electrical.Analog.Basic.CCV ccv(transResistance=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,40})));
  Modelica.Electrical.Analog.Basic.Resistor R_ccv(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,40})));
  Modelica.Electrical.Analog.Basic.Resistor R_sense2(R=2)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,10})));
  Modelica.Electrical.Analog.Basic.CCC ccc(gain=4)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,10})));
  Modelica.Electrical.Analog.Basic.Resistor R_ccc(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,10})));
  Modelica.Blocks.Sources.Ramp ramp(height=1e-3, duration=0.1, offset=1e-4)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={60,120})));
  Modelica.Blocks.Sources.Ramp rampL(height=1e-3, duration=0.1, offset=1e-4)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={90,120})));
  Modelica.Electrical.Analog.Basic.VariableCapacitor variableCapacitor
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={60,90})));
  Modelica.Electrical.Analog.Basic.VariableInductor variableInductor
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={60,60})));
  Modelica.Electrical.Analog.Basic.VariableConductor variableConductor
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={60,30})));
  Modelica.Blocks.Sources.Ramp conductance(height=1, duration=0.1, offset=0.1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={90,30})));
  Modelica.Electrical.Analog.Basic.Resistor R_cap(R=10)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={90,90})));
  Modelica.Electrical.Analog.Basic.Resistor R_ind(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={90,60})));
  Modelica.Electrical.Analog.Basic.M_Transformer mTransformer(N=2, L={1e-2, 0.9e-2, 1e-2})
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-30})));
  Modelica.Electrical.Analog.Basic.Resistor R_secondary(R=10)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-30})));
  Modelica.Electrical.Analog.Basic.Resistor R_primary(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-30})));
  Modelica.Electrical.Analog.Basic.OpAmp opAmp(Slope=1e4)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-80})));
  Modelica.Electrical.Analog.Sources.SupplyVoltage supply(Vps=15, Vns=-15)
    annotation (Placement(transformation(extent={{-90,-120},{-70,-100}})));
  Modelica.Electrical.Analog.Basic.Resistor R_feedback(R=1e4)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={0,-70})));
  Modelica.Electrical.Analog.Basic.Resistor R_ground(R=1e4)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-100})));
  Modelica.Electrical.Analog.Basic.Potentiometer potentiometer(R=100, useRinput=true)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={60,-30})));
  Modelica.Blocks.Sources.Ramp wiper(height=1, duration=0.1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={60,0})));
  Modelica.Electrical.Analog.Basic.Resistor R_wiper(R=100)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={90,-50})));
  Modelica.Electrical.Analog.Basic.TranslationalEMF emf(k=2)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={60,-100})));
  Modelica.Electrical.Analog.Basic.Resistor R_emf(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,-100})));
  Modelica.Mechanics.Translational.Components.Mass mass(m=0.01, s(start=0, fixed=true), v(start=0, fixed=true))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={90,-100})));
  Modelica.Mechanics.Translational.Components.Spring spring(c=1000)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={120,-100})));
  Modelica.Mechanics.Translational.Components.Fixed fixed
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={150,-100})));
equation
  connect(sine.n, ground.p) annotation (Line(points={{-100,0},{-104,0},{-104,-122},{18,-122},{18,-186},{30,-186},{30,-190}}, color={0,0,255}));
  connect(sine.p, vcv.p1) annotation (Line(points={{-80,0},{-74,0},{-74,80},{-44,80},{-44,110},{-40,110}}, color={0,0,255}));
  connect(vcv.n1, ground.p) annotation (Line(points={{-40,90},{-46,90},{-46,60},{-44,60},{-44,56},{12,56},{12,-30},{14,-30},{14,-112},{18,-112},{18,-186},{30,-186},{30,-190}}, color={0,0,255}));
  connect(vcv.p2, R_vcv.p) annotation (Line(points={{-20,110},{-12,110},{-12,114},{0,114},{0,110}}, color={0,0,255}));
  connect(R_vcv.n, vcv.n2) annotation (Line(points={{0,90},{0,86},{-16,86},{-16,90},{-20,90}}, color={0,0,255}));
  connect(vcv.n2, ground.p) annotation (Line(points={{-20,90},{-16,90},{-16,86},{12,86},{12,-30},{14,-30},{14,-112},{18,-112},{18,-186},{30,-186},{30,-190}}, color={0,0,255}));
  connect(sine.p, vcc.p1) annotation (Line(points={{-80,0},{-74,0},{-74,80},{-40,80}}, color={0,0,255}));
  connect(vcc.n1, ground.p) annotation (Line(points={{-40,60},{-44,60},{-44,56},{12,56},{12,-30},{14,-30},{14,-112},{18,-112},{18,-186},{30,-186},{30,-190}}, color={0,0,255}));
  connect(vcc.p2, R_vcc.p) annotation (Line(points={{-20,80},{-12,80},{-12,84},{0,84},{0,80}}, color={0,0,255}));
  connect(R_vcc.n, vcc.n2) annotation (Line(points={{0,60},{0,56},{-16,56},{-16,60},{-20,60}}, color={0,0,255}));
  connect(vcc.n2, ground.p) annotation (Line(points={{-20,60},{-16,60},{-16,56},{12,56},{12,-30},{14,-30},{14,-112},{18,-112},{18,-186},{30,-186},{30,-190}}, color={0,0,255}));
  connect(sine.p, R_sense.p) annotation (Line(points={{-80,0},{-74,0},{-74,40},{-70,40}}, color={0,0,255}));
  connect(R_sense.n, ccv.p1) annotation (Line(points={{-50,40},{-44,40},{-44,50},{-40,50}}, color={0,0,255}));
  connect(ccv.n1, ground.p) annotation (Line(points={{-40,30},{-44,30},{-44,26},{12,26},{12,-30},{14,-30},{14,-112},{18,-112},{18,-186},{30,-186},{30,-190}}, color={0,0,255}));
  connect(ccv.p2, R_ccv.p) annotation (Line(points={{-20,50},{-12,50},{-12,54},{0,54},{0,50}}, color={0,0,255}));
  connect(R_ccv.n, ccv.n2) annotation (Line(points={{0,30},{0,26},{-16,26},{-16,30},{-20,30}}, color={0,0,255}));
  connect(ccv.n2, ground.p) annotation (Line(points={{-20,30},{-16,30},{-16,26},{12,26},{12,-30},{14,-30},{14,-112},{18,-112},{18,-186},{30,-186},{30,-190}}, color={0,0,255}));
  connect(sine.p, R_sense2.p) annotation (Line(points={{-80,0},{-74,0},{-74,10},{-70,10}}, color={0,0,255}));
  connect(R_sense2.n, ccc.p1) annotation (Line(points={{-50,10},{-44,10},{-44,20},{-40,20}}, color={0,0,255}));
  connect(ccc.n1, ground.p) annotation (Line(points={{-40,0},{-44,0},{-44,-4},{12,-4},{12,-30},{14,-30},{14,-112},{18,-112},{18,-186},{30,-186},{30,-190}}, color={0,0,255}));
  connect(ccc.p2, R_ccc.p) annotation (Line(points={{-20,20},{-12,20},{-12,24},{0,24},{0,20}}, color={0,0,255}));
  connect(R_ccc.n, ccc.n2) annotation (Line(points={{0,0},{0,-4},{-16,-4},{-16,0},{-20,0}}, color={0,0,255}));
  connect(ccc.n2, ground.p) annotation (Line(points={{-20,0},{-16,0},{-16,-4},{12,-4},{12,-30},{14,-30},{14,-112},{18,-112},{18,-186},{30,-186},{30,-190}}, color={0,0,255}));
  connect(ramp.y, variableCapacitor.C) annotation (Line(points={{71,120},{76,120},{76,106},{60,106},{60,102}}, color={0,0,127}));
  connect(sine.p, variableCapacitor.p) annotation (Line(points={{-80,0},{-74,0},{-74,80},{-44,80},{-44,116},{46,116},{46,90},{50,90}}, color={0,0,255}));
  connect(variableCapacitor.n, R_cap.p) annotation (Line(points={{70,90},{78,90},{78,104},{90,104},{90,100}}, color={0,0,255}));
  connect(R_cap.n, ground.p) annotation (Line(points={{90,80},{90,76},{88,76},{88,78},{12,78},{12,-30},{14,-30},{14,-112},{18,-112},{18,-186},{30,-186},{30,-190}}, color={0,0,255}));
  connect(rampL.y, variableInductor.L) annotation (Line(points={{101,120},{104,120},{104,72},{60,72}}, color={0,0,127}));
  connect(sine.p, variableInductor.p) annotation (Line(points={{-80,0},{-74,0},{-74,-6},{46,-6},{46,60},{50,60}}, color={0,0,255}));
  connect(variableInductor.n, R_ind.p) annotation (Line(points={{70,60},{78,60},{78,74},{90,74},{90,70}}, color={0,0,255}));
  connect(R_ind.n, ground.p) annotation (Line(points={{90,50},{90,42},{74,42},{74,12},{48,12},{48,-80},{18,-80},{18,-186},{30,-186},{30,-190}}, color={0,0,255}));
  connect(conductance.y, variableConductor.G) annotation (Line(points={{101,30},{104,30},{104,46},{60,46},{60,42}}, color={0,0,127}));
  connect(sine.p, variableConductor.p) annotation (Line(points={{-80,0},{-74,0},{-74,-6},{46,-6},{46,30},{50,30}}, color={0,0,255}));
  connect(variableConductor.n, ground.p) annotation (Line(points={{70,30},{74,30},{74,12},{48,12},{48,-80},{18,-80},{18,-186},{30,-186},{30,-190}}, color={0,0,255}));
  connect(sine.p, R_primary.p) annotation (Line(points={{-80,0},{-74,0},{-74,-30},{-70,-30}}, color={0,0,255}));
  connect(R_primary.n, mTransformer.p[1]) annotation (Line(points={{-50,-30},{-44,-30},{-44,-26.5},{-40,-26.5}}, color={0,0,255}));
  connect(mTransformer.n[1], ground.p) annotation (Line(points={{-20,-26.5},{-16,-26.5},{-16,-42},{14,-42},{14,-112},{18,-112},{18,-186},{30,-186},{30,-190}}, color={0,0,255}));
  connect(mTransformer.p[2], R_secondary.p) annotation (Line(points={{-40,-33.5},{-44,-33.5},{-44,-44},{-14,-44},{-14,-30},{-10,-30}}, color={0,0,255}));
  connect(R_secondary.n, mTransformer.n[2]) annotation (Line(points={{10,-30},{14,-30},{14,-42},{-16,-42},{-16,-33.5},{-20,-33.5}}, color={0,0,255}));
  connect(mTransformer.n[2], ground.p) annotation (Line(points={{-20,-33.5},{-16,-33.5},{-16,-42},{14,-42},{14,-112},{18,-112},{18,-186},{30,-186},{30,-190}}, color={0,0,255}));
  connect(sine.p, opAmp.in_p) annotation (Line(points={{-80,0},{-74,0},{-74,-86},{-40,-86}}, color={0,0,255}));
  connect(opAmp.out, R_feedback.p) annotation (Line(points={{-20,-80},{-12,-80},{-12,-84},{0,-84},{0,-80}}, color={0,0,255}));
  connect(R_feedback.n, opAmp.in_n) annotation (Line(points={{0,-60},{0,-56},{-44,-56},{-44,-74},{-40,-74}}, color={0,0,255}));
  connect(opAmp.in_n, R_ground.p) annotation (Line(points={{-40,-74},{-44,-74},{-44,-100},{-10,-100}}, color={0,0,255}));
  connect(R_ground.n, ground.p) annotation (Line(points={{10,-100},{18,-100},{18,-186},{30,-186},{30,-190}}, color={0,0,255}));
  connect(supply.pin_p, opAmp.VMax) annotation (Line(points={{-90,-110},{-94,-110},{-94,-66},{-30,-66},{-30,-70}}, color={0,0,255}));
  connect(supply.pin_n, opAmp.VMin) annotation (Line(points={{-70,-110},{-30,-110},{-30,-90}}, color={0,0,255}));
  connect(supply.ground, ground.p) annotation (Line(points={{-80,-110},{-68,-110},{-68,-112},{18,-112},{18,-186},{30,-186},{30,-190}}, color={0,0,255}));
  connect(wiper.y, potentiometer.r) annotation (Line(points={{71,0},{76,0},{76,-46},{50,-46},{50,-42}}, color={0,0,127}));
  connect(sine.p, potentiometer.pin_p) annotation (Line(points={{-80,0},{-74,0},{-74,-6},{46,-6},{46,-30},{50,-30}}, color={0,0,255}));
  connect(potentiometer.pin_n, ground.p) annotation (Line(points={{70,-30},{74,-30},{74,-80},{18,-80},{18,-186},{30,-186},{30,-190}}, color={0,0,255}));
  connect(potentiometer.contact, R_wiper.p) annotation (Line(points={{70,-40},{78,-40},{78,-36},{90,-36},{90,-40}}, color={0,0,255}));
  connect(R_wiper.n, ground.p) annotation (Line(points={{90,-60},{90,-80},{18,-80},{18,-186},{30,-186},{30,-190}}, color={0,0,255}));
  connect(sine.p, R_emf.p) annotation (Line(points={{-80,0},{-74,0},{-74,-6},{16,-6},{16,-100},{20,-100}}, color={0,0,255}));
  connect(R_emf.n, emf.p) annotation (Line(points={{40,-100},{48,-100},{48,-86},{60,-86},{60,-90}}, color={0,0,255}));
  connect(emf.n, ground.p) annotation (Line(points={{60,-110},{60,-184},{30,-184},{30,-190}}, color={0,0,255}));
  connect(emf.flange, mass.flange_a) annotation (Line(points={{70,-100},{80,-100}}, color={0,127,0}));
  connect(mass.flange_b, spring.flange_a) annotation (Line(points={{100,-100},{110,-100}}, color={0,127,0}));
  connect(spring.flange_b, fixed.flange) annotation (Line(points={{130,-100},{150,-100}}, color={0,127,0}));
  annotation (Diagram(coordinateSystem(extent={{-120,-220},{160,140}})),
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
