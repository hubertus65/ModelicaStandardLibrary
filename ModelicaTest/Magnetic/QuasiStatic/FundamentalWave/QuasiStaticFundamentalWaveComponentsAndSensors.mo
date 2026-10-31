within ModelicaTest.Magnetic.QuasiStatic.FundamentalWave;
model QuasiStaticFundamentalWaveComponentsAndSensors "Test of components, sources and sensors of Modelica.Magnetic.QuasiStatic.FundamentalWave"
  extends Modelica.Icons.Example;

  Modelica.Magnetic.QuasiStatic.FundamentalWave.Sources.ConstantMagneticPotentialDifference constantVm(f=50, V_m=Complex(100, 0))
    annotation (Placement(transformation(extent={{-70,50},{-50,70}})));
  Modelica.Magnetic.QuasiStatic.FundamentalWave.Components.Reluctance reluctance1(R_m(d=1e5, q=2e5))
    annotation (Placement(transformation(extent={{-40,70},{-20,90}})));
  Modelica.Magnetic.QuasiStatic.FundamentalWave.Sensors.MagneticFluxSensor fluxSensor
    annotation (Placement(transformation(extent={{-10,70},{10,90}})));
  Modelica.Magnetic.QuasiStatic.FundamentalWave.Components.Crossing crossing
    annotation (Placement(transformation(extent={{20,50},{40,70}})));
  Modelica.Magnetic.QuasiStatic.FundamentalWave.Components.Reluctance reluctance2(R_m(d=3e5, q=3e5))
    annotation (Placement(transformation(extent={{50,50},{70,70}})));
  Modelica.Magnetic.QuasiStatic.FundamentalWave.Components.Idle idle
    annotation (Placement(transformation(extent={{20,20},{40,40}})));
  Modelica.Magnetic.QuasiStatic.FundamentalWave.Sensors.MagneticPotentialDifferenceSensor potentialDifferenceSensor
    annotation (Placement(transformation(extent={{-40,100},{-20,120}})));
  Modelica.Magnetic.QuasiStatic.FundamentalWave.Sensors.MagneticPotentialSensor potentialSensor
    annotation (Placement(transformation(extent={{50,80},{70,100}})));
  Modelica.Magnetic.QuasiStatic.FundamentalWave.Components.Ground ground
    annotation (Placement(transformation(extent={{-70,10},{-50,30}})));
  Modelica.Magnetic.QuasiStatic.FundamentalWave.Sources.ConstantFlux constantFlux(f=50, Phi=Complex(1e-3, 2e-4))
    annotation (Placement(transformation(extent={{-70,-30},{-50,-10}})));
  Modelica.Magnetic.QuasiStatic.FundamentalWave.Components.Reluctance reluctance3(R_m(d=1e5, q=5e4))
    annotation (Placement(transformation(extent={{-40,-30},{-20,-10}})));
  Modelica.Magnetic.QuasiStatic.FundamentalWave.Sensors.MagneticPotentialDifferenceSensor potentialDifferenceSensor3
    annotation (Placement(transformation(extent={{-40,-60},{-20,-40}})));
  Modelica.Magnetic.QuasiStatic.FundamentalWave.Components.Ground ground3
    annotation (Placement(transformation(extent={{-70,-60},{-50,-40}})));
  Modelica.ComplexBlocks.Sources.ComplexExpression vmSignal(y=Complex(50 + 50*time, 10))
    annotation (Placement(transformation(extent={{-100,-100},{-80,-80}})));
  Modelica.Magnetic.QuasiStatic.FundamentalWave.Sources.SignalMagneticPotentialDifference signalVm
    annotation (Placement(transformation(extent={{-70,-100},{-50,-80}})));
  Modelica.Magnetic.QuasiStatic.FundamentalWave.Components.Reluctance reluctance4(R_m(d=1e5, q=1e5))
    annotation (Placement(transformation(extent={{-40,-100},{-20,-80}})));
  Modelica.Magnetic.QuasiStatic.FundamentalWave.Sensors.MagneticFluxSensor fluxSensor4
    annotation (Placement(transformation(extent={{-10,-100},{10,-80}})));
  Modelica.Magnetic.QuasiStatic.FundamentalWave.Components.Ground ground4
    annotation (Placement(transformation(extent={{-70,-130},{-50,-110}})));
  Modelica.ComplexBlocks.Sources.ComplexExpression phiSignal(y=Complex(1e-3*time, -5e-4))
    annotation (Placement(transformation(extent={{-100,-160},{-80,-140}})));
  Modelica.Magnetic.QuasiStatic.FundamentalWave.Sources.SignalFlux signalFlux
    annotation (Placement(transformation(extent={{-70,-160},{-50,-140}})));
  Modelica.Magnetic.QuasiStatic.FundamentalWave.Components.Reluctance reluctance5(R_m(d=2e5, q=1e5))
    annotation (Placement(transformation(extent={{-40,-160},{-20,-140}})));
  Modelica.Magnetic.QuasiStatic.FundamentalWave.Sensors.MagneticPotentialDifferenceSensor potentialDifferenceSensor5
    annotation (Placement(transformation(extent={{-40,-190},{-20,-170}})));
  Modelica.Magnetic.QuasiStatic.FundamentalWave.Components.Ground ground5
    annotation (Placement(transformation(extent={{-70,-190},{-50,-170}})));
