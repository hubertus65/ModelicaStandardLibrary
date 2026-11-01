within ModelicaTest.Magnetic.FundamentalWave;
model FundamentalWaveComponentsAndSensors "Test of components, sources, sensors, port interfaces and types of Modelica.Magnetic.FundamentalWave"
  extends Modelica.Icons.Example;

  Modelica.ComplexBlocks.Sources.ComplexExpression vmSignal(y=Complex(100*cos(2*Modelica.Constants.pi*time), 100*sin(2*Modelica.Constants.pi*time)))
    annotation (Placement(transformation(extent={{-100,50},{-80,70}})));
  Modelica.Magnetic.FundamentalWave.Sources.SignalMagneticPotentialDifference source
    annotation (Placement(transformation(extent={{-70,50},{-50,70}})));
  Modelica.Magnetic.FundamentalWave.Components.Reluctance reluctance1(R_m(d=1e5, q=2e5))
    annotation (Placement(transformation(extent={{-40,70},{-20,90}})));
  Modelica.Magnetic.FundamentalWave.Sensors.MagneticFluxSensor fluxSensor
    annotation (Placement(transformation(extent={{-10,70},{10,90}})));
  Modelica.Magnetic.FundamentalWave.Components.Crossing crossing
    annotation (Placement(transformation(extent={{20,50},{40,70}})));
  Modelica.Magnetic.FundamentalWave.Components.Reluctance reluctance2(R_m(d=3e5, q=3e5))
    annotation (Placement(transformation(extent={{50,50},{70,70}})));
  Modelica.Magnetic.FundamentalWave.Components.Idle idle
    annotation (Placement(transformation(extent={{20,20},{40,40}})));
  Modelica.Magnetic.FundamentalWave.Sensors.MagneticPotentialDifferenceSensor potentialDifferenceSensor
    annotation (Placement(transformation(extent={{-40,100},{-20,120}})));
  Modelica.Magnetic.FundamentalWave.Sensors.MagneticPotentialSensor potentialSensor
    annotation (Placement(transformation(extent={{50,80},{70,100}})));
  Modelica.Magnetic.FundamentalWave.Components.Ground ground
    annotation (Placement(transformation(extent={{-70,10},{-50,30}})));
  Modelica.Magnetic.FundamentalWave.Sources.ConstantFlux constantFlux(Phi=Complex(1e-3, 2e-4))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-60,-20})));
  Modelica.Magnetic.FundamentalWave.Components.Reluctance reluctance3(R_m(d=1e5, q=5e4))
    annotation (Placement(transformation(extent={{-40,-30},{-20,-10}})));
  Modelica.Magnetic.FundamentalWave.Sensors.MagneticPotentialDifferenceSensor potentialDifferenceSensor3
    annotation (Placement(transformation(extent={{-40,-60},{-20,-40}})));
  Modelica.Magnetic.FundamentalWave.Components.Ground ground3
    annotation (Placement(transformation(extent={{-70,-60},{-50,-40}})));
  Modelica.ComplexBlocks.Sources.ComplexExpression phiSignal(y=Complex(1e-3*time, -5e-4))
    annotation (Placement(transformation(extent={{-100,-100},{-80,-80}})));
  Modelica.Magnetic.FundamentalWave.Sources.SignalFlux signalFlux
    annotation (Placement(transformation(extent={{-70,-100},{-50,-80}})));
  Modelica.Magnetic.FundamentalWave.Interfaces.PositivePortInterface positiveInterface
    annotation (Placement(transformation(extent={{-40,-100},{-20,-80}})));
  Modelica.Magnetic.FluxTubes.Basic.ConstantReluctance reluctanceRe(R_m=1e5)
    annotation (Placement(transformation(extent={{-10,-90},{10,-70}})));
  Modelica.Magnetic.FluxTubes.Basic.ConstantReluctance reluctanceIm(R_m=2e5)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-110})));
  Modelica.Magnetic.FundamentalWave.Interfaces.NegativePortInterface negativeInterface
    annotation (Placement(transformation(extent={{20,-100},{40,-80}})));
  Modelica.Magnetic.FundamentalWave.Components.Ground ground4
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={60,-120})));
  Modelica.Magnetic.FundamentalWave.Types.SalientCurrent iSalient(d=1e3*fluxSensor.Phi.re, q=1e3*fluxSensor.Phi.im) "Flux scaled to a current, d and q component";
  Modelica.Magnetic.FundamentalWave.Types.SalientVoltage vSalient(d=1e-2*potentialSensor.V_m.re, q=1e-2*potentialSensor.V_m.im) "Magnetic potential scaled to a voltage";
  Modelica.Magnetic.FundamentalWave.Interfaces.StateSelector stateSelector(m=3, xi={cos(2*Modelica.Constants.pi*time - (k - 1)*2*Modelica.Constants.pi/3) for k in 1:3}, gamma=2*Modelica.Constants.pi*time) "Space phasor of a symmetric three-phase system"
    annotation (Placement(transformation(extent={{80,-110},{100,-90}})));
