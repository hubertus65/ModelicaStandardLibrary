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
    annotation (Placement(transformation(extent={{-70,-30},{-50,-10}})));
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
    annotation (Placement(transformation(extent={{-10,-110},{10,-90}})));
  Modelica.Magnetic.FundamentalWave.Interfaces.NegativePortInterface negativeInterface
    annotation (Placement(transformation(extent={{20,-100},{40,-80}})));
  Modelica.Magnetic.FundamentalWave.Components.Ground ground4
    annotation (Placement(transformation(extent={{50,-120},{70,-100}})));
  Modelica.Magnetic.FundamentalWave.Types.SalientCurrent iSalient(d=1e3*fluxSensor.Phi.re, q=1e3*fluxSensor.Phi.im) "Flux scaled to a current, d and q component";
  Modelica.Magnetic.FundamentalWave.Types.SalientVoltage vSalient(d=1e-2*potentialSensor.V_m.re, q=1e-2*potentialSensor.V_m.im) "Magnetic potential scaled to a voltage";
  Modelica.Magnetic.FundamentalWave.Interfaces.StateSelector stateSelector(m=3, xi={cos(2*Modelica.Constants.pi*time - (k - 1)*2*Modelica.Constants.pi/3) for k in 1:3}, gamma=2*Modelica.Constants.pi*time) "Space phasor of a symmetric three-phase system";
equation
  connect(vmSignal.y, source.V_m) annotation (Line(points={{-79,60},{-72,60}}, color={85,170,255}));
  connect(source.port_p, reluctance1.port_p) annotation (Line(points={{-49,60},{-46,60},{-46,80},{-42,80}}, color={255,128,0}));
  connect(reluctance1.port_n, fluxSensor.port_p) annotation (Line(points={{-19,80},{-12,80}}, color={255,128,0}));
  connect(fluxSensor.port_n, crossing.port_p1) annotation (Line(points={{11,80},{14,80},{14,60},{18,60}}, color={255,128,0}));
  connect(crossing.port_p2, reluctance2.port_p) annotation (Line(points={{41,60},{48,60}}, color={255,128,0}));
  connect(reluctance2.port_n, crossing.port_n2) annotation (Line(points={{71,60},{18,60}}, color={255,128,0}));
  connect(crossing.port_n1, source.port_n) annotation (Line(points={{41,60},{-72,60}}, color={255,128,0}));
  connect(reluctance2.port_p, idle.port_p) annotation (Line(points={{71,60},{14,60},{14,30},{18,30}}, color={255,128,0}));
  connect(idle.port_n, reluctance2.port_n) annotation (Line(points={{41,30},{44,30},{44,60},{48,60}}, color={255,128,0}));
  connect(source.port_n, ground.port_p) annotation (Line(points={{-49,60},{-76,60},{-76,20},{-72,20}}, color={255,128,0}));
  connect(reluctance1.port_p, potentialDifferenceSensor.port_p) annotation (Line(points={{-19,80},{-46,80},{-46,110},{-42,110}}, color={255,128,0}));
  connect(reluctance1.port_n, potentialDifferenceSensor.port_n) annotation (Line(points={{-19,80},{-46,80},{-46,110},{-42,110}}, color={255,128,0}));
  connect(reluctance2.port_p, potentialSensor.port_p) annotation (Line(points={{71,60},{44,60},{44,90},{48,90}}, color={255,128,0}));
  connect(constantFlux.port_p, reluctance3.port_p) annotation (Line(points={{-49,-20},{-42,-20}}, color={255,128,0}));
  connect(reluctance3.port_n, constantFlux.port_n) annotation (Line(points={{-19,-20},{-72,-20}}, color={255,128,0}));
  connect(reluctance3.port_p, potentialDifferenceSensor3.port_p) annotation (Line(points={{-19,-20},{-46,-20},{-46,-50},{-42,-50}}, color={255,128,0}));
  connect(reluctance3.port_n, potentialDifferenceSensor3.port_n) annotation (Line(points={{-19,-20},{-46,-20},{-46,-50},{-42,-50}}, color={255,128,0}));
  connect(constantFlux.port_n, ground3.port_p) annotation (Line(points={{-49,-20},{-76,-20},{-76,-50},{-72,-50}}, color={255,128,0}));
  connect(phiSignal.y, signalFlux.Phi) annotation (Line(points={{-79,-90},{-72,-90}}, color={85,170,255}));
  connect(signalFlux.port_p, positiveInterface.port) annotation (Line(points={{-49,-90},{-42,-90}}, color={255,128,0}));
  connect(positiveInterface.port_re, reluctanceRe.port_p) annotation (Line(points={{-19,-90},{-16,-90},{-16,-80},{-12,-80}}, color={255,128,0}));
  connect(positiveInterface.port_im, reluctanceIm.port_p) annotation (Line(points={{-19,-90},{-16,-90},{-16,-100},{-12,-100}}, color={255,128,0}));
  connect(reluctanceRe.port_n, negativeInterface.port_re) annotation (Line(points={{11,-80},{14,-80},{14,-90},{18,-90}}, color={255,128,0}));
  connect(reluctanceIm.port_n, negativeInterface.port_im) annotation (Line(points={{11,-100},{14,-100},{14,-90},{18,-90}}, color={255,128,0}));
  connect(negativeInterface.port, signalFlux.port_n) annotation (Line(points={{41,-90},{-72,-90}}, color={255,128,0}));
  connect(signalFlux.port_n, ground4.port_p) annotation (Line(points={{-49,-90},{0,-90},{0,-110},{48,-110}}, color={255,128,0}));
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