equation
  connect(constantVm.port_p, reluctance1.port_p) annotation (Line(points={{-49,60},{-46,60},{-46,80},{-42,80}}, color={255,128,0}));
  connect(reluctance1.port_n, fluxSensor.port_p) annotation (Line(points={{-19,80},{-12,80}}, color={255,128,0}));
  connect(fluxSensor.port_n, crossing.port_p1) annotation (Line(points={{11,80},{14,80},{14,60},{18,60}}, color={255,128,0}));
  connect(crossing.port_p2, reluctance2.port_p) annotation (Line(points={{41,60},{48,60}}, color={255,128,0}));
  connect(reluctance2.port_n, crossing.port_n2) annotation (Line(points={{71,60},{18,60}}, color={255,128,0}));
  connect(crossing.port_n1, constantVm.port_n) annotation (Line(points={{41,60},{-72,60}}, color={255,128,0}));
  connect(reluctance2.port_p, idle.port_p) annotation (Line(points={{71,60},{14,60},{14,30},{18,30}}, color={255,128,0}));
  connect(idle.port_n, reluctance2.port_n) annotation (Line(points={{41,30},{44,30},{44,60},{48,60}}, color={255,128,0}));
  connect(constantVm.port_n, ground.port_p) annotation (Line(points={{-49,60},{-76,60},{-76,20},{-72,20}}, color={255,128,0}));
  connect(reluctance1.port_p, potentialDifferenceSensor.port_p) annotation (Line(points={{-19,80},{-46,80},{-46,110},{-42,110}}, color={255,128,0}));
  connect(reluctance1.port_n, potentialDifferenceSensor.port_n) annotation (Line(points={{-19,80},{-46,80},{-46,110},{-42,110}}, color={255,128,0}));
  connect(reluctance2.port_p, potentialSensor.port_p) annotation (Line(points={{71,60},{44,60},{44,90},{48,90}}, color={255,128,0}));
  connect(constantFlux.port_p, reluctance3.port_p) annotation (Line(points={{-49,-20},{-42,-20}}, color={255,128,0}));
  connect(reluctance3.port_n, constantFlux.port_n) annotation (Line(points={{-19,-20},{-72,-20}}, color={255,128,0}));
  connect(reluctance3.port_p, potentialDifferenceSensor3.port_p) annotation (Line(points={{-19,-20},{-46,-20},{-46,-50},{-42,-50}}, color={255,128,0}));
  connect(reluctance3.port_n, potentialDifferenceSensor3.port_n) annotation (Line(points={{-19,-20},{-46,-20},{-46,-50},{-42,-50}}, color={255,128,0}));
  connect(constantFlux.port_n, ground3.port_p) annotation (Line(points={{-49,-20},{-76,-20},{-76,-50},{-72,-50}}, color={255,128,0}));
  connect(vmSignal.y, signalVm.V_m) annotation (Line(points={{-79,-90},{-72,-90}}, color={85,170,255}));
  connect(signalVm.port_p, reluctance4.port_p) annotation (Line(points={{-49,-90},{-42,-90}}, color={255,128,0}));
  connect(reluctance4.port_n, fluxSensor4.port_p) annotation (Line(points={{-19,-90},{-12,-90}}, color={255,128,0}));
  connect(fluxSensor4.port_n, signalVm.port_n) annotation (Line(points={{11,-90},{-72,-90}}, color={255,128,0}));
  connect(signalVm.port_n, ground4.port_p) annotation (Line(points={{-49,-90},{-76,-90},{-76,-120},{-72,-120}}, color={255,128,0}));
  connect(phiSignal.y, signalFlux.Phi) annotation (Line(points={{-79,-150},{-72,-150}}, color={85,170,255}));
  connect(signalFlux.port_p, reluctance5.port_p) annotation (Line(points={{-49,-150},{-42,-150}}, color={255,128,0}));
  connect(reluctance5.port_n, signalFlux.port_n) annotation (Line(points={{-19,-150},{-72,-150}}, color={255,128,0}));
  connect(reluctance5.port_p, potentialDifferenceSensor5.port_p) annotation (Line(points={{-19,-150},{-46,-150},{-46,-180},{-42,-180}}, color={255,128,0}));
  connect(reluctance5.port_n, potentialDifferenceSensor5.port_n) annotation (Line(points={{-19,-150},{-46,-150},{-46,-180},{-42,-180}}, color={255,128,0}));
  connect(signalFlux.port_n, ground5.port_p) annotation (Line(points={{-49,-150},{-76,-150},{-76,-180},{-72,-180}}, color={255,128,0}));
  annotation (Diagram(coordinateSystem(extent={{-100,-200},{100,130}})),
    experiment(StopTime=1),
    Documentation(info="<html>
<p>
Three quasi-static fundamental wave magnetic circuits of
<a href=\"modelica://Modelica.Magnetic.QuasiStatic.FundamentalWave\">Modelica.Magnetic.QuasiStatic.FundamentalWave</a>,
each with its own reference:
</p>
<ul>
<li>ConstantMagneticPotentialDifference (50 Hz, root of the reference) driving two reluctances. The
  flux passes through a Crossing (forward from port_p1 to port_p2, back from port_n2 to port_n1);
  an Idle element in parallel to the second reluctance carries no flux. It is measured with MagneticFluxSensor,
  MagneticPotentialDifferenceSensor and MagneticPotentialSensor.</li>
<li>ConstantFlux (50 Hz) through a reluctance.</li>
<li>SignalMagneticPotentialDifference and SignalFlux; their reference is defined by the Ground
  (zero frequency).</li>
</ul>
</html>"));
end QuasiStaticFundamentalWaveComponentsAndSensors;