equation
  connect(vmSignal.y, source.V_m) annotation (Line(points={{-79,60},{-72,60},{-72,74},{-60,74},{-60,70}}, color={85,170,255}));
  connect(source.port_p, reluctance1.port_p) annotation (Line(points={{-70,60},{-74,60},{-74,80},{-40,80}}, color={255,128,0}));
  connect(reluctance1.port_n, fluxSensor.port_p) annotation (Line(points={{-19,80},{-12,80}}, color={255,128,0}));
  connect(fluxSensor.port_n, crossing.port_p1) annotation (Line(points={{10,80},{16,80},{16,70},{20,70}}, color={255,128,0}));
  connect(crossing.port_p2, reluctance2.port_p) annotation (Line(points={{40,50},{46,50},{46,60},{50,60}}, color={255,128,0}));
  connect(reluctance2.port_n, crossing.port_n2) annotation (Line(points={{70,60},{74,60},{74,72},{44,72},{44,70},{40,70}}, color={255,128,0}));
  connect(crossing.port_n1, source.port_n) annotation (Line(points={{20,50},{-46,50},{-46,60},{-50,60}}, color={255,128,0}));
  connect(reluctance2.port_p, idle.port_p) annotation (Line(points={{50,60},{46,60},{46,42},{16,42},{16,30},{20,30}}, color={255,128,0}));
  connect(idle.port_n, reluctance2.port_n) annotation (Line(points={{40,30},{72,30},{72,60},{70,60}}, color={255,128,0}));
  connect(source.port_n, ground.port_p) annotation (Line(points={{-50,60},{-46,60},{-46,34},{-60,34},{-60,30}}, color={255,128,0}));
  connect(reluctance1.port_p, potentialDifferenceSensor.port_p) annotation (Line(points={{-40,80},{-44,80},{-44,110},{-40,110}}, color={255,128,0}));
  connect(reluctance1.port_n, potentialDifferenceSensor.port_n) annotation (Line(points={{-20,80},{-16,80},{-16,110},{-20,110}}, color={255,128,0}));
  connect(reluctance2.port_p, potentialSensor.port_p) annotation (Line(points={{50,60},{46,60},{46,90},{50,90}}, color={255,128,0}));
  connect(constantFlux.port_p, reluctance3.port_p) annotation (Line(points={{-60,-10},{-60,-6},{-44,-6},{-44,-20},{-40,-20}}, color={255,128,0}));
  connect(reluctance3.port_n, constantFlux.port_n) annotation (Line(points={{-20,-20},{-16,-20},{-16,-34},{-60,-34},{-60,-30}}, color={255,128,0}));
  connect(reluctance3.port_p, potentialDifferenceSensor3.port_p) annotation (Line(points={{-40,-20},{-44,-20},{-44,-50},{-40,-50}}, color={255,128,0}));
  connect(reluctance3.port_n, potentialDifferenceSensor3.port_n) annotation (Line(points={{-20,-20},{-16,-20},{-16,-50},{-20,-50}}, color={255,128,0}));
  connect(constantFlux.port_n, ground3.port_p) annotation (Line(points={{-60,-30},{-60,-40}}, color={255,128,0}));
  connect(phiSignal.y, signalFlux.Phi) annotation (Line(points={{-79,-90},{-72,-90},{-72,-76},{-60,-76},{-60,-80}}, color={85,170,255}));
  connect(signalFlux.port_p, positiveInterface.port) annotation (Line(points={{-70,-90},{-74,-90},{-74,-102},{-44,-102},{-44,-90},{-40,-90}}, color={255,128,0}));
  connect(positiveInterface.port_re, reluctanceRe.port_p) annotation (Line(points={{-20,-80},{-10,-80}}, color={255,127,0}));
  connect(positiveInterface.port_im, reluctanceIm.port_p) annotation (Line(points={{-20,-99.8},{-16,-99.8},{-16,-100},{-14,-100},{-14,-110},{-10,-110}}, color={255,127,0}));
  connect(reluctanceRe.port_n, negativeInterface.port_re) annotation (Line(points={{10,-80},{18,-80},{18,-78},{44,-78},{44,-80},{40,-80}}, color={255,127,0}));
  connect(reluctanceIm.port_n, negativeInterface.port_im) annotation (Line(points={{10,-110},{44,-110},{44,-99.8},{40,-99.8}}, color={255,127,0}));
  connect(negativeInterface.port, signalFlux.port_n) annotation (Line(points={{20,-90},{12,-90},{12,-68},{-46,-68},{-46,-90},{-50,-90}}, color={255,128,0}));
  connect(signalFlux.port_n, ground4.port_p) annotation (Line(points={{-50,-90},{-46,-90},{-46,-68},{60,-68},{60,-110}}, color={255,128,0}));
  annotation (Diagram(coordinateSystem(extent={{-100,-130},{100,130}})),
    experiment(StopTime=1),
    Documentation(info="<html>
<p>
Three fundamental wave magnetic circuits of
<a href=\"modelica://Modelica.Magnetic.FundamentalWave\">Modelica.Magnetic.FundamentalWave</a>:
</p>
<ul>
<li>SignalMagneticPotentialDifference driving two salient reluctances. The flux passes through a Crossing (forward from port_p1 to
  port_p2, back from port_n2 to port_n1); an Idle element in parallel to the second reluctance
  carries no flux. It is measured with MagneticFluxSensor, MagneticPotentialDifferenceSensor
  and MagneticPotentialSensor.</li>
<li>ConstantFlux through a reluctance.</li>
<li>SignalFlux through PositivePortInterface and NegativePortInterface to two FluxTubes reluctances,
  which carry the real and the imaginary part of the flux.</li>
</ul>
<p>
In addition, the records Types.SalientCurrent and Types.SalientVoltage and the space phasor
transformation Interfaces.StateSelector are evaluated for a symmetric three-phase system.
</p>
</html>"));
end FundamentalWaveComponentsAndSensors;
