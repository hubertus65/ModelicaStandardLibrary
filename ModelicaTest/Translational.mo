within ModelicaTest;
package Translational "Test models for Modelica.Mechanics.Translational"
extends Modelica.Icons.ExamplesPackage;

  model AllComponents
    extends Modelica.Icons.Example;

    Modelica.Mechanics.Translational.Components.Mass slidingMass(
      m=1,
      s(fixed=true),
      v(fixed=true))
      annotation (Placement(transformation(extent={{-70,60},{-50,80}})));
    Modelica.Mechanics.Translational.Components.Rod rod(L=0)
                                             annotation (Placement(
          transformation(extent={{-30,60},{-10,80}})));
    Modelica.Mechanics.Translational.Components.Spring spring(c=1)
      annotation (Placement(transformation(extent={{0,60},{20,80}})));
    Modelica.Mechanics.Translational.Components.Damper damper(
                                                   d=10, s_rel(fixed=true))
      annotation (Placement(transformation(extent={{30,60},{50,80}})));
    Modelica.Mechanics.Translational.Components.Mass slidingMass1(m=1)
      annotation (Placement(transformation(extent={{60,60},{80,80}})));
    Modelica.Mechanics.Translational.Components.SpringDamper springDamper(
      c=1,
      d=1,
      s_rel(fixed=true),
      v_rel(fixed=true))
      annotation (Placement(transformation(extent={{-30,20},{-10,40}})));
    Modelica.Mechanics.Translational.Components.Mass slidingMass2(m=1)
      annotation (Placement(transformation(extent={{0,20},{20,40}})));
    Modelica.Mechanics.Translational.Components.ElastoGap elastoGap(
      c=1,
      d=1,
      s_rel(fixed=true),
      v_rel(fixed=true))
      annotation (Placement(transformation(extent={{30,20},{50,40}})));
    Modelica.Mechanics.Translational.Components.Mass slidingMass3(m=1)
      annotation (Placement(transformation(extent={{60,20},{80,40}})));
    Modelica.Mechanics.Translational.Sources.Position position(v(fixed=true))
      annotation (Placement(transformation(extent={{-70,-20},{-50,0}})));
    Modelica.Blocks.Sources.Sine sine(f=1)
                                      annotation (Placement(transformation(
            extent={{-100,-20},{-80,0}})));
    Modelica.Mechanics.Translational.Components.Mass slidingMass4(m=1)
      annotation (Placement(transformation(extent={{-40,-20},{-20,0}})));
    Modelica.Mechanics.Translational.Sources.Speed position1
      annotation (Placement(transformation(extent={{-70,-60},{-50,-40}})));
    Modelica.Blocks.Sources.Sine sine1(f=1)
                                       annotation (Placement(transformation(
            extent={{-100,-60},{-80,-40}})));
    Modelica.Mechanics.Translational.Components.Mass slidingMass5(m=1)
      annotation (Placement(transformation(extent={{-40,-60},{-20,-40}})));
    Modelica.Mechanics.Translational.Sources.Accelerate position2
      annotation (Placement(transformation(extent={{-70,-100},{-50,-80}})));
    Modelica.Blocks.Sources.Sine sine2(f=1)
                                       annotation (Placement(transformation(
            extent={{-100,-100},{-80,-80}})));
    Modelica.Mechanics.Translational.Components.Mass slidingMass6(m=1)
      annotation (Placement(transformation(extent={{-40,-100},{-20,-80}})));
    Modelica.Mechanics.Translational.Sources.Move position3
      annotation (Placement(transformation(extent={{30,-20},{50,0}})));
    Modelica.Blocks.Sources.Sine sine3[3](f={1,1,1})
                                          annotation (Placement(transformation(
            extent={{0,-20},{20,0}})));
    Modelica.Mechanics.Translational.Components.Mass slidingMass7(m=1)
      annotation (Placement(transformation(extent={{60,-20},{80,0}})));
    Modelica.Mechanics.Translational.Sources.Force force
      annotation (Placement(transformation(extent={{-70,20},{-50,40}})));
    Modelica.Mechanics.Translational.Components.RelativeStates relativeStates(s_rel(
          fixed=true), v_rel(fixed=true))
      annotation (Placement(transformation(extent={{-20,80},{0,100}})));
    Modelica.Blocks.Sources.Sine sine4(f=1)
                                       annotation (Placement(transformation(
            extent={{-100,20},{-80,40}})));
  equation
    connect(slidingMass.flange_b, rod.flange_a) annotation (Line(
        points={{-50,70},{-30,70}}, color={0,127,0}));
    connect(rod.flange_b, spring.flange_a) annotation (Line(
        points={{-10,70},{0,70}}, color={0,127,0}));
    connect(spring.flange_b, damper.flange_a) annotation (Line(
        points={{20,70},{30,70}}, color={0,127,0}));
    connect(damper.flange_b, slidingMass1.flange_a) annotation (Line(
        points={{50,70},{60,70}}, color={0,127,0}));
    connect(slidingMass.flange_b, springDamper.flange_a) annotation (Line(
        points={{-50,70},{-40,70},{-40,30},{-30,30}}, color={0,127,0}));
    connect(springDamper.flange_b, slidingMass2.flange_a) annotation (Line(
        points={{-10,30},{0,30}}, color={0,127,0}));
    connect(slidingMass2.flange_b, elastoGap.flange_a) annotation (Line(
        points={{20,30},{30,30}}, color={0,127,0}));
    connect(elastoGap.flange_b, slidingMass3.flange_a) annotation (Line(
        points={{50,30},{60,30}}, color={0,127,0}));
    connect(sine.y, position.s_ref) annotation (Line(
        points={{-79,-10},{-72,-10}}, color={0,0,127}));
    connect(position.flange,   slidingMass4.flange_a) annotation (Line(
        points={{-50,-10},{-40,-10}}, color={0,127,0}));
    connect(position1.flange,   slidingMass5.flange_a) annotation (Line(
        points={{-50,-50},{-40,-50}}, color={0,127,0}));
    connect(position2.flange,   slidingMass6.flange_a) annotation (Line(
        points={{-50,-90},{-40,-90}}, color={0,127,0}));
    connect(position3.flange,   slidingMass7.flange_a) annotation (Line(
        points={{50,-10},{60,-10}}, color={0,127,0}));
    connect(sine1.y, position1.v_ref) annotation (Line(
        points={{-79,-50},{-72,-50}}, color={0,0,127}));
    connect(sine2.y,position2.a_ref)
                                  annotation (Line(
        points={{-79,-90},{-72,-90}}, color={0,0,127}));
    connect(sine3.y, position3.u) annotation (Line(
        points={{21,-10},{28,-10}}, color={0,0,127}));
    connect(force.flange,   springDamper.flange_a) annotation (Line(
        points={{-50,30},{-30,30}}, color={0,127,0}));
    connect(slidingMass.flange_b, relativeStates.flange_a) annotation (Line(
        points={{-50,70},{-40,70},{-40,90},{-20,90}}, color={0,127,0}));
    connect(relativeStates.flange_b, damper.flange_a) annotation (Line(
        points={{0,90},{30,90},{30,70}}, color={0,127,0}));
    connect(sine4.y, force.f) annotation (Line(
        points={{-79,30},{-72,30}}, color={0,0,127}));
    annotation (experiment(StopTime=1.1));
  end AllComponents;

  model TestBraking
    extends Modelica.Icons.Example;
    Modelica.Mechanics.Translational.Components.Mass mass1(
      m=1,
      s(fixed=true, start=0),
      v(fixed=true, start=100))
      annotation (Placement(transformation(extent={{-40,70},{-20,90}})));
    Modelica.Mechanics.Translational.Sources.LinearSpeedDependentForce
      linearSpeedDependentForce(f_nominal=-100, v_nominal=100)
      annotation (Placement(transformation(extent={{40,70},{20,90}})));
    Modelica.Mechanics.Translational.Components.Mass mass2(
      m=1,
      s(fixed=true, start=0),
      v(fixed=true, start=100))
      annotation (Placement(transformation(extent={{-40,40},{-20,60}})));
    Modelica.Mechanics.Translational.Sources.QuadraticSpeedDependentForce
      quadraticSpeedDependentForce(f_nominal=-100, v_nominal=100)
      annotation (Placement(transformation(extent={{40,40},{20,60}})));
    Modelica.Mechanics.Translational.Components.Mass mass3(
      m=1,
      s(fixed=true, start=0),
      v(fixed=true, start=100))
      annotation (Placement(transformation(extent={{-40,10},{-20,30}})));
    Modelica.Mechanics.Translational.Sources.ConstantForce constantForce(
        f_constant=-100)
      annotation (Placement(transformation(extent={{40,10},{20,30}})));
    Modelica.Mechanics.Translational.Components.Mass mass4(
      m=1,
      s(fixed=true, start=0),
      v(fixed=true, start=100))
      annotation (Placement(transformation(extent={{-40,-20},{-20,0}})));
    Modelica.Mechanics.Translational.Sources.SignForce signForce(f_nominal=-100,
        v0=1) annotation (Placement(transformation(extent={{40,-20},{20,0}})));
    Modelica.Mechanics.Translational.Sources.EddyCurrentForce eddyCurrentForce(
      f_nominal=100,
      v_nominal=10,
      useHeatPort=true,
      TRef=293.15,
      alpha20(displayUnit="1/K") = Modelica.Electrical.Machines.Thermal.Constants.alpha20Copper)
      annotation (Placement(transformation(extent={{40,-50},{20,-30}})));
    Modelica.Mechanics.Translational.Components.Mass mass5(
      m=1,
      s(fixed=true, start=0),
      v(fixed=true, start=20))
      annotation (Placement(transformation(extent={{-40,-50},{-20,-30}})));
    Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor(C=1, T(
          fixed=true)) annotation (Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=180,
          origin={60,-60})));
    Modelica.Mechanics.Translational.Components.Mass mass6(
      m=1,
      s(fixed=true, start=0),
      v(fixed=true, start=100))
      annotation (Placement(transformation(extent={{-40,-90},{-20,-70}})));
    Modelica.Mechanics.Translational.Sources.InverseSpeedDependentForce inverseSpeedDependentForce(
      f_nominal=-100,
      v_nominal=100,
      v0=1) annotation (Placement(transformation(extent={{40,-90},{20,-70}})));
  equation
    connect(mass1.flange_b, linearSpeedDependentForce.flange)
      annotation (Line(points={{-20,80},{20,80}}, color={0,127,0}));
    connect(quadraticSpeedDependentForce.flange, mass2.flange_b)
      annotation (Line(points={{20,50},{-20,50}}, color={0,127,0}));
    connect(constantForce.flange, mass3.flange_b)
      annotation (Line(points={{20,20},{-20,20}},
                                                color={0,127,0}));
    connect(signForce.flange, mass4.flange_b)
      annotation (Line(points={{20,-10},{-20,-10}}, color={0,127,0}));
    connect(eddyCurrentForce.heatPort, heatCapacitor.port) annotation (Line(
          points={{40,-50},{60,-50}}, color={191,0,0}));
    connect(eddyCurrentForce.flange, mass5.flange_b) annotation (Line(points={{20,-40},{-20,-40}}, color={0,127,0}));
    connect(inverseSpeedDependentForce.flange, mass6.flange_b)
      annotation (Line(points={{20,-80},{-20,-80}},   color={0,127,0}));
    annotation (
      experiment(StopTime=2),
      Diagram(coordinateSystem(extent={{-100,-100},{100,100}})));
  end TestBraking;

  model Vehicles
    extends Modelica.Icons.Example;
    Modelica.Mechanics.Translational.Components.Vehicle vehicleDrag(
      m=1200,
      J=2.3,
      R=0.31,
      A=2.2,
      Cd=0.31,
      vWindConstant=-2,
      CrConstant=0,
      inclinationConstant=0,
      v(fixed=true, start=27.777777777778)) annotation (Placement(transformation(extent={{-80,40},{-60,60}})));
    Modelica.Mechanics.Translational.Components.Vehicle vehicleDragInConst(
      m=1200,
      J=2.3,
      R=0.31,
      A=2.2,
      Cd=0.31,
      useWindInput=true,
      vWindConstant=1,
      CrConstant=0,
      inclinationConstant=0,
      v(fixed=true, start=27.777777777778)) annotation (Placement(transformation(extent={{0,40},{20,60}})));
    Modelica.Mechanics.Translational.Components.Vehicle vehicleDragInVar(
      m=1200,
      J=2.3,
      R=0.31,
      A=2.2,
      Cd=0.31,
      useWindInput=true,
      vWindConstant=1,
      CrConstant=0,
      inclinationConstant=0,
      v(fixed=true, start=27.777777777778)) annotation (Placement(transformation(extent={{80,40},{100,60}})));
    Modelica.Mechanics.Translational.Components.Vehicle vehicleRoll(
      m=1200,
      J=2.3,
      R=0.31,
      A=0,
      Cd=0.31,
      CrConstant=0.013,
      inclinationConstant=0,
      v(fixed=true, start=27.777777777778)) annotation (Placement(transformation(extent={{-80,0},{-60,20}})));
    Modelica.Mechanics.Translational.Components.Vehicle vehicleRollInConst(
      m=1200,
      J=2.3,
      R=0.31,
      A=0,
      Cd=0.31,
      useCrInput=true,
      CrConstant=0.013,
      inclinationConstant=0,
      v(fixed=true, start=27.777777777778)) annotation (Placement(transformation(extent={{-2,0},{18,20}})));
    Modelica.Mechanics.Translational.Components.Vehicle vehicleRollInVar(
      m=1200,
      J=2.3,
      R=0.31,
      A=0,
      Cd=0.31,
      useCrInput=true,
      CrConstant=0.013,
      inclinationConstant=0,
      v(fixed=true, start=27.777777777778)) annotation (Placement(transformation(extent={{78,0},{98,20}})));
    Modelica.Mechanics.Translational.Components.Vehicle vehicleInclination(
      m=1200,
      J=2.3,
      R=0.31,
      A=0,
      Cd=0.31,
      CrConstant=0,
      inclinationConstant=0.05,
      v(fixed=true, start=27.777777777778)) annotation (Placement(transformation(extent={{-80,-40},{-60,-20}})));
    Modelica.Mechanics.Translational.Components.Vehicle vehicleInclinationInConst(
      m=1200,
      J=2.3,
      R=0.31,
      A=0,
      Cd=0.31,
      CrConstant=0,
      useInclinationInput=true,
      inclinationConstant=0.12,
      v(fixed=true, start=27.777777777778)) annotation (Placement(transformation(extent={{0,-40},{20,-20}})));
    Modelica.Mechanics.Translational.Components.Vehicle vehicleInclinationInVar(
      m=1200,
      J=2.3,
      R=0.31,
      A=0,
      Cd=0.31,
      CrConstant=0,
      useInclinationInput=true,
      inclinationConstant=0.12,
      v(fixed=true, start=27.777777777778)) annotation (Placement(transformation(extent={{80,-40},{100,-20}})));
    Modelica.Blocks.Sources.Constant const1(k=-2) annotation (Placement(transformation(extent={{-40,20},{-20,40}})));
    Modelica.Blocks.Sources.Constant const2(k=0.013) annotation (Placement(transformation(extent={{-40,-20},{-20,0}})));
    Modelica.Blocks.Sources.Constant const3(k=0.05) annotation (Placement(transformation(extent={{-40,-60},{-20,-40}})));
    Modelica.Blocks.Sources.Sine sine1(
      amplitude=1,
      f=1,
      offset=-2) annotation (Placement(transformation(extent={{40,20},{60,40}})));
    Modelica.Blocks.Sources.Sine sine2(
      amplitude=0.013,
      f=0.5,
      offset=0.013) annotation (Placement(transformation(extent={{40,-20},{60,0}})));
    Modelica.Blocks.Sources.Sine sine3(
      amplitude=-0.05,
      f=1,
      offset=0.05) annotation (Placement(transformation(extent={{40,-60},{60,-40}})));
  equation
    connect(const1.y, vehicleDragInConst.vWind) annotation (Line(points={{-19,30},{16,30},{16,38}}, color={0,0,127}));
    connect(const2.y, vehicleRollInConst.cr) annotation (Line(points={{-19,-10},{8,-10},{8,-2}}, color={0,0,127}));
    connect(const3.y, vehicleInclinationInConst.inclination) annotation (Line(points={{-19,-50},{4,-50},{4,-42}}, color={0,0,127}));
    connect(sine1.y, vehicleDragInVar.vWind) annotation (Line(points={{61,30},{96,30},{96,38}}, color={0,0,127}));
    connect(sine2.y, vehicleRollInVar.cr) annotation (Line(points={{61,-10},{88,-10},{88,-2}}, color={0,0,127}));
    connect(sine3.y, vehicleInclinationInVar.inclination) annotation (Line(points={{61,-50},{84,-50},{84,-42}}, color={0,0,127}));
    annotation (
      experiment(StopTime=2));
  end Vehicles;

  model TestFrictionPosition
    extends Modelica.Icons.Example;

    parameter Real fric=155.9218;
    Modelica.Mechanics.Translational.Sources.Position position(exact=true)
      annotation (Placement(transformation(extent={{-10,30},{10,50}})));

    Modelica.Blocks.Sources.Sine sine(
      amplitude=0.1,
      f=1,
      phase=0.78539816339745,
      offset=0.5) annotation (Placement(transformation(extent={{-70,30},{-50,50}})));

    Modelica.Mechanics.Translational.Components.SupportFriction supportFriction(f_pos=
          Modelica.Mechanics.Translational.Examples.Utilities.GenerateStribeckFrictionTable(
          1,
          5,
          10,
          1,
          12,
          50), peak=1.001)
      annotation (Placement(transformation(extent={{46,30},{66,50}})));
    Modelica.Mechanics.Translational.Sources.Force    force
      annotation (Placement(transformation(extent={{-10,-50},{10,-30}})));
    Modelica.Blocks.Sources.Sine sine1(
      amplitude=25,
      f=1,
      phase=0.78539816339745,
      offset=0.5) annotation (Placement(transformation(extent={{-70,-50},{-50,-30}})));
    Modelica.Mechanics.Translational.Components.SupportFriction supportFriction1(f_pos=
          Modelica.Mechanics.Translational.Examples.Utilities.GenerateStribeckFrictionTable(
            1,
            5,
            10,
            1,
            12,
            50), peak=1.001)
      annotation (Placement(transformation(extent={{46,-50},{66,-30}})));
    Modelica.Mechanics.Translational.Components.Mass mass(m=1, v(start=-2, fixed=true))
      annotation (Placement(transformation(extent={{74,-50},{94,-30}})));
    Modelica.Mechanics.Translational.Sources.Position position1(exact=true)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Sources.Sine sine2(
      amplitude=0.3,
      f=1,
      phase=0.78539816339745,
      offset=0.5) annotation (Placement(transformation(extent={{-70,-10},{-50,10}})));
    Modelica.Mechanics.Translational.Components.SupportFriction supportFriction2(f_pos=
          Modelica.Mechanics.Translational.Examples.Utilities.GenerateStribeckFrictionTable(
            1,
            5,
            10,
            1,
            12,
            50), peak=1.001)
      annotation (Placement(transformation(extent={{46,-10},{66,10}})));
  equation
    connect(sine.y, position.s_ref) annotation (Line(points={{-49,40},{-12,40}},
                                                                               color={0,0,127}));

    connect(position.flange, supportFriction.flange_a) annotation (Line(points={{10,40},{46,40}},
                                                                                                color={0,127,0}));
    connect(force.flange, supportFriction1.flange_a) annotation (Line(points={{10,-40},{46,-40}}, color={0,127,0}));
    connect(supportFriction1.flange_b, mass.flange_a) annotation (Line(points={{66,-40},{74,-40}}, color={0,127,0}));
    connect(sine1.y, force.f) annotation (Line(points={{-49,-40},{-12,-40}}, color={0,0,127}));
    connect(sine2.y, position1.s_ref) annotation (Line(points={{-49,0},{-12,0}}, color={0,0,127}));
    connect(position1.flange, supportFriction2.flange_a) annotation (Line(points={{10,0},{46,0}}, color={0,127,0}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(coordinateSystem(preserveAspectRatio=false)));
  end TestFrictionPosition;

  model SensorsAndSources "Test of the sensors and sources of Modelica.Mechanics.Translational"
    extends Modelica.Icons.Example;

    Modelica.Mechanics.Translational.Components.Fixed fixed1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={100,60})));
    Modelica.Mechanics.Translational.Sources.ForceStep forceStep1(stepForce=10, offsetForce=1, startTime=0.2)
      annotation (Placement(transformation(extent={{-100,50},{-80,70}})));
    Modelica.Mechanics.Translational.Sensors.ForceSensor forceSensor1
      annotation (Placement(transformation(extent={{-70,50},{-50,70}})));
    Modelica.Mechanics.Translational.Components.Mass mass1(m=1, s(start=0, fixed=true), v(start=0, fixed=true))
      annotation (Placement(transformation(extent={{-40,50},{-20,70}})));
    Modelica.Mechanics.Translational.Sensors.MultiSensor multiSensor1
      annotation (Placement(transformation(extent={{-10,50},{10,70}})));
    Modelica.Mechanics.Translational.Components.SpringDamper spring1(c=100, d=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={40,60})));
    Modelica.Mechanics.Translational.Sensors.PowerSensor powerSensor1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={70,60})));
    Modelica.Blocks.Sources.Sine sine1(amplitude=5, f=1)
      annotation (Placement(transformation(extent={{-40,90},{-20,110}})));
    Modelica.Mechanics.Translational.Sources.Force2 force2
      annotation (Placement(transformation(extent={{-10,10},{10,30}})));
    Modelica.Mechanics.Translational.Components.SpringDamper spring2(c=50, d=1, s_rel0=0.5)
      annotation (Placement(transformation(extent={{-10,-20},{10,0}})));
    Modelica.Mechanics.Translational.Components.Mass mass2(m=2, s(start=0.5, fixed=true), v(start=0, fixed=true))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={60,20})));
    Modelica.Mechanics.Translational.Sensors.AccSensor accSensor1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={90,20})));
    Modelica.Mechanics.Translational.Sensors.RelPositionSensor relPositionSensor1
      annotation (Placement(transformation(extent={{-10,-50},{10,-30}})));
    Modelica.Mechanics.Translational.Sensors.RelSpeedSensor relSpeedSensor1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-80})));
    Modelica.Mechanics.Translational.Sensors.RelAccSensor relAccSensor1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-110})));
    Modelica.Mechanics.Translational.Sources.ConstantSpeed constantSpeed1(v_fixed=0.5)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-140})));
    Modelica.Mechanics.Translational.Components.Damper damper3(d=10)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-140})));
    Modelica.Mechanics.Translational.Components.Fixed fixed3
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-140})));
    Modelica.Blocks.Sources.Sine s(amplitude=0.1, f=1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-180})));
    Modelica.Blocks.Sources.Cosine v(amplitude=0.1*2*Modelica.Constants.pi, f=1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-220})));
    Modelica.Blocks.Sources.Sine a(amplitude=-0.1*(2*Modelica.Constants.pi)^2, f=1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-250})));
    Modelica.Blocks.Routing.Multiplex3 multiplex3
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-220})));
    Modelica.Mechanics.Translational.Sources.Move move1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-220})));
    Modelica.Mechanics.Translational.Components.Mass mass6(m=1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-220})));
    Modelica.Mechanics.Translational.Components.Spring spring6(c=100)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={40,-220})));
    Modelica.Mechanics.Translational.Components.Fixed fixed6
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={80,-220})));
  equation
    connect(forceStep1.flange, forceSensor1.flange_a) annotation (Line(points={{-79,60},{-72,60}}, color={0,127,0}));
    connect(forceSensor1.flange_b, mass1.flange_a) annotation (Line(points={{-49,60},{-42,60}}, color={0,127,0}));
    connect(mass1.flange_b, multiSensor1.flange_a) annotation (Line(points={{-19,60},{-12,60}}, color={0,127,0}));
    connect(multiSensor1.flange_b, spring1.flange_a) annotation (Line(points={{10,60},{30,60}}, color={0,127,0}));
    connect(spring1.flange_b, powerSensor1.flange_a) annotation (Line(points={{50,60},{60,60}}, color={0,127,0}));
    connect(powerSensor1.flange_b, fixed1.flange) annotation (Line(points={{80,60},{100,60}}, color={0,127,0}));
    connect(sine1.y, force2.f) annotation (Line(points={{-19,100},{-12,100},{-12,32},{0,32},{0,24}}, color={0,0,127}));
    connect(mass1.flange_b, force2.flange_a) annotation (Line(points={{-19,60},{-16,60},{-16,20},{-12,20}}, color={0,127,0}));
    connect(force2.flange_b, mass2.flange_a) annotation (Line(points={{10,20},{50,20}}, color={0,127,0}));
    connect(mass1.flange_b, spring2.flange_a) annotation (Line(points={{-19,60},{-16,60},{-16,-10},{-12,-10}}, color={0,127,0}));
    connect(spring2.flange_b, mass2.flange_a) annotation (Line(points={{10,-10},{20,-10},{20,20},{50,20}}, color={0,127,0}));
    connect(mass2.flange_b, accSensor1.flange) annotation (Line(points={{70,20},{80,20}}, color={0,127,0}));
    connect(mass1.flange_b, relPositionSensor1.flange_a) annotation (Line(points={{-19,60},{-16,60},{-16,-40},{-12,-40}}, color={0,127,0}));
    connect(relPositionSensor1.flange_b, mass2.flange_a) annotation (Line(points={{10,-40},{20,-40},{20,20},{50,20}}, color={0,127,0}));
    connect(mass1.flange_b, relSpeedSensor1.flange_a) annotation (Line(points={{-20,60},{-16,60},{-16,-40},{-14,-40},{-14,-80},{-10,-80}}, color={0,127,0}));
    connect(relSpeedSensor1.flange_b, mass2.flange_a) annotation (Line(points={{10,-80},{20,-80},{20,20},{50,20}}, color={0,127,0}));
    connect(mass1.flange_b, relAccSensor1.flange_a) annotation (Line(points={{-20,60},{-16,60},{-16,-40},{-14,-40},{-14,-110},{-10,-110}}, color={0,127,0}));
    connect(relAccSensor1.flange_b, mass2.flange_a) annotation (Line(points={{10,-110},{20,-110},{20,20},{50,20}}, color={0,127,0}));
    connect(constantSpeed1.flange, damper3.flange_a) annotation (Line(points={{-80,-140},{-70,-140}}, color={0,127,0}));
    connect(damper3.flange_b, fixed3.flange) annotation (Line(points={{-50,-140},{-30,-140}}, color={0,127,0}));
    connect(s.y, multiplex3.u1[1]) annotation (Line(points={{-79,-180},{-76,-180},{-76,-213},{-72,-213}}, color={0,0,127}));
    connect(v.y, multiplex3.u2[1]) annotation (Line(points={{-79,-220},{-72,-220}}, color={0,0,127}));
    connect(a.y, multiplex3.u3[1]) annotation (Line(points={{-79,-250},{-76,-250},{-76,-227},{-72,-227}}, color={0,0,127}));
    connect(multiplex3.y, move1.u) annotation (Line(points={{-49,-220},{-44,-220},{-44,-218},{-46,-218},{-46,-220},{-42,-220}}, color={0,0,127}));
    connect(move1.flange, mass6.flange_a) annotation (Line(points={{-20,-220},{-10,-220}}, color={0,127,0}));
    connect(mass6.flange_b, spring6.flange_a) annotation (Line(points={{10,-220},{30,-220}}, color={0,127,0}));
    connect(spring6.flange_b, fixed6.flange) annotation (Line(points={{50,-220},{80,-220}}, color={0,127,0}));
    annotation (Diagram(coordinateSystem(extent={{-100,-260},{120,120}})),
      experiment(StopTime=2),
      Documentation(info="<html>
<p>
Two masses coupled by a spring damper and an internal force (Force2), driven by a ForceStep,
and measured with all sensors of
<a href=\"modelica://Modelica.Mechanics.Translational.Sensors\">Modelica.Mechanics.Translational.Sensors</a>
that are not used elsewhere: ForceSensor, MultiSensor, PowerSensor, AccSensor, RelPositionSensor,
RelSpeedSensor and RelAccSensor. ConstantSpeed drives a damper. Sources.Move prescribes the
position, velocity and acceleration of a mass on a spring, so the tool has to use the derivative
functions position_der and position_der2 of Move.
</p>
</html>"));
  end SensorsAndSources;

  model FrictionStopsAndInitialization "Test of Brake, MassWithStopAndFriction and InitializeFlange of Modelica.Mechanics.Translational"
    extends Modelica.Icons.Example;

    Modelica.Mechanics.Translational.Components.Mass mass3(m=1, s(start=0, fixed=true), v(start=2, fixed=true))
      annotation (Placement(transformation(extent={{-70,50},{-50,70}})));
    Modelica.Mechanics.Translational.Components.Brake brake1(mu_pos=[0, 0.5], fn_max=5)
      annotation (Placement(transformation(extent={{-30,50},{-10,70}})));
    Modelica.Blocks.Sources.Step engage(height=1, startTime=0.5)
      annotation (Placement(transformation(extent={{-30,90},{-10,110}})));
    Modelica.Blocks.Sources.Sine sineForce(amplitude=5, f=1)
      annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
    Modelica.Mechanics.Translational.Sources.Force force1
      annotation (Placement(transformation(extent={{-70,-10},{-50,10}})));
    Modelica.Mechanics.Translational.Components.MassWithStopAndFriction massWithStop1(m=1, F_prop=0.5, F_Coulomb=1, F_Stribeck=2, fexp=2, smax=0.1, smin=-0.1, s(start=0, fixed=true), v(start=0, fixed=true))
      annotation (Placement(transformation(extent={{-30,-10},{-10,10}})));
    Modelica.Blocks.Sources.Constant sStart(k=0.5)
      annotation (Placement(transformation(extent={{-100,-60},{-80,-40}})));
    Modelica.Blocks.Sources.Constant vStart(k=1)
      annotation (Placement(transformation(extent={{-100,-90},{-80,-70}})));
    Modelica.Mechanics.Translational.Components.InitializeFlange initializeFlange1(use_a_start=false)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-50,-60})));
    Modelica.Mechanics.Translational.Components.Mass mass4(m=1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-10,-60})));
  equation
    connect(mass3.flange_b, brake1.flange_a) annotation (Line(points={{-49,60},{-32,60}}, color={0,127,0}));
    connect(engage.y, brake1.f_normalized) annotation (Line(points={{-9,100},{-4,100},{-4,76},{-20,76},{-20,71}}, color={0,0,127}));
    connect(sineForce.y, force1.f) annotation (Line(points={{-79,0},{-72,0}}, color={0,0,127}));
    connect(force1.flange, massWithStop1.flange_a) annotation (Line(points={{-49,0},{-32,0}}, color={0,127,0}));
    connect(sStart.y, initializeFlange1.s_start) annotation (Line(points={{-79,-50},{-66,-50},{-66,-54},{-62,-54}}, color={0,0,127}));
    connect(vStart.y, initializeFlange1.v_start) annotation (Line(points={{-79,-80},{-66,-80},{-66,-60},{-62,-60}}, color={0,0,127}));
    connect(initializeFlange1.flange, mass4.flange_a) annotation (Line(points={{-40,-60},{-20,-60}}, color={0,127,0}));
    annotation (Diagram(coordinateSystem(extent={{-100,-100},{100,120}})),
      experiment(StopTime=2),
      Documentation(info="<html>
<p>
Tests three components of
<a href=\"modelica://Modelica.Mechanics.Translational.Components\">Modelica.Mechanics.Translational.Components</a>:
</p>
<ul>
<li>A mass moving at 2 m/s is stopped by a Brake (friction against its fixed housing) that is engaged
    at t = 0.5 s (normal force 5 N, friction coefficient 0.5), so it decelerates at 2.5 m/s<sup>2</sup>
    and sticks at t = 1.3 s.</li>
<li>MassWithStopAndFriction is driven by a sinusoidal force of 5 N amplitude, so it hits both stops at &plusmn;0.1 m.</li>
<li>InitializeFlange sets the initial position (0.5 m) and velocity (1 m/s) of a free mass.</li>
</ul>
</html>"));
  end FrictionStopsAndInitialization;

model Sensors_20N = Modelica.Mechanics.Translational.Examples.Sensors(sineForce(amplitude=20))
  "Variant of Translational.Examples.Sensors with a force amplitude of 20 N"
  annotation (experiment(StopTime=1.0, Interval=0.001), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Mechanics.Translational.Examples.Sensors\">Sensors</a> (PositionSensor, SpeedSensor) with a force amplitude of 20 N
instead of 10 N.
</p>
</html>"));

model GenerationOfFMUs_3Hz = Modelica.Mechanics.Translational.Examples.GenerationOfFMUs(sine1(f=3))
  "Variant of Translational.Examples.GenerationOfFMUs with a force frequency of 3 Hz"
  annotation (experiment(StopTime=1, Interval=0.001), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Mechanics.Translational.Examples.GenerationOfFMUs\">GenerationOfFMUs</a> (GeneralForceToPositionAdaptor, GeneralPositionToForceAdaptor)
with a force frequency of 3 Hz instead of 2 Hz.
</p>
</html>"));
end Translational;
