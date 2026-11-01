within ModelicaTest.Electrical;
package Polyphase "Test models for Modelica.Electrical.Polyphase"
  extends Modelica.Icons.ExamplesPackage;

  model PolyphaseBasicSourcesAndSensors "Test of basic elements, ideal elements, sources and sensors of Modelica.Electrical.Polyphase"
    extends Modelica.Icons.Example;

    Modelica.Electrical.Polyphase.Sources.CosineVoltage source(m=3, V=fill(100, 3), f=fill(50, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-90,60})));
    Modelica.Electrical.Polyphase.Basic.Star star(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,10})));
    Modelica.Electrical.Analog.Basic.Ground ground
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-90,-40})));
    Modelica.Electrical.Polyphase.Sensors.AronSensor aron
      annotation (Placement(transformation(extent={{-70,90},{-50,110}})));
    Modelica.Electrical.Polyphase.Sensors.ReactivePowerSensor reactive
      annotation (Placement(transformation(extent={{-40,90},{-20,110}})));
    Modelica.Electrical.Polyphase.Basic.Resistor R_load(m=3, R=fill(10, 3))
      annotation (Placement(transformation(extent={{-10,90},{10,110}})));
    Modelica.Electrical.Polyphase.Basic.Star star1(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,100})));
    Modelica.Electrical.Polyphase.Basic.Capacitor capacitor(m=3, C=fill(1e-4, 3))
      annotation (Placement(transformation(extent={{-70,60},{-50,80}})));
    Modelica.Electrical.Polyphase.Basic.Conductor conductor(m=3, G=fill(0.05, 3))
      annotation (Placement(transformation(extent={{-40,60},{-20,80}})));
    Modelica.Electrical.Polyphase.Basic.Star star2(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,70})));
    Modelica.Electrical.Polyphase.Basic.SaturatingInductor saturating(m=3, Inom=fill(5, 3), Lnom=fill(0.05, 3), Lzer=fill(0.1, 3), Linf=fill(0.01, 3))
      annotation (Placement(transformation(extent={{-70,30},{-50,50}})));
    Modelica.Electrical.Polyphase.Basic.MutualInductor mutual(m=3, L=[0.05, 0.01, 0.01; 0.01, 0.05, 0.01; 0.01, 0.01, 0.05])
      annotation (Placement(transformation(extent={{-40,30},{-20,50}})));
    Modelica.Electrical.Polyphase.Basic.Star star3(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,40})));
    Modelica.Electrical.Polyphase.Basic.Transformer transformer(m=3, L1=fill(0.1, 3), L2=fill(0.4, 3), M=fill(0.19, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-20})));
    Modelica.Electrical.Polyphase.Basic.Resistor R_tr(m=3, R=fill(100, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-30,-20})));
    Modelica.Electrical.Polyphase.Basic.Star star4(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={0,-20})));
    Modelica.Electrical.Polyphase.Ideal.IdealTransformer idealTransformer(m=3, n=fill(2, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-50})));
    Modelica.Electrical.Polyphase.Basic.Resistor R_itr(m=3, R=fill(10, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-30,-50})));
    Modelica.Electrical.Polyphase.Basic.Star star5(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={0,-50})));
    Modelica.Blocks.Sources.Ramp rValue(height=10, duration=0.1, offset=1)
      annotation (Placement(transformation(extent={{20,30},{40,50}})));
    Modelica.Blocks.Sources.Ramp gValue(height=10, duration=0.1, offset=1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,-80})));
    Modelica.Electrical.Polyphase.Basic.VariableResistor varR(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={90,-20})));
    Modelica.Electrical.Polyphase.Basic.Star star6(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={140,-20})));
    Modelica.Electrical.Polyphase.Basic.VariableConductor varG(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={90,-50})));
    Modelica.Electrical.Polyphase.Basic.Star star7(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={140,-50})));
    Modelica.Blocks.Sources.Ramp cValue(height=1e-4, duration=0.1, offset=1e-5)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={60,-80})));
    Modelica.Electrical.Polyphase.Basic.VariableCapacitor varC(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={90,-80})));
    Modelica.Electrical.Polyphase.Basic.Star star8(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={140,-80})));
    Modelica.Blocks.Sources.Ramp lValue(height=0.05, duration=0.1, offset=0.01)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,-130})));
    Modelica.Electrical.Polyphase.Basic.VariableInductor varL(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={90,-130})));
    Modelica.Electrical.Polyphase.Basic.Star star9(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={140,-130})));
    Modelica.Blocks.Sources.BooleanPulse switchControl(width=50, period=0.04)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-90})));
    Modelica.Electrical.Polyphase.Ideal.IdealIntermediateSwitch intermediate(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-90})));
    Modelica.Electrical.Polyphase.Basic.Resistor R_i1(m=3, R=fill(10, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-80})));
    Modelica.Electrical.Polyphase.Basic.Resistor R_i2(m=3, R=fill(20, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-120})));
    Modelica.Electrical.Polyphase.Basic.Star star10(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={0,-90})));
    Modelica.Electrical.Polyphase.Sources.ConstantVoltage constantVoltage(m=3, V={1, 2, 3})
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-90,-160})));
    Modelica.Electrical.Polyphase.Ideal.Idle idle(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-60,-160})));
    Modelica.Electrical.Polyphase.Basic.Resistor R_cv(m=3, R=fill(1, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-190})));
    Modelica.Electrical.Polyphase.Basic.Star star11(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={-30,-170})));
    Modelica.Electrical.Polyphase.Sources.ConstantCurrent constantCurrent(m=3, I={1, 2, 3})
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-160})));
    Modelica.Electrical.Polyphase.Sources.CosineCurrent cosineCurrent(m=3, I=fill(1, 3), f=fill(50, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-200})));
    Modelica.Electrical.Polyphase.Sources.SineCurrent sineCurrent(m=3, I=fill(2, 3), f=fill(50, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={0,-230})));
    Modelica.Electrical.Polyphase.Basic.Resistor R_cc(m=3, R=fill(1, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,-160})));
    Modelica.Electrical.Polyphase.Basic.Resistor R_cosc(m=3, R=fill(1, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,-200})));
    Modelica.Electrical.Polyphase.Basic.Resistor R_sc(m=3, R=fill(1, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={30,-230})));
    Modelica.Electrical.Polyphase.Basic.Star star12(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={120,-200})));
    Modelica.Electrical.Polyphase.Sources.ConstantVoltage source6(m=6, V=1:6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={110,80})));
    Modelica.Electrical.Polyphase.Basic.Resistor R_6(m=6, R=fill(1, 6))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={140,80})));
    Modelica.Electrical.Polyphase.Basic.SplitToSubsystems split(m=6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={170,80})));
    Modelica.Electrical.Polyphase.Basic.Star starM6(m=6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={110,50})));
    Modelica.Electrical.Polyphase.Basic.Star starM3(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={180,50})));
    Modelica.Electrical.Polyphase.Basic.PlugToPin_n plugToPin(m=3, k=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={170,20})));
    Modelica.Electrical.Analog.Basic.Resistor R_pin(R=1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={180,-20})));
    Complex backTransformation[3,3]=Modelica.Electrical.Polyphase.Functions.symmetricBackTransformationMatrix(3) "Back transformation matrix of symmetrical components";
  equation
    connect(source.plug_n, star.plug_p) annotation (Line(points={{-100,60},{-104,60},{-104,10},{-100,10}}, color={0,0,255}));
    connect(star.pin_n, ground.p) annotation (Line(points={{-80,10},{-76,10},{-76,-40},{-80,-40}}, color={0,0,255}));
    connect(source.plug_p, aron.plug_p) annotation (Line(points={{-80,60},{-74,60},{-74,100},{-70,100}}, color={0,0,255}));
    connect(aron.plug_n, reactive.plug_p) annotation (Line(points={{-49,100},{-42,100}}, color={0,0,255}));
    connect(reactive.plug_n, R_load.plug_p) annotation (Line(points={{-19,100},{-12,100}}, color={0,0,255}));
    connect(R_load.plug_n, star1.plug_p) annotation (Line(points={{10,100},{18,100},{18,114},{30,114},{30,110}}, color={0,0,255}));
    connect(star1.pin_n, ground.p) annotation (Line(points={{30,90},{30,58},{0,58},{0,56},{-14,56},{-14,-4},{-76,-4},{-76,-40},{-80,-40}}, color={0,0,255}));
    connect(source.plug_p, capacitor.plug_p) annotation (Line(points={{-80,60},{-74,60},{-74,70},{-70,70}}, color={0,0,255}));
    connect(capacitor.plug_n, conductor.plug_p) annotation (Line(points={{-49,70},{-42,70}}, color={0,0,255}));
    connect(conductor.plug_n, star2.plug_p) annotation (Line(points={{-20,70},{-12,70},{-12,84},{0,84},{0,80}}, color={0,0,255}));
    connect(star2.pin_n, ground.p) annotation (Line(points={{0,60},{0,56},{-14,56},{-14,-4},{-76,-4},{-76,-40},{-80,-40}}, color={0,0,255}));
    connect(source.plug_p, saturating.plug_p) annotation (Line(points={{-80,60},{-74,60},{-74,40},{-70,40}}, color={0,0,255}));
    connect(saturating.plug_n, mutual.plug_p) annotation (Line(points={{-49,40},{-42,40}}, color={0,0,255}));
    connect(mutual.plug_n, star3.plug_p) annotation (Line(points={{-20,40},{-12,40},{-12,54},{0,54},{0,50}}, color={0,0,255}));
    connect(star3.pin_n, ground.p) annotation (Line(points={{0,30},{0,-4},{-76,-4},{-76,-40},{-80,-40}}, color={0,0,255}));
    connect(source.plug_p, transformer.plug_p1) annotation (Line(points={{-80,60},{-74,60},{-74,-10},{-70,-10}}, color={0,0,255}));
    connect(transformer.plug_n1, star4.plug_p) annotation (Line(points={{-70,-30},{-74,-30},{-74,-34},{0,-34},{0,-30}}, color={0,0,255}));
    connect(transformer.plug_p2, R_tr.plug_p) annotation (Line(points={{-50,-10},{-42,-10},{-42,-6},{-30,-6},{-30,-10}}, color={0,0,255}));
    connect(R_tr.plug_n, transformer.plug_n2) annotation (Line(points={{-30,-30},{-30,-34},{-46,-34},{-46,-30},{-50,-30}}, color={0,0,255}));
    connect(transformer.plug_n2, star4.plug_p) annotation (Line(points={{-50,-30},{-46,-30},{-46,-34},{0,-34},{0,-30}}, color={0,0,255}));
    connect(star4.pin_n, ground.p) annotation (Line(points={{0,-10},{0,-4},{-76,-4},{-76,-40},{-80,-40}}, color={0,0,255}));
    connect(source.plug_p, idealTransformer.plug_p1) annotation (Line(points={{-80,60},{-74,60},{-74,-2},{-78,-2},{-78,-42},{-74,-42},{-74,-40},{-70,-40}}, color={0,0,255}));
    connect(idealTransformer.plug_n1, star5.plug_p) annotation (Line(points={{-70,-60},{-74,-60},{-74,-64},{0,-64},{0,-60}}, color={0,0,255}));
    connect(idealTransformer.plug_p2, R_itr.plug_p) annotation (Line(points={{-50,-40},{-42,-40},{-42,-36},{-30,-36},{-30,-40}}, color={0,0,255}));
    connect(R_itr.plug_n, idealTransformer.plug_n2) annotation (Line(points={{-30,-60},{-30,-64},{-46,-64},{-46,-60},{-50,-60}}, color={0,0,255}));
    connect(idealTransformer.plug_n2, star5.plug_p) annotation (Line(points={{-50,-60},{-46,-60},{-46,-64},{0,-64},{0,-60}}, color={0,0,255}));
    connect(star5.pin_n, ground.p) annotation (Line(points={{0,-40},{0,-36},{-28,-36},{-28,-38},{-76,-38},{-76,-40},{-80,-40}}, color={0,0,255}));
    connect(rValue.y, varR.R[1]) annotation (Line(points={{41,40},{88.67,40},{88.67,-8}}, color={0,0,127}));
    connect(rValue.y, varR.R[2]) annotation (Line(points={{41,40},{90,40},{90,-8}}, color={0,0,127}));
    connect(rValue.y, varR.R[3]) annotation (Line(points={{41,40},{88,40},{88,-4},{91.33,-4},{91.33,-8}}, color={0,0,127}));
    connect(source.plug_p, varR.plug_p) annotation (Line(points={{-80,60},{-74,60},{-74,-2},{76,-2},{76,-20},{80,-20}}, color={0,0,255}));
    connect(varR.plug_n, star6.plug_p) annotation (Line(points={{100,-20},{120,-20},{120,-6},{140,-6},{140,-10}}, color={0,0,255}));
    connect(star6.pin_n, ground.p) annotation (Line(points={{140,-30},{140,-34},{138,-34},{138,-32},{2,-32},{2,-36},{-28,-36},{-28,-38},{-76,-38},{-76,-40},{-80,-40}}, color={0,0,255}));
    connect(gValue.y, varG.G[1]) annotation (Line(points={{41,-80},{48,-80},{48,-34},{88.67,-34},{88.67,-38}}, color={0,0,127}));
    connect(gValue.y, varG.G[2]) annotation (Line(points={{41,-80},{48,-80},{48,-34},{90,-34},{90,-38}}, color={0,0,127}));
    connect(gValue.y, varG.G[3]) annotation (Line(points={{41,-80},{48,-80},{48,-34},{91.33,-34},{91.33,-38}}, color={0,0,127}));
    connect(source.plug_p, varG.plug_p) annotation (Line(points={{-80,60},{-74,60},{-74,-2},{76,-2},{76,-50},{80,-50}}, color={0,0,255}));
    connect(varG.plug_n, star7.plug_p) annotation (Line(points={{100,-50},{120,-50},{120,-64},{140,-64},{140,-60}}, color={0,0,255}));
    connect(star7.pin_n, ground.p) annotation (Line(points={{140,-40},{140,-32},{2,-32},{2,-36},{-28,-36},{-28,-38},{-76,-38},{-76,-40},{-80,-40}}, color={0,0,255}));
    connect(cValue.y, varC.C[1]) annotation (Line(points={{71,-80},{78,-80},{78,-64},{88.67,-64},{88.67,-68}}, color={0,0,127}));
    connect(cValue.y, varC.C[2]) annotation (Line(points={{71,-80},{78,-80},{78,-64},{90,-64},{90,-68}}, color={0,0,127}));
    connect(cValue.y, varC.C[3]) annotation (Line(points={{71,-80},{78,-80},{78,-64},{91.33,-64},{91.33,-68}}, color={0,0,127}));
    connect(source.plug_p, varC.plug_p) annotation (Line(points={{-80,60},{-74,60},{-74,-2},{76,-2},{76,-80},{80,-80}}, color={0,0,255}));
    connect(varC.plug_n, star8.plug_p) annotation (Line(points={{100,-80},{120,-80},{120,-94},{140,-94},{140,-90}}, color={0,0,255}));
    connect(star8.pin_n, ground.p) annotation (Line(points={{140,-70},{140,-66},{128,-66},{128,-32},{2,-32},{2,-36},{-28,-36},{-28,-38},{-76,-38},{-76,-40},{-80,-40}}, color={0,0,255}));
    connect(lValue.y, varL.L[1]) annotation (Line(points={{41,-130},{70,-130},{70,-114},{88.67,-114},{88.67,-118}}, color={0,0,127}));
    connect(lValue.y, varL.L[2]) annotation (Line(points={{41,-130},{70,-130},{70,-114},{90,-114},{90,-118}}, color={0,0,127}));
    connect(lValue.y, varL.L[3]) annotation (Line(points={{41,-130},{70,-130},{70,-114},{91.33,-114},{91.33,-118}}, color={0,0,127}));
    connect(source.plug_p, varL.plug_p) annotation (Line(points={{-80,60},{-74,60},{-74,-2},{76,-2},{76,-130},{80,-130}}, color={0,0,255}));
    connect(varL.plug_n, star9.plug_p) annotation (Line(points={{100,-130},{120,-130},{120,-144},{140,-144},{140,-140}}, color={0,0,255}));
    connect(star9.pin_n, ground.p) annotation (Line(points={{140,-120},{140,-100},{12,-100},{12,-78},{0,-78},{0,-66},{-76,-66},{-76,-40},{-80,-40}}, color={0,0,255}));
    connect(switchControl.y, intermediate.control[1]) annotation (Line(points={{-79,-90},{-72,-90},{-72,-74},{-61.33,-74},{-61.33,-78}}, color={255,0,255}));
    connect(switchControl.y, intermediate.control[2]) annotation (Line(points={{-79,-90},{-72,-90},{-72,-74},{-60,-74},{-60,-78}}, color={255,0,255}));
    connect(switchControl.y, intermediate.control[3]) annotation (Line(points={{-79,-90},{-72,-90},{-72,-74},{-58.67,-74},{-58.67,-78}}, color={255,0,255}));
    connect(source.plug_p, intermediate.plug_p1) annotation (Line(points={{-80,60},{-74,60},{-74,-2},{-78,-2},{-78,-86},{-70,-86}}, color={0,0,255}));
    connect(star10.plug_p, intermediate.plug_p2) annotation (Line(points={{0,-100},{0,-104},{-74,-104},{-74,-90},{-70,-90}}, color={0,0,255}));
    connect(intermediate.plug_n1, R_i1.plug_p) annotation (Line(points={{-50,-86},{-44,-86},{-44,-80},{-40,-80}}, color={0,0,255}));
    connect(intermediate.plug_n2, R_i2.plug_p) annotation (Line(points={{-50,-90},{-44,-90},{-44,-120},{-40,-120}}, color={0,0,255}));
    connect(R_i1.plug_n, star10.plug_p) annotation (Line(points={{-20,-80},{-12,-80},{-12,-104},{0,-104},{0,-100}}, color={0,0,255}));
    connect(R_i2.plug_n, star10.plug_p) annotation (Line(points={{-20,-120},{-10,-120},{-10,-104},{0,-104},{0,-100}}, color={0,0,255}));
    connect(star10.pin_n, ground.p) annotation (Line(points={{0,-80},{0,-66},{-76,-66},{-76,-40},{-80,-40}}, color={0,0,255}));
    connect(constantVoltage.plug_p, R_cv.plug_p) annotation (Line(points={{-90,-150},{-90,-146},{-74,-146},{-74,-190},{-70,-190}}, color={0,0,255}));
    connect(R_cv.plug_n, star11.plug_p) annotation (Line(points={{-50,-190},{-30,-190},{-30,-180}}, color={0,0,255}));
    connect(constantVoltage.plug_n, star11.plug_p) annotation (Line(points={{-90,-170},{-90,-174},{-60,-174},{-60,-178},{-42,-178},{-42,-182},{-30,-182},{-30,-180}}, color={0,0,255}));
    connect(constantVoltage.plug_p, idle.plug_p) annotation (Line(points={{-90,-150},{-90,-146},{-60,-146},{-60,-150}}, color={0,0,255}));
    connect(idle.plug_n, star11.plug_p) annotation (Line(points={{-60,-170},{-60,-178},{-42,-178},{-42,-182},{-30,-182},{-30,-180}}, color={0,0,255}));
    connect(star11.pin_n, ground.p) annotation (Line(points={{-30,-160},{-30,-140},{-76,-140},{-76,-40},{-80,-40}}, color={0,0,255}));
    connect(constantCurrent.plug_p, R_cc.plug_p) annotation (Line(points={{0,-150},{0,-146},{30,-146},{30,-150}}, color={0,0,255}));
    connect(R_cc.plug_n, star12.plug_p) annotation (Line(points={{30,-170},{30,-180},{50,-180},{50,-214},{120,-214},{120,-210}}, color={0,0,255}));
    connect(constantCurrent.plug_n, star12.plug_p) annotation (Line(points={{0,-170},{0,-180},{50,-180},{50,-214},{120,-214},{120,-210}}, color={0,0,255}));
    connect(cosineCurrent.plug_p, R_cosc.plug_p) annotation (Line(points={{0,-190},{0,-186},{30,-186},{30,-190}}, color={0,0,255}));
    connect(R_cosc.plug_n, star12.plug_p) annotation (Line(points={{30,-210},{30,-214},{120,-214},{120,-210}}, color={0,0,255}));
    connect(cosineCurrent.plug_n, star12.plug_p) annotation (Line(points={{0,-210},{0,-214},{120,-214},{120,-210}}, color={0,0,255}));
    connect(sineCurrent.plug_p, R_sc.plug_p) annotation (Line(points={{0,-240},{0,-244},{30,-244},{30,-240}}, color={0,0,255}));
    connect(R_sc.plug_n, star12.plug_p) annotation (Line(points={{30,-220},{30,-214},{120,-214},{120,-210}}, color={0,0,255}));
    connect(sineCurrent.plug_n, star12.plug_p) annotation (Line(points={{0,-220},{0,-214},{120,-214},{120,-210}}, color={0,0,255}));
    connect(star12.pin_n, ground.p) annotation (Line(points={{120,-190},{120,-150},{50,-150},{50,-144},{-30,-144},{-30,-140},{-76,-140},{-76,-40},{-80,-40}}, color={0,0,255}));
    connect(source6.plug_p, R_6.plug_p) annotation (Line(points={{110,90},{110,94},{126,94},{126,80},{130,80}}, color={0,0,255}));
    connect(R_6.plug_n, split.plug_p) annotation (Line(points={{150,80},{160,80}}, color={0,0,255}));
    connect(source6.plug_n, starM6.plug_p) annotation (Line(points={{110,70},{110,60}}, color={0,0,255}));
    connect(starM6.pin_n, ground.p) annotation (Line(points={{110,40},{110,-32},{2,-32},{2,-36},{-28,-36},{-28,-38},{-76,-38},{-76,-40},{-80,-40}}, color={0,0,255}));
    connect(split.plugs_n[1], starM3.plug_p) annotation (Line(points={{180,80.5},{184,80.5},{184,64},{180,64},{180,60}}, color={0,0,255}));
    connect(starM3.pin_n, ground.p) annotation (Line(points={{180,40},{180,36},{110,36},{110,-32},{2,-32},{2,-36},{-28,-36},{-28,-38},{-76,-38},{-76,-40},{-80,-40}}, color={0,0,255}));
    connect(split.plugs_n[2], plugToPin.plug_n) annotation (Line(points={{180,79.5},{192,79.5},{192,32},{170,32},{170,22}}, color={0,0,255}));
    connect(plugToPin.pin_n, R_pin.p) annotation (Line(points={{170,18},{170,-6},{180,-6},{180,-10}}, color={0,0,255}));
    connect(R_pin.n, ground.p) annotation (Line(points={{180,-30},{180,-34},{138,-34},{138,-32},{2,-32},{2,-36},{-28,-36},{-28,-38},{-76,-38},{-76,-40},{-80,-40}}, color={0,0,255}));
    annotation (Diagram(coordinateSystem(extent={{-120,-260},{200,120}})),
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
