within ModelicaTest.Magnetic.QuasiStatic;
package FluxTubes "Test examples of Modelica.Magnetic.QuasiStatic.FluxTubes"
  extends Modelica.Icons.ExamplesPackage;
  model NoPhysicalTestLeakage "Testing leakage models"
    extends Modelica.Icons.Example;
    import Modelica.Constants.pi;
    parameter SI.RelativePermeability mu_rConst = 100 "Relative permeability";

    output SI.ComplexMagneticFlux Phi1 = magFluxSensor1.Phi "Flux of circuit 1";
    output SI.ComplexMagneticFlux Phi2 = magFluxSensor1.Phi "Flux of circuit 2";

    Modelica.Magnetic.QuasiStatic.FluxTubes.Sources.ConstantMagneticPotentialDifference constantSource1(f=50,
      gamma(fixed=true, start=0),
      V_m(re=200, im=-100)) annotation (Placement(transformation(extent={{-80,30},{-60,50}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.Ground ground1 annotation (Placement(transformation(
          extent={{-10,-10},{10,10}},
          origin={-90,10})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.Leakage.QuarterHollowCylinder quarterHollowCylinder(ratio=0.3, l=0.1) annotation (Placement(transformation(extent={{-50,30},{-30,50}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.Leakage.HalfCylinder halfCylinder(l=0.1) annotation (Placement(transformation(extent={{-20,30},{0,50}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.Leakage.HalfHollowCylinder halfHollowCylinder(ratio=0.3, l=0.1) annotation (Placement(transformation(extent={{10,30},{30,50}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Sources.ConstantMagneticPotentialDifference constantSource2(f=50,
      gamma(start=0, fixed=true),
      V_m(re=200, im=-100)) annotation (Placement(transformation(extent={{-80,-50},{-60,-30}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.Ground ground2 annotation (Placement(transformation(
          extent={{-10,-10},{10,10}},
          origin={-90,-70})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.Leakage.QuarterSphere quarterSphere(r=0.005) annotation (Placement(transformation(extent={{-50,-50},{-30,-30}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.Leakage.QuarterHollowSphere quarterHollowSphere(t=0.2) annotation (Placement(transformation(extent={{-20,-50},{0,-30}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.Leakage.EighthOfSphere eighthOfSphere(r=0.01) annotation (Placement(transformation(extent={{10,-50},{30,-30}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.Leakage.EighthOfHollowSphere eighthOfHollowSphere(t=0.2) annotation (Placement(transformation(extent={{40,-50},{60,-30}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.Leakage.CoaxCylindersEndFaces coaxCylindersEndFaces(
      r_0=10e-3,
      r_1=17e-3,
      r_2=20e-3) annotation (Placement(transformation(extent={{70,-50},{90,-30}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Sensors.MagneticFluxSensor magFluxSensor1 annotation (Placement(transformation(extent={{-60,80},{-40,60}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Sensors.MagneticFluxSensor magFluxSensor2 annotation (Placement(transformation(extent={{-60,-20},{-40,0}})));
  equation
    connect(ground1.port, constantSource1.port_p) annotation (Line(
        points={{-90,20},{-90,40},{-80,40}},
        color={255,170,85}));
    connect(constantSource1.port_n, quarterHollowCylinder.port_p) annotation (
        Line(
        points={{-60,40},{-50,40}},
        color={255,170,85}));
    connect(quarterHollowCylinder.port_n, halfCylinder.port_p) annotation (Line(
        points={{-30,40},{-20,40}},
        color={255,170,85}));
    connect(halfCylinder.port_n, halfHollowCylinder.port_p) annotation (Line(
        points={{0,40},{10,40}},
        color={255,170,85}));
    connect(ground2.port, constantSource2.port_p) annotation (Line(
        points={{-90,-60},{-90,-40},{-80,-40}},
        color={255,170,85}));
    connect(constantSource2.port_n, quarterSphere.port_p) annotation (Line(
        points={{-60,-40},{-50,-40}},
        color={255,170,85}));
    connect(quarterSphere.port_n, quarterHollowSphere.port_p) annotation (Line(
        points={{-30,-40},{-20,-40}},
        color={255,170,85}));
    connect(quarterHollowSphere.port_n, eighthOfSphere.port_p) annotation (Line(
        points={{0,-40},{10,-40}},
        color={255,170,85}));
    connect(eighthOfSphere.port_n, eighthOfHollowSphere.port_p) annotation (Line(
        points={{30,-40},{40,-40}},
        color={255,170,85}));
    connect(eighthOfHollowSphere.port_n, coaxCylindersEndFaces.port_p)
      annotation (Line(
        points={{60,-40},{70,-40}},
        color={255,170,85}));
    connect(magFluxSensor1.port_p, constantSource1.port_p) annotation (Line(points={{-60,70},{-90,70},{-90,40},{-80,40}}, color={255,170,85}));
    connect(magFluxSensor1.port_n, halfHollowCylinder.port_n) annotation (Line(points={{-40,70},{40,70},{40,40},{30,40}}, color={255,170,85}));
    connect(magFluxSensor2.port_p, constantSource2.port_p) annotation (Line(points={{-60,-10},{-90,-10},{-90,-40},{-80,-40}}, color={255,170,85}));
    connect(magFluxSensor2.port_n, coaxCylindersEndFaces.port_n) annotation (Line(points={{-40,-10},{90,-10},{90,-40}}, color={255,170,85}));
    annotation (experiment(Interval=0.001, StartTime=0, StopTime=1, Tolerance=1e-06));
  end NoPhysicalTestLeakage;

  model VariableComponents "Test of reluctance and permeance model with signal inputs"
    extends Modelica.Icons.Example;
    Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.VariableReluctance reluctance annotation (Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=270,
          origin={40,0})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.VariablePermeance permeance annotation (Placement(transformation(
          extent={{-10,10},{10,-10}},
          rotation=270,
          origin={20,0})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.Ground ground annotation (Placement(transformation(extent={{-10,-50},{10,-30}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Sources.ConstantMagneticFlux magFluxSource(
      gamma(fixed=true),
      f=50,
      Phi=Complex(1, 0)) annotation (Placement(transformation(
          extent={{10,-10},{-10,10}},
          rotation=270,
          origin={-40,0})));
    Modelica.Blocks.Sources.Ramp rampPermeance(
      height=1,
      duration=0.3,
      offset=0,
      startTime=0.6) annotation (Placement(transformation(extent={{-20,-10},{0,10}})));
    Modelica.Blocks.Sources.Ramp rampReluctance(
      height=1,
      duration=0.3,
      offset=0,
      startTime=0.1) annotation (Placement(transformation(extent={{80,-10},{60,10}})));
  equation
    connect(rampPermeance.y, permeance.G_m) annotation (Line(points={{1,0},{8,0}}, color={0,0,127}));
    connect(reluctance.R_m, rampReluctance.y) annotation (Line(points={{52,-2.22045e-15},{56,-2.22045e-15},{56,0},{59,0}}, color={0,0,127}));
    connect(magFluxSource.port_p, ground.port) annotation (Line(points={{-40,-10},{-40,-30},{0,-30}}, color={255,170,85}));
    connect(ground.port, permeance.port_n) annotation (Line(points={{0,-30},{20,-30},{20,-10}}, color={255,170,85}));
    connect(ground.port, reluctance.port_n) annotation (Line(points={{0,-30},{40,-30},{40,-10}}, color={255,170,85}));
    connect(magFluxSource.port_n, permeance.port_p) annotation (Line(points={{-40,10},{-40,30},{20,30},{20,10}}, color={255,170,85}));
    connect(reluctance.port_p, permeance.port_p) annotation (Line(points={{40,10},{40,30},{20,30},{20,10}}, color={255,170,85}));
    annotation (experiment(StopTime=1));
  end VariableComponents;

  model TransientShapesAndPermeability "Test of saturated FluxTubes shapes and of the transient permeability sensors of QuasiStatic.FluxTubes"
    extends Modelica.Icons.Example;

    Modelica.Blocks.Sources.Sine mmf(amplitude=400, f=50)
      annotation (Placement(transformation(extent={{-100,30},{-80,50}})));
    Modelica.Magnetic.FluxTubes.Sources.SignalMagneticPotentialDifference source
      annotation (Placement(transformation(extent={{-70,0},{-50,20}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Sensors.Transient.FundamentalWavePermabilitySensor permeabilitySensor(f=50, A=Modelica.Constants.pi*0.01^2/4, l=0.05*Modelica.Constants.pi/2)
      annotation (Placement(transformation(extent={{-30,30},{-10,50}})));
    Modelica.Magnetic.FluxTubes.Shapes.FixedShape.Toroid toroid(nonLinearPermeability=true, material=Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.CobaltIron.Vacoflux50(), r=0.05, d=0.01, alpha=Modelica.Constants.pi/2)
      annotation (Placement(transformation(extent={{10,30},{30,50}})));
    Modelica.Magnetic.FluxTubes.Shapes.FixedShape.HollowCylinderCircumferentialFlux hollowCylinder(nonLinearPermeability=true, material=Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet.M530_50A(), l=0.02, r_i=0.01, r_o=0.02, alpha=Modelica.Constants.pi/2)
      annotation (Placement(transformation(extent={{50,0},{70,20}})));
    Modelica.Magnetic.FluxTubes.Sensors.MagneticFluxSensor fluxSensor
      annotation (Placement(transformation(extent={{50,-40},{70,-20}})));
    Modelica.Magnetic.FluxTubes.Sensors.MagneticPotentialDifferenceSensor potentialSensor
      annotation (Placement(transformation(extent={{10,70},{30,90}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Sensors.Transient.Permeability permeability(A=Modelica.Constants.pi*0.01^2/4, l=0.05*Modelica.Constants.pi/2)
      annotation (Placement(transformation(extent={{50,70},{70,90}})));
    Modelica.Magnetic.FluxTubes.Basic.Ground ground
      annotation (Placement(transformation(extent={{-70,-70},{-50,-50}})));
  equation
    connect(mmf.y, source.V_m) annotation (Line(points={{-79,40},{-76,40},{-76,10},{-72,10}}, color={0,0,127}));
    connect(source.port_p, permeabilitySensor.fluxP) annotation (Line(points={{-49,10},{-40,10},{-40,40},{-32,40}}, color={255,128,0}));
    connect(permeabilitySensor.fluxN, toroid.port_p) annotation (Line(points={{-9,40},{8,40}}, color={255,128,0}));
    connect(toroid.port_n, hollowCylinder.port_p) annotation (Line(points={{31,40},{40,40},{40,10},{48,10}}, color={255,128,0}));
    connect(hollowCylinder.port_n, fluxSensor.port_p) annotation (Line(points={{71,10},{44,10},{44,-30},{48,-30}}, color={255,128,0}));
    connect(fluxSensor.port_n, source.port_n) annotation (Line(points={{71,-30},{-76,-30},{-76,10},{-72,10}}, color={255,128,0}));
    connect(source.port_n, ground.port) annotation (Line(points={{-49,10},{-76,10},{-76,-60},{-72,-60}}, color={255,128,0}));
    connect(toroid.port_p, permeabilitySensor.potentialP) annotation (Line(points={{31,40},{-32,40}}, color={255,128,0}));
    connect(toroid.port_n, permeabilitySensor.potentialN) annotation (Line(points={{31,40},{-32,40}}, color={255,128,0}));
    connect(toroid.port_p, potentialSensor.port_p) annotation (Line(points={{31,40},{4,40},{4,80},{8,80}}, color={255,128,0}));
    connect(toroid.port_n, potentialSensor.port_n) annotation (Line(points={{31,40},{4,40},{4,80},{8,80}}, color={255,128,0}));
    connect(fluxSensor.Phi, permeability.Phi) annotation (Line(points={{71,-30},{44,-30},{44,80},{48,80}}, color={0,0,127}));
    connect(potentialSensor.V_m, permeability.V_m) annotation (Line(points={{31,80},{48,80}}, color={0,0,127}));
    annotation (experiment(StopTime=0.1),
      Documentation(info="<html>
<p>
A sinusoidal magnetomotive force of 400 A (50 Hz) drives flux through a saturable
Toroid (Vacoflux50) and a saturable HollowCylinderCircumferentialFlux (M530_50A) of
<a href=\"modelica://Modelica.Magnetic.FluxTubes.Shapes.FixedShape\">Modelica.Magnetic.FluxTubes.Shapes.FixedShape</a>
in series. The effective permeability of the toroid is measured twice:
</p>
<ul>
<li>with <a href=\"modelica://Modelica.Magnetic.QuasiStatic.FluxTubes.Sensors.Transient.Permeability\">Sensors.Transient.Permeability</a>
    (instantaneous values)</li>
<li>with <a href=\"modelica://Modelica.Magnetic.QuasiStatic.FluxTubes.Sensors.Transient.FundamentalWavePermabilitySensor\">FundamentalWavePermabilitySensor</a>
    (fundamental wave over one period)</li>
</ul>
</html>"));
  end TransientShapesAndPermeability;

  model BasicElementsShapesAndSensors "Test of basic elements, shapes, leakage models and sensors of Modelica.Magnetic.QuasiStatic.FluxTubes"
    extends Modelica.Icons.Example;

    Modelica.Blocks.Sources.Constant frequency(k=50)
      annotation (Placement(transformation(extent={{-100,70},{-80,90}})));
    Modelica.ComplexBlocks.Sources.ComplexExpression vmSignal(y=Complex(100 + 50*time, 20*time))
      annotation (Placement(transformation(extent={{-100,30},{-80,50}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Sources.SignalMagneticPotentialDifference source
      annotation (Placement(transformation(extent={{-70,30},{-50,50}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.ConstantReluctance constantReluctance(R_m=1e5)
      annotation (Placement(transformation(extent={{-50,60},{-30,80}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.ConstantPermeance constantPermeance(G_m=1e-5)
      annotation (Placement(transformation(extent={{-30,60},{-10,80}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.FixedShape.Cuboid cuboid(mu_rConst=1000, l=0.02, a=0.01, b=0.01)
      annotation (Placement(transformation(extent={{-10,60},{10,80}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.FixedShape.GenericFluxTube genericFluxTube(mu_rConst=1000, l=0.02, area=1e-4)
      annotation (Placement(transformation(extent={{10,60},{30,80}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.FixedShape.HollowCylinderAxialFlux hollowAxial(mu_rConst=1000)
      annotation (Placement(transformation(extent={{30,60},{50,80}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.FixedShape.HollowCylinderCircumferentialFlux hollowCircumferential(mu_rConst=1000)
      annotation (Placement(transformation(extent={{50,60},{70,80}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.FixedShape.HollowCylinderRadialFlux hollowRadial(mu_rConst=1000)
      annotation (Placement(transformation(extent={{70,60},{90,80}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.FixedShape.Toroid toroid(mu_rConst=1000)
      annotation (Placement(transformation(extent={{70,30},{90,50}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.EddyCurrent eddyCurrent(rho=0.098e-6, l=0.1, A=1e-4)
      annotation (Placement(transformation(extent={{70,0},{90,20}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.Short short
      annotation (Placement(transformation(extent={{70,-30},{90,-10}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.Crossing crossing
      annotation (Placement(transformation(extent={{50,-30},{70,-10}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.ElectroMagneticConverter converter(N=10)
      annotation (Placement(transformation(extent={{20,-30},{40,-10}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor resistor(R_ref=1)
      annotation (Placement(transformation(extent={{20,-70},{40,-50}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Ground electricalGround
      annotation (Placement(transformation(extent={{-10,-90},{10,-70}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Sensors.MagneticFluxSensor fluxSensor
      annotation (Placement(transformation(extent={{-10,-30},{10,-10}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.Leakage.QuarterCylinder quarterCylinder(l=0.05)
      annotation (Placement(transformation(extent={{-30,0},{-10,20}})));
    Modelica.Blocks.Sources.Constant usefulReluctance(k=1e6)
      annotation (Placement(transformation(extent={{-50,-60},{-30,-40}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.LeakageWithCoefficient leakageWithCoefficient(c_usefulFlux=0.9, G_m(start=1e-7))
      annotation (Placement(transformation(extent={{-30,-30},{-10,-10}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.Idle idle
      annotation (Placement(transformation(extent={{-30,-60},{-10,-40}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Sensors.MagneticPotentialDifferenceSensor potentialDifferenceSensor
      annotation (Placement(transformation(extent={{-50,90},{-30,110}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Sensors.MagneticPotentialSensor potentialSensor
      annotation (Placement(transformation(extent={{-10,90},{10,110}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Sensors.FrequencySensor frequencySensor
      annotation (Placement(transformation(extent={{10,90},{30,110}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Sensors.ReferenceSensor referenceSensor
      annotation (Placement(transformation(extent={{30,90},{50,110}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.Ground ground
      annotation (Placement(transformation(extent={{-70,-90},{-50,-70}})));
    Modelica.ComplexBlocks.Sources.ComplexExpression fluxSignal(y=Complex(1e-4*(1 + time), -5e-5))
      annotation (Placement(transformation(extent={{-100,-120},{-80,-100}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Sources.SignalMagneticFlux fluxSource
      annotation (Placement(transformation(extent={{-70,-120},{-50,-100}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.ConstantReluctance reluctance2(R_m=2e5)
      annotation (Placement(transformation(extent={{-40,-120},{-20,-100}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Sensors.MagneticPotentialDifferenceSensor fluxSensor2
      annotation (Placement(transformation(extent={{-40,-150},{-20,-130}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.Ground ground2
      annotation (Placement(transformation(extent={{-10,-140},{10,-120}})));
  equation
    connect(frequency.y, source.f) annotation (Line(points={{-79,80},{-76,80},{-76,34},{-72,34}}, color={0,0,127}));
    connect(vmSignal.y, source.V_m) annotation (Line(points={{-79,40},{-72,40}}, color={85,170,255}));
    connect(source.port_p, constantReluctance.port_p) annotation (Line(points={{-49,40},{-56,40},{-56,70},{-52,70}}, color={255,128,0}));
    connect(constantReluctance.port_n, constantPermeance.port_p) annotation (Line(points={{-29,70},{-32,70}}, color={255,128,0}));
    connect(constantPermeance.port_n, cuboid.port_p) annotation (Line(points={{-9,70},{-12,70}}, color={255,128,0}));
    connect(cuboid.port_n, genericFluxTube.port_p) annotation (Line(points={{11,70},{8,70}}, color={255,128,0}));
    connect(genericFluxTube.port_n, hollowAxial.port_p) annotation (Line(points={{31,70},{28,70}}, color={255,128,0}));
    connect(hollowAxial.port_n, hollowCircumferential.port_p) annotation (Line(points={{51,70},{48,70}}, color={255,128,0}));
    connect(hollowCircumferential.port_n, hollowRadial.port_p) annotation (Line(points={{71,70},{68,70}}, color={255,128,0}));
    connect(hollowRadial.port_n, toroid.port_p) annotation (Line(points={{91,70},{64,70},{64,40},{68,40}}, color={255,128,0}));
    connect(toroid.port_n, eddyCurrent.port_p) annotation (Line(points={{91,40},{64,40},{64,10},{68,10}}, color={255,128,0}));
    connect(eddyCurrent.port_n, short.port_p) annotation (Line(points={{91,10},{64,10},{64,-20},{68,-20}}, color={255,128,0}));
    connect(short.port_n, crossing.port_p1) annotation (Line(points={{91,-20},{48,-20}}, color={255,128,0}));
    connect(crossing.port_p2, converter.port_p) annotation (Line(points={{71,-20},{18,-20}}, color={255,128,0}));
    connect(converter.port_n, fluxSensor.port_p) annotation (Line(points={{41,-20},{-12,-20}}, color={255,128,0}));
    connect(fluxSensor.port_n, crossing.port_n2) annotation (Line(points={{11,-20},{48,-20}}, color={255,128,0}));
    connect(crossing.port_n1, source.port_n) annotation (Line(points={{71,-20},{-76,-20},{-76,40},{-72,40}}, color={255,128,0}));
    connect(converter.pin_p, resistor.pin_p) annotation (Line(points={{41,-20},{14,-20},{14,-60},{18,-60}}, color={0,0,127}));
    connect(resistor.pin_n, converter.pin_n) annotation (Line(points={{41,-60},{14,-60},{14,-20},{18,-20}}, color={0,0,127}));
    connect(converter.pin_n, electricalGround.pin) annotation (Line(points={{41,-20},{-16,-20},{-16,-80},{-12,-80}}, color={0,0,127}));
    connect(converter.port_p, idle.port_p) annotation (Line(points={{41,-20},{-36,-20},{-36,-50},{-32,-50}}, color={255,128,0}));
    connect(idle.port_n, converter.port_n) annotation (Line(points={{-9,-50},{4,-50},{4,-20},{18,-20}}, color={255,128,0}));
    connect(source.port_p, quarterCylinder.port_p) annotation (Line(points={{-49,40},{-40,40},{-40,10},{-32,10}}, color={255,128,0}));
    connect(quarterCylinder.port_n, source.port_n) annotation (Line(points={{-9,10},{-76,10},{-76,40},{-72,40}}, color={255,128,0}));
    connect(usefulReluctance.y, leakageWithCoefficient.R_mUsefulTot) annotation (Line(points={{-29,-50},{-36,-50},{-36,-20},{-32,-20}}, color={0,0,127}));
    connect(source.port_p, leakageWithCoefficient.port_p) annotation (Line(points={{-49,40},{-40,40},{-40,-20},{-32,-20}}, color={255,128,0}));
    connect(leakageWithCoefficient.port_n, source.port_n) annotation (Line(points={{-9,-20},{-76,-20},{-76,40},{-72,40}}, color={255,128,0}));
    connect(source.port_n, ground.port) annotation (Line(points={{-49,40},{-76,40},{-76,-80},{-72,-80}}, color={255,128,0}));
    connect(constantReluctance.port_p, potentialDifferenceSensor.port_p) annotation (Line(points={{-29,70},{-56,70},{-56,100},{-52,100}}, color={255,128,0}));
    connect(constantReluctance.port_n, potentialDifferenceSensor.port_n) annotation (Line(points={{-29,70},{-56,70},{-56,100},{-52,100}}, color={255,128,0}));
    connect(toroid.port_p, potentialSensor.port) annotation (Line(points={{91,40},{-16,40},{-16,100},{-12,100}}, color={255,128,0}));
    connect(toroid.port_p, frequencySensor.port) annotation (Line(points={{91,40},{4,40},{4,100},{8,100}}, color={255,128,0}));
    connect(toroid.port_p, referenceSensor.port) annotation (Line(points={{91,40},{24,40},{24,100},{28,100}}, color={255,128,0}));
    connect(fluxSignal.y, fluxSource.Phi) annotation (Line(points={{-79,-110},{-72,-110}}, color={85,170,255}));
    connect(frequency.y, fluxSource.f) annotation (Line(points={{-79,80},{-76,80},{-76,-116},{-72,-116}}, color={0,0,127}));
    connect(fluxSource.port_p, reluctance2.port_p) annotation (Line(points={{-49,-110},{-42,-110}}, color={255,128,0}));
    connect(reluctance2.port_n, fluxSource.port_n) annotation (Line(points={{-19,-110},{-72,-110}}, color={255,128,0}));
    connect(reluctance2.port_p, fluxSensor2.port_p) annotation (Line(points={{-19,-110},{-46,-110},{-46,-140},{-42,-140}}, color={255,128,0}));
    connect(reluctance2.port_n, fluxSensor2.port_n) annotation (Line(points={{-19,-110},{-46,-110},{-46,-140},{-42,-140}}, color={255,128,0}));
    connect(fluxSource.port_n, ground2.port) annotation (Line(points={{-49,-110},{-30,-110},{-30,-130},{-12,-130}}, color={255,128,0}));
    annotation (Diagram(coordinateSystem(extent={{-100,-160},{100,120}})),
      experiment(StopTime=1),
      Documentation(info="<html>
<p>
A quasi-static magnetic circuit (50 Hz) of
<a href=\"modelica://Modelica.Magnetic.QuasiStatic.FluxTubes\">Modelica.Magnetic.QuasiStatic.FluxTubes</a>.
A SignalMagneticPotentialDifference drives the flux through a series connection of
ConstantReluctance, ConstantPermeance, the fixed shapes (Cuboid, GenericFluxTube,
HollowCylinderAxialFlux, HollowCylinderCircumferentialFlux, HollowCylinderRadialFlux, Toroid),
EddyCurrent, Short, Crossing (forward from port_p1 to port_p2, back from port_n2 to port_n1)
and an ElectroMagneticConverter loaded with a quasi-static resistor, with an Idle element in
parallel. QuarterCylinder and LeakageWithCoefficient form parallel leakage paths. A second circuit is driven by SignalMagneticFlux.
</p>
<p>
All quasi-static sensors are used: MagneticFluxSensor, MagneticPotentialDifferenceSensor,
MagneticPotentialSensor, FrequencySensor and ReferenceSensor.
</p>
<p>
LeakageWithCoefficient computes its permeance G_m from a nonlinear equation. G_m has no start
value in the library, and starting from 0 the initialization fails (division by zero in
1/G_m), so the test sets <code>G_m(start=1e-7)</code>.
</p>
</html>"));
  end BasicElementsShapesAndSensors;

model LinearInductor_R10 = Modelica.Magnetic.QuasiStatic.FluxTubes.Examples.LinearInductor(r(R=10), rQS(R_ref=10))
  "Variant of LinearInductor with a coil resistance of 10 Ohm"
  annotation (experiment(StopTime=0.2, Tolerance=1e-07), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Magnetic.QuasiStatic.FluxTubes.Examples.LinearInductor\">LinearInductor</a> (FluxTubes.Material.SoftMagnetic.ElectricSheet.M350_50A) with a
coil resistance of 10 Ohm instead of 7.5 Ohm in the transient and the quasi-static circuit.
</p>
</html>"));

model MagneticPortBase
  "Test of the base connector Modelica.Magnetic.QuasiStatic.FluxTubes.Interfaces.MagneticPort"
  extends Modelica.Icons.Example;
  model PotentialProbe "Sets the magnetic potential of its MagneticPort"
    input Complex V_m "Magnetic potential";
    Modelica.Magnetic.QuasiStatic.FluxTubes.Interfaces.MagneticPort port "Port";
  equation
    port.V_m = V_m;
  end PotentialProbe;
  model FluxProbe "Draws a magnetic flux from its MagneticPort"
    input Complex Phi "Magnetic flux into the port";
    Modelica.Magnetic.QuasiStatic.FluxTubes.Interfaces.MagneticPort port "Port";
  equation
    port.Phi = Phi;
  end FluxProbe;
  PotentialProbe a(V_m=Complex(100*time, 50)) "Potential probe";
  FluxProbe b(Phi=Complex(1e-3, -2e-3*time)) "Flux probe";
equation
  connect(a.port, b.port);
  annotation (experiment(StopTime=1), Documentation(info="<html>
<p>
<a href=\"modelica://Modelica.Magnetic.QuasiStatic.FluxTubes.Interfaces.MagneticPort\">QuasiStatic.FluxTubes.Interfaces.MagneticPort</a>
is not used anywhere in the MSL: the positive and negative ports of QuasiStatic.FluxTubes extend
the identical QuasiStatic.FundamentalWave.Interfaces.MagneticPort instead. Two probes connect through it: one
sets the complex magnetic potential, the other the flux, which the connection passes to the first.
</p>
</html>"));
end MagneticPortBase;
end FluxTubes;
