within ModelicaTest;
package Thermal "Test models for Modelica.Thermal"
  extends Modelica.Icons.ExamplesPackage;

  model TemperatureScales "Test of the Celsius, Fahrenheit and Rankine sources, sensors and converters of Modelica.Thermal.HeatTransfer"
    extends Modelica.Icons.Example;

    Modelica.Blocks.Sources.Ramp rampC(height=100, duration=1, offset=0)
      annotation (Placement(transformation(extent={{-100,50},{-80,70}})));
    Modelica.Thermal.HeatTransfer.Celsius.PrescribedTemperature prescribedC
      annotation (Placement(transformation(extent={{-70,50},{-50,70}})));
    Modelica.Thermal.HeatTransfer.Celsius.FixedTemperature fixedC(T=20)
      annotation (Placement(transformation(extent={{-70,75},{-50,95}})));
    Modelica.Thermal.HeatTransfer.Components.ThermalResistor resistorC(R=0.5)
      annotation (Placement(transformation(extent={{-40,50},{-20,70}})));
    Modelica.Thermal.HeatTransfer.Components.ThermalResistor resistorFixedC(R=1)
      annotation (Placement(transformation(extent={{-40,75},{-20,95}})));
    Modelica.Thermal.HeatTransfer.Components.HeatCapacitor capacitorC(C=1, T(start=293.15, fixed=true))
      annotation (Placement(transformation(extent={{-10,65},{10,85}})));
    Modelica.Thermal.HeatTransfer.Celsius.TemperatureSensor sensorC
      annotation (Placement(transformation(extent={{20,50},{40,70}})));
    Modelica.Thermal.HeatTransfer.Celsius.ToKelvin toKelvinC
      annotation (Placement(transformation(extent={{50,50},{70,70}})));
    Modelica.Thermal.HeatTransfer.Celsius.FromKelvin fromKelvinC
      annotation (Placement(transformation(extent={{80,50},{100,70}})));
    Modelica.Blocks.Sources.Ramp rampF(height=180, duration=1, offset=32)
      annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
    Modelica.Thermal.HeatTransfer.Fahrenheit.PrescribedTemperature prescribedF
      annotation (Placement(transformation(extent={{-70,-10},{-50,10}})));
    Modelica.Thermal.HeatTransfer.Fahrenheit.FixedTemperature fixedF(T=68)
      annotation (Placement(transformation(extent={{-70,15},{-50,35}})));
    Modelica.Thermal.HeatTransfer.Components.ThermalResistor resistorF(R=0.5)
      annotation (Placement(transformation(extent={{-40,-10},{-20,10}})));
    Modelica.Thermal.HeatTransfer.Components.ThermalResistor resistorFixedF(R=1)
      annotation (Placement(transformation(extent={{-40,15},{-20,35}})));
    Modelica.Thermal.HeatTransfer.Components.HeatCapacitor capacitorF(C=1, T(start=293.15, fixed=true))
      annotation (Placement(transformation(extent={{-10,5},{10,25}})));
    Modelica.Thermal.HeatTransfer.Fahrenheit.TemperatureSensor sensorF
      annotation (Placement(transformation(extent={{20,-10},{40,10}})));
    Modelica.Thermal.HeatTransfer.Fahrenheit.ToKelvin toKelvinF
      annotation (Placement(transformation(extent={{50,-10},{70,10}})));
    Modelica.Thermal.HeatTransfer.Fahrenheit.FromKelvin fromKelvinF
      annotation (Placement(transformation(extent={{80,-10},{100,10}})));
    Modelica.Blocks.Sources.Ramp rampR(height=180, duration=1, offset=491.67)
      annotation (Placement(transformation(extent={{-100,-70},{-80,-50}})));
    Modelica.Thermal.HeatTransfer.Rankine.PrescribedTemperature prescribedR
      annotation (Placement(transformation(extent={{-70,-70},{-50,-50}})));
    Modelica.Thermal.HeatTransfer.Rankine.FixedTemperature fixedR(T=527.67)
      annotation (Placement(transformation(extent={{-70,-45},{-50,-25}})));
    Modelica.Thermal.HeatTransfer.Components.ThermalResistor resistorR(R=0.5)
      annotation (Placement(transformation(extent={{-40,-70},{-20,-50}})));
    Modelica.Thermal.HeatTransfer.Components.ThermalResistor resistorFixedR(R=1)
      annotation (Placement(transformation(extent={{-40,-45},{-20,-25}})));
    Modelica.Thermal.HeatTransfer.Components.HeatCapacitor capacitorR(C=1, T(start=293.15, fixed=true))
      annotation (Placement(transformation(extent={{-10,-55},{10,-35}})));
    Modelica.Thermal.HeatTransfer.Rankine.TemperatureSensor sensorR
      annotation (Placement(transformation(extent={{20,-70},{40,-50}})));
    Modelica.Thermal.HeatTransfer.Rankine.ToKelvin toKelvinR
      annotation (Placement(transformation(extent={{50,-70},{70,-50}})));
    Modelica.Thermal.HeatTransfer.Rankine.FromKelvin fromKelvinR
      annotation (Placement(transformation(extent={{80,-70},{100,-50}})));
  equation
    connect(rampC.y, prescribedC.T) annotation (Line(points={{-79,60},{-72,60}}, color={0,0,127}));
    connect(prescribedC.port, resistorC.port_a) annotation (Line(points={{-49,60},{-42,60}}, color={191,0,0}));
    connect(fixedC.port, resistorFixedC.port_a) annotation (Line(points={{-49,85},{-42,85}}, color={191,0,0}));
    connect(resistorC.port_b, capacitorC.port) annotation (Line(points={{-19,60},{-16,60},{-16,75},{-12,75}}, color={191,0,0}));
    connect(resistorFixedC.port_b, capacitorC.port) annotation (Line(points={{-19,85},{-16,85},{-16,75},{-12,75}}, color={191,0,0}));
    connect(capacitorC.port, sensorC.port) annotation (Line(points={{11,75},{14,75},{14,60},{18,60}}, color={191,0,0}));
    connect(sensorC.T, toKelvinC.Celsius) annotation (Line(points={{41,60},{48,60}}, color={0,0,127}));
    connect(toKelvinC.Kelvin, fromKelvinC.Kelvin) annotation (Line(points={{71,60},{78,60}}, color={0,0,127}));
    connect(rampF.y, prescribedF.T) annotation (Line(points={{-79,0},{-72,0}}, color={0,0,127}));
    connect(prescribedF.port, resistorF.port_a) annotation (Line(points={{-49,0},{-42,0}}, color={191,0,0}));
    connect(fixedF.port, resistorFixedF.port_a) annotation (Line(points={{-49,25},{-42,25}}, color={191,0,0}));
    connect(resistorF.port_b, capacitorF.port) annotation (Line(points={{-19,0},{-16,0},{-16,15},{-12,15}}, color={191,0,0}));
    connect(resistorFixedF.port_b, capacitorF.port) annotation (Line(points={{-19,25},{-16,25},{-16,15},{-12,15}}, color={191,0,0}));
    connect(capacitorF.port, sensorF.port) annotation (Line(points={{11,15},{14,15},{14,0},{18,0}}, color={191,0,0}));
    connect(sensorF.T, toKelvinF.Fahrenheit) annotation (Line(points={{41,0},{48,0}}, color={0,0,127}));
    connect(toKelvinF.Kelvin, fromKelvinF.Kelvin) annotation (Line(points={{71,0},{78,0}}, color={0,0,127}));
    connect(rampR.y, prescribedR.T) annotation (Line(points={{-79,-60},{-72,-60}}, color={0,0,127}));
    connect(prescribedR.port, resistorR.port_a) annotation (Line(points={{-49,-60},{-42,-60}}, color={191,0,0}));
    connect(fixedR.port, resistorFixedR.port_a) annotation (Line(points={{-49,-35},{-42,-35}}, color={191,0,0}));
    connect(resistorR.port_b, capacitorR.port) annotation (Line(points={{-19,-60},{-16,-60},{-16,-45},{-12,-45}}, color={191,0,0}));
    connect(resistorFixedR.port_b, capacitorR.port) annotation (Line(points={{-19,-35},{-16,-35},{-16,-45},{-12,-45}}, color={191,0,0}));
    connect(capacitorR.port, sensorR.port) annotation (Line(points={{11,-45},{14,-45},{14,-60},{18,-60}}, color={191,0,0}));
    connect(sensorR.T, toKelvinR.Rankine) annotation (Line(points={{41,-60},{48,-60}}, color={0,0,127}));
    connect(toKelvinR.Kelvin, fromKelvinR.Kelvin) annotation (Line(points={{71,-60},{78,-60}}, color={0,0,127}));
    annotation (experiment(StopTime=1),
      Documentation(info="<html>
<p>
Three identical thermal circuits, one per temperature scale of
<a href=\"modelica://Modelica.Thermal.HeatTransfer\">Modelica.Thermal.HeatTransfer</a>
(Celsius, Fahrenheit, Rankine). In each, a heat capacitor (C = 1 J/K, starting at 20 &deg;C)
is connected through ThermalResistor components to a FixedTemperature of 20 &deg;C and to a
PrescribedTemperature that ramps from 0 &deg;C to 100 &deg;C, both given in the scale's own unit.
</p>
<p>
The three capacitor temperatures must be identical in K. The sensor output, converted
with ToKelvin and back with FromKelvin, must reproduce the sensor reading.
</p>
</html>"));
  end TemperatureScales;

  model HeatTransferComponents "Test of BodyRadiation, ConvectiveResistor, ThermalResistor and sensors of Modelica.Thermal.HeatTransfer"
    extends Modelica.Icons.Example;

    Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature1(T=400)
      annotation (Placement(transformation(extent={{-100,30},{-80,50}})));
    Modelica.Thermal.HeatTransfer.Components.BodyRadiation bodyRadiation1(Gr=0.01)
      annotation (Placement(transformation(extent={{-70,30},{-50,50}})));
    Modelica.Thermal.HeatTransfer.Components.HeatCapacitor capacitor1(C=10, T(start=300, fixed=true))
      annotation (Placement(transformation(extent={{-40,50},{-20,70}})));
    Modelica.Thermal.HeatTransfer.Components.ConvectiveResistor convectiveResistor1
      annotation (Placement(transformation(extent={{-20,30},{0,50}})));
    Modelica.Blocks.Sources.Constant rc(k=0.5)
      annotation (Placement(transformation(extent={{-20,70},{0,90}})));
    Modelica.Thermal.HeatTransfer.Sensors.ConditionalFixedHeatFlowSensor conditionalSensor1(useFixedTemperature=false)
      annotation (Placement(transformation(extent={{10,30},{30,50}})));
    Modelica.Thermal.HeatTransfer.Sensors.ConditionalFixedHeatFlowSensor conditionalSensorFixed(useFixedTemperature=true)
      annotation (Placement(transformation(extent={{10,-50},{30,-30}})));
    Modelica.Thermal.HeatTransfer.Components.HeatCapacitor capacitor2(C=5, T(start=300, fixed=true))
      annotation (Placement(transformation(extent={{35,50},{55,70}})));
    Modelica.Thermal.HeatTransfer.Components.ThermalResistor thermalResistor1(R=2)
      annotation (Placement(transformation(extent={{50,30},{70,50}})));
    Modelica.Thermal.HeatTransfer.Sensors.HeatFlowSensor heatFlowSensor1
      annotation (Placement(transformation(extent={{70,10},{90,30}})));
    Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature2(T=300)
      annotation (Placement(transformation(extent={{70,-20},{90,0}})));
    Modelica.Thermal.HeatTransfer.Sensors.RelTemperatureSensor relTemperatureSensor1
      annotation (Placement(transformation(extent={{0,-10},{20,10}})));
  equation
    connect(fixedTemperature1.port, bodyRadiation1.port_a) annotation (Line(points={{-79,40},{-72,40}}, color={191,0,0}));
    connect(bodyRadiation1.port_b, capacitor1.port) annotation (Line(points={{-49,40},{-46,40},{-46,60},{-42,60}}, color={191,0,0}));
    connect(capacitor1.port, convectiveResistor1.solid) annotation (Line(points={{-19,60},{-26,60},{-26,40},{-22,40}}, color={191,0,0}));
    connect(rc.y, convectiveResistor1.Rc) annotation (Line(points={{1,80},{-26,80},{-26,40},{-22,40}}, color={0,0,127}));
    connect(convectiveResistor1.fluid, conditionalSensor1.port_a) annotation (Line(points={{1,40},{8,40}}, color={191,0,0}));
    connect(conditionalSensor1.port_b, capacitor2.port) annotation (Line(points={{31,40},{32,40},{32,60},{33,60}}, color={191,0,0}));
    connect(capacitor2.port, thermalResistor1.port_a) annotation (Line(points={{56,60},{44,60},{44,40},{48,40}}, color={191,0,0}));
    connect(thermalResistor1.port_b, heatFlowSensor1.port_a) annotation (Line(points={{71,40},{64,40},{64,20},{68,20}}, color={191,0,0}));
    connect(heatFlowSensor1.port_b, fixedTemperature2.port) annotation (Line(points={{91,20},{64,20},{64,-10},{68,-10}}, color={191,0,0}));
    connect(capacitor1.port, relTemperatureSensor1.port_a) annotation (Line(points={{-19,60},{-10,60},{-10,0},{-2,0}}, color={191,0,0}));
    connect(capacitor2.port, relTemperatureSensor1.port_b) annotation (Line(points={{56,60},{-6,60},{-6,0},{-2,0}}, color={191,0,0}));
    annotation (experiment(StopTime=5),
      Documentation(info="<html>
<p>
A 400 K source heats capacitor 1 (10 J/K) by radiation
(<a href=\"modelica://Modelica.Thermal.HeatTransfer.Components.BodyRadiation\">BodyRadiation</a>,
Gr = 0.01 m2). Capacitor 1 passes heat on to capacitor 2 (5 J/K) through a
<a href=\"modelica://Modelica.Thermal.HeatTransfer.Components.ConvectiveResistor\">ConvectiveResistor</a>
(Rc = 0.5 K/W). Capacitor 2 loses heat to a 300 K sink through a ThermalResistor of 2 K/W.
</p>
<p>
The heat flows are measured with
<a href=\"modelica://Modelica.Thermal.HeatTransfer.Sensors.ConditionalFixedHeatFlowSensor\">ConditionalFixedHeatFlowSensor</a>
(once in the circuit, once with <code>useFixedTemperature=true</code> and no connections, which must
report 0) and HeatFlowSensor. The temperature difference is measured with RelTemperatureSensor.
</p>
</html>"));
  end HeatTransferComponents;

  model FluidHeatFlowSensorsAndValves "Test of sensors, valves and pressure sources of Modelica.Thermal.FluidHeatFlow"
    extends Modelica.Icons.Example;

    Modelica.Thermal.FluidHeatFlow.Sources.AbsolutePressure absolutePressure1(medium=medium, p=1e5)
      annotation (Placement(transformation(extent={{-100,-50},{-80,-30}})));
    Modelica.Thermal.FluidHeatFlow.Sources.PressureIncrease pressureIncrease1(medium=medium, m=0, T0=293.15, usePressureIncreaseInput=true)
      annotation (Placement(transformation(extent={{-80,-10},{-60,10}})));
    Modelica.Blocks.Sources.Ramp dpRamp(height=1e4, duration=1)
      annotation (Placement(transformation(extent={{-100,30},{-80,50}})));
    Modelica.Thermal.FluidHeatFlow.Sensors.MassFlowSensor massFlowSensor1(medium=medium)
      annotation (Placement(transformation(extent={{-50,-10},{-30,10}})));
    Modelica.Thermal.FluidHeatFlow.Sensors.VolumeFlowSensor volumeFlowSensor1(medium=medium)
      annotation (Placement(transformation(extent={{-25,-10},{-5,10}})));
    Modelica.Thermal.FluidHeatFlow.Sensors.EnthalpyFlowSensor enthalpyFlowSensor1(medium=medium)
      annotation (Placement(transformation(extent={{0,-10},{20,10}})));
    Modelica.Thermal.FluidHeatFlow.Components.Valve valve1(medium=medium, m=0, T0=293.15, LinearCharacteristic=true, y1=1, Kv1=1e-3, kv0=0.01, dp0=1e4, rho0=1000, frictionLoss=0)
      annotation (Placement(transformation(extent={{25,-10},{45,10}})));
    Modelica.Blocks.Sources.Constant opening(k=0.8)
      annotation (Placement(transformation(extent={{25,30},{45,50}})));
    Modelica.Thermal.FluidHeatFlow.Components.OneWayValve oneWayValve1(medium=medium, m=0, T0=293.15, V_flowNominal=1e-3, dpForward=100, dpNominal=1e5, V_flowBackward=1e-8, frictionLoss=0)
      annotation (Placement(transformation(extent={{50,-10},{70,10}})));
    Modelica.Thermal.FluidHeatFlow.Components.Pipe pipeHeated(medium=medium, m=1, T0=293.15, T0fixed=true, V_flowLaminar=1e-4, dpLaminar=10, V_flowNominal=1e-3, dpNominal=1000, h_g=0, useHeatPort=true)
      annotation (Placement(transformation(extent={{75,-40},{95,-20}})));
    Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow heatFlow(Q_flow=1000)
      annotation (Placement(transformation(extent={{75,0},{95,20}})));
    Modelica.Thermal.FluidHeatFlow.Components.Pipe pipeCooled(medium=medium, m=1, T0=293.15, T0fixed=true, V_flowLaminar=1e-4, dpLaminar=10, V_flowNominal=1e-3, dpNominal=1000, h_g=0, useHeatPort=true)
      annotation (Placement(transformation(extent={{10,-70},{30,-50}})));
    Modelica.Thermal.HeatTransfer.Components.ThermalConductor convection1(G=200)
      annotation (Placement(transformation(extent={{10,-100},{30,-80}})));
    Modelica.Thermal.HeatTransfer.Sources.FixedTemperature ambientTemperature(T=293.15)
      annotation (Placement(transformation(extent={{-30,-100},{-10,-80}})));
    Modelica.Thermal.FluidHeatFlow.Sensors.PressureSensor pressureSensor1(medium=medium)
      annotation (Placement(transformation(extent={{-50,-40},{-30,-20}})));
    Modelica.Thermal.FluidHeatFlow.Sensors.TemperatureSensor temperatureSensor1(medium=medium)
      annotation (Placement(transformation(extent={{50,-70},{70,-50}})));
    Modelica.Thermal.FluidHeatFlow.Sensors.RelPressureSensor relPressureSensor1(medium=medium)
      annotation (Placement(transformation(extent={{25,20},{45,40}})));
    Modelica.Thermal.FluidHeatFlow.Sensors.RelTemperatureSensor relTemperatureSensor1(medium=medium)
      annotation (Placement(transformation(extent={{75,-70},{95,-50}})));
    parameter Modelica.Thermal.FluidHeatFlow.Media.Medium medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC() "Coolant";
  equation
    connect(dpRamp.y, pressureIncrease1.pressureIncrease) annotation (Line(points={{-79,40},{-86,40},{-86,0},{-82,0}}, color={0,0,127}));
    connect(absolutePressure1.flowPort, pressureIncrease1.flowPort_a) annotation (Line(points={{-79,-40},{-86,-40},{-86,0},{-82,0}}, color={255,0,0}));
    connect(pressureIncrease1.flowPort_b, massFlowSensor1.flowPort_a) annotation (Line(points={{-59,0},{-52,0}}, color={255,0,0}));
    connect(massFlowSensor1.flowPort_b, volumeFlowSensor1.flowPort_a) annotation (Line(points={{-29,0},{-27,0}}, color={255,0,0}));
    connect(volumeFlowSensor1.flowPort_b, enthalpyFlowSensor1.flowPort_a) annotation (Line(points={{-4,0},{-2,0}}, color={255,0,0}));
    connect(enthalpyFlowSensor1.flowPort_b, valve1.flowPort_a) annotation (Line(points={{21,0},{23,0}}, color={255,0,0}));
    connect(opening.y, valve1.y) annotation (Line(points={{46,40},{19,40},{19,0},{23,0}}, color={0,0,127}));
    connect(valve1.flowPort_b, oneWayValve1.flowPort_a) annotation (Line(points={{46,0},{48,0}}, color={255,0,0}));
    connect(oneWayValve1.flowPort_b, pipeHeated.flowPort_a) annotation (Line(points={{71,0},{72,0},{72,-30},{73,-30}}, color={255,0,0}));
    connect(heatFlow.port, pipeHeated.heatPort) annotation (Line(points={{96,10},{69,10},{69,-30},{73,-30}}, color={191,0,0}));
    connect(pipeHeated.flowPort_b, pipeCooled.flowPort_a) annotation (Line(points={{96,-30},{4,-30},{4,-60},{8,-60}}, color={255,0,0}));
    connect(pipeCooled.flowPort_b, pressureIncrease1.flowPort_a) annotation (Line(points={{31,-60},{-86,-60},{-86,0},{-82,0}}, color={255,0,0}));
    connect(pipeCooled.heatPort, convection1.port_a) annotation (Line(points={{31,-60},{4,-60},{4,-90},{8,-90}}, color={191,0,0}));
    connect(convection1.port_b, ambientTemperature.port) annotation (Line(points={{31,-90},{-32,-90}}, color={191,0,0}));
    connect(pressureIncrease1.flowPort_b, pressureSensor1.flowPort) annotation (Line(points={{-59,0},{-56,0},{-56,-30},{-52,-30}}, color={255,0,0}));
    connect(pipeHeated.flowPort_b, temperatureSensor1.flowPort) annotation (Line(points={{96,-30},{44,-30},{44,-60},{48,-60}}, color={255,0,0}));
    connect(valve1.flowPort_a, relPressureSensor1.flowPort_a) annotation (Line(points={{46,0},{19,0},{19,30},{23,30}}, color={255,0,0}));
    connect(valve1.flowPort_b, relPressureSensor1.flowPort_b) annotation (Line(points={{46,0},{19,0},{19,30},{23,30}}, color={255,0,0}));
    connect(pipeHeated.flowPort_a, relTemperatureSensor1.flowPort_a) annotation (Line(points={{96,-30},{69,-30},{69,-60},{73,-60}}, color={255,0,0}));
    connect(pipeHeated.flowPort_b, relTemperatureSensor1.flowPort_b) annotation (Line(points={{96,-30},{69,-30},{69,-60},{73,-60}}, color={255,0,0}));
    annotation (experiment(StopTime=2),
      Documentation(info="<html>
<p>
A closed coolant loop (Water_10degC) of
<a href=\"modelica://Modelica.Thermal.FluidHeatFlow\">Modelica.Thermal.FluidHeatFlow</a>.
The pressure level is set by AbsolutePressure (1 bar). The flow is driven by a
PressureIncrease source whose pressure rise ramps from 0 to 10 kPa. The flow passes a
Valve (opening 0.8, linear characteristic), a OneWayValve and two pipes: one heated with
1 kW, one cooled by convection to 20 &deg;C.
</p>
<p>
The loop carries all FluidHeatFlow sensors: MassFlowSensor, VolumeFlowSensor and
EnthalpyFlowSensor in series, PressureSensor and TemperatureSensor at nodes,
RelPressureSensor across the valve and RelTemperatureSensor across the heated pipe.
The mass flow equals the volume flow times the density, 999.7 kg/m3.
</p>
</html>"));
  end FluidHeatFlowSensorsAndValves;

  model FluidHeatFlowMedia "Test of the medium records of Modelica.Thermal.FluidHeatFlow.Media"
    extends Modelica.Icons.Example;
    import Modelica.Thermal.FluidHeatFlow.Media;

    parameter Media.Medium media[8]={Media.Water(), Media.Water_10degC(), Media.Water_90degC(),
      Media.Air_30degC(), Media.Air_70degC(), Media.Gylcol20_20degC(), Media.Gylcol50_20degC(),
      Media.MineralOil()} "All medium records";
    Modelica.Units.SI.Density rho[8]=media.rho "Density";
    Modelica.Units.SI.SpecificHeatCapacity cp[8]=media.cp "Specific heat capacity at constant pressure";
    Modelica.Units.SI.KinematicViscosity nu[8]=media.nu "Kinematic viscosity";
    Real Pr[8]={media[i].nu*media[i].rho*media[i].cp/media[i].lambda for i in 1:8} "Prandtl number";
    annotation (experiment(StopTime=1.0), Documentation(info="<html>
<p>
Instantiates every medium record of
<a href=\"modelica://Modelica.Thermal.FluidHeatFlow.Media\">Modelica.Thermal.FluidHeatFlow.Media</a>
and compares its property data (density, specific heat capacity, kinematic viscosity) and the
derived Prandtl number, so that a change of the stored property values is detected.
</p>
</html>"));
  end FluidHeatFlowMedia;
end Thermal;
