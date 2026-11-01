within ModelicaTest.Electrical.Analog;
model AnalogSources "Test of the voltage and current sources of Modelica.Electrical.Analog.Sources"
  extends Modelica.Icons.Example;

  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-10,-210},{10,-190}})));
  Modelica.Blocks.Sources.Ramp amplitudeV(height=1, duration=1, offset=1)
    annotation (Placement(transformation(extent={{-126.0,-90.0},{-106.0,-70.0}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Blocks.Sources.Ramp amplitudeI(height=1, duration=1, offset=1)
    annotation (Placement(transformation(extent={{-126.0,-120.0},{-106.0,-100.0}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Blocks.Sources.Ramp frequency(height=4, duration=1, offset=1)
    annotation (Placement(transformation(extent={{-126.0,-150.0},{-106.0,-130.0}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Sources.CosineVoltage cosineVoltage(V=2, f=2)
    annotation (Placement(transformation(extent={{-87.5,90.0},{-67.5,110.0}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Basic.Resistor R_cosineVoltage(R=1)
    annotation (Placement(transformation(extent={{-59.77,90.0},{-39.77,110.0}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Sources.ExponentialsVoltage exponentialsVoltage(vMax=2, riseTime=0.3, riseTimeConst=0.05, fallTimeConst=0.1)
    annotation (Placement(transformation(extent={{-87.5,65.0},{-67.5,85.0}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Basic.Resistor R_exponentialsVoltage(R=1)
    annotation (Placement(transformation(extent={{-59.77,65.0},{-39.77,85.0}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Sources.ExpSineVoltage expSineVoltage(V=2, f=4, damping=2)
    annotation (Placement(transformation(extent={{-87.5,40.0},{-67.5,60.0}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Basic.Resistor R_expSineVoltage(R=1)
    annotation (Placement(transformation(extent={{-59.77,40.0},{-39.77,60.0}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Sources.LightningImpulseVoltage lightningImpulseVoltage(V=2, T1=0.02, T2=0.2, startTime=0.1)
    annotation (Placement(transformation(extent={{-87.5,15.0},{-67.5,35.0}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Basic.Resistor R_lightningImpulseVoltage(R=1)
    annotation (Placement(transformation(extent={{-59.77,15.0},{-39.77,35.0}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Sources.PulseVoltage pulseVoltage(V=2, width=30, period=0.2)
    annotation (Placement(transformation(extent={{-87.5,-10.0},{-67.5,10.0}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Basic.Resistor R_pulseVoltage(R=1)
    annotation (Placement(transformation(extent={{-59.77,-10.0},{-39.77,10.0}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Sources.SawToothVoltage sawToothVoltage(V=2, period=0.25)
    annotation (Placement(transformation(extent={{-87.5,-35.0},{-67.5,-15.0}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Basic.Resistor R_sawToothVoltage(R=1)
    annotation (Placement(transformation(extent={{-59.77,-35.0},{-39.77,-15.0}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Sources.TableVoltage tableVoltage(table=[0, 0; 0.5, 1; 1, -1])
    annotation (Placement(transformation(extent={{-87.5,-60.0},{-67.5,-40.0}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Basic.Resistor R_tableVoltage(R=1)
    annotation (Placement(transformation(extent={{-59.77,-60.0},{-39.77,-40.0}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Sources.TrapezoidVoltage trapezoidVoltage(V=2, rising=0.1, width=0.2, falling=0.1, period=0.5)
    annotation (Placement(transformation(extent={{-87.5,-85.0},{-67.5,-65.0}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Basic.Resistor R_trapezoidVoltage(R=1)
    annotation (Placement(transformation(extent={{-59.77,-85.0},{-39.77,-65.0}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Sources.CosineCurrent cosineCurrent(I=2, f=2)
    annotation (Placement(transformation(extent={{-87.5,-110.0},{-67.5,-90.0}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Basic.Resistor R_cosineCurrent(R=1)
    annotation (Placement(transformation(extent={{-59.77,-110.0},{-39.77,-90.0}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Sources.ExponentialsCurrent exponentialsCurrent(iMax=2, riseTime=0.3, riseTimeConst=0.05, fallTimeConst=0.1)
    annotation (Placement(transformation(extent={{-30,90},{-10,110}})));
  Modelica.Electrical.Analog.Basic.Resistor R_exponentialsCurrent(R=1)
    annotation (Placement(transformation(extent={{-0.1,89.73},{19.9,109.73}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Sources.ExpSineCurrent expSineCurrent(I=2, f=4, damping=2)
    annotation (Placement(transformation(extent={{-30,65},{-10,85}})));
  Modelica.Electrical.Analog.Basic.Resistor R_expSineCurrent(R=1)
    annotation (Placement(transformation(extent={{-0.1,64.73},{19.9,84.73}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Sources.LightningImpulseCurrent lightningImpulseCurrent(I=2, T1=0.02, T2=0.2, startTime=0.1)
    annotation (Placement(transformation(extent={{-30,40},{-10,60}})));
  Modelica.Electrical.Analog.Basic.Resistor R_lightningImpulseCurrent(R=1)
    annotation (Placement(transformation(extent={{-0.1,39.73},{19.9,59.73}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Sources.PulseCurrent pulseCurrent(I=2, width=30, period=0.2)
    annotation (Placement(transformation(extent={{-30,15},{-10,35}})));
  Modelica.Electrical.Analog.Basic.Resistor R_pulseCurrent(R=1)
    annotation (Placement(transformation(extent={{-0.1,14.73},{19.9,34.73}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Sources.SawToothCurrent sawToothCurrent(I=2, period=0.25)
    annotation (Placement(transformation(extent={{-30,-10},{-10,10}})));
  Modelica.Electrical.Analog.Basic.Resistor R_sawToothCurrent(R=1)
    annotation (Placement(transformation(extent={{-0.1,-10.27},{19.9,9.73}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Sources.SineCurrent sineCurrent(I=2, f=2)
    annotation (Placement(transformation(extent={{-30,-35},{-10,-15}})));
  Modelica.Electrical.Analog.Basic.Resistor R_sineCurrent(R=1)
    annotation (Placement(transformation(extent={{-0.1,-35.27},{19.9,-15.27}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Sources.StepCurrent stepCurrent(I=2, startTime=0.3)
    annotation (Placement(transformation(extent={{-30,-60},{-10,-40}})));
  Modelica.Electrical.Analog.Basic.Resistor R_stepCurrent(R=1)
    annotation (Placement(transformation(extent={{-0.1,-60.27},{19.9,-40.27}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Sources.TableCurrent tableCurrent(table=[0, 0; 0.5, 1; 1, -1])
    annotation (Placement(transformation(extent={{-30,-85},{-10,-65}})));
  Modelica.Electrical.Analog.Basic.Resistor R_tableCurrent(R=1)
    annotation (Placement(transformation(extent={{-0.1,-85.27},{19.9,-65.27}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Sources.TrapezoidCurrent trapezoidCurrent(I=2, rising=0.1, width=0.2, falling=0.1, period=0.5)
    annotation (Placement(transformation(extent={{-30,-110},{-10,-90}})));
  Modelica.Electrical.Analog.Basic.Resistor R_trapezoidCurrent(R=1)
    annotation (Placement(transformation(extent={{-0.1,-110.27},{19.9,-90.27}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Sources.SineVoltageVariableFrequencyAndAmplitude sineVoltageVF
    annotation (Placement(transformation(extent={{50,90},{70,110}})));
  Modelica.Electrical.Analog.Basic.Resistor R_sineVoltageVF(R=1)
    annotation (Placement(transformation(extent={{84.43,90.27},{104.43,110.27}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Sources.CosineVoltageVariableFrequencyAndAmplitude cosineVoltageVF
    annotation (Placement(transformation(extent={{50,65},{70,85}})));
  Modelica.Electrical.Analog.Basic.Resistor R_cosineVoltageVF(R=1)
    annotation (Placement(transformation(extent={{84.43,65.27},{104.43,85.27}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Sources.SineCurrentVariableFrequencyAndAmplitude sineCurrentVF
    annotation (Placement(transformation(extent={{50,40},{70,60}})));
  Modelica.Electrical.Analog.Basic.Resistor R_sineCurrentVF(R=1)
    annotation (Placement(transformation(extent={{84.43,40.27},{104.43,60.27}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Sources.CosineCurrentVariableFrequencyAndAmplitude cosineCurrentVF
    annotation (Placement(transformation(extent={{50,15},{70,35}})));
  Modelica.Electrical.Analog.Basic.Resistor R_cosineCurrentVF(R=1)
    annotation (Placement(transformation(extent={{84.43,15.27},{104.43,35.27}},rotation = 0.0,origin = {0.0,0.0})));
  Modelica.Electrical.Analog.Sources.SupplyVoltage supplyVoltage(Vps=15, Vns=-10)
    annotation (Placement(transformation(extent={{50,-30},{70,-10}})));
  Modelica.Electrical.Analog.Basic.Resistor R_supplyP(R=10)
    annotation (Placement(transformation(extent={{65,-20},{85,0}})));
  Modelica.Electrical.Analog.Basic.Resistor R_supplyN(R=5)
    annotation (Placement(transformation(extent={{65,-40},{85,-20}})));
  Modelica.Electrical.Analog.Sources.DCPowerSupply dcPowerSupply(V0=60, I0=50, P0=1200)
    annotation (Placement(transformation(extent={{50,-80},{70,-60}})));
  Modelica.Blocks.Sources.Ramp loadResistance(height=-9.5, duration=1, offset=10)
    annotation (Placement(transformation(extent={{80,-110},{100,-90}})));
  Modelica.Electrical.Analog.Basic.VariableResistor variableLoad
    annotation (Placement(transformation(extent={{90.76,-80.31},{110.76,-60.31}},rotation = 0.0,origin = {0.0,0.0})));
equation
  connect(cosineVoltage.p, R_cosineVoltage.p) annotation (Line(points={{-66.5,100},{-59.77,100}}, color={0,0,127}));
  connect(R_cosineVoltage.n, cosineVoltage.n) annotation (Line(points={{-39.77,100},{-89.5,100}}, color={0,0,127}));
  connect(cosineVoltage.n, ground.p) annotation (Line(points={{-67.5,100},{-30,100},{-30,-200},{-12,-200}}, color={0,0,127}));
  connect(exponentialsVoltage.p, R_exponentialsVoltage.p) annotation (Line(points={{-66.5,75},{-59.77,75}}, color={0,0,127}));
  connect(R_exponentialsVoltage.n, exponentialsVoltage.n) annotation (Line(points={{-39.77,75},{-89.5,75}}, color={0,0,127}));
  connect(exponentialsVoltage.n, ground.p) annotation (Line(points={{-67.5,75},{-30,75},{-30,-200},{-12,-200}}, color={0,0,127}));
  connect(expSineVoltage.p, R_expSineVoltage.p) annotation (Line(points={{-66.5,50},{-59.77,50}}, color={0,0,127}));
  connect(R_expSineVoltage.n, expSineVoltage.n) annotation (Line(points={{-39.77,50},{-89.5,50}}, color={0,0,127}));
  connect(expSineVoltage.n, ground.p) annotation (Line(points={{-67.5,50},{-30,50},{-30,-200},{-12,-200}}, color={0,0,127}));
  connect(lightningImpulseVoltage.p, R_lightningImpulseVoltage.p) annotation (Line(points={{-66.5,25},{-59.77,25}}, color={0,0,127}));
  connect(R_lightningImpulseVoltage.n, lightningImpulseVoltage.n) annotation (Line(points={{-39.77,25},{-89.5,25}}, color={0,0,127}));
  connect(lightningImpulseVoltage.n, ground.p) annotation (Line(points={{-67.5,25},{-30,25},{-30,-200},{-12,-200}}, color={0,0,127}));
  connect(pulseVoltage.p, R_pulseVoltage.p) annotation (Line(points={{-66.5,0},{-59.77,0}}, color={0,0,127}));
  connect(R_pulseVoltage.n, pulseVoltage.n) annotation (Line(points={{-39.77,0},{-89.5,0}}, color={0,0,127}));
  connect(pulseVoltage.n, ground.p) annotation (Line(points={{-67.5,0},{-30,0},{-30,-200},{-12,-200}}, color={0,0,127}));
  connect(sawToothVoltage.p, R_sawToothVoltage.p) annotation (Line(points={{-66.5,-25},{-59.77,-25}}, color={0,0,127}));
  connect(R_sawToothVoltage.n, sawToothVoltage.n) annotation (Line(points={{-39.77,-25},{-89.5,-25}}, color={0,0,127}));
  connect(sawToothVoltage.n, ground.p) annotation (Line(points={{-67.5,-25},{-30,-25},{-30,-200},{-12,-200}}, color={0,0,127}));
  connect(tableVoltage.p, R_tableVoltage.p) annotation (Line(points={{-66.5,-50},{-59.77,-50}}, color={0,0,127}));
  connect(R_tableVoltage.n, tableVoltage.n) annotation (Line(points={{-39.77,-50},{-89.5,-50}}, color={0,0,127}));
  connect(tableVoltage.n, ground.p) annotation (Line(points={{-67.5,-50},{-30,-50},{-30,-200},{-12,-200}}, color={0,0,127}));
  connect(trapezoidVoltage.p, R_trapezoidVoltage.p) annotation (Line(points={{-66.5,-75},{-59.77,-75}}, color={0,0,127}));
  connect(R_trapezoidVoltage.n, trapezoidVoltage.n) annotation (Line(points={{-39.77,-75},{-89.5,-75}}, color={0,0,127}));
  connect(trapezoidVoltage.n, ground.p) annotation (Line(points={{-67.5,-75},{-30,-75},{-30,-200},{-12,-200}}, color={0,0,127}));
  connect(cosineCurrent.p, R_cosineCurrent.p) annotation (Line(points={{-66.5,-100},{-59.77,-100}}, color={0,0,127}));
  connect(R_cosineCurrent.n, cosineCurrent.n) annotation (Line(points={{-39.77,-100},{-89.5,-100}}, color={0,0,127}));
  connect(cosineCurrent.n, ground.p) annotation (Line(points={{-67.5,-100},{-30,-100},{-30,-200},{-12,-200}}, color={0,0,127}));
  connect(exponentialsCurrent.p, R_exponentialsCurrent.p) annotation (Line(points={{-9,100},{-0.1,100},{-0.1,99.73}}, color={0,0,127}));
  connect(R_exponentialsCurrent.n, exponentialsCurrent.n) annotation (Line(points={{19.9,99.73},{19.9,100},{-32,100}}, color={0,0,127}));
  connect(exponentialsCurrent.n, ground.p) annotation (Line(points={{-9,100},{-16,100},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(expSineCurrent.p, R_expSineCurrent.p) annotation (Line(points={{-9,75},{-0.1,75},{-0.1,74.73}}, color={0,0,127}));
  connect(R_expSineCurrent.n, expSineCurrent.n) annotation (Line(points={{19.9,74.73},{19.9,75},{-32,75}}, color={0,0,127}));
  connect(expSineCurrent.n, ground.p) annotation (Line(points={{-9,75},{-16,75},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(lightningImpulseCurrent.p, R_lightningImpulseCurrent.p) annotation (Line(points={{-9,50},{-0.1,50},{-0.1,49.73}}, color={0,0,127}));
  connect(R_lightningImpulseCurrent.n, lightningImpulseCurrent.n) annotation (Line(points={{19.9,49.73},{19.9,50},{-32,50}}, color={0,0,127}));
  connect(lightningImpulseCurrent.n, ground.p) annotation (Line(points={{-9,50},{-16,50},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(pulseCurrent.p, R_pulseCurrent.p) annotation (Line(points={{-9,25},{-0.1,25},{-0.1,24.73}}, color={0,0,127}));
  connect(R_pulseCurrent.n, pulseCurrent.n) annotation (Line(points={{19.9,24.73},{19.9,25},{-32,25}}, color={0,0,127}));
  connect(pulseCurrent.n, ground.p) annotation (Line(points={{-9,25},{-16,25},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(sawToothCurrent.p, R_sawToothCurrent.p) annotation (Line(points={{-9,0},{-0.1,0},{-0.1,-0.27}}, color={0,0,127}));
  connect(R_sawToothCurrent.n, sawToothCurrent.n) annotation (Line(points={{19.9,-0.27},{19.9,0},{-32,0}}, color={0,0,127}));
  connect(sawToothCurrent.n, ground.p) annotation (Line(points={{-9,0},{-16,0},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(sineCurrent.p, R_sineCurrent.p) annotation (Line(points={{-9,-25},{-0.1,-25},{-0.1,-25.27}}, color={0,0,127}));
  connect(R_sineCurrent.n, sineCurrent.n) annotation (Line(points={{19.9,-25.27},{19.9,-25},{-32,-25}}, color={0,0,127}));
  connect(sineCurrent.n, ground.p) annotation (Line(points={{-9,-25},{-16,-25},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(stepCurrent.p, R_stepCurrent.p) annotation (Line(points={{-9,-50},{-0.1,-50},{-0.1,-50.27}}, color={0,0,127}));
  connect(R_stepCurrent.n, stepCurrent.n) annotation (Line(points={{19.9,-50.27},{19.9,-50},{-32,-50}}, color={0,0,127}));
  connect(stepCurrent.n, ground.p) annotation (Line(points={{-9,-50},{-16,-50},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(tableCurrent.p, R_tableCurrent.p) annotation (Line(points={{-9,-75},{-0.1,-75},{-0.1,-75.27}}, color={0,0,127}));
  connect(R_tableCurrent.n, tableCurrent.n) annotation (Line(points={{19.9,-75.27},{19.9,-75},{-32,-75}}, color={0,0,127}));
  connect(tableCurrent.n, ground.p) annotation (Line(points={{-9,-75},{-16,-75},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(trapezoidCurrent.p, R_trapezoidCurrent.p) annotation (Line(points={{-9,-100},{-0.1,-100},{-0.1,-100.27}}, color={0,0,127}));
  connect(R_trapezoidCurrent.n, trapezoidCurrent.n) annotation (Line(points={{19.9,-100.27},{19.9,-100},{-32,-100}}, color={0,0,127}));
  connect(trapezoidCurrent.n, ground.p) annotation (Line(points={{-9,-100},{-16,-100},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(sineVoltageVF.p, R_sineVoltageVF.p) annotation (Line(points={{71,100},{84.43,100},{84.43,100.27}}, color={0,0,127}));
  connect(R_sineVoltageVF.n, sineVoltageVF.n) annotation (Line(points={{104.43,100.27},{104.43,100},{48,100}}, color={0,0,127}));
  connect(sineVoltageVF.n, ground.p) annotation (Line(points={{71,100},{-16,100},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(amplitudeV.y, sineVoltageVF.V) annotation (Line(points={{-105,-80},{-16,-80},{-16,100},{48,100}}, color={0,0,127}));
  connect(frequency.y, sineVoltageVF.f) annotation (Line(points={{-105,-140},{-16,-140},{-16,94},{48,94}}, color={0,0,127}));
  connect(cosineVoltageVF.p, R_cosineVoltageVF.p) annotation (Line(points={{71,75},{84.43,75},{84.43,75.27}}, color={0,0,127}));
  connect(R_cosineVoltageVF.n, cosineVoltageVF.n) annotation (Line(points={{104.43,75.27},{104.43,75},{48,75}}, color={0,0,127}));
  connect(cosineVoltageVF.n, ground.p) annotation (Line(points={{71,75},{-16,75},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(amplitudeV.y, cosineVoltageVF.V) annotation (Line(points={{-105,-80},{-16,-80},{-16,75},{48,75}}, color={0,0,127}));
  connect(frequency.y, cosineVoltageVF.f) annotation (Line(points={{-105,-140},{-16,-140},{-16,69},{48,69}}, color={0,0,127}));
  connect(sineCurrentVF.p, R_sineCurrentVF.p) annotation (Line(points={{71,50},{84.43,50},{84.43,50.27}}, color={0,0,127}));
  connect(R_sineCurrentVF.n, sineCurrentVF.n) annotation (Line(points={{104.43,50.27},{104.43,50},{48,50}}, color={0,0,127}));
  connect(sineCurrentVF.n, ground.p) annotation (Line(points={{71,50},{-16,50},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(amplitudeI.y, sineCurrentVF.I) annotation (Line(points={{-105,-110},{-16,-110},{-16,50},{48,50}}, color={0,0,127}));
  connect(frequency.y, sineCurrentVF.f) annotation (Line(points={{-105,-140},{-16,-140},{-16,44},{48,44}}, color={0,0,127}));
  connect(cosineCurrentVF.p, R_cosineCurrentVF.p) annotation (Line(points={{71,25},{84.43,25},{84.43,25.27}}, color={0,0,127}));
  connect(R_cosineCurrentVF.n, cosineCurrentVF.n) annotation (Line(points={{104.43,25.27},{104.43,25},{48,25}}, color={0,0,127}));
  connect(cosineCurrentVF.n, ground.p) annotation (Line(points={{71,25},{-16,25},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(amplitudeI.y, cosineCurrentVF.I) annotation (Line(points={{-105,-110},{-16,-110},{-16,25},{48,25}}, color={0,0,127}));
  connect(frequency.y, cosineCurrentVF.f) annotation (Line(points={{-105,-140},{-16,-140},{-16,19},{48,19}}, color={0,0,127}));
  connect(supplyVoltage.pin_p, R_supplyP.p) annotation (Line(points={{71,-20},{59,-20},{59,-10},{63,-10}}, color={0,0,127}));
  connect(R_supplyP.n, supplyVoltage.ground) annotation (Line(points={{86,-10},{44,-10},{44,-20},{48,-20}}, color={0,0,127}));
  connect(supplyVoltage.pin_n, R_supplyN.n) annotation (Line(points={{71,-20},{59,-20},{59,-30},{63,-30}}, color={0,0,127}));
  connect(R_supplyN.p, supplyVoltage.ground) annotation (Line(points={{86,-30},{44,-30},{44,-20},{48,-20}}, color={0,0,127}));
  connect(supplyVoltage.ground, ground.p) annotation (Line(points={{71,-20},{-16,-20},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(dcPowerSupply.p, variableLoad.p) annotation (Line(points={{71,-70},{90.76,-70},{90.76,-70.31}}, color={0,0,127}));
  connect(variableLoad.n, dcPowerSupply.n) annotation (Line(points={{110.76,-70.31},{110.76,-70},{48,-70}}, color={0,0,127}));
  connect(dcPowerSupply.n, ground.p) annotation (Line(points={{71,-70},{-16,-70},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(loadResistance.y, variableLoad.R) annotation (Line(points={{101,-100},{59,-100},{59,-58.31},{100.76,-58.31}}, color={0,0,127}));
  annotation (Diagram(coordinateSystem(extent={{-100,-220},{100,120}})),
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
