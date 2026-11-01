within ModelicaTest.Electrical.Analog;
model AnalogSources "Test of the voltage and current sources of Modelica.Electrical.Analog.Sources"
  extends Modelica.Icons.Example;

  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,-280})));
  Modelica.Blocks.Sources.Ramp amplitudeV(height=1, duration=1, offset=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-120,-150})));
  Modelica.Blocks.Sources.Ramp amplitudeI(height=1, duration=1, offset=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-120,-190})));
  Modelica.Blocks.Sources.Ramp frequency(height=4, duration=1, offset=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-120,-220})));
  Modelica.Electrical.Analog.Sources.CosineVoltage cosineVoltage(V=2, f=2)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-80,100})));
  Modelica.Electrical.Analog.Basic.Resistor R_cosineVoltage(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,100})));
  Modelica.Electrical.Analog.Sources.ExponentialsVoltage exponentialsVoltage(vMax=2, riseTime=0.3, riseTimeConst=0.05, fallTimeConst=0.1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-80,60})));
  Modelica.Electrical.Analog.Basic.Resistor R_exponentialsVoltage(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,60})));
  Modelica.Electrical.Analog.Sources.ExpSineVoltage expSineVoltage(V=2, f=4, damping=2)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-80,30})));
  Modelica.Electrical.Analog.Basic.Resistor R_expSineVoltage(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,30})));
  Modelica.Electrical.Analog.Sources.LightningImpulseVoltage lightningImpulseVoltage(V=2, T1=0.02, T2=0.2, startTime=0.1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-80,0})));
  Modelica.Electrical.Analog.Basic.Resistor R_lightningImpulseVoltage(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,0})));
  Modelica.Electrical.Analog.Sources.PulseVoltage pulseVoltage(V=2, width=30, period=0.2)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-80,-40})));
  Modelica.Electrical.Analog.Basic.Resistor R_pulseVoltage(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-40})));
  Modelica.Electrical.Analog.Sources.SawToothVoltage sawToothVoltage(V=2, period=0.25)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-80,-80})));
  Modelica.Electrical.Analog.Basic.Resistor R_sawToothVoltage(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-80})));
  Modelica.Electrical.Analog.Sources.TableVoltage tableVoltage(table=[0, 0; 0.5, 1; 1, -1])
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-80,-110})));
  Modelica.Electrical.Analog.Basic.Resistor R_tableVoltage(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-110})));
  Modelica.Electrical.Analog.Sources.TrapezoidVoltage trapezoidVoltage(V=2, rising=0.1, width=0.2, falling=0.1, period=0.5)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-80,-140})));
  Modelica.Electrical.Analog.Basic.Resistor R_trapezoidVoltage(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-140})));
  Modelica.Electrical.Analog.Sources.CosineCurrent cosineCurrent(I=2, f=2)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-80,-180})));
  Modelica.Electrical.Analog.Basic.Resistor R_cosineCurrent(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-180})));
  Modelica.Electrical.Analog.Sources.ExponentialsCurrent exponentialsCurrent(iMax=2, riseTime=0.3, riseTimeConst=0.05, fallTimeConst=0.1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,100})));
  Modelica.Electrical.Analog.Basic.Resistor R_exponentialsCurrent(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={40,100})));
  Modelica.Electrical.Analog.Sources.ExpSineCurrent expSineCurrent(I=2, f=4, damping=2)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,60})));
  Modelica.Electrical.Analog.Basic.Resistor R_expSineCurrent(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={40,60})));
  Modelica.Electrical.Analog.Sources.LightningImpulseCurrent lightningImpulseCurrent(I=2, T1=0.02, T2=0.2, startTime=0.1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,30})));
  Modelica.Electrical.Analog.Basic.Resistor R_lightningImpulseCurrent(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={40,30})));
  Modelica.Electrical.Analog.Sources.PulseCurrent pulseCurrent(I=2, width=30, period=0.2)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,0})));
  Modelica.Electrical.Analog.Basic.Resistor R_pulseCurrent(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={40,-10})));
  Modelica.Electrical.Analog.Sources.SawToothCurrent sawToothCurrent(I=2, period=0.25)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-40})));
  Modelica.Electrical.Analog.Basic.Resistor R_sawToothCurrent(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={40,-40})));
  Modelica.Electrical.Analog.Sources.SineCurrent sineCurrent(I=2, f=2)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-80})));
  Modelica.Electrical.Analog.Basic.Resistor R_sineCurrent(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={40,-80})));
  Modelica.Electrical.Analog.Sources.StepCurrent stepCurrent(I=2, startTime=0.3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-110})));
  Modelica.Electrical.Analog.Basic.Resistor R_stepCurrent(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={40,-110})));
  Modelica.Electrical.Analog.Sources.TableCurrent tableCurrent(table=[0, 0; 0.5, 1; 1, -1])
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-140})));
  Modelica.Electrical.Analog.Basic.Resistor R_tableCurrent(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={40,-150})));
  Modelica.Electrical.Analog.Sources.TrapezoidCurrent trapezoidCurrent(I=2, rising=0.1, width=0.2, falling=0.1, period=0.5)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-180})));
  Modelica.Electrical.Analog.Basic.Resistor R_trapezoidCurrent(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={40,-180})));
  Modelica.Electrical.Analog.Sources.SineVoltageVariableFrequencyAndAmplitude sineVoltageVF
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={90,100})));
  Modelica.Electrical.Analog.Basic.Resistor R_sineVoltageVF(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={140,100})));
  Modelica.Electrical.Analog.Sources.CosineVoltageVariableFrequencyAndAmplitude cosineVoltageVF
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={90,60})));
  Modelica.Electrical.Analog.Basic.Resistor R_cosineVoltageVF(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={140,70})));
  Modelica.Electrical.Analog.Sources.SineCurrentVariableFrequencyAndAmplitude sineCurrentVF
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={90,30})));
  Modelica.Electrical.Analog.Basic.Resistor R_sineCurrentVF(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={140,30})));
  Modelica.Electrical.Analog.Sources.CosineCurrentVariableFrequencyAndAmplitude cosineCurrentVF
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={90,0})));
  Modelica.Electrical.Analog.Basic.Resistor R_cosineCurrentVF(R=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={140,0})));
  Modelica.Electrical.Analog.Sources.SupplyVoltage supplyVoltage(Vps=15, Vns=-10)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={90,-70})));
  Modelica.Electrical.Analog.Basic.Resistor R_supplyP(R=10)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={120,-50})));
  Modelica.Electrical.Analog.Basic.Resistor R_supplyN(R=5)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={120,-80})));
  Modelica.Electrical.Analog.Sources.DCPowerSupply dcPowerSupply(V0=60, I0=50, P0=1200)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={90,-140})));
  Modelica.Blocks.Sources.Ramp loadResistance(height=-9.5, duration=1, offset=10)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={140,-180})));
  Modelica.Electrical.Analog.Basic.VariableResistor variableLoad
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={150,-140})));
equation
  connect(cosineVoltage.p, R_cosineVoltage.p) annotation (Line(points={{-80,110},{-80,114},{-40,114},{-40,110}}, color={0,0,255}));
  connect(R_cosineVoltage.n, cosineVoltage.n) annotation (Line(points={{-40,90},{-40,86},{-80,86},{-80,90}}, color={0,0,255}));
  connect(cosineVoltage.n, ground.p) annotation (Line(points={{-80,90},{-80,86},{52,86},{52,-192},{40,-192},{40,-194},{30,-194},{30,-270}}, color={0,0,255}));
  connect(exponentialsVoltage.p, R_exponentialsVoltage.p) annotation (Line(points={{-80,70},{-80,74},{-40,74},{-40,70}}, color={0,0,255}));
  connect(R_exponentialsVoltage.n, exponentialsVoltage.n) annotation (Line(points={{-40,50},{-40,46},{-80,46},{-80,50}}, color={0,0,255}));
  connect(exponentialsVoltage.n, ground.p) annotation (Line(points={{-80,50},{-80,46},{52,46},{52,-192},{40,-192},{40,-194},{30,-194},{30,-270}}, color={0,0,255}));
  connect(expSineVoltage.p, R_expSineVoltage.p) annotation (Line(points={{-80,40},{-80,44},{-40,44},{-40,40}}, color={0,0,255}));
  connect(R_expSineVoltage.n, expSineVoltage.n) annotation (Line(points={{-40,20},{-40,16},{-80,16},{-80,20}}, color={0,0,255}));
  connect(expSineVoltage.n, ground.p) annotation (Line(points={{-80,20},{-80,16},{52,16},{52,-192},{40,-192},{40,-194},{30,-194},{30,-270}}, color={0,0,255}));
  connect(lightningImpulseVoltage.p, R_lightningImpulseVoltage.p) annotation (Line(points={{-80,10},{-80,14},{-40,14},{-40,10}}, color={0,0,255}));
  connect(R_lightningImpulseVoltage.n, lightningImpulseVoltage.n) annotation (Line(points={{-40,-10},{-40,-14},{-80,-14},{-80,-10}}, color={0,0,255}));
  connect(lightningImpulseVoltage.n, ground.p) annotation (Line(points={{-80,-10},{-80,-14},{0,-14},{0,-24},{52,-24},{52,-192},{40,-192},{40,-194},{30,-194},{30,-270}}, color={0,0,255}));
  connect(pulseVoltage.p, R_pulseVoltage.p) annotation (Line(points={{-80,-30},{-80,-26},{-40,-26},{-40,-30}}, color={0,0,255}));
  connect(R_pulseVoltage.n, pulseVoltage.n) annotation (Line(points={{-40,-50},{-40,-54},{-80,-54},{-80,-50}}, color={0,0,255}));
  connect(pulseVoltage.n, ground.p) annotation (Line(points={{-80,-50},{-80,-54},{52,-54},{52,-192},{40,-192},{40,-194},{30,-194},{30,-270}}, color={0,0,255}));
  connect(sawToothVoltage.p, R_sawToothVoltage.p) annotation (Line(points={{-80,-70},{-80,-66},{-40,-66},{-40,-70}}, color={0,0,255}));
  connect(R_sawToothVoltage.n, sawToothVoltage.n) annotation (Line(points={{-40,-90},{-40,-94},{-80,-94},{-80,-90}}, color={0,0,255}));
  connect(sawToothVoltage.n, ground.p) annotation (Line(points={{-80,-90},{-80,-94},{52,-94},{52,-192},{40,-192},{40,-194},{30,-194},{30,-270}}, color={0,0,255}));
  connect(tableVoltage.p, R_tableVoltage.p) annotation (Line(points={{-80,-100},{-80,-96},{-40,-96},{-40,-100}}, color={0,0,255}));
  connect(R_tableVoltage.n, tableVoltage.n) annotation (Line(points={{-40,-120},{-40,-124},{-80,-124},{-80,-120}}, color={0,0,255}));
  connect(tableVoltage.n, ground.p) annotation (Line(points={{-80,-120},{-80,-124},{52,-124},{52,-192},{40,-192},{40,-194},{30,-194},{30,-270}}, color={0,0,255}));
  connect(trapezoidVoltage.p, R_trapezoidVoltage.p) annotation (Line(points={{-80,-130},{-80,-126},{-40,-126},{-40,-130}}, color={0,0,255}));
  connect(R_trapezoidVoltage.n, trapezoidVoltage.n) annotation (Line(points={{-40,-150},{-40,-154},{-80,-154},{-80,-150}}, color={0,0,255}));
  connect(trapezoidVoltage.n, ground.p) annotation (Line(points={{-80,-150},{-80,-154},{0,-154},{0,-164},{28,-164},{28,-194},{30,-194},{30,-270}}, color={0,0,255}));
  connect(cosineCurrent.p, R_cosineCurrent.p) annotation (Line(points={{-80,-170},{-80,-166},{-40,-166},{-40,-170}}, color={0,0,255}));
  connect(R_cosineCurrent.n, cosineCurrent.n) annotation (Line(points={{-40,-190},{-40,-194},{-80,-194},{-80,-190}}, color={0,0,255}));
  connect(cosineCurrent.n, ground.p) annotation (Line(points={{-80,-190},{-80,-194},{30,-194},{30,-270}}, color={0,0,255}));
  connect(exponentialsCurrent.p, R_exponentialsCurrent.p) annotation (Line(points={{0,110},{0,114},{40,114},{40,110}}, color={0,0,255}));
  connect(R_exponentialsCurrent.n, exponentialsCurrent.n) annotation (Line(points={{40,90},{40,86},{0,86},{0,90}}, color={0,0,255}));
  connect(exponentialsCurrent.n, ground.p) annotation (Line(points={{0,90},{0,86},{52,86},{52,-192},{40,-192},{40,-194},{30,-194},{30,-270}}, color={0,0,255}));
  connect(expSineCurrent.p, R_expSineCurrent.p) annotation (Line(points={{0,70},{0,74},{40,74},{40,70}}, color={0,0,255}));
  connect(R_expSineCurrent.n, expSineCurrent.n) annotation (Line(points={{40,50},{40,46},{0,46},{0,50}}, color={0,0,255}));
  connect(expSineCurrent.n, ground.p) annotation (Line(points={{0,50},{0,46},{52,46},{52,-192},{40,-192},{40,-194},{30,-194},{30,-270}}, color={0,0,255}));
  connect(lightningImpulseCurrent.p, R_lightningImpulseCurrent.p) annotation (Line(points={{0,40},{0,44},{40,44},{40,40}}, color={0,0,255}));
  connect(R_lightningImpulseCurrent.n, lightningImpulseCurrent.n) annotation (Line(points={{40,20},{40,16},{0,16},{0,20}}, color={0,0,255}));
  connect(lightningImpulseCurrent.n, ground.p) annotation (Line(points={{0,20},{0,16},{52,16},{52,-192},{40,-192},{40,-194},{30,-194},{30,-270}}, color={0,0,255}));
  connect(pulseCurrent.p, R_pulseCurrent.p) annotation (Line(points={{0,10},{0,14},{40,14},{40,0}}, color={0,0,255}));
  connect(R_pulseCurrent.n, pulseCurrent.n) annotation (Line(points={{40,-20},{40,-24},{0,-24},{0,-10}}, color={0,0,255}));
  connect(pulseCurrent.n, ground.p) annotation (Line(points={{0,-10},{0,-24},{52,-24},{52,-192},{40,-192},{40,-194},{30,-194},{30,-270}}, color={0,0,255}));
  connect(sawToothCurrent.p, R_sawToothCurrent.p) annotation (Line(points={{0,-30},{0,-26},{40,-26},{40,-30}}, color={0,0,255}));
  connect(R_sawToothCurrent.n, sawToothCurrent.n) annotation (Line(points={{40,-50},{40,-54},{0,-54},{0,-50}}, color={0,0,255}));
  connect(sawToothCurrent.n, ground.p) annotation (Line(points={{0,-50},{0,-54},{52,-54},{52,-192},{40,-192},{40,-194},{30,-194},{30,-270}}, color={0,0,255}));
  connect(sineCurrent.p, R_sineCurrent.p) annotation (Line(points={{0,-70},{0,-66},{40,-66},{40,-70}}, color={0,0,255}));
  connect(R_sineCurrent.n, sineCurrent.n) annotation (Line(points={{40,-90},{40,-94},{0,-94},{0,-90}}, color={0,0,255}));
  connect(sineCurrent.n, ground.p) annotation (Line(points={{0,-90},{0,-94},{52,-94},{52,-192},{40,-192},{40,-194},{30,-194},{30,-270}}, color={0,0,255}));
  connect(stepCurrent.p, R_stepCurrent.p) annotation (Line(points={{0,-100},{0,-96},{40,-96},{40,-100}}, color={0,0,255}));
  connect(R_stepCurrent.n, stepCurrent.n) annotation (Line(points={{40,-120},{40,-124},{0,-124},{0,-120}}, color={0,0,255}));
  connect(stepCurrent.n, ground.p) annotation (Line(points={{0,-120},{0,-124},{52,-124},{52,-192},{40,-192},{40,-194},{30,-194},{30,-270}}, color={0,0,255}));
  connect(tableCurrent.p, R_tableCurrent.p) annotation (Line(points={{0,-130},{0,-126},{40,-126},{40,-140}}, color={0,0,255}));
  connect(R_tableCurrent.n, tableCurrent.n) annotation (Line(points={{40,-160},{40,-164},{0,-164},{0,-150}}, color={0,0,255}));
  connect(tableCurrent.n, ground.p) annotation (Line(points={{0,-150},{0,-164},{28,-164},{28,-194},{30,-194},{30,-270}}, color={0,0,255}));
  connect(trapezoidCurrent.p, R_trapezoidCurrent.p) annotation (Line(points={{0,-170},{0,-166},{40,-166},{40,-170}}, color={0,0,255}));
  connect(R_trapezoidCurrent.n, trapezoidCurrent.n) annotation (Line(points={{40,-190},{40,-194},{0,-194},{0,-190}}, color={0,0,255}));
  connect(trapezoidCurrent.n, ground.p) annotation (Line(points={{0,-190},{0,-194},{30,-194},{30,-270}}, color={0,0,255}));
  connect(sineVoltageVF.p, R_sineVoltageVF.p) annotation (Line(points={{80,100},{76,100},{76,112},{126,112},{126,100},{130,100}}, color={0,0,255}));
  connect(R_sineVoltageVF.n, sineVoltageVF.n) annotation (Line(points={{150,100},{154,100},{154,88},{104,88},{104,100},{100,100}}, color={0,0,255}));
  connect(sineVoltageVF.n, ground.p) annotation (Line(points={{100,100},{104,100},{104,48},{52,48},{52,-192},{40,-192},{40,-194},{30,-194},{30,-270}}, color={0,0,255}));
  connect(amplitudeV.y, sineVoltageVF.V) annotation (Line(points={{-109,-150},{-102,-150},{-102,76},{74,76},{74,116},{96,116},{96,112}}, color={0,0,127}));
  connect(frequency.y, sineVoltageVF.f) annotation (Line(points={{-109,-220},{-92,-220},{-92,-62},{74,-62},{74,74},{72,74},{72,118},{84,118},{84,112}}, color={0,0,127}));
  connect(cosineVoltageVF.p, R_cosineVoltageVF.p) annotation (Line(points={{80,60},{76,60},{76,72},{126,72},{126,70},{130,70}}, color={0,0,255}));
  connect(R_cosineVoltageVF.n, cosineVoltageVF.n) annotation (Line(points={{150,70},{154,70},{154,58},{104,58},{104,60},{100,60}}, color={0,0,255}));
  connect(cosineVoltageVF.n, ground.p) annotation (Line(points={{100,60},{104,60},{104,48},{52,48},{52,-192},{40,-192},{40,-194},{30,-194},{30,-270}}, color={0,0,255}));
  connect(amplitudeV.y, cosineVoltageVF.V) annotation (Line(points={{-109,-150},{-102,-150},{-102,76},{96,76},{96,72}}, color={0,0,127}));
  connect(frequency.y, cosineVoltageVF.f) annotation (Line(points={{-109,-220},{-92,-220},{-92,-62},{74,-62},{74,74},{84,74},{84,72}}, color={0,0,127}));
  connect(sineCurrentVF.p, R_sineCurrentVF.p) annotation (Line(points={{80,30},{76,30},{76,42},{126,42},{126,30},{130,30}}, color={0,0,255}));
  connect(R_sineCurrentVF.n, sineCurrentVF.n) annotation (Line(points={{150,30},{154,30},{154,18},{104,18},{104,30},{100,30}}, color={0,0,255}));
  connect(sineCurrentVF.n, ground.p) annotation (Line(points={{100,30},{104,30},{104,14},{52,14},{52,-192},{40,-192},{40,-194},{30,-194},{30,-270}}, color={0,0,255}));
  connect(amplitudeI.y, sineCurrentVF.I) annotation (Line(points={{-109,-190},{-100,-190},{-100,-60},{70,-60},{70,46},{96,46},{96,42}}, color={0,0,127}));
  connect(frequency.y, sineCurrentVF.f) annotation (Line(points={{-109,-220},{-92,-220},{-92,-62},{74,-62},{74,44},{84,44},{84,42}}, color={0,0,127}));
  connect(cosineCurrentVF.p, R_cosineCurrentVF.p) annotation (Line(points={{80,0},{76,0},{76,12},{126,12},{126,0},{130,0}}, color={0,0,255}));
  connect(R_cosineCurrentVF.n, cosineCurrentVF.n) annotation (Line(points={{150,0},{154,0},{154,18},{104,18},{104,0},{100,0}}, color={0,0,255}));
  connect(cosineCurrentVF.n, ground.p) annotation (Line(points={{100,0},{104,0},{104,-36},{102,-36},{102,-56},{52,-56},{52,-192},{40,-192},{40,-194},{30,-194},{30,-270}}, color={0,0,255}));
  connect(amplitudeI.y, cosineCurrentVF.I) annotation (Line(points={{-109,-190},{-100,-190},{-100,-60},{70,-60},{70,16},{96,16},{96,12}}, color={0,0,127}));
  connect(frequency.y, cosineCurrentVF.f) annotation (Line(points={{-109,-220},{-92,-220},{-92,-62},{74,-62},{74,18},{84,18},{84,12}}, color={0,0,127}));
  connect(supplyVoltage.pin_p, R_supplyP.p) annotation (Line(points={{80,-70},{76,-70},{76,-58},{108,-58},{108,-64},{120,-64},{120,-60}}, color={0,0,255}));
  connect(R_supplyP.n, supplyVoltage.ground) annotation (Line(points={{120,-40},{120,-36},{102,-36},{102,-70},{90,-70}}, color={0,0,255}));
  connect(supplyVoltage.pin_n, R_supplyN.n) annotation (Line(points={{100,-70},{108,-70},{108,-68},{134,-68},{134,-80},{130,-80}}, color={0,0,255}));
  connect(R_supplyN.p, supplyVoltage.ground) annotation (Line(points={{110,-80},{102,-80},{102,-70},{90,-70}}, color={0,0,255}));
  connect(supplyVoltage.ground, ground.p) annotation (Line(points={{90,-70},{90,-90},{52,-90},{52,-192},{40,-192},{40,-194},{30,-194},{30,-270}}, color={0,0,255}));
  connect(dcPowerSupply.p, variableLoad.p) annotation (Line(points={{100,-150},{136,-150},{136,-140},{140,-140}}, color={0,0,255}));
  connect(variableLoad.n, dcPowerSupply.n) annotation (Line(points={{160,-140},{164,-140},{164,-152},{76,-152},{76,-150},{80,-150}}, color={0,0,255}));
  connect(dcPowerSupply.n, ground.p) annotation (Line(points={{80,-150},{76,-150},{76,-192},{40,-192},{40,-194},{30,-194},{30,-270}}, color={0,0,255}));
  connect(loadResistance.y, variableLoad.R) annotation (Line(points={{151,-180},{162,-180},{162,-124},{150,-124},{150,-128}}, color={0,0,127}));
  annotation (Diagram(coordinateSystem(extent={{-140,-300},{180,120}})),
    experiment(StopTime=1),
    Documentation(info="<html>
<p>
Every source of
<a href=\"modelica://Modelica.Electrical.Analog.Sources\">Modelica.Electrical.Analog.Sources</a>
that is not used elsewhere drives a 1 &Omega; resistor, whose voltage is compared.
The variable frequency and amplitude sources get ramping amplitude (1 to 2) and frequency
(1 Hz to 5 Hz). SupplyVoltage feeds two resistors to its ground pin. DCPowerSupply feeds a
VariableResistor that ramps from 10 &Omega; to 0.5 &Omega;, so it passes from constant-voltage
to constant-power and constant-current operation.
</p>
</html>"));
end AnalogSources;
