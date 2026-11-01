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
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={60,10})));
    Modelica.Magnetic.FluxTubes.Sensors.MagneticFluxSensor fluxSensor
      annotation (Placement(transformation(extent={{50,-40},{70,-20}})));
    Modelica.Magnetic.FluxTubes.Sensors.MagneticPotentialDifferenceSensor potentialSensor
      annotation (Placement(transformation(extent={{10,70},{30,90}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Sensors.Transient.Permeability permeability(A=Modelica.Constants.pi*0.01^2/4, l=0.05*Modelica.Constants.pi/2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={60,80})));
    Modelica.Magnetic.FluxTubes.Basic.Ground ground
      annotation (Placement(transformation(extent={{-70,-70},{-50,-50}})));
  equation
    connect(mmf.y, source.V_m) annotation (Line(points={{-79,40},{-60,40},{-60,21}}, color={0,0,127}));
    connect(source.port_p, permeabilitySensor.fluxP) annotation (Line(points={{-70,10},{-74,10},{-74,-2},{-34,-2},{-34,40},{-30,40}}, color={255,127,0}));
    connect(permeabilitySensor.fluxN, toroid.port_p) annotation (Line(points={{-9,40},{8,40}}, color={255,127,0}));
    connect(toroid.port_n, hollowCylinder.port_p) annotation (Line(points={{30,40},{60,40},{60,20}}, color={255,127,0}));
    connect(hollowCylinder.port_n, fluxSensor.port_p) annotation (Line(points={{60,0},{60,-10},{46,-10},{46,-30},{50,-30}}, color={255,127,0}));
    connect(fluxSensor.port_n, source.port_n) annotation (Line(points={{70,-30},{74,-30},{74,-46},{-46,-46},{-46,10},{-50,10}}, color={255,127,0}));
    connect(source.port_n, ground.port) annotation (Line(points={{-50,10},{-46,10},{-46,-46},{-60,-46},{-60,-50}}, color={255,127,0}));
    connect(toroid.port_p, permeabilitySensor.potentialP) annotation (Line(points={{10,40},{-8,40},{-8,54},{-20,54},{-20,50}}, color={255,127,0}));
    connect(toroid.port_n, permeabilitySensor.potentialN) annotation (Line(points={{30,40},{34,40},{34,26},{-20,26},{-20,30}}, color={255,127,0}));
    connect(toroid.port_p, potentialSensor.port_p) annotation (Line(points={{10,40},{6,40},{6,80},{10,80}}, color={255,127,0}));
    connect(toroid.port_n, potentialSensor.port_n) annotation (Line(points={{30,40},{34,40},{34,80},{30,80}}, color={255,127,0}));
    connect(fluxSensor.Phi, permeability.Phi) annotation (Line(points={{60,-40},{60,-44},{72,-44},{72,62},{54,62},{54,68}}, color={0,0,127}));
    connect(potentialSensor.V_m, permeability.V_m) annotation (Line(points={{20,70},{20,64},{66,64},{66,68}}, color={0,0,127}));
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
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-10,70})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.FixedShape.Cuboid cuboid(mu_rConst=1000, l=0.02, a=0.01, b=0.01)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={20,70})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.FixedShape.GenericFluxTube genericFluxTube(mu_rConst=1000, l=0.02, area=1e-4)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={50,70})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.FixedShape.HollowCylinderAxialFlux hollowAxial(mu_rConst=1000)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={80,70})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.FixedShape.HollowCylinderCircumferentialFlux hollowCircumferential(mu_rConst=1000)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={110,70})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.FixedShape.HollowCylinderRadialFlux hollowRadial(mu_rConst=1000)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={140,70})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.FixedShape.Toroid toroid(mu_rConst=1000)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={140,40})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.EddyCurrent eddyCurrent(rho=0.098e-6, l=0.1, A=1e-4)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={140,10})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.Short short
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={140,-20})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.Crossing crossing
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={110,-20})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.ElectroMagneticConverter converter(N=10)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={60,-20})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor resistor(R_ref=1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={60,-60})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Ground electricalGround
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={20,-80})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Sensors.MagneticFluxSensor fluxSensor
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={20,-20})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.Leakage.QuarterCylinder quarterCylinder(l=0.05)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-10,10})));
    Modelica.Blocks.Sources.Constant usefulReluctance(k=1e6)
      annotation (Placement(transformation(extent={{-50,-60},{-30,-40}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.LeakageWithCoefficient leakageWithCoefficient(c_usefulFlux=0.9, G_m(start=1e-7))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-10,-20})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.Idle idle
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-10,-50})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Sensors.MagneticPotentialDifferenceSensor potentialDifferenceSensor
      annotation (Placement(transformation(extent={{-50,90},{-30,110}})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Sensors.MagneticPotentialSensor potentialSensor
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={20,100})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Sensors.FrequencySensor frequencySensor
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={50,100})));
    Modelica.Magnetic.QuasiStatic.FluxTubes.Sensors.ReferenceSensor referenceSensor
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={80,100})));
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
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={20,-130})));
  equation
    connect(frequency.y, source.f) annotation (Line(points={{-79,80},{-60,80},{-60,56},{-54,56},{-54,52}}, color={0,0,127}));
    connect(vmSignal.y, source.V_m) annotation (Line(points={{-79,40},{-72,40},{-72,56},{-66,56},{-66,52}}, color={85,170,255}));
    connect(source.port_p, constantReluctance.port_p) annotation (Line(points={{-70,40},{-74,40},{-74,70},{-50,70}}, color={255,170,85}));
    connect(constantReluctance.port_n, constantPermeance.port_p) annotation (Line(points={{-30,70},{-20,70}}, color={255,170,85}));
    connect(constantPermeance.port_n, cuboid.port_p) annotation (Line(points={{0,70},{10,70}}, color={255,170,85}));
    connect(cuboid.port_n, genericFluxTube.port_p) annotation (Line(points={{30,70},{40,70}}, color={255,170,85}));
    connect(genericFluxTube.port_n, hollowAxial.port_p) annotation (Line(points={{60,70},{70,70}}, color={255,170,85}));
    connect(hollowAxial.port_n, hollowCircumferential.port_p) annotation (Line(points={{90,70},{100,70}}, color={255,170,85}));
    connect(hollowCircumferential.port_n, hollowRadial.port_p) annotation (Line(points={{120,70},{128,70},{128,84},{140,84},{140,80}}, color={255,170,85}));
    connect(hollowRadial.port_n, toroid.port_p) annotation (Line(points={{140,60},{140,50}}, color={255,170,85}));
    connect(toroid.port_n, eddyCurrent.port_p) annotation (Line(points={{140,30},{140,20}}, color={255,170,85}));
    connect(eddyCurrent.port_n, short.port_p) annotation (Line(points={{140,0},{140,-8},{154,-8},{154,-20},{150,-20}}, color={255,170,85}));
    connect(short.port_n, crossing.port_p1) annotation (Line(points={{130,-20},{122,-20},{122,-8},{96,-8},{96,-10},{100,-10}}, color={255,170,85}));
    connect(crossing.port_p2, converter.port_p) annotation (Line(points={{120,-30},{124,-30},{124,-32},{80,-32},{80,-10},{70,-10}}, color={255,170,85}));
    connect(converter.port_n, fluxSensor.port_p) annotation (Line(points={{70,-30},{74,-30},{74,-34},{20,-34},{20,-30}}, color={255,170,85}));
    connect(fluxSensor.port_n, crossing.port_n2) annotation (Line(points={{20,-10},{20,-6},{124,-6},{124,-10},{120,-10}}, color={255,170,85}));
    connect(crossing.port_n1, source.port_n) annotation (Line(points={{100,-30},{90,-30},{90,0},{4,0},{4,40},{-50,40}}, color={255,170,85}));
    connect(converter.pin_p, resistor.pin_p) annotation (Line(points={{50,-10},{46,-10},{46,-60},{50,-60}}, color={85,170,255}));
    connect(resistor.pin_n, converter.pin_n) annotation (Line(points={{70,-60},{74,-60},{74,-36},{48,-36},{48,-30},{50,-30}}, color={85,170,255}));
    connect(converter.pin_n, electricalGround.pin) annotation (Line(points={{50,-30},{40,-30},{40,-66},{20,-66},{20,-70}}, color={85,170,255}));
    connect(converter.port_p, idle.port_p) annotation (Line(points={{70,-10},{74,-10},{74,-8},{2,-8},{2,-36},{-10,-36},{-10,-40}}, color={255,170,85}));
    connect(idle.port_n, converter.port_n) annotation (Line(points={{-10,-60},{-10,-64},{18,-64},{18,-34},{74,-34},{74,-30},{70,-30}}, color={255,170,85}));
    connect(source.port_p, quarterCylinder.port_p) annotation (Line(points={{-70,40},{-74,40},{-74,10},{-20,10}}, color={255,170,85}));
    connect(quarterCylinder.port_n, source.port_n) annotation (Line(points={{0,10},{4,10},{4,40},{-50,40}}, color={255,170,85}));
    connect(usefulReluctance.y, leakageWithCoefficient.R_mUsefulTot) annotation (Line(points={{-29,-50},{-22,-50},{-22,-4},{-10,-4},{-10,-8}}, color={0,0,127}));
    connect(source.port_p, leakageWithCoefficient.port_p) annotation (Line(points={{-70,40},{-74,40},{-74,10},{-24,10},{-24,-20},{-20,-20}}, color={255,170,85}));
    connect(leakageWithCoefficient.port_n, source.port_n) annotation (Line(points={{0,-20},{4,-20},{4,40},{-50,40}}, color={255,170,85}));
    connect(source.port_n, ground.port) annotation (Line(points={{-50,40},{-46,40},{-46,-30},{-60,-30},{-60,-70}}, color={255,170,85}));
    connect(constantReluctance.port_p, potentialDifferenceSensor.port_p) annotation (Line(points={{-50,70},{-54,70},{-54,100},{-50,100}}, color={255,170,85}));
    connect(constantReluctance.port_n, potentialDifferenceSensor.port_n) annotation (Line(points={{-30,70},{-26,70},{-26,100},{-30,100}}, color={255,170,85}));
    connect(toroid.port_p, potentialSensor.port) annotation (Line(points={{140,50},{140,58},{152,58},{152,86},{20,86},{20,90}}, color={255,170,85}));
    connect(toroid.port_p, frequencySensor.port) annotation (Line(points={{140,50},{140,58},{152,58},{152,86},{50,86},{50,90}}, color={255,170,85}));
    connect(toroid.port_p, referenceSensor.port) annotation (Line(points={{140,50},{140,58},{152,58},{152,86},{80,86},{80,90}}, color={255,170,85}));
    connect(fluxSignal.y, fluxSource.Phi) annotation (Line(points={{-79,-110},{-72,-110},{-72,-94},{-66,-94},{-66,-98}}, color={85,170,255}));
    connect(frequency.y, fluxSource.f) annotation (Line(points={{-79,80},{-76,80},{-76,-92},{-54,-92},{-54,-98}}, color={0,0,127}));
    connect(fluxSource.port_p, reluctance2.port_p) annotation (Line(points={{-70,-110},{-74,-110},{-74,-122},{-44,-122},{-44,-110},{-40,-110}}, color={255,170,85}));
    connect(reluctance2.port_n, fluxSource.port_n) annotation (Line(points={{-20,-110},{-16,-110},{-16,-98},{-46,-98},{-46,-110},{-50,-110}}, color={255,170,85}));
    connect(reluctance2.port_p, fluxSensor2.port_p) annotation (Line(points={{-40,-110},{-44,-110},{-44,-140},{-40,-140}}, color={255,170,85}));
    connect(reluctance2.port_n, fluxSensor2.port_n) annotation (Line(points={{-20,-110},{-16,-110},{-16,-140},{-20,-140}}, color={255,170,85}));
    connect(fluxSource.port_n, ground2.port) annotation (Line(points={{-50,-110},{-46,-110},{-46,-98},{-16,-98},{-16,-116},{20,-116},{20,-120}}, color={255,170,85}));
    annotation (Diagram(coordinateSystem(extent={{-100,-160},{160,120}})),
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
    Modelica.Magnetic.QuasiStatic.FluxTubes.Interfaces.MagneticPort port "Port"
      annotation (Placement(transformation(extent={{90,-10},{110,10}})));
  equation
    port.V_m = V_m;
    annotation (Icon(graphics={
          Rectangle(extent={{-80,40},{80,-40}}, lineColor={255,170,85}, fillColor={255,255,255},
            fillPattern=FillPattern.Solid),
          Text(extent={{-150,-50},{150,-90}}, textString="%name", textColor={0,0,255})}));
  end PotentialProbe;
  model FluxProbe "Draws a magnetic flux from its MagneticPort"
    input Complex Phi "Magnetic flux into the port";
    Modelica.Magnetic.QuasiStatic.FluxTubes.Interfaces.MagneticPort port "Port"
      annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  equation
    port.Phi = Phi;
    annotation (Icon(graphics={
          Rectangle(extent={{-80,40},{80,-40}}, lineColor={255,170,85}, fillColor={255,255,255},
            fillPattern=FillPattern.Solid),
          Text(extent={{-150,-50},{150,-90}}, textString="%name", textColor={0,0,255})}));
  end FluxProbe;
  PotentialProbe a(V_m=Complex(100*time, 50)) "Potential probe"
    annotation (Placement(transformation(extent={{-40,-10},{-20,10}})));
  FluxProbe b(Phi=Complex(1e-3, -2e-3*time)) "Flux probe"
    annotation (Placement(transformation(extent={{20,-10},{40,10}})));
equation
  connect(a.port, b.port)
    annotation (Line(points={{-20,0},{20,0}}, color={255,170,85}));
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
