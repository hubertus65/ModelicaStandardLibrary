within ModelicaTest.Electrical.Analog;
model AnalogSources "Test of the voltage and current sources of Modelica.Electrical.Analog.Sources"
  extends Modelica.Icons.Example;

  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-10,-210},{10,-190}})));
  Modelica.Blocks.Sources.Ramp amplitudeV(height=1, duration=1, offset=1)
    annotation (Placement(transformation(extent={{-100,-90},{-80,-70}})));
  Modelica.Blocks.Sources.Ramp amplitudeI(height=1, duration=1, offset=1)
    annotation (Placement(transformation(extent={{-100,-120},{-80,-100}})));
  Modelica.Blocks.Sources.Ramp frequency(height=4, duration=1, offset=1)
    annotation (Placement(transformation(extent={{-100,-150},{-80,-130}})));
  Modelica.Electrical.Analog.Sources.CosineVoltage cosineVoltage(V=2, f=2)
    annotation (Placement(transformation(extent={{-70,90},{-50,110}})));
  Modelica.Electrical.Analog.Basic.Resistor R_cosineVoltage(R=1)
    annotation (Placement(transformation(extent={{-55,90},{-35,110}})));
  Modelica.Electrical.Analog.Sources.ExponentialsVoltage exponentialsVoltage(vMax=2, riseTime=0.3, riseTimeConst=0.05, fallTimeConst=0.1)
    annotation (Placement(transformation(extent={{-70,65},{-50,85}})));
  Modelica.Electrical.Analog.Basic.Resistor R_exponentialsVoltage(R=1)
    annotation (Placement(transformation(extent={{-55,65},{-35,85}})));
  Modelica.Electrical.Analog.Sources.ExpSineVoltage expSineVoltage(V=2, f=4, damping=2)
    annotation (Placement(transformation(extent={{-70,40},{-50,60}})));
  Modelica.Electrical.Analog.Basic.Resistor R_expSineVoltage(R=1)
    annotation (Placement(transformation(extent={{-55,40},{-35,60}})));
  Modelica.Electrical.Analog.Sources.LightningImpulseVoltage lightningImpulseVoltage(V=2, T1=0.02, T2=0.2, startTime=0.1)
    annotation (Placement(transformation(extent={{-70,15},{-50,35}})));
  Modelica.Electrical.Analog.Basic.Resistor R_lightningImpulseVoltage(R=1)
    annotation (Placement(transformation(extent={{-55,15},{-35,35}})));
  Modelica.Electrical.Analog.Sources.PulseVoltage pulseVoltage(V=2, width=30, period=0.2)
    annotation (Placement(transformation(extent={{-70,-10},{-50,10}})));
  Modelica.Electrical.Analog.Basic.Resistor R_pulseVoltage(R=1)
    annotation (Placement(transformation(extent={{-55,-10},{-35,10}})));
  Modelica.Electrical.Analog.Sources.SawToothVoltage sawToothVoltage(V=2, period=0.25)
    annotation (Placement(transformation(extent={{-70,-35},{-50,-15}})));
  Modelica.Electrical.Analog.Basic.Resistor R_sawToothVoltage(R=1)
    annotation (Placement(transformation(extent={{-55,-35},{-35,-15}})));
  Modelica.Electrical.Analog.Sources.TableVoltage tableVoltage(table=[0, 0; 0.5, 1; 1, -1])
    annotation (Placement(transformation(extent={{-70,-60},{-50,-40}})));
  Modelica.Electrical.Analog.Basic.Resistor R_tableVoltage(R=1)
    annotation (Placement(transformation(extent={{-55,-60},{-35,-40}})));
  Modelica.Electrical.Analog.Sources.TrapezoidVoltage trapezoidVoltage(V=2, rising=0.1, width=0.2, falling=0.1, period=0.5)
    annotation (Placement(transformation(extent={{-70,-85},{-50,-65}})));
  Modelica.Electrical.Analog.Basic.Resistor R_trapezoidVoltage(R=1)
    annotation (Placement(transformation(extent={{-55,-85},{-35,-65}})));
  Modelica.Electrical.Analog.Sources.CosineCurrent cosineCurrent(I=2, f=2)
    annotation (Placement(transformation(extent={{-70,-110},{-50,-90}})));
  Modelica.Electrical.Analog.Basic.Resistor R_cosineCurrent(R=1)
    annotation (Placement(transformation(extent={{-55,-110},{-35,-90}})));
  Modelica.Electrical.Analog.Sources.ExponentialsCurrent exponentialsCurrent(iMax=2, riseTime=0.3, riseTimeConst=0.05, fallTimeConst=0.1)
    annotation (Placement(transformation(extent={{-30,90},{-10,110}})));
  Modelica.Electrical.Analog.Basic.Resistor R_exponentialsCurrent(R=1)
    annotation (Placement(transformation(extent={{-15,90},{5,110}})));
  Modelica.Electrical.Analog.Sources.ExpSineCurrent expSineCurrent(I=2, f=4, damping=2)
    annotation (Placement(transformation(extent={{-30,65},{-10,85}})));
  Modelica.Electrical.Analog.Basic.Resistor R_expSineCurrent(R=1)
    annotation (Placement(transformation(extent={{-15,65},{5,85}})));
  Modelica.Electrical.Analog.Sources.LightningImpulseCurrent lightningImpulseCurrent(I=2, T1=0.02, T2=0.2, startTime=0.1)
    annotation (Placement(transformation(extent={{-30,40},{-10,60}})));
  Modelica.Electrical.Analog.Basic.Resistor R_lightningImpulseCurrent(R=1)
    annotation (Placement(transformation(extent={{-15,40},{5,60}})));
  Modelica.Electrical.Analog.Sources.PulseCurrent pulseCurrent(I=2, width=30, period=0.2)
    annotation (Placement(transformation(extent={{-30,15},{-10,35}})));
  Modelica.Electrical.Analog.Basic.Resistor R_pulseCurrent(R=1)
    annotation (Placement(transformation(extent={{-15,15},{5,35}})));
  Modelica.Electrical.Analog.Sources.SawToothCurrent sawToothCurrent(I=2, period=0.25)
    annotation (Placement(transformation(extent={{-30,-10},{-10,10}})));
  Modelica.Electrical.Analog.Basic.Resistor R_sawToothCurrent(R=1)
    annotation (Placement(transformation(extent={{-15,-10},{5,10}})));
  Modelica.Electrical.Analog.Sources.SineCurrent sineCurrent(I=2, f=2)
    annotation (Placement(transformation(extent={{-30,-35},{-10,-15}})));
  Modelica.Electrical.Analog.Basic.Resistor R_sineCurrent(R=1)
    annotation (Placement(transformation(extent={{-15,-35},{5,-15}})));
  Modelica.Electrical.Analog.Sources.StepCurrent stepCurrent(I=2, startTime=0.3)
    annotation (Placement(transformation(extent={{-30,-60},{-10,-40}})));
  Modelica.Electrical.Analog.Basic.Resistor R_stepCurrent(R=1)
    annotation (Placement(transformation(extent={{-15,-60},{5,-40}})));
  Modelica.Electrical.Analog.Sources.TableCurrent tableCurrent(table=[0, 0; 0.5, 1; 1, -1])
    annotation (Placement(transformation(extent={{-30,-85},{-10,-65}})));
  Modelica.Electrical.Analog.Basic.Resistor R_tableCurrent(R=1)
    annotation (Placement(transformation(extent={{-15,-85},{5,-65}})));
  Modelica.Electrical.Analog.Sources.TrapezoidCurrent trapezoidCurrent(I=2, rising=0.1, width=0.2, falling=0.1, period=0.5)
    annotation (Placement(transformation(extent={{-30,-110},{-10,-90}})));
  Modelica.Electrical.Analog.Basic.Resistor R_trapezoidCurrent(R=1)
    annotation (Placement(transformation(extent={{-15,-110},{5,-90}})));
  Modelica.Electrical.Analog.Sources.SineVoltageVariableFrequencyAndAmplitude sineVoltageVF
    annotation (Placement(transformation(extent={{50,90},{70,110}})));
  Modelica.Electrical.Analog.Basic.Resistor R_sineVoltageVF(R=1)
    annotation (Placement(transformation(extent={{65,90},{85,110}})));
  Modelica.Electrical.Analog.Sources.CosineVoltageVariableFrequencyAndAmplitude cosineVoltageVF
    annotation (Placement(transformation(extent={{50,65},{70,85}})));
  Modelica.Electrical.Analog.Basic.Resistor R_cosineVoltageVF(R=1)
    annotation (Placement(transformation(extent={{65,65},{85,85}})));
  Modelica.Electrical.Analog.Sources.SineCurrentVariableFrequencyAndAmplitude sineCurrentVF
    annotation (Placement(transformation(extent={{50,40},{70,60}})));
  Modelica.Electrical.Analog.Basic.Resistor R_sineCurrentVF(R=1)
    annotation (Placement(transformation(extent={{65,40},{85,60}})));
  Modelica.Electrical.Analog.Sources.CosineCurrentVariableFrequencyAndAmplitude cosineCurrentVF
    annotation (Placement(transformation(extent={{50,15},{70,35}})));
  Modelica.Electrical.Analog.Basic.Resistor R_cosineCurrentVF(R=1)
    annotation (Placement(transformation(extent={{65,15},{85,35}})));
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
    annotation (Placement(transformation(extent={{65,-80},{85,-60}})));
