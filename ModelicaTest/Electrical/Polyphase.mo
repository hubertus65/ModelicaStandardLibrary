within ModelicaTest.Electrical;
package Polyphase "Test models for Modelica.Electrical.Polyphase"
  extends Modelica.Icons.ExamplesPackage;

  model PolyphaseBasicSourcesAndSensors "Test of basic elements, ideal elements, sources and sensors of Modelica.Electrical.Polyphase"
    extends Modelica.Icons.Example;

    Modelica.Electrical.Polyphase.Sources.CosineVoltage source(m=3, V=fill(100, 3), f=fill(50, 3))
      annotation (Placement(transformation(extent={{-100,50},{-80,70}})));
    Modelica.Electrical.Polyphase.Basic.Star star(m=3)
      annotation (Placement(transformation(extent={{-100,10},{-80,30}})));
    Modelica.Electrical.Analog.Basic.Ground ground
      annotation (Placement(transformation(extent={{-100,-20},{-80,0}})));
    Modelica.Electrical.Polyphase.Sensors.AronSensor aron
      annotation (Placement(transformation(extent={{-70,90},{-50,110}})));
    Modelica.Electrical.Polyphase.Sensors.ReactivePowerSensor reactive
      annotation (Placement(transformation(extent={{-40,90},{-20,110}})));
    Modelica.Electrical.Polyphase.Basic.Resistor R_load(m=3, R=fill(10, 3))
      annotation (Placement(transformation(extent={{-10,90},{10,110}})));
    Modelica.Electrical.Polyphase.Basic.Star star1(m=3)
      annotation (Placement(transformation(extent={{20,90},{40,110}})));
    Modelica.Electrical.Polyphase.Basic.Capacitor capacitor(m=3, C=fill(1e-4, 3))
      annotation (Placement(transformation(extent={{-70,60},{-50,80}})));
    Modelica.Electrical.Polyphase.Basic.Conductor conductor(m=3, G=fill(0.05, 3))
      annotation (Placement(transformation(extent={{-40,60},{-20,80}})));
    Modelica.Electrical.Polyphase.Basic.Star star2(m=3)
      annotation (Placement(transformation(extent={{-10,60},{10,80}})));
    Modelica.Electrical.Polyphase.Basic.SaturatingInductor saturating(m=3, Inom=fill(5, 3), Lnom=fill(0.05, 3), Lzer=fill(0.1, 3), Linf=fill(0.01, 3))
      annotation (Placement(transformation(extent={{-70,30},{-50,50}})));
    Modelica.Electrical.Polyphase.Basic.MutualInductor mutual(m=3, L=[0.05, 0.01, 0.01; 0.01, 0.05, 0.01; 0.01, 0.01, 0.05])
      annotation (Placement(transformation(extent={{-40,30},{-20,50}})));
    Modelica.Electrical.Polyphase.Basic.Star star3(m=3)
      annotation (Placement(transformation(extent={{-10,30},{10,50}})));
    Modelica.Electrical.Polyphase.Basic.Transformer transformer(m=3, L1=fill(0.1, 3), L2=fill(0.4, 3), M=fill(0.19, 3))
      annotation (Placement(transformation(extent={{-70,0},{-50,20}})));
    Modelica.Electrical.Polyphase.Basic.Resistor R_tr(m=3, R=fill(100, 3))
      annotation (Placement(transformation(extent={{-40,0},{-20,20}})));
    Modelica.Electrical.Polyphase.Basic.Star star4(m=3)
      annotation (Placement(transformation(extent={{-10,0},{10,20}})));
    Modelica.Electrical.Polyphase.Ideal.IdealTransformer idealTransformer(m=3, n=fill(2, 3))
      annotation (Placement(transformation(extent={{-70,-30},{-50,-10}})));
    Modelica.Electrical.Polyphase.Basic.Resistor R_itr(m=3, R=fill(10, 3))
      annotation (Placement(transformation(extent={{-40,-30},{-20,-10}})));
    Modelica.Electrical.Polyphase.Basic.Star star5(m=3)
      annotation (Placement(transformation(extent={{-10,-30},{10,-10}})));
    Modelica.Blocks.Sources.Ramp rValue(height=10, duration=0.1, offset=1)
      annotation (Placement(transformation(extent={{20,30},{40,50}})));
    Modelica.Blocks.Sources.Ramp gValue(height=10, duration=0.1, offset=1)
      annotation (Placement(transformation(extent={{20,-60},{40,-40}})));
    Modelica.Electrical.Polyphase.Basic.VariableResistor varR(m=3)
      annotation (Placement(transformation(extent={{30,0},{50,20}})));
    Modelica.Electrical.Polyphase.Basic.Star star6(m=3)
      annotation (Placement(transformation(extent={{60,0},{80,20}})));
    Modelica.Electrical.Polyphase.Basic.VariableConductor varG(m=3)
      annotation (Placement(transformation(extent={{30,-30},{50,-10}})));
    Modelica.Electrical.Polyphase.Basic.Star star7(m=3)
      annotation (Placement(transformation(extent={{60,-30},{80,-10}})));
    Modelica.Blocks.Sources.Ramp cValue(height=1e-4, duration=0.1, offset=1e-5)
      annotation (Placement(transformation(extent={{20,-60},{40,-40}})));
    Modelica.Electrical.Polyphase.Basic.VariableCapacitor varC(m=3)
      annotation (Placement(transformation(extent={{30,-60},{50,-40}})));
    Modelica.Electrical.Polyphase.Basic.Star star8(m=3)
      annotation (Placement(transformation(extent={{60,-60},{80,-40}})));
    Modelica.Blocks.Sources.Ramp lValue(height=0.05, duration=0.1, offset=0.01)
      annotation (Placement(transformation(extent={{20,-90},{40,-70}})));
    Modelica.Electrical.Polyphase.Basic.VariableInductor varL(m=3)
      annotation (Placement(transformation(extent={{30,-90},{50,-70}})));
    Modelica.Electrical.Polyphase.Basic.Star star9(m=3)
      annotation (Placement(transformation(extent={{60,-90},{80,-70}})));
    Modelica.Blocks.Sources.BooleanPulse switchControl(width=50, period=0.04)
      annotation (Placement(transformation(extent={{-100,-70},{-80,-50}})));
    Modelica.Electrical.Polyphase.Ideal.IdealIntermediateSwitch intermediate(m=3)
      annotation (Placement(transformation(extent={{-70,-70},{-50,-50}})));
    Modelica.Electrical.Polyphase.Basic.Resistor R_i1(m=3, R=fill(10, 3))
      annotation (Placement(transformation(extent={{-40,-65},{-20,-45}})));
    Modelica.Electrical.Polyphase.Basic.Resistor R_i2(m=3, R=fill(20, 3))
      annotation (Placement(transformation(extent={{-40,-75},{-20,-55}})));
    Modelica.Electrical.Polyphase.Basic.Star star10(m=3)
      annotation (Placement(transformation(extent={{-10,-70},{10,-50}})));
    Modelica.Electrical.Polyphase.Sources.ConstantVoltage constantVoltage(m=3, V={1, 2, 3})
      annotation (Placement(transformation(extent={{-100,-120},{-80,-100}})));
    Modelica.Electrical.Polyphase.Ideal.Idle idle(m=3)
      annotation (Placement(transformation(extent={{-70,-120},{-50,-100}})));
    Modelica.Electrical.Polyphase.Basic.Resistor R_cv(m=3, R=fill(1, 3))
      annotation (Placement(transformation(extent={{-70,-140},{-50,-120}})));
    Modelica.Electrical.Polyphase.Basic.Star star11(m=3)
      annotation (Placement(transformation(extent={{-40,-130},{-20,-110}})));
    Modelica.Electrical.Polyphase.Sources.ConstantCurrent constantCurrent(m=3, I={1, 2, 3})
      annotation (Placement(transformation(extent={{-10,-120},{10,-100}})));
    Modelica.Electrical.Polyphase.Sources.CosineCurrent cosineCurrent(m=3, I=fill(1, 3), f=fill(50, 3))
      annotation (Placement(transformation(extent={{-10,-150},{10,-130}})));
    Modelica.Electrical.Polyphase.Sources.SineCurrent sineCurrent(m=3, I=fill(2, 3), f=fill(50, 3))
      annotation (Placement(transformation(extent={{-10,-180},{10,-160}})));
    Modelica.Electrical.Polyphase.Basic.Resistor R_cc(m=3, R=fill(1, 3))
      annotation (Placement(transformation(extent={{20,-120},{40,-100}})));
    Modelica.Electrical.Polyphase.Basic.Resistor R_cosc(m=3, R=fill(1, 3))
      annotation (Placement(transformation(extent={{20,-150},{40,-130}})));
    Modelica.Electrical.Polyphase.Basic.Resistor R_sc(m=3, R=fill(1, 3))
      annotation (Placement(transformation(extent={{20,-180},{40,-160}})));
    Modelica.Electrical.Polyphase.Basic.Star star12(m=3)
      annotation (Placement(transformation(extent={{50,-150},{70,-130}})));
    Modelica.Electrical.Polyphase.Sources.ConstantVoltage source6(m=6, V=1:6)
      annotation (Placement(transformation(extent={{40,70},{60,90}})));
    Modelica.Electrical.Polyphase.Basic.Resistor R_6(m=6, R=fill(1, 6))
      annotation (Placement(transformation(extent={{60,70},{80,90}})));
    Modelica.Electrical.Polyphase.Basic.SplitToSubsystems split(m=6)
      annotation (Placement(transformation(extent={{80,70},{100,90}})));
    Modelica.Electrical.Polyphase.Basic.Star starM6(m=6)
      annotation (Placement(transformation(extent={{40,40},{60,60}})));
    Modelica.Electrical.Polyphase.Basic.Star starM3(m=3)
      annotation (Placement(transformation(extent={{90,40},{110,60}})));
    Modelica.Electrical.Polyphase.Basic.PlugToPin_n plugToPin(m=3, k=2)
      annotation (Placement(transformation(extent={{80,20},{100,40}})));
    Modelica.Electrical.Analog.Basic.Resistor R_pin(R=1)
      annotation (Placement(transformation(extent={{90,0},{110,20}})));
    Complex backTransformation[3,3]=Modelica.Electrical.Polyphase.Functions.symmetricBackTransformationMatrix(3) "Back transformation matrix of symmetrical components";
  equation
    connect(source.plug_n, star.plug_p) annotation (Line(points={{-79,60},{-106,60},{-106,20},{-102,20}}, color={0,0,127}));
    connect(star.pin_n, ground.p) annotation (Line(points={{-79,20},{-106,20},{-106,-10},{-102,-10}}, color={0,0,127}));
    connect(source.plug_p, aron.plug_p) annotation (Line(points={{-79,60},{-76,60},{-76,100},{-72,100}}, color={0,0,127}));
    connect(aron.plug_n, reactive.plug_p) annotation (Line(points={{-49,100},{-42,100}}, color={0,0,127}));
    connect(reactive.plug_n, R_load.plug_p) annotation (Line(points={{-19,100},{-12,100}}, color={0,0,127}));
    connect(R_load.plug_n, star1.plug_p) annotation (Line(points={{11,100},{18,100}}, color={0,0,127}));
    connect(star1.pin_n, ground.p) annotation (Line(points={{41,100},{-106,100},{-106,-10},{-102,-10}}, color={0,0,127}));
    connect(source.plug_p, capacitor.plug_p) annotation (Line(points={{-79,60},{-76,60},{-76,70},{-72,70}}, color={0,0,127}));
    connect(capacitor.plug_n, conductor.plug_p) annotation (Line(points={{-49,70},{-42,70}}, color={0,0,127}));
    connect(conductor.plug_n, star2.plug_p) annotation (Line(points={{-19,70},{-12,70}}, color={0,0,127}));
    connect(star2.pin_n, ground.p) annotation (Line(points={{11,70},{-106,70},{-106,-10},{-102,-10}}, color={0,0,127}));
    connect(source.plug_p, saturating.plug_p) annotation (Line(points={{-79,60},{-76,60},{-76,40},{-72,40}}, color={0,0,127}));
    connect(saturating.plug_n, mutual.plug_p) annotation (Line(points={{-49,40},{-42,40}}, color={0,0,127}));
    connect(mutual.plug_n, star3.plug_p) annotation (Line(points={{-19,40},{-12,40}}, color={0,0,127}));
    connect(star3.pin_n, ground.p) annotation (Line(points={{11,40},{-106,40},{-106,-10},{-102,-10}}, color={0,0,127}));
    connect(source.plug_p, transformer.plug_p1) annotation (Line(points={{-79,60},{-76,60},{-76,10},{-72,10}}, color={0,0,127}));
    connect(transformer.plug_n1, star4.plug_p) annotation (Line(points={{-49,10},{-12,10}}, color={0,0,127}));
    connect(transformer.plug_p2, R_tr.plug_p) annotation (Line(points={{-49,10},{-42,10}}, color={0,0,127}));
    connect(R_tr.plug_n, transformer.plug_n2) annotation (Line(points={{-19,10},{-72,10}}, color={0,0,127}));
    connect(transformer.plug_n2, star4.plug_p) annotation (Line(points={{-49,10},{-12,10}}, color={0,0,127}));
    connect(star4.pin_n, ground.p) annotation (Line(points={{11,10},{-106,10},{-106,-10},{-102,-10}}, color={0,0,127}));
    connect(source.plug_p, idealTransformer.plug_p1) annotation (Line(points={{-79,60},{-76,60},{-76,-20},{-72,-20}}, color={0,0,127}));
    connect(idealTransformer.plug_n1, star5.plug_p) annotation (Line(points={{-49,-20},{-12,-20}}, color={0,0,127}));
    connect(idealTransformer.plug_p2, R_itr.plug_p) annotation (Line(points={{-49,-20},{-42,-20}}, color={0,0,127}));
    connect(R_itr.plug_n, idealTransformer.plug_n2) annotation (Line(points={{-19,-20},{-72,-20}}, color={0,0,127}));
    connect(idealTransformer.plug_n2, star5.plug_p) annotation (Line(points={{-49,-20},{-12,-20}}, color={0,0,127}));
    connect(star5.pin_n, ground.p) annotation (Line(points={{11,-20},{-106,-20},{-106,-10},{-102,-10}}, color={0,0,127}));
    connect(rValue.y, varR.R[1]) annotation (Line(points={{41,40},{24,40},{24,10},{28,10}}, color={0,0,127}));
    connect(rValue.y, varR.R[2]) annotation (Line(points={{41,40},{24,40},{24,10},{28,10}}, color={0,0,127}));
    connect(rValue.y, varR.R[3]) annotation (Line(points={{41,40},{24,40},{24,10},{28,10}}, color={0,0,127}));
    connect(source.plug_p, varR.plug_p) annotation (Line(points={{-79,60},{-26,60},{-26,10},{28,10}}, color={0,0,127}));
    connect(varR.plug_n, star6.plug_p) annotation (Line(points={{51,10},{58,10}}, color={0,0,127}));
    connect(star6.pin_n, ground.p) annotation (Line(points={{81,10},{-106,10},{-106,-10},{-102,-10}}, color={0,0,127}));
    connect(gValue.y, varG.G[1]) annotation (Line(points={{41,-50},{24,-50},{24,-20},{28,-20}}, color={0,0,127}));
    connect(gValue.y, varG.G[2]) annotation (Line(points={{41,-50},{24,-50},{24,-20},{28,-20}}, color={0,0,127}));
    connect(gValue.y, varG.G[3]) annotation (Line(points={{41,-50},{24,-50},{24,-20},{28,-20}}, color={0,0,127}));
    connect(source.plug_p, varG.plug_p) annotation (Line(points={{-79,60},{-26,60},{-26,-20},{28,-20}}, color={0,0,127}));
    connect(varG.plug_n, star7.plug_p) annotation (Line(points={{51,-20},{58,-20}}, color={0,0,127}));
    connect(star7.pin_n, ground.p) annotation (Line(points={{81,-20},{-106,-20},{-106,-10},{-102,-10}}, color={0,0,127}));
    connect(cValue.y, varC.C[1]) annotation (Line(points={{41,-50},{28,-50}}, color={0,0,127}));
    connect(cValue.y, varC.C[2]) annotation (Line(points={{41,-50},{28,-50}}, color={0,0,127}));
    connect(cValue.y, varC.C[3]) annotation (Line(points={{41,-50},{28,-50}}, color={0,0,127}));
    connect(source.plug_p, varC.plug_p) annotation (Line(points={{-79,60},{-26,60},{-26,-50},{28,-50}}, color={0,0,127}));
    connect(varC.plug_n, star8.plug_p) annotation (Line(points={{51,-50},{58,-50}}, color={0,0,127}));
    connect(star8.pin_n, ground.p) annotation (Line(points={{81,-50},{-106,-50},{-106,-10},{-102,-10}}, color={0,0,127}));
    connect(lValue.y, varL.L[1]) annotation (Line(points={{41,-80},{28,-80}}, color={0,0,127}));
    connect(lValue.y, varL.L[2]) annotation (Line(points={{41,-80},{28,-80}}, color={0,0,127}));
    connect(lValue.y, varL.L[3]) annotation (Line(points={{41,-80},{28,-80}}, color={0,0,127}));
    connect(source.plug_p, varL.plug_p) annotation (Line(points={{-79,60},{-26,60},{-26,-80},{28,-80}}, color={0,0,127}));
    connect(varL.plug_n, star9.plug_p) annotation (Line(points={{51,-80},{58,-80}}, color={0,0,127}));
    connect(star9.pin_n, ground.p) annotation (Line(points={{81,-80},{-106,-80},{-106,-10},{-102,-10}}, color={0,0,127}));
    connect(switchControl.y, intermediate.control[1]) annotation (Line(points={{-79,-60},{-72,-60}}, color={255,0,255}));
    connect(switchControl.y, intermediate.control[2]) annotation (Line(points={{-79,-60},{-72,-60}}, color={255,0,255}));
    connect(switchControl.y, intermediate.control[3]) annotation (Line(points={{-79,-60},{-72,-60}}, color={255,0,255}));
    connect(source.plug_p, intermediate.plug_p1) annotation (Line(points={{-79,60},{-76,60},{-76,-60},{-72,-60}}, color={0,0,127}));
    connect(star10.plug_p, intermediate.plug_p2) annotation (Line(points={{11,-60},{-72,-60}}, color={0,0,127}));
    connect(intermediate.plug_n1, R_i1.plug_p) annotation (Line(points={{-49,-60},{-46,-60},{-46,-55},{-42,-55}}, color={0,0,127}));
    connect(intermediate.plug_n2, R_i2.plug_p) annotation (Line(points={{-49,-60},{-46,-60},{-46,-65},{-42,-65}}, color={0,0,127}));
    connect(R_i1.plug_n, star10.plug_p) annotation (Line(points={{-19,-55},{-16,-55},{-16,-60},{-12,-60}}, color={0,0,127}));
    connect(R_i2.plug_n, star10.plug_p) annotation (Line(points={{-19,-65},{-16,-65},{-16,-60},{-12,-60}}, color={0,0,127}));
    connect(star10.pin_n, ground.p) annotation (Line(points={{11,-60},{-106,-60},{-106,-10},{-102,-10}}, color={0,0,127}));
    connect(constantVoltage.plug_p, R_cv.plug_p) annotation (Line(points={{-79,-110},{-76,-110},{-76,-130},{-72,-130}}, color={0,0,127}));
    connect(R_cv.plug_n, star11.plug_p) annotation (Line(points={{-49,-130},{-46,-130},{-46,-120},{-42,-120}}, color={0,0,127}));
    connect(constantVoltage.plug_n, star11.plug_p) annotation (Line(points={{-79,-110},{-60,-110},{-60,-120},{-42,-120}}, color={0,0,127}));
    connect(constantVoltage.plug_p, idle.plug_p) annotation (Line(points={{-79,-110},{-72,-110}}, color={0,0,127}));
    connect(idle.plug_n, star11.plug_p) annotation (Line(points={{-49,-110},{-46,-110},{-46,-120},{-42,-120}}, color={0,0,127}));
    connect(star11.pin_n, ground.p) annotation (Line(points={{-19,-120},{-106,-120},{-106,-10},{-102,-10}}, color={0,0,127}));
    connect(constantCurrent.plug_p, R_cc.plug_p) annotation (Line(points={{11,-110},{18,-110}}, color={0,0,127}));
    connect(R_cc.plug_n, star12.plug_p) annotation (Line(points={{41,-110},{44,-110},{44,-140},{48,-140}}, color={0,0,127}));
    connect(constantCurrent.plug_n, star12.plug_p) annotation (Line(points={{11,-110},{30,-110},{30,-140},{48,-140}}, color={0,0,127}));
    connect(cosineCurrent.plug_p, R_cosc.plug_p) annotation (Line(points={{11,-140},{18,-140}}, color={0,0,127}));
    connect(R_cosc.plug_n, star12.plug_p) annotation (Line(points={{41,-140},{48,-140}}, color={0,0,127}));
    connect(cosineCurrent.plug_n, star12.plug_p) annotation (Line(points={{11,-140},{48,-140}}, color={0,0,127}));
    connect(sineCurrent.plug_p, R_sc.plug_p) annotation (Line(points={{11,-170},{18,-170}}, color={0,0,127}));
    connect(R_sc.plug_n, star12.plug_p) annotation (Line(points={{41,-170},{44,-170},{44,-140},{48,-140}}, color={0,0,127}));
    connect(sineCurrent.plug_n, star12.plug_p) annotation (Line(points={{11,-170},{30,-170},{30,-140},{48,-140}}, color={0,0,127}));
    connect(star12.pin_n, ground.p) annotation (Line(points={{71,-140},{-106,-140},{-106,-10},{-102,-10}}, color={0,0,127}));
    connect(source6.plug_p, R_6.plug_p) annotation (Line(points={{61,80},{58,80}}, color={0,0,127}));
    connect(R_6.plug_n, split.plug_p) annotation (Line(points={{81,80},{78,80}}, color={0,0,127}));
    connect(source6.plug_n, starM6.plug_p) annotation (Line(points={{61,80},{34,80},{34,50},{38,50}}, color={0,0,127}));
    connect(starM6.pin_n, ground.p) annotation (Line(points={{61,50},{-106,50},{-106,-10},{-102,-10}}, color={0,0,127}));
    connect(split.plugs_n[1], starM3.plug_p) annotation (Line(points={{101,80},{84,80},{84,50},{88,50}}, color={0,0,127}));
    connect(starM3.pin_n, ground.p) annotation (Line(points={{111,50},{-106,50},{-106,-10},{-102,-10}}, color={0,0,127}));
    connect(split.plugs_n[2], plugToPin.plug_n) annotation (Line(points={{101,80},{74,80},{74,30},{78,30}}, color={0,0,127}));
    connect(plugToPin.pin_n, R_pin.p) annotation (Line(points={{101,30},{84,30},{84,10},{88,10}}, color={0,0,127}));
    connect(R_pin.n, ground.p) annotation (Line(points={{111,10},{-106,10},{-106,-10},{-102,-10}}, color={0,0,127}));
    annotation (Diagram(coordinateSystem(extent={{-100,-190},{100,120}})),
      experiment(StopTime=0.1),
      Documentation(info="<html>
<p>
Three-phase circuits of
<a href=\"modelica://Modelica.Electrical.Polyphase\">Modelica.Electrical.Polyphase</a>:
a symmetric CosineVoltage source feeds Capacitor, Conductor, SaturatingInductor, MutualInductor,
Transformer and IdealTransformer, the variable elements (VariableResistor, VariableConductor,
VariableCapacitor, VariableInductor) and an IdealIntermediateSwitch. AronSensor and ReactivePowerSensor
measure the power of the resistive load. Separate circuits test ConstantVoltage, ConstantCurrent,
CosineCurrent and SineCurrent sources, Idle, SplitToSubsystems and PlugToPin_n, and the function
Functions.symmetricBackTransformationMatrix.
</p>
</html>"));
  end PolyphaseBasicSourcesAndSensors;
end Polyphase;