equation
  connect(cosineVoltage.p, R_cosineVoltage.p) annotation (Line(points={{-49,100},{-57,100}}, color={0,0,127}));
  connect(R_cosineVoltage.n, cosineVoltage.n) annotation (Line(points={{-34,100},{-72,100}}, color={0,0,127}));
  connect(cosineVoltage.n, ground.p) annotation (Line(points={{-49,100},{-30,100},{-30,-200},{-12,-200}}, color={0,0,127}));
  connect(exponentialsVoltage.p, R_exponentialsVoltage.p) annotation (Line(points={{-49,75},{-57,75}}, color={0,0,127}));
  connect(R_exponentialsVoltage.n, exponentialsVoltage.n) annotation (Line(points={{-34,75},{-72,75}}, color={0,0,127}));
  connect(exponentialsVoltage.n, ground.p) annotation (Line(points={{-49,75},{-30,75},{-30,-200},{-12,-200}}, color={0,0,127}));
  connect(expSineVoltage.p, R_expSineVoltage.p) annotation (Line(points={{-49,50},{-57,50}}, color={0,0,127}));
  connect(R_expSineVoltage.n, expSineVoltage.n) annotation (Line(points={{-34,50},{-72,50}}, color={0,0,127}));
  connect(expSineVoltage.n, ground.p) annotation (Line(points={{-49,50},{-30,50},{-30,-200},{-12,-200}}, color={0,0,127}));
  connect(lightningImpulseVoltage.p, R_lightningImpulseVoltage.p) annotation (Line(points={{-49,25},{-57,25}}, color={0,0,127}));
  connect(R_lightningImpulseVoltage.n, lightningImpulseVoltage.n) annotation (Line(points={{-34,25},{-72,25}}, color={0,0,127}));
  connect(lightningImpulseVoltage.n, ground.p) annotation (Line(points={{-49,25},{-30,25},{-30,-200},{-12,-200}}, color={0,0,127}));
  connect(pulseVoltage.p, R_pulseVoltage.p) annotation (Line(points={{-49,0},{-57,0}}, color={0,0,127}));
  connect(R_pulseVoltage.n, pulseVoltage.n) annotation (Line(points={{-34,0},{-72,0}}, color={0,0,127}));
  connect(pulseVoltage.n, ground.p) annotation (Line(points={{-49,0},{-30,0},{-30,-200},{-12,-200}}, color={0,0,127}));
  connect(sawToothVoltage.p, R_sawToothVoltage.p) annotation (Line(points={{-49,-25},{-57,-25}}, color={0,0,127}));
  connect(R_sawToothVoltage.n, sawToothVoltage.n) annotation (Line(points={{-34,-25},{-72,-25}}, color={0,0,127}));
  connect(sawToothVoltage.n, ground.p) annotation (Line(points={{-49,-25},{-30,-25},{-30,-200},{-12,-200}}, color={0,0,127}));
  connect(tableVoltage.p, R_tableVoltage.p) annotation (Line(points={{-49,-50},{-57,-50}}, color={0,0,127}));
  connect(R_tableVoltage.n, tableVoltage.n) annotation (Line(points={{-34,-50},{-72,-50}}, color={0,0,127}));
  connect(tableVoltage.n, ground.p) annotation (Line(points={{-49,-50},{-30,-50},{-30,-200},{-12,-200}}, color={0,0,127}));
  connect(trapezoidVoltage.p, R_trapezoidVoltage.p) annotation (Line(points={{-49,-75},{-57,-75}}, color={0,0,127}));
  connect(R_trapezoidVoltage.n, trapezoidVoltage.n) annotation (Line(points={{-34,-75},{-72,-75}}, color={0,0,127}));
  connect(trapezoidVoltage.n, ground.p) annotation (Line(points={{-49,-75},{-30,-75},{-30,-200},{-12,-200}}, color={0,0,127}));
  connect(cosineCurrent.p, R_cosineCurrent.p) annotation (Line(points={{-49,-100},{-57,-100}}, color={0,0,127}));
  connect(R_cosineCurrent.n, cosineCurrent.n) annotation (Line(points={{-34,-100},{-72,-100}}, color={0,0,127}));
  connect(cosineCurrent.n, ground.p) annotation (Line(points={{-49,-100},{-30,-100},{-30,-200},{-12,-200}}, color={0,0,127}));
  connect(exponentialsCurrent.p, R_exponentialsCurrent.p) annotation (Line(points={{-9,100},{-17,100}}, color={0,0,127}));
  connect(R_exponentialsCurrent.n, exponentialsCurrent.n) annotation (Line(points={{6,100},{-32,100}}, color={0,0,127}));
  connect(exponentialsCurrent.n, ground.p) annotation (Line(points={{-9,100},{-16,100},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(expSineCurrent.p, R_expSineCurrent.p) annotation (Line(points={{-9,75},{-17,75}}, color={0,0,127}));
  connect(R_expSineCurrent.n, expSineCurrent.n) annotation (Line(points={{6,75},{-32,75}}, color={0,0,127}));
  connect(expSineCurrent.n, ground.p) annotation (Line(points={{-9,75},{-16,75},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(lightningImpulseCurrent.p, R_lightningImpulseCurrent.p) annotation (Line(points={{-9,50},{-17,50}}, color={0,0,127}));
  connect(R_lightningImpulseCurrent.n, lightningImpulseCurrent.n) annotation (Line(points={{6,50},{-32,50}}, color={0,0,127}));
  connect(lightningImpulseCurrent.n, ground.p) annotation (Line(points={{-9,50},{-16,50},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(pulseCurrent.p, R_pulseCurrent.p) annotation (Line(points={{-9,25},{-17,25}}, color={0,0,127}));
  connect(R_pulseCurrent.n, pulseCurrent.n) annotation (Line(points={{6,25},{-32,25}}, color={0,0,127}));
  connect(pulseCurrent.n, ground.p) annotation (Line(points={{-9,25},{-16,25},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(sawToothCurrent.p, R_sawToothCurrent.p) annotation (Line(points={{-9,0},{-17,0}}, color={0,0,127}));
  connect(R_sawToothCurrent.n, sawToothCurrent.n) annotation (Line(points={{6,0},{-32,0}}, color={0,0,127}));
  connect(sawToothCurrent.n, ground.p) annotation (Line(points={{-9,0},{-16,0},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(sineCurrent.p, R_sineCurrent.p) annotation (Line(points={{-9,-25},{-17,-25}}, color={0,0,127}));
  connect(R_sineCurrent.n, sineCurrent.n) annotation (Line(points={{6,-25},{-32,-25}}, color={0,0,127}));
  connect(sineCurrent.n, ground.p) annotation (Line(points={{-9,-25},{-16,-25},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(stepCurrent.p, R_stepCurrent.p) annotation (Line(points={{-9,-50},{-17,-50}}, color={0,0,127}));
  connect(R_stepCurrent.n, stepCurrent.n) annotation (Line(points={{6,-50},{-32,-50}}, color={0,0,127}));
  connect(stepCurrent.n, ground.p) annotation (Line(points={{-9,-50},{-16,-50},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(tableCurrent.p, R_tableCurrent.p) annotation (Line(points={{-9,-75},{-17,-75}}, color={0,0,127}));
  connect(R_tableCurrent.n, tableCurrent.n) annotation (Line(points={{6,-75},{-32,-75}}, color={0,0,127}));
  connect(tableCurrent.n, ground.p) annotation (Line(points={{-9,-75},{-16,-75},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(trapezoidCurrent.p, R_trapezoidCurrent.p) annotation (Line(points={{-9,-100},{-17,-100}}, color={0,0,127}));
  connect(R_trapezoidCurrent.n, trapezoidCurrent.n) annotation (Line(points={{6,-100},{-32,-100}}, color={0,0,127}));
  connect(trapezoidCurrent.n, ground.p) annotation (Line(points={{-9,-100},{-16,-100},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(sineVoltageVF.p, R_sineVoltageVF.p) annotation (Line(points={{71,100},{63,100}}, color={0,0,127}));
  connect(R_sineVoltageVF.n, sineVoltageVF.n) annotation (Line(points={{86,100},{48,100}}, color={0,0,127}));
  connect(sineVoltageVF.n, ground.p) annotation (Line(points={{71,100},{-16,100},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(amplitudeV.y, sineVoltageVF.V) annotation (Line(points={{-79,-80},{-16,-80},{-16,100},{48,100}}, color={0,0,127}));
  connect(frequency.y, sineVoltageVF.f) annotation (Line(points={{-79,-140},{-16,-140},{-16,94},{48,94}}, color={0,0,127}));
  connect(cosineVoltageVF.p, R_cosineVoltageVF.p) annotation (Line(points={{71,75},{63,75}}, color={0,0,127}));
  connect(R_cosineVoltageVF.n, cosineVoltageVF.n) annotation (Line(points={{86,75},{48,75}}, color={0,0,127}));
  connect(cosineVoltageVF.n, ground.p) annotation (Line(points={{71,75},{-16,75},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(amplitudeV.y, cosineVoltageVF.V) annotation (Line(points={{-79,-80},{-16,-80},{-16,75},{48,75}}, color={0,0,127}));
  connect(frequency.y, cosineVoltageVF.f) annotation (Line(points={{-79,-140},{-16,-140},{-16,69},{48,69}}, color={0,0,127}));
  connect(sineCurrentVF.p, R_sineCurrentVF.p) annotation (Line(points={{71,50},{63,50}}, color={0,0,127}));
  connect(R_sineCurrentVF.n, sineCurrentVF.n) annotation (Line(points={{86,50},{48,50}}, color={0,0,127}));
  connect(sineCurrentVF.n, ground.p) annotation (Line(points={{71,50},{-16,50},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(amplitudeI.y, sineCurrentVF.I) annotation (Line(points={{-79,-110},{-16,-110},{-16,50},{48,50}}, color={0,0,127}));
  connect(frequency.y, sineCurrentVF.f) annotation (Line(points={{-79,-140},{-16,-140},{-16,44},{48,44}}, color={0,0,127}));
  connect(cosineCurrentVF.p, R_cosineCurrentVF.p) annotation (Line(points={{71,25},{63,25}}, color={0,0,127}));
  connect(R_cosineCurrentVF.n, cosineCurrentVF.n) annotation (Line(points={{86,25},{48,25}}, color={0,0,127}));
  connect(cosineCurrentVF.n, ground.p) annotation (Line(points={{71,25},{-16,25},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(amplitudeI.y, cosineCurrentVF.I) annotation (Line(points={{-79,-110},{-16,-110},{-16,25},{48,25}}, color={0,0,127}));
  connect(frequency.y, cosineCurrentVF.f) annotation (Line(points={{-79,-140},{-16,-140},{-16,19},{48,19}}, color={0,0,127}));
  connect(supplyVoltage.pin_p, R_supplyP.p) annotation (Line(points={{71,-20},{59,-20},{59,-10},{63,-10}}, color={0,0,127}));
  connect(R_supplyP.n, supplyVoltage.ground) annotation (Line(points={{86,-10},{44,-10},{44,-20},{48,-20}}, color={0,0,127}));
  connect(supplyVoltage.pin_n, R_supplyN.n) annotation (Line(points={{71,-20},{59,-20},{59,-30},{63,-30}}, color={0,0,127}));
  connect(R_supplyN.p, supplyVoltage.ground) annotation (Line(points={{86,-30},{44,-30},{44,-20},{48,-20}}, color={0,0,127}));
  connect(supplyVoltage.ground, ground.p) annotation (Line(points={{71,-20},{-16,-20},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(dcPowerSupply.p, variableLoad.p) annotation (Line(points={{71,-70},{63,-70}}, color={0,0,127}));
  connect(variableLoad.n, dcPowerSupply.n) annotation (Line(points={{86,-70},{48,-70}}, color={0,0,127}));
  connect(dcPowerSupply.n, ground.p) annotation (Line(points={{71,-70},{-16,-70},{-16,-200},{-12,-200}}, color={0,0,127}));
  connect(loadResistance.y, variableLoad.R) annotation (Line(points={{101,-100},{59,-100},{59,-70},{63,-70}}, color={0,0,127}));
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
