within ModelicaTest;
package Blocks "Test models for Modelica.Blocks"
  extends Modelica.Icons.ExamplesPackage;
  model Continuous
    extends Modelica.Icons.Example;
    Modelica.Blocks.Continuous.Integrator integrator annotation (Placement(
          transformation(extent={{-60,100},{-40,120}})));
    Modelica.Blocks.Continuous.LimIntegrator limIntegrator(outMax=1)
      annotation (Placement(transformation(extent={{-60,60},{-40,80}})));
    Modelica.Blocks.Continuous.Derivative derivative(x_start=0, initType=
          Modelica.Blocks.Types.Init.InitialState) annotation (Placement(
          transformation(extent={{-60,20},{-40,40}})));
    Modelica.Blocks.Continuous.FirstOrder firstOrder(T=1, initType=Modelica.Blocks.Types.Init.InitialState)
      annotation (Placement(transformation(extent={{-60,-20},{-40,0}})));
    Modelica.Blocks.Continuous.SecondOrder secondOrder(
      w=1,
      D=1,
      initType=Modelica.Blocks.Types.Init.InitialState) annotation (Placement(
          transformation(extent={{-60,-60},{-40,-40}})));
    Modelica.Blocks.Continuous.PI pI(T=1, initType=Modelica.Blocks.Types.Init.InitialState)
      annotation (Placement(transformation(extent={{-60,-100},{-40,-80}})));
    Modelica.Blocks.Continuous.PID pID(
      Ti=0.5,
      Td=0.1,
      initType=Modelica.Blocks.Types.Init.InitialState) annotation (
        Placement(transformation(extent={{-60,-140},{-40,-120}})));
    Modelica.Blocks.Continuous.LimPID limPID(
      Ti=0.5,
      Td=0.1,
      yMax=1,
      initType=Modelica.Blocks.Types.Init.InitialState) annotation (
        Placement(transformation(extent={{40,100},{60,120}})));
    Modelica.Blocks.Continuous.TransferFunction transferFunction(
      a={1,1},
      b={1},
      initType=Modelica.Blocks.Types.Init.InitialState) annotation (Placement(
          transformation(extent={{40,20},{60,40}})));
    Modelica.Blocks.Continuous.StateSpace stateSpace(
      A=[1, 0; 0, 1],
      B=[1; 1],
      C=[1, 1],
      initType=Modelica.Blocks.Types.Init.InitialState) annotation (Placement(
          transformation(extent={{40,-20},{60,0}})));
    Modelica.Blocks.Continuous.LowpassButterworth lowpassButterworth(f=1,
        initType=Modelica.Blocks.Types.Init.InitialState) annotation (Placement(
          transformation(extent={{40,-60},{60,-40}})));
    Modelica.Blocks.Continuous.CriticalDamping criticalDamping(
      normalized=false,
      f=1,
      initType=Modelica.Blocks.Types.Init.InitialState) annotation (Placement(
          transformation(extent={{40,-100},{60,-80}})));
    Modelica.Blocks.Sources.Ramp ramp(
      offset=0.5,
      startTime=0.5,
      duration=2) annotation (Placement(transformation(extent={{-100,100},{-80,
              120}})));
    Modelica.Blocks.Sources.Ramp ramp1(
      offset=0.5,
      startTime=0.5,
      duration=2) annotation (Placement(transformation(extent={{0,100},{20,120}})));
    Modelica.Blocks.Sources.Constant const(k=1.5) annotation (Placement(
          transformation(
          origin={50,70},
          extent={{-10,-10},{10,10}},
          rotation=90)));
    Modelica.Blocks.Continuous.Der der1 annotation (Placement(transformation(
            extent={{40,-140},{60,-120}})));
    Modelica.Blocks.Sources.Sine sine(f=1) annotation (Placement(
          transformation(extent={{0,-140},{20,-120}})));
  equation
    connect(ramp.y, integrator.u)
      annotation (Line(points={{-79,110},{-62,110}}, color={0,0,127}));
    connect(ramp.y, limIntegrator.u) annotation (Line(points={{-79,110},{-72,
            110},{-72,70},{-62,70}}, color={0,0,127}));
    connect(ramp.y, derivative.u) annotation (Line(points={{-79,110},{-72,110},
            {-72,30},{-62,30}}, color={0,0,127}));
    connect(ramp.y, firstOrder.u) annotation (Line(points={{-79,110},{-72,110},
            {-72,-10},{-62,-10}}, color={0,0,127}));
    connect(ramp.y, secondOrder.u) annotation (Line(points={{-79,110},{-72,110},
            {-72,-50},{-62,-50}}, color={0,0,127}));
    connect(ramp.y, pI.u) annotation (Line(points={{-79,110},{-72,110},{-72,-90},
            {-62,-90}}, color={0,0,127}));
    connect(ramp.y, pID.u) annotation (Line(points={{-79,110},{-72,110},{-72,-130},
            {-62,-130}}, color={0,0,127}));
    connect(ramp1.y, limPID.u_s)
      annotation (Line(points={{21,110},{38,110}}, color={0,0,127}));
    connect(ramp1.y, transferFunction.u) annotation (Line(points={{21,110},{28,
            110},{28,30},{38,30}}, color={0,0,127}));
    connect(ramp1.y, stateSpace.u[1]) annotation (Line(points={{21,110},{28,110},
            {28,-10},{38,-10}}, color={0,0,127}));
    connect(ramp1.y, lowpassButterworth.u) annotation (Line(points={{21,110},{
            28,110},{28,-50},{38,-50}}, color={0,0,127}));
    connect(ramp1.y, criticalDamping.u) annotation (Line(points={{21,110},{28,
            110},{28,-90},{38,-90}}, color={0,0,127}));
    connect(const.y, limPID.u_m)
      annotation (Line(points={{50,81},{50,98}}, color={0,0,127}));
    connect(sine.y, der1.u) annotation (Line(
        points={{21,-130},{38,-130}}, color={0,0,127}));
    annotation (experiment(StopTime=1.1), Diagram(coordinateSystem(
            preserveAspectRatio=true, extent={{-100,-140},{100,140}})));
  end Continuous;

  model Continuous_SteadyState
    extends ModelicaTest.Blocks.Continuous(
      derivative(initType=Modelica.Blocks.Types.Init.SteadyState),
      firstOrder(initType=Modelica.Blocks.Types.Init.SteadyState),
      secondOrder(initType=Modelica.Blocks.Types.Init.SteadyState),
      transferFunction(
        initType=Modelica.Blocks.Types.Init.SteadyState,
        a={1,1},
        b={1}),
      stateSpace(
        initType=Modelica.Blocks.Types.Init.SteadyState,
        A=[1, 0; 0, 1],
        B=[1; 1],
        C=[1, 1]),
      lowpassButterworth(initType=Modelica.Blocks.Types.Init.SteadyState),
      criticalDamping(initType=Modelica.Blocks.Types.Init.SteadyState,
          normalized=false));
    annotation (experiment(StopTime=1.1));
  end Continuous_SteadyState;

  model Continuous_InitialState
    extends ModelicaTest.Blocks.Continuous(
      integrator(initType=Modelica.Blocks.Types.Init.InitialState),
      limIntegrator(initType=Modelica.Blocks.Types.Init.InitialState),
      derivative(initType=Modelica.Blocks.Types.Init.InitialState),
      firstOrder(initType=Modelica.Blocks.Types.Init.InitialState),
      secondOrder(initType=Modelica.Blocks.Types.Init.InitialState),
      pI(initType=Modelica.Blocks.Types.Init.InitialState),
      pID(initType=Modelica.Blocks.Types.Init.InitialState),
      limPID(initType=Modelica.Blocks.Types.Init.InitialState),
      transferFunction(
        initType=Modelica.Blocks.Types.Init.InitialState,
        a={1,1},
        b={1}),
      stateSpace(
        initType=Modelica.Blocks.Types.Init.InitialState,
        A=[1, 0; 0, 1],
        B=[1; 1],
        C=[1, 1]),
      lowpassButterworth(initType=Modelica.Blocks.Types.Init.InitialState),
      criticalDamping(initType=Modelica.Blocks.Types.Init.InitialState,
          normalized=false));
    annotation (experiment(StopTime=1.1));
  end Continuous_InitialState;

  model Continuous_InitialOutput
    extends ModelicaTest.Blocks.Continuous(
      integrator(initType=Modelica.Blocks.Types.Init.InitialOutput, y_start=2),
      limIntegrator(initType=Modelica.Blocks.Types.Init.InitialOutput, y_start=
            0.5),
      derivative(initType=Modelica.Blocks.Types.Init.InitialOutput, y_start=2),
      firstOrder(initType=Modelica.Blocks.Types.Init.InitialOutput, y_start=2),
      secondOrder(initType=Modelica.Blocks.Types.Init.InitialOutput, y_start=2),
      pI(initType=Modelica.Blocks.Types.Init.InitialOutput, y_start=2),
      pID(initType=Modelica.Blocks.Types.Init.InitialOutput, y_start=2),
      limPID(
        initType=Modelica.Blocks.Types.Init.InitialOutput,
        yMax=3,
        y_start=2),
      transferFunction(
        initType=Modelica.Blocks.Types.Init.InitialOutput,
        y_start=2,
        a={1,1},
        b={1}),
      stateSpace(
        initType=Modelica.Blocks.Types.Init.InitialOutput,
        y_start={2},
        A=[1, 0; 0, 1],
        B=[1; 1],
        C=[1, 1]),
      lowpassButterworth(initType=Modelica.Blocks.Types.Init.InitialOutput,
          y_start=2),
      criticalDamping(
        initType=Modelica.Blocks.Types.Init.InitialOutput,
        y_start=2,
        normalized=false));

    annotation (experiment(StopTime=1.1));
  end Continuous_InitialOutput;

  model SelfResettingIntegrator
    extends Modelica.Icons.Example;
    Modelica.Blocks.Continuous.Integrator integrator(
      k=1.0,
      use_reset=true) annotation(Placement(transformation(extent={{-20,60},{0,80}})));
    Modelica.Blocks.Sources.Constant const(k=1.0) annotation(Placement(transformation(extent={{-60,60},{-40,80}})));
    Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold(threshold=1.0) annotation(Placement(transformation(extent={{20,60},{40,80}})));
  equation
      connect(const.y, integrator.u) annotation(Line(
        points={{-39,70},{-34,70},{-27,70},{-22,70}},
        color={0,0,127}));
      connect(integrator.y, greaterEqualThreshold.u) annotation(Line(
        points={{1,70},{6,70},{13,70},{18,70}},
        color={0,0,127}));
      connect(greaterEqualThreshold.y, integrator.reset) annotation(Line(
        points={{41,70},{46,70},{46,53},{-4,53},{-4,58}},
        color={255,0,255}));
    annotation(experiment(StopTime=5));
  end SelfResettingIntegrator;

  model ResetHoldIntegrator
    extends Modelica.Icons.Example;
    Modelica.Blocks.Continuous.Integrator integrator(
      k=2.0,
      use_reset=true) annotation(Placement(transformation(extent={{40,20},{60,40}})));
    Modelica.Blocks.Sources.Constant const1(k=1.0) annotation(Placement(transformation(extent={{-40,40},{-20,60}})));
    Modelica.Blocks.Logical.Switch switch annotation(Placement(transformation(extent={{0,20},{20,40}})));
    Modelica.Blocks.Sources.Constant const0(k=0.0) annotation(Placement(transformation(extent={{-40,0},{-20,20}})));
    Modelica.Blocks.Sources.BooleanPulse booleanPulse(
      period=1.0) annotation(Placement(transformation(extent={{-80,20},{-60,40}})));
    Modelica.Blocks.Logical.FallingEdge fallingEdge annotation(Placement(transformation(extent={{0,-20},{20,0}})));
  equation
      connect(switch.y, integrator.u) annotation(Line(
        points={{21,30},{38,30}},
        color={0,0,127}));
      connect(integrator.reset, fallingEdge.y) annotation(Line(
        points={{56,18},{56,-10},{21,-10}},
        color={255,0,255}));
      connect(const1.y, switch.u1) annotation(Line(
         points={{-19,50},{-10,50},{-10,38},{-2,38}},
         color={0,0,127}));
      connect(const0.y, switch.u3) annotation(Line(
        points={{-19,10},{-12,10},{-12,22},{-2,22}},
        color={0,0,127}));
      connect(booleanPulse.y, switch.u2) annotation(Line(
        points={{-59,30},{-2,30}},
        color={255,0,255}));
      connect(fallingEdge.u, booleanPulse.y) annotation(Line(
        points={{-2,-10},{-50,-10},{-50,30},{-59,30}},
        color={255,0,255}));
    annotation(experiment(StopTime=5));
  end ResetHoldIntegrator;

  model LimResetIntegrator
    extends Modelica.Icons.Example;
    Modelica.Blocks.Continuous.LimIntegrator integrator(
      k=2.0,
      use_reset=true,
      outMax=0.75) annotation(Placement(transformation(extent={{40,20},{60,40}})));
    Modelica.Blocks.Sources.Constant const1(k=1.0) annotation(Placement(transformation(extent={{-40,40},{-20,60}})));
    Modelica.Blocks.Logical.Switch switch annotation(Placement(transformation(extent={{0,20},{20,40}})));
    Modelica.Blocks.Sources.Constant constMinus1(k=-1.0) annotation(Placement(transformation(extent={{-40,0},{-20,20}})));
    Modelica.Blocks.Sources.BooleanPulse booleanPulse(
      period=1.0) annotation(Placement(transformation(extent={{-80,20},{-60,40}})));
    Modelica.Blocks.Logical.Change change annotation(Placement(transformation(extent={{0,-20},{20,0}})));
  equation
      connect(switch.y, integrator.u) annotation(Line(
        points={{21,30},{38,30}},
        color={0,0,127}));
    connect(integrator.reset, change.y) annotation(Line(
        points={{56,18},{56,-10},{21,-10}},
        color={255,0,255}));
      connect(const1.y, switch.u1) annotation(Line(
         points={{-19,50},{-10,50},{-10,38},{-2,38}},
         color={0,0,127}));
      connect(constMinus1.y, switch.u3) annotation(Line(
        points={{-19,10},{-12,10},{-12,22},{-2,22}},
        color={0,0,127}));
      connect(booleanPulse.y, switch.u2) annotation(Line(
        points={{-59,30},{-2,30}},
        color={255,0,255}));
    connect(change.u, booleanPulse.y) annotation(Line(
        points={{-2,-10},{-50,-10},{-50,30},{-59,30}},
        color={255,0,255}));
    annotation(experiment(StopTime=5));
  end LimResetIntegrator;

  model IntegratorForceState "Force state (Ticket #2640)"
    extends Modelica.Icons.Example;
    Modelica.Blocks.Continuous.Integrator integrator
      annotation (Placement(transformation(extent={{-40,0},{-20,20}})));
    Modelica.Blocks.Sources.ContinuousClock clock
      annotation (Placement(transformation(extent={{-80,0},{-60,20}})));
    Modelica.Blocks.Math.Gain gain(k=2, y(stateSelect=StateSelect.always))
      annotation (Placement(transformation(extent={{0,0},{20,20}})));
  equation
    connect(integrator.u, clock.y)
      annotation (Line(points={{-42,10},{-59,10}}, color={0,0,127}));
    connect(integrator.y, gain.u)
      annotation (Line(points={{-19,10},{-2,10}}, color={0,0,127}));
    annotation(experiment(StopTime=1));
  end IntegratorForceState;

  model Limiters
    extends Modelica.Icons.Example;
    Modelica.Blocks.Nonlinear.Limiter limiter(uMax=1)
      annotation (Placement(transformation(extent={{0,0},{20,20}})));
    Modelica.Blocks.Nonlinear.VariableLimiter variableLimiter
      annotation (Placement(transformation(extent={{0,-40},{20,-20}})));
    Modelica.Blocks.Nonlinear.DeadZone deadZone(uMax=1)
      annotation (Placement(transformation(extent={{0,-80},{20,-60}})));
    Modelica.Blocks.Sources.Sine sine(amplitude=2, f=1) annotation (
        Placement(transformation(extent={{-80,20},{-60,40}})));
    Modelica.Blocks.Sources.Constant constPos(k=+1) annotation (Placement(
          transformation(extent={{-80,-20},{-60,0}})));
    Modelica.Blocks.Sources.Constant constNeg(k=-1) annotation (Placement(
          transformation(extent={{-80,-60},{-60,-40}})));
    Modelica.Blocks.Nonlinear.SlewRateLimiter slewRateLimiter(Rising=10)
      annotation (Placement(transformation(extent={{0,40},{20,60}})));
    Modelica.Blocks.Continuous.Der idealDerivative
      annotation (Placement(transformation(extent={{40,40},{60,60}})));
  equation
    assert(idealDerivative.y <= slewRateLimiter.Rising +0.01*abs(slewRateLimiter.Rising) and
           idealDerivative.y >= slewRateLimiter.Falling-0.01*abs(slewRateLimiter.Falling),
      "Test of Modelica.Blocks.Nonlinear.SlewRateLimiter failed!");
    assert(limiter.y <= limiter.uMax + 0.01*abs(limiter.uMax) and
           limiter.y >= limiter.uMin - 0.01*abs(limiter.uMin),
      "Test of Modelica.Blocks.Nonlinear.Limiter failed!");
    assert(variableLimiter.y <= constPos.y + 0.01*abs(constPos.y) and
           variableLimiter.y >= constNeg.y - 0.01*abs(constNeg.y),
      "Test of Modelica.Blocks.Nonlinear.VariableLimiter failed!");
    connect(sine.y, limiter.u) annotation (Line(points={{-59,30},{-20,30},{-20,
            10},{-2,10}}, color={0,0,127}));
    connect(constPos.y, variableLimiter.limit1) annotation (Line(points={{-59,-10},
            {-40,-10},{-40,-22},{-2,-22}}, color={0,0,127}));
    connect(constNeg.y, variableLimiter.limit2) annotation (Line(points={{-59,-50},
            {-40,-50},{-40,-38},{-2,-38}}, color={0,0,127}));
    connect(sine.y, variableLimiter.u) annotation (Line(points={{-59,30},{-20,
            30},{-20,-30},{-2,-30}}, color={0,0,127}));
    connect(sine.y, deadZone.u) annotation (Line(points={{-59,30},{-20,30},{-20,
            -70},{-2,-70}}, color={0,0,127}));
    connect(sine.y, slewRateLimiter.u) annotation (Line(
        points={{-59,30},{-20,30},{-20,50},{-2,50}}, color={0,0,127}));
    connect(slewRateLimiter.y, idealDerivative.u) annotation (Line(
        points={{21,50},{38,50}}, color={0,0,127}));
    annotation (experiment(StopTime=1.1));
  end Limiters;

  model StrictLimiters
    extends Modelica.Icons.Example;
    Modelica.Blocks.Nonlinear.Limiter limiter1(uMax=1.1)
      annotation (Placement(transformation(extent={{-40,60},{-20,80}})));
    Modelica.Blocks.Sources.Sine sine1(amplitude=1.5, f=2)
      annotation (Placement(transformation(extent={{-80,60},{-60,80}})));
    Modelica.Blocks.Nonlinear.Limiter limiter2(uMax=1.1, strict=true)
      annotation (Placement(transformation(extent={{-40,20},{-20,40}})));
    Modelica.Blocks.Nonlinear.VariableLimiter variableLimiter1
      annotation (Placement(transformation(extent={{-20,-40},{0,-20}})));
    Modelica.Blocks.Sources.Sine sine2(amplitude=1.5, f=2)
      annotation (Placement(transformation(extent={{-80,-40},{-60,-20}})));
    Modelica.Blocks.Sources.Sine sine2a(
      amplitude=0.3,
      f=4,
      offset=1.0)
      annotation (Placement(transformation(extent={{-80,-8},{-60,12}})));
    Modelica.Blocks.Sources.Sine sine2ab(
      amplitude=0.3,
      f=4,
      offset=-1.0)
      annotation (Placement(transformation(extent={{-80,-80},{-60,-60}})));
    Modelica.Blocks.Nonlinear.VariableLimiter variableLimiter2(strict=true)
      annotation (Placement(transformation(extent={{-20,-80},{0,-60}})));
    Modelica.Blocks.Nonlinear.SlewRateLimiter slewRateLimiter1(Rising=13)
      annotation (Placement(transformation(extent={{40,60},{60,80}})));
    Modelica.Blocks.Sources.Sine sine3(amplitude=1.5, f=2)
      annotation (Placement(transformation(extent={{0,60},{20,80}})));
    Modelica.Blocks.Continuous.Der der1
      annotation (Placement(transformation(extent={{72,60},{92,80}})));
    Modelica.Blocks.Nonlinear.SlewRateLimiter slewRateLimiter2(strict=true,
        Rising=13)
      annotation (Placement(transformation(extent={{40,30},{60,50}})));
    Modelica.Blocks.Continuous.Der der2
      annotation (Placement(transformation(extent={{72,30},{92,50}})));
    Modelica.Blocks.Continuous.LimIntegrator limIntegrator1(k=5.0, outMax=0.9)
      annotation (Placement(transformation(extent={{40,0},{60,20}})));
    Modelica.Blocks.Continuous.LimIntegrator limIntegrator2(
      strict=true,
      k=5.0,
      outMax=0.9)
      annotation (Placement(transformation(extent={{40,-30},{60,-10}})));
    Modelica.Blocks.Continuous.LimPID PID1(yMax=0.4, initType=Modelica.Blocks.Types.Init.InitialOutput)
      annotation (Placement(transformation(extent={{38,-60},{58,-40}})));
    Modelica.Blocks.Continuous.LimPID PID2(
      yMax=0.4,
      strict=true,
      initType=Modelica.Blocks.Types.Init.InitialOutput)
      annotation (Placement(transformation(extent={{40,-100},{60,-80}})));
  equation
    connect(sine1.y, limiter1.u) annotation (Line(
        points={{-59,70},{-42,70}}, color={0,0,127}));
    connect(sine1.y, limiter2.u) annotation (Line(
        points={{-59,70},{-52,70},{-52,30},{-42,30}}, color={0,0,127}));
    connect(sine2.y, variableLimiter1.u) annotation (Line(
        points={{-59,-30},{-22,-30}}, color={0,0,127}));
    connect(sine2a.y, variableLimiter1.limit1) annotation (Line(
        points={{-59,2},{-50,2},{-50,-22},{-22,-22}}, color={0,0,127}));
    connect(sine2ab.y, variableLimiter1.limit2) annotation (Line(
        points={{-59,-70},{-52,-70},{-52,-38},{-22,-38}}, color={0,0,127}));
    connect(variableLimiter2.limit1, variableLimiter1.limit1) annotation (Line(
        points={{-22,-62},{-34,-62},{-34,-22},{-22,-22}}, color={0,0,127}));
    connect(variableLimiter2.limit2, variableLimiter1.limit2) annotation (Line(
        points={{-22,-78},{-46,-78},{-46,-38},{-22,-38}}, color={0,0,127}));
    connect(variableLimiter2.u, variableLimiter1.u) annotation (Line(
        points={{-22,-70},{-40,-70},{-40,-30},{-22,-30}}, color={0,0,127}));
    connect(sine3.y, slewRateLimiter1.u) annotation (Line(
        points={{21,70},{38,70}}, color={0,0,127}));
    connect(slewRateLimiter1.y, der1.u) annotation (Line(
        points={{61,70},{70,70}}, color={0,0,127}));
    connect(sine3.y, slewRateLimiter2.u) annotation (Line(
        points={{21,70},{28,70},{28,40},{38,40}}, color={0,0,127}));
    connect(slewRateLimiter2.y, der2.u) annotation (Line(
        points={{61,40},{70,40}}, color={0,0,127}));
    connect(sine3.y, limIntegrator1.u) annotation (Line(
        points={{21,70},{28,70},{28,10},{38,10}}, color={0,0,127}));
    connect(limIntegrator2.u, limIntegrator1.u) annotation (Line(
        points={{38,-20},{28,-20},{28,10},{38,10}}, color={0,0,127}));
    connect(PID1.u_s, limIntegrator1.u) annotation (Line(
        points={{36,-50},{28,-50},{28,10},{38,10}}, color={0,0,127}));
    connect(variableLimiter2.y, PID1.u_m) annotation (Line(
        points={{1,-70},{48,-70},{48,-62}}, color={0,0,127}));
    connect(PID2.u_s, limIntegrator1.u) annotation (Line(
        points={{38,-90},{28,-90},{28,10},{38,10}}, color={0,0,127}));
    connect(PID2.u_m, PID1.u_m) annotation (Line(
        points={{50,-102},{50,-110},{16,-110},{16,-70},{48,-70},{48,-62}}, color={0,0,127}));
    annotation (experiment(StopTime=1.1));
  end StrictLimiters;

  model LimitersHomotopy
    "Tests the homotopy-based initialization options of the limiter blocks"
    extends Modelica.Icons.Example;

    encapsulated model MustUseHomotopy "Only works with homotopy-based initialization"
      Real x(start = 0);
    equation
      0 = homotopy(sin(x)*(x - 100),
                    x - 100);
      assert(abs(x - 100) < 1e-6, "Wrong solution selected");
    end MustUseHomotopy;

    MustUseHomotopy mustUseHomotopy
      annotation (Placement(transformation(extent={{320,180},{340,200}})));
    Modelica.Blocks.Continuous.FirstOrder controllerFeedbackPart1(
      T=1,
      initType=Modelica.Blocks.Types.Init.SteadyState,
      k=-1) annotation (Placement(transformation(extent={{-140,100},{-160,120}})));
    Modelica.Blocks.Nonlinear.Limiter limiter1(
                                              uMax=0.99, uMin=-0.99,
      homotopyType=Modelica.Blocks.Types.LimiterHomotopy.UpperLimit)
      annotation (Placement(transformation(extent={{-160,140},{-140,160}})));
    Modelica.Blocks.Math.Feedback internalFeedback1
      annotation (Placement(transformation(extent={{-200,140},{-180,160}})));
    Modelica.Blocks.Math.Asin asin1
      annotation (Placement(transformation(extent={{-100,140},{-80,160}})));
    Modelica.Blocks.Sources.Ramp ramp1(
      duration=100,
      startTime=1,
      height=-9.5,
      offset=10)
      annotation (Placement(transformation(extent={{-280,140},{-260,160}})));
    Modelica.Blocks.Continuous.FirstOrder firstOrder1(
      T=1,
      initType=Modelica.Blocks.Types.Init.SteadyState,
      k=2/Modelica.Constants.pi)
      annotation (Placement(transformation(extent={{-60,140},{-40,160}})));
    Modelica.Blocks.Math.Feedback feedback1
      annotation (Placement(transformation(extent={{-240,140},{-220,160}})));
    Modelica.Blocks.Continuous.FirstOrder controllerFeedbackPart2(
      T=1,
      initType=Modelica.Blocks.Types.Init.SteadyState,
      k=-1) annotation (Placement(transformation(extent={{-140,-50},{-160,-30}})));
    Modelica.Blocks.Nonlinear.Limiter limiter2(
                                              uMax=0.99, uMin=-0.99,
      homotopyType=Modelica.Blocks.Types.LimiterHomotopy.LowerLimit)
      annotation (Placement(transformation(extent={{-160,-10},{-140,10}})));
    Modelica.Blocks.Math.Feedback internalFeedback2
      annotation (Placement(transformation(extent={{-200,-10},{-180,10}})));
    Modelica.Blocks.Math.Asin asin2
      annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
    Modelica.Blocks.Sources.Ramp ramp2(
      duration=100,
      startTime=1,
      height=9.5,
      offset=-10)
      annotation (Placement(transformation(extent={{-280,-10},{-260,10}})));
    Modelica.Blocks.Continuous.FirstOrder firstOrder2(
      T=1,
      initType=Modelica.Blocks.Types.Init.SteadyState,
      k=2/Modelica.Constants.pi)
      annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
    Modelica.Blocks.Math.Feedback feedback2
      annotation (Placement(transformation(extent={{-240,-10},{-220,10}})));
    Modelica.Blocks.Continuous.FirstOrder controllerFeedbackPart3(
      T=1,
      initType=Modelica.Blocks.Types.Init.SteadyState,
      k=-1) annotation (Placement(transformation(extent={{-140,-160},{-160,-140}})));
    Modelica.Blocks.Nonlinear.Limiter limiter3(
                                              uMax=0.99, uMin=-0.99,
      homotopyType=Modelica.Blocks.Types.LimiterHomotopy.NoHomotopy)
      annotation (Placement(transformation(extent={{-160,-120},{-140,-100}})));
    Modelica.Blocks.Math.Feedback internalFeedback3
      annotation (Placement(transformation(extent={{-200,-120},{-180,-100}})));
    Modelica.Blocks.Math.Asin asin3
      annotation (Placement(transformation(extent={{-100,-120},{-80,-100}})));
    Modelica.Blocks.Sources.Ramp ramp3(
      duration=100,
      startTime=1,
      height=-9.5,
      offset=10)
      annotation (Placement(transformation(extent={{-280,-120},{-260,-100}})));
    Modelica.Blocks.Continuous.FirstOrder firstOrder3(
      T=1,
      initType=Modelica.Blocks.Types.Init.SteadyState,
      k=2/Modelica.Constants.pi)
      annotation (Placement(transformation(extent={{-60,-120},{-40,-100}})));
    Modelica.Blocks.Math.Feedback feedback3
      annotation (Placement(transformation(extent={{-240,-120},{-220,-100}})));
    Modelica.Blocks.Continuous.FirstOrder controllerFeedbackPart4(
      T=1,
      initType=Modelica.Blocks.Types.Init.SteadyState,
      k=-1) annotation (Placement(transformation(extent={{160,100},{140,120}})));
    Modelica.Blocks.Nonlinear.VariableLimiter
                                      limiter4(homotopyType=Modelica.Blocks.Types.VariableLimiterHomotopy.Fixed,
        ySimplified=0.99)
      annotation (Placement(transformation(extent={{180,140},{200,160}})));
    Modelica.Blocks.Math.Feedback internalFeedback4
      annotation (Placement(transformation(extent={{100,140},{120,160}})));
    Modelica.Blocks.Math.Asin asin4
      annotation (Placement(transformation(extent={{240,140},{260,160}})));
    Modelica.Blocks.Sources.Ramp ramp4(
      duration=100,
      startTime=1,
      height=-9.5,
      offset=10)
      annotation (Placement(transformation(extent={{20,140},{40,160}})));
    Modelica.Blocks.Continuous.FirstOrder firstOrder4(
      T=1,
      initType=Modelica.Blocks.Types.Init.SteadyState,
      k=2/Modelica.Constants.pi)
      annotation (Placement(transformation(extent={{280,140},{300,160}})));
    Modelica.Blocks.Math.Feedback feedback4
      annotation (Placement(transformation(extent={{60,140},{80,160}})));
    Modelica.Blocks.Continuous.FirstOrder controllerFeedbackPart5(
      T=1,
      initType=Modelica.Blocks.Types.Init.SteadyState,
      k=-1) annotation (Placement(transformation(extent={{160,-50},{140,-30}})));
    Modelica.Blocks.Nonlinear.VariableLimiter
                                      limiter5(homotopyType=Modelica.Blocks.Types.VariableLimiterHomotopy.Fixed,
        ySimplified=-0.99)
      annotation (Placement(transformation(extent={{180,-10},{200,10}})));
    Modelica.Blocks.Math.Feedback internalFeedback5
      annotation (Placement(transformation(extent={{100,-10},{120,10}})));
    Modelica.Blocks.Math.Asin asin5
      annotation (Placement(transformation(extent={{240,-10},{260,10}})));
    Modelica.Blocks.Sources.Ramp ramp5(
      duration=100,
      startTime=1,
      height=9.5,
      offset=-10)
      annotation (Placement(transformation(extent={{20,-10},{40,10}})));
    Modelica.Blocks.Continuous.FirstOrder firstOrder5(
      T=1,
      initType=Modelica.Blocks.Types.Init.SteadyState,
      k=2/Modelica.Constants.pi)
      annotation (Placement(transformation(extent={{280,-10},{300,10}})));
    Modelica.Blocks.Math.Feedback feedback5
      annotation (Placement(transformation(extent={{60,-10},{80,10}})));
    Modelica.Blocks.Continuous.FirstOrder controllerFeedbackPart6(
      T=1,
      initType=Modelica.Blocks.Types.Init.SteadyState,
      k=-1) annotation (Placement(transformation(extent={{160,-160},{140,-140}})));
    Modelica.Blocks.Nonlinear.VariableLimiter
                                      limiter6(homotopyType=Modelica.Blocks.Types.VariableLimiterHomotopy.NoHomotopy)
      annotation (Placement(transformation(extent={{180,-120},{200,-100}})));
    Modelica.Blocks.Math.Feedback internalFeedback6
      annotation (Placement(transformation(extent={{100,-120},{120,-100}})));
    Modelica.Blocks.Math.Asin asin6
      annotation (Placement(transformation(extent={{240,-120},{260,-100}})));
    Modelica.Blocks.Sources.Ramp ramp6(
      duration=100,
      startTime=1,
      height=-9.5,
      offset=10)
      annotation (Placement(transformation(extent={{20,-120},{40,-100}})));
    Modelica.Blocks.Continuous.FirstOrder firstOrder6(
      T=1,
      initType=Modelica.Blocks.Types.Init.SteadyState,
      k=2/Modelica.Constants.pi)
      annotation (Placement(transformation(extent={{280,-120},{300,-100}})));
    Modelica.Blocks.Math.Feedback feedback6
      annotation (Placement(transformation(extent={{60,-120},{80,-100}})));
    Modelica.Blocks.Sources.RealExpression uMax1(y=0.99)
      annotation (Placement(transformation(extent={{146,148},{166,168}})));
    Modelica.Blocks.Sources.RealExpression uMax2(y=0.99)
      annotation (Placement(transformation(extent={{148,-2},{168,18}})));
    Modelica.Blocks.Sources.RealExpression uMax3(y=0.99)
      annotation (Placement(transformation(extent={{146,-112},{166,-92}})));
    Modelica.Blocks.Sources.RealExpression uMin1(y=-0.99)
      annotation (Placement(transformation(extent={{146,130},{166,150}})));
    Modelica.Blocks.Sources.RealExpression uMin2(y=-0.99)
      annotation (Placement(transformation(extent={{148,-22},{168,-2}})));
    Modelica.Blocks.Sources.RealExpression uMin3(y=-0.99)
      annotation (Placement(transformation(extent={{146,-134},{166,-114}})));
  equation
    connect(limiter1.u, internalFeedback1.y)
      annotation (Line(points={{-162,150},{-181,150}}, color={0,0,127}));
    connect(controllerFeedbackPart1.y, internalFeedback1.u2) annotation (Line(
          points={{-161,110},{-190,110},{-190,142}}, color={0,0,127}));
    connect(limiter1.y, asin1.u)
      annotation (Line(points={{-139,150},{-102,150}}, color={0,0,127}));
    connect(asin1.y, firstOrder1.u)
      annotation (Line(points={{-79,150},{-62,150}}, color={0,0,127}));
    connect(limiter1.y, controllerFeedbackPart1.u) annotation (Line(points={{-139,
            150},{-120,150},{-120,110},{-138,110}}, color={0,0,127}));
    connect(feedback1.y, internalFeedback1.u1)
      annotation (Line(points={{-221,150},{-198,150}}, color={0,0,127}));
    connect(ramp1.y, feedback1.u1)
      annotation (Line(points={{-259,150},{-238,150}}, color={0,0,127}));
    connect(firstOrder1.y, feedback1.u2) annotation (Line(points={{-39,150},{-20,150},
            {-20,90},{-230,90},{-230,142}}, color={0,0,127}));
    connect(limiter2.u, internalFeedback2.y)
      annotation (Line(points={{-162,0},{-181,0}}, color={0,0,127}));
    connect(controllerFeedbackPart2.y, internalFeedback2.u2) annotation (Line(
          points={{-161,-40},{-190,-40},{-190,-8}}, color={0,0,127}));
    connect(limiter2.y, asin2.u)
      annotation (Line(points={{-139,0},{-102,0}}, color={0,0,127}));
    connect(asin2.y, firstOrder2.u)
      annotation (Line(points={{-79,0},{-62,0}}, color={0,0,127}));
    connect(limiter2.y, controllerFeedbackPart2.u) annotation (Line(points={{-139,
            0},{-120,0},{-120,-40},{-138,-40}}, color={0,0,127}));
    connect(feedback2.y, internalFeedback2.u1)
      annotation (Line(points={{-221,0},{-198,0}}, color={0,0,127}));
    connect(ramp2.y, feedback2.u1)
      annotation (Line(points={{-259,0},{-238,0}}, color={0,0,127}));
    connect(firstOrder2.y, feedback2.u2) annotation (Line(points={{-39,0},{-16,0},
            {-16,-60},{-230,-60},{-230,-8}}, color={0,0,127}));
    connect(limiter3.u, internalFeedback3.y)
      annotation (Line(points={{-162,-110},{-181,-110}}, color={0,0,127}));
    connect(controllerFeedbackPart3.y, internalFeedback3.u2) annotation (Line(
          points={{-161,-150},{-190,-150},{-190,-118}}, color={0,0,127}));
    connect(limiter3.y, asin3.u)
      annotation (Line(points={{-139,-110},{-102,-110}}, color={0,0,127}));
    connect(asin3.y, firstOrder3.u)
      annotation (Line(points={{-79,-110},{-62,-110}}, color={0,0,127}));
    connect(limiter3.y, controllerFeedbackPart3.u) annotation (Line(points={{-139,
            -110},{-120,-110},{-120,-150},{-138,-150}}, color={0,0,127}));
    connect(feedback3.y, internalFeedback3.u1)
      annotation (Line(points={{-221,-110},{-198,-110}}, color={0,0,127}));
    connect(ramp3.y, feedback3.u1)
      annotation (Line(points={{-259,-110},{-238,-110}}, color={0,0,127}));
    connect(firstOrder3.y, feedback3.u2) annotation (Line(points={{-39,-110},{-20,
            -110},{-20,-170},{-230,-170},{-230,-118}}, color={0,0,127}));
    connect(limiter4.u, internalFeedback4.y)
      annotation (Line(points={{178,150},{119,150}}, color={0,0,127}));
    connect(controllerFeedbackPart4.y, internalFeedback4.u2)
      annotation (Line(points={{139,110},{110,110},{110,142}}, color={0,0,127}));
    connect(limiter4.y, asin4.u)
      annotation (Line(points={{201,150},{238,150}}, color={0,0,127}));
    connect(asin4.y, firstOrder4.u)
      annotation (Line(points={{261,150},{278,150}}, color={0,0,127}));
    connect(limiter4.y, controllerFeedbackPart4.u) annotation (Line(points={{201,150},
            {220,150},{220,110},{162,110}}, color={0,0,127}));
    connect(feedback4.y, internalFeedback4.u1)
      annotation (Line(points={{79,150},{102,150}}, color={0,0,127}));
    connect(ramp4.y, feedback4.u1) annotation (Line(points={{41,150},{54,150},{54,
            150},{54,150},{54,150},{62,150}}, color={0,0,127}));
    connect(firstOrder4.y, feedback4.u2) annotation (Line(points={{301,150},{320,150},
            {320,90},{70,90},{70,142}}, color={0,0,127}));
    connect(limiter5.u, internalFeedback5.y)
      annotation (Line(points={{178,0},{119,0}}, color={0,0,127}));
    connect(controllerFeedbackPart5.y, internalFeedback5.u2)
      annotation (Line(points={{139,-40},{110,-40},{110,-8}}, color={0,0,127}));
    connect(limiter5.y, asin5.u)
      annotation (Line(points={{201,0},{238,0}}, color={0,0,127}));
    connect(asin5.y, firstOrder5.u)
      annotation (Line(points={{261,0},{278,0}}, color={0,0,127}));
    connect(limiter5.y, controllerFeedbackPart5.u) annotation (Line(points={{201,0},
            {220,0},{220,-40},{162,-40}}, color={0,0,127}));
    connect(feedback5.y, internalFeedback5.u1)
      annotation (Line(points={{79,0},{102,0}}, color={0,0,127}));
    connect(ramp5.y, feedback5.u1)
      annotation (Line(points={{41,0},{62,0}}, color={0,0,127}));
    connect(firstOrder5.y, feedback5.u2) annotation (Line(points={{301,0},{320,0},
            {320,-60},{70,-60},{70,-8}}, color={0,0,127}));
    connect(limiter6.u, internalFeedback6.y)
      annotation (Line(points={{178,-110},{119,-110}}, color={0,0,127}));
    connect(controllerFeedbackPart6.y, internalFeedback6.u2) annotation (Line(
          points={{139,-150},{110,-150},{110,-118}}, color={0,0,127}));
    connect(limiter6.y, asin6.u)
      annotation (Line(points={{201,-110},{238,-110}}, color={0,0,127}));
    connect(asin6.y, firstOrder6.u)
      annotation (Line(points={{261,-110},{278,-110}}, color={0,0,127}));
    connect(limiter6.y, controllerFeedbackPart6.u) annotation (Line(points={{201,-110},
            {220,-110},{220,-150},{162,-150}}, color={0,0,127}));
    connect(feedback6.y, internalFeedback6.u1)
      annotation (Line(points={{79,-110},{102,-110}}, color={0,0,127}));
    connect(ramp6.y, feedback6.u1)
      annotation (Line(points={{41,-110},{62,-110}}, color={0,0,127}));
    connect(firstOrder6.y, feedback6.u2) annotation (Line(points={{301,-110},{320,
            -110},{320,-170},{70,-170},{70,-118}}, color={0,0,127}));
    connect(uMax1.y, limiter4.limit1)
      annotation (Line(points={{167,158},{178,158}}, color={0,0,127}));
    connect(uMin1.y, limiter4.limit2) annotation (Line(points={{167,140},{172,140},
            {172,142},{178,142}}, color={0,0,127}));
    connect(uMax2.y, limiter5.limit1)
      annotation (Line(points={{169,8},{178,8}}, color={0,0,127}));
    connect(uMin2.y, limiter5.limit2) annotation (Line(points={{169,-12},{172,-12},
            {172,-8},{178,-8}}, color={0,0,127}));
    connect(uMax3.y, limiter6.limit1)
      annotation (Line(points={{167,-102},{178,-102}}, color={0,0,127}));
    connect(uMin3.y, limiter6.limit2) annotation (Line(points={{167,-124},{172,-124},
            {172,-118},{178,-118}}, color={0,0,127}));
    annotation (
      Diagram(coordinateSystem(preserveAspectRatio=false,
              extent={{-300,-200},{340,200}})),
      experiment(StopTime=100),
      Documentation(info="<html>
<p>These test models demonstrate the use of the advanced homotopy options <code>homotopyType</code>
of the <code>Limiter</code> and <code>VariableLimiter blocks</code>.</p>
<p>The models represent a basic control system using a PI with anti-windup in three different configurations:</p>
<ol>
<li>The loop is initialized in steady-state with the upper saturation active and <code>homotopyType=UpperLimit</code></li>
<li>The loop is initialized in steady-state with the lower saturation active and <code>homotopyType=LowerLimit</code></li>
<li>The loop is initialized in steady-state with the upper saturation active and <code>homotopyType=NoHomotopy</code></li>
</ol>
<p>The <code>mustUseHomotopy</code>block forces the tool to use homotopy-based initialization; in order to do so,
a system with two solutions x = 0 and x = 100 is provided. The start value leads to the convergence to x = 0; only
if homotopy is active, the solution accepted by the assert statement (x = 100) is obtained.</p>
</html>"));
  end LimitersHomotopy;

  model KinematicPTP
    extends Modelica.Icons.Example;
    Modelica.Blocks.Sources.KinematicPTP kinematicPTP1a(
      qd_max={3},
      qdd_max={4},
      startTime=0.5,
      deltaq={1}) annotation (Placement(transformation(extent={{-60,60},{-40,80}})));
    Modelica.Blocks.Continuous.Integrator integrator annotation (Placement(
          transformation(extent={{-20,60},{2,80}})));
    Modelica.Blocks.Continuous.Integrator integrator1(y_start=1) annotation (
        Placement(transformation(extent={{20,60},{42,80}})));
    Modelica.Blocks.Sources.KinematicPTP kinematicPTP2a(
      qd_max={3},
      qdd_max={4},
      startTime=0.5,
      deltaq={4}) annotation (Placement(transformation(extent={{-60,-20},{-40,0}})));
    Modelica.Blocks.Continuous.Integrator integrator2 annotation (Placement(
          transformation(extent={{-20,-20},{2,0}})));
    Modelica.Blocks.Continuous.Integrator integrator3(y_start=1) annotation (
        Placement(transformation(extent={{20,-20},{42,0}})));
    Modelica.Blocks.Sources.KinematicPTP2 kinematicPTP1b(
      qd_max={3},
      qdd_max={4},
      startTime=0.5,
      q_end={2},
      q_begin={1})
      annotation (Placement(transformation(extent={{-60,22},{-40,42}})));
    Modelica.Blocks.Sources.KinematicPTP2 kinematicPTP2b(
      qd_max={3},
      qdd_max={4},
      startTime=0.5,
      q_end={5},
      q_begin={1})
      annotation (Placement(transformation(extent={{-60,-58},{-40,-38}})));
    Modelica.Blocks.Math.Feedback diff1
      annotation (Placement(transformation(extent={{56,60},{76,80}})));
    Modelica.Blocks.Math.Feedback diff2
      annotation (Placement(transformation(extent={{60,-20},{80,0}})));
  equation
    connect(kinematicPTP1a.y[1], integrator.u)
      annotation (Line(points={{-39,70},{-22.2,70}}, color={0,0,127}));
    connect(integrator.y, integrator1.u)
      annotation (Line(points={{3.1,70},{17.8,70}}, color={0,0,127}));
    connect(kinematicPTP2a.y[1], integrator2.u)
      annotation (Line(points={{-39,-10},{-22.2,-10}}, color={0,0,127}));
    connect(integrator2.y, integrator3.u)
      annotation (Line(points={{3.1,-10},{17.8,-10}}, color={0,0,127}));
    connect(integrator1.y, diff1.u1) annotation (Line(
        points={{43.1,70},{58,70}}, color={0,0,127}));
    connect(kinematicPTP1b.q[1], diff1.u2) annotation (Line(
        points={{-39,40},{66,40},{66,62}}, color={0,0,127}));
    connect(integrator3.y, diff2.u1) annotation (Line(
        points={{43.1,-10},{62,-10}}, color={0,0,127}));
    connect(kinematicPTP2b.q[1], diff2.u2) annotation (Line(
        points={{-39,-40},{70,-40},{70,-18}}, color={0,0,127}));
    annotation (experiment(StopTime=3));
  end KinematicPTP;

  model UnitDeduction "Test unit deduction"
    extends Modelica.Icons.Example;
    parameter Real k(unit="1")=1 "Propagated to relevant blocks";
    Modelica.Blocks.Continuous.Integrator integrator
      annotation (Placement(transformation(extent={{0,30},{20,50}})));
    Modelica.Mechanics.Rotational.Components.Inertia inertia(
      J=1,
      w(start=1, fixed=true),
      phi(fixed=true, start=0))
      annotation (Placement(transformation(extent={{-80,60},{-60,80}})));
    Modelica.Mechanics.Rotational.Sensors.SpeedSensor speedSensor
      annotation (Placement(transformation(extent={{-50,60},{-30,80}})));
    Modelica.Blocks.Math.Gain gain(k=2*k)
      annotation (Placement(transformation(extent={{0,80},{20,100}})));
    Modelica.Blocks.Continuous.LimIntegrator limIntegrator(outMax=3, k=k)
      annotation (Placement(transformation(extent={{0,0},{20,20}})));
    Modelica.Blocks.Continuous.Derivative derivative(k=k, initType=Modelica.Blocks.Types.Init.InitialState)
      annotation (Placement(transformation(extent={{0,-30},{20,-10}})));
    Modelica.Blocks.Continuous.FirstOrder firstOrder(k=k, T=2, initType=Modelica.Blocks.Types.Init.InitialState)
      annotation (Placement(transformation(extent={{0,-60},{20,-40}})));
    Modelica.Blocks.Continuous.SecondOrder secondOrder(
      k=k,
      w=2,
      D=3,
      initType=Modelica.Blocks.Types.Init.InitialState)
      annotation (Placement(transformation(extent={{0,-90},{20,-70}})));
    Modelica.Blocks.Continuous.PI PI(T=2, k=k, initType=Modelica.Blocks.Types.Init.InitialState)
      annotation (Placement(transformation(extent={{60,60},{80,80}})));
    Modelica.Blocks.Continuous.PID PID(
      k=k,
      Ti=2,
      Td=3,
      initType=Modelica.Blocks.Types.Init.InitialState)
      annotation (Placement(transformation(extent={{60,30},{80,50}})));
    Modelica.Blocks.Continuous.LimPID PID1(
      k=k,
      Ti=2,
      Td=3,
      yMax=4,
      initType=Modelica.Blocks.Types.Init.InitialState)
      annotation (Placement(transformation(extent={{60,0},{80,20}})));
    Modelica.Electrical.Analog.Sources.SineVoltage sineVoltage(V=10, f=2)
      annotation (Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=270,
          origin={120,-20})));
    Modelica.Electrical.Analog.Basic.Resistor resistor(R=100) annotation (
        Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=270,
          origin={168,-20})));
    Modelica.Electrical.Analog.Basic.Ground ground
      annotation (Placement(transformation(extent={{110,-70},{130,-50}})));
    Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation (
        Placement(transformation(
          extent={{-10,10},{10,-10}},
          rotation=270,
          origin={190,-20})));
    Modelica.Electrical.Analog.Sensors.CurrentSensor currentSensor
      annotation (Placement(transformation(extent={{138,10},{158,-10}})));
    Modelica.Blocks.Math.Product product
      annotation (Placement(transformation(extent={{225,15},{235,25}})));
    Modelica.Blocks.Continuous.Integrator Wsec(k(unit="1"))
      annotation (Placement(transformation(extent={{249,15},{259,25}})));
    Modelica.Blocks.Continuous.Integrator Vsec(k(unit="1"))
      annotation (Placement(transformation(extent={{246,-26},{258,-14}})));
    Modelica.Blocks.Continuous.Integrator Asec(k(unit="1")) annotation (
        Placement(transformation(extent={{183.5,43.5},{196.5,56.5}})));
  equation
    connect(inertia.flange_b, speedSensor.flange) annotation (Line(
        points={{-60,70},{-50,70}}));
    connect(speedSensor.w, integrator.u) annotation (Line(
        points={{-29,70},{-16,70},{-16,40},{-2,40}}, color={0,0,127}));
    connect(speedSensor.w, gain.u) annotation (Line(
        points={{-29,70},{-16,70},{-16,90},{-2,90}}, color={0,0,127}));
    connect(speedSensor.w, limIntegrator.u) annotation (Line(
        points={{-29,70},{-16,70},{-16,10},{-2,10}}, color={0,0,127}));
    connect(derivative.u, speedSensor.w) annotation (Line(
        points={{-2,-20},{-16,-20},{-16,70},{-29,70}}, color={0,0,127}));
    connect(firstOrder.u, speedSensor.w) annotation (Line(
        points={{-2,-50},{-16,-50},{-16,70},{-29,70}}, color={0,0,127}));
    connect(secondOrder.u, speedSensor.w) annotation (Line(
        points={{-2,-80},{-16,-80},{-16,70},{-29,70}}, color={0,0,127}));
    connect(speedSensor.w, PI.u) annotation (Line(
        points={{-29,70},{58,70}}, color={0,0,127}));
    connect(speedSensor.w, PID.u) annotation (Line(
        points={{-29,70},{40,70},{40,40},{58,40}}, color={0,0,127}));
    connect(speedSensor.w, PID1.u_s) annotation (Line(
        points={{-29,70},{40,70},{40,10},{58,10}}, color={0,0,127}));
    connect(gain.y, PID1.u_m) annotation (Line(
        points={{21,90},{94,90},{94,-8},{70,-8},{70,-2}}, color={0,0,127}));
    connect(sineVoltage.n, ground.p) annotation (Line(
        points={{120,-30},{120,-50}}, color={0,0,255}));
    connect(sineVoltage.p, currentSensor.p) annotation (Line(
        points={{120,-10},{120,0},{138,0}}, color={0,0,255}));
    connect(voltageSensor.p, resistor.p) annotation (Line(
        points={{190,-10},{190,0},{168,0},{168,-10}}, color={0,0,255}));
    connect(resistor.p, currentSensor.n) annotation (Line(
        points={{168,-10},{168,0},{158,0}}, color={0,0,255}));
    connect(voltageSensor.n, resistor.n) annotation (Line(
        points={{190,-30},{190,-40},{168,-40},{168,-30}}, color={0,0,255}));
    connect(resistor.n, sineVoltage.n) annotation (Line(
        points={{168,-30},{168,-40},{120,-40},{120,-30}}, color={0,0,255}));
    connect(currentSensor.i, product.u1) annotation (Line(
        points={{148,10},{172,10},{172,23},{224,23}}, color={0,0,127}));
    connect(voltageSensor.v, product.u2) annotation (Line(
        points={{200,-20},{210.5,-20},{210.5,17},{224,17}}, color={0,0,127}));
    connect(currentSensor.i, Asec.u) annotation (Line(
        points={{148,10},{172,10},{172,50},{182.2,50}}, color={0,0,127}));
    connect(product.y, Wsec.u) annotation (Line(
        points={{235.5,20},{248,20}}, color={0,0,127}));
    connect(Vsec.u, voltageSensor.v) annotation (Line(
        points={{244.8,-20},{222.4,-20},{222.4,-20},{200,-20}}, color={0,0,127}));
    annotation (experiment(StopTime=1.01));
  end UnitDeduction;

  model Logical
    extends Modelica.Icons.Example;
    Modelica.Blocks.Sources.BooleanTable
                         table1(table={2,4,6,8}) annotation (Placement(
          transformation(extent={{-100,100},{-80,120}})));
    Modelica.Blocks.Sources.BooleanTable
                         table2(table={1,3,5,7}) annotation (Placement(
          transformation(extent={{-100,60},{-80,80}})));
    Modelica.Blocks.Logical.And and1
      annotation (Placement(transformation(extent={{-60,100},{-40,120}})));
    Modelica.Blocks.Logical.Or or1
      annotation (Placement(transformation(extent={{-20,100},{0,120}})));
    Modelica.Blocks.Logical.Xor xor
      annotation (Placement(transformation(extent={{-20,140},{0,160}})));
    Modelica.Blocks.Logical.Nor nor
      annotation (Placement(transformation(extent={{20,140},{40,160}})));
    Modelica.Blocks.Logical.Nand nand
      annotation (Placement(transformation(extent={{60,140},{80,160}})));
    Modelica.Blocks.Logical.Not not1
      annotation (Placement(transformation(extent={{20,100},{40,120}})));
    Modelica.Blocks.Logical.Pre pre1
      annotation (Placement(transformation(extent={{60,100},{80,120}})));
    Modelica.Blocks.Logical.Edge edge1
      annotation (Placement(transformation(extent={{20,0},{40,20}})));
    Modelica.Blocks.Logical.FallingEdge fallingEdge
      annotation (Placement(transformation(extent={{20,-40},{40,-20}})));
    Modelica.Blocks.Logical.Change change1
      annotation (Placement(transformation(extent={{20,-80},{40,-60}})));
    Modelica.Blocks.Logical.GreaterThreshold greaterThreshold(threshold=0.1)
      annotation (Placement(transformation(extent={{-60,-20},{-40,0}})));
    Modelica.Blocks.Sources.Sine sine(amplitude=2, f=0.5)
      annotation (Placement(transformation(extent={{-100,-20},{-80,0}})));
    Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold(
        threshold=-0.1)
      annotation (Placement(transformation(extent={{-60,-48},{-40,-28}})));
    Modelica.Blocks.Logical.LessThreshold lessThreshold(threshold=0.1)
      annotation (Placement(transformation(extent={{-60,-76},{-40,-56}})));
    Modelica.Blocks.Logical.LessEqualThreshold lessEqualThreshold(threshold=-0.1)
      annotation (Placement(transformation(extent={{-60,-104},{-40,-84}})));
    Modelica.Blocks.Logical.Greater greater
      annotation (Placement(transformation(extent={{-60,-140},{-40,-120}})));
    Modelica.Blocks.Sources.Ramp ramp(height=5, duration=8)
      annotation (Placement(transformation(extent={{-102,-148},{-82,-128}})));
    Modelica.Blocks.Logical.GreaterEqual greaterEqual
      annotation (Placement(transformation(extent={{-20,-140},{0,-120}})));
    Modelica.Blocks.Logical.Less less
      annotation (Placement(transformation(extent={{20,-140},{40,-120}})));
    Modelica.Blocks.Logical.LessEqual lessEqual
      annotation (Placement(transformation(extent={{60,-140},{80,-120}})));
    Modelica.Blocks.Logical.ZeroCrossing zeroCrossing
      annotation (Placement(transformation(extent={{-60,12},{-40,32}})));
    Modelica.Blocks.Logical.LogicalSwitch logicalSwitch
      annotation (Placement(transformation(extent={{100,120},{120,140}})));
    Modelica.Blocks.Logical.Switch switch1
      annotation (Placement(transformation(extent={{80,-80},{100,-60}})));
    Modelica.Blocks.Logical.Hysteresis hysteresis(uLow=-0.5, uHigh=0.5)
      annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
    Modelica.Blocks.Logical.OnOffController onOffController(bandwidth=0.5)
      annotation (Placement(transformation(extent={{100,-140},{120,-120}})));
    Modelica.Blocks.Logical.TriggeredTrapezoid triggeredTrapezoid(rising=1,
        falling=0.5)
      annotation (Placement(transformation(extent={{106,60},{126,80}})));
    Modelica.Blocks.Logical.Timer timer
      annotation (Placement(transformation(extent={{100,20},{120,40}})));
    Modelica.Blocks.Logical.RSFlipFlop rSFlipFlop
      annotation (Placement(transformation(extent={{140,120},{160,140}})));
    Modelica.Blocks.Logical.AssertCondition assertCondition(assertionLevel=AssertionLevel.warning) annotation (Placement(transformation(extent={{100,-20},{120,0}})));
    Modelica.Blocks.Sources.BooleanPulse booleanPulse(
      width=50,
      period=0.5,
      startTime=0) annotation (Placement(transformation(extent={{60,-20},{80,0}})));
  equation
    connect(table1.y, and1.u1) annotation (Line(
        points={{-79,110},{-62,110}}, color={255,0,255}));
    connect(table2.y, and1.u2) annotation (Line(
        points={{-79,70},{-72,70},{-72,102},{-62,102}}, color={255,0,255}));
    connect(and1.y, or1.u1) annotation (Line(
        points={{-39,110},{-22,110}}, color={255,0,255}));
    connect(table2.y, or1.u2) annotation (Line(
        points={{-79,70},{-34,70},{-34,102},{-22,102}}, color={255,0,255}));
    connect(table1.y, xor.u1) annotation (Line(
        points={{-79,110},{-72,110},{-72,150},{-22,150}}, color={255,0,255}));
    connect(and1.y, xor.u2) annotation (Line(
        points={{-39,110},{-32,110},{-32,142},{-22,142}}, color={255,0,255}));
    connect(xor.y, nor.u1) annotation (Line(
        points={{1,150},{18,150}}, color={255,0,255}));
    connect(or1.y, nor.u2) annotation (Line(
        points={{1,110},{10,110},{10,142},{18,142}}, color={255,0,255}));
    connect(nor.y, nand.u1) annotation (Line(
        points={{41,150},{58,150}}, color={255,0,255}));
    connect(table2.y, nand.u2) annotation (Line(
        points={{-79,70},{46,70},{46,142},{58,142}}, color={255,0,255}));
    connect(or1.y, not1.u) annotation (Line(
        points={{1,110},{18,110}}, color={255,0,255}));
    connect(not1.y, pre1.u) annotation (Line(
        points={{41,110},{58,110}}, color={255,0,255}));
    connect(or1.y, edge1.u) annotation (Line(
        points={{1,110},{10,110},{10,10},{18,10}}, color={255,0,255}));
    connect(or1.y, fallingEdge.u) annotation (Line(
        points={{1,110},{10,110},{10,-30},{18,-30}}, color={255,0,255}));
    connect(or1.y, change1.u) annotation (Line(
        points={{1,110},{10,110},{10,-70},{18,-70}}, color={255,0,255}));
    connect(sine.y, greaterThreshold.u) annotation (Line(
        points={{-79,-10},{-62,-10}}, color={0,0,127}));
    connect(sine.y, greaterEqualThreshold.u) annotation (Line(
        points={{-79,-10},{-72,-10},{-72,-38},{-62,-38}}, color={0,0,127}));
    connect(sine.y, lessThreshold.u) annotation (Line(
        points={{-79,-10},{-72,-10},{-72,-66},{-62,-66}}, color={0,0,127}));
    connect(sine.y, lessEqualThreshold.u) annotation (Line(
        points={{-79,-10},{-72,-10},{-72,-94},{-62,-94}}, color={0,0,127}));
    connect(ramp.y, greater.u2) annotation (Line(
        points={{-81,-138},{-62,-138}}, color={0,0,127}));
    connect(ramp.y, greaterEqual.u2) annotation (Line(
        points={{-81,-138},{-74,-138},{-74,-154},{-32,-154},{-32,-138},{-22,
            -138}}, color={0,0,127}));
    connect(less.u2, greaterEqual.u2) annotation (Line(
        points={{18,-138},{10,-138},{10,-154},{-32,-154},{-32,-138},{-22,-138}}, color={0,0,127}));

    connect(lessEqual.u2, greaterEqual.u2) annotation (Line(
        points={{58,-138},{50,-138},{50,-154},{-32,-154},{-32,-138},{-22,-138}}, color={0,0,127}));

    connect(greater.u1, lessEqualThreshold.u) annotation (Line(
        points={{-62,-130},{-72,-130},{-72,-94},{-62,-94}}, color={0,0,127}));
    connect(greaterEqual.u1, lessEqualThreshold.u) annotation (Line(
        points={{-22,-130},{-30,-130},{-30,-112},{-72,-112},{-72,-94},{-62,-94}}, color={0,0,127}));

    connect(less.u1, lessEqualThreshold.u) annotation (Line(
        points={{18,-130},{12,-130},{12,-112},{-72,-112},{-72,-94},{-62,-94}}, color={0,0,127}));
    connect(lessEqual.u1, lessEqualThreshold.u) annotation (Line(
        points={{58,-130},{52,-130},{52,-112},{-72,-112},{-72,-94},{-62,-94}}, color={0,0,127}));
    connect(zeroCrossing.u, greaterThreshold.u) annotation (Line(
        points={{-62,22},{-72,22},{-72,-10},{-62,-10}}, color={0,0,127}));
    connect(greaterThreshold.y, zeroCrossing.enable) annotation (Line(
        points={{-39,-10},{-22,-10},{-22,4},{-50,4},{-50,10}}, color={255,0,255}));
    connect(nand.y, logicalSwitch.u1) annotation (Line(
        points={{81,150},{90,150},{90,138},{98,138}}, color={255,0,255}));
    connect(pre1.y, logicalSwitch.u2) annotation (Line(
        points={{81,110},{88,110},{88,130},{98,130}}, color={255,0,255}));
    connect(table2.y, logicalSwitch.u3) annotation (Line(
        points={{-79,70},{92,70},{92,122},{98,122}}, color={255,0,255}));
    connect(change1.y, switch1.u2) annotation (Line(
        points={{41,-70},{78,-70}}, color={255,0,255}));
    connect(switch1.u1, lessEqualThreshold.u) annotation (Line(
        points={{78,-62},{52,-62},{52,-112},{-72,-112},{-72,-94},{-62,-94}}, color={0,0,127}));
    connect(switch1.u3, greaterEqual.u2) annotation (Line(
        points={{78,-78},{66,-78},{66,-106},{88,-106},{88,-154},{-32,-154},{-32,-138},{-22,-138}},
                                   color={0,0,127}));
    connect(sine.y, hysteresis.u) annotation (Line(
        points={{-79,-10},{-72,-10},{-72,50},{-62,50}}, color={0,0,127}));
    connect(onOffController.reference, lessEqualThreshold.u) annotation (Line(
        points={{98,-124},{94,-124},{94,-112},{-72,-112},{-72,-94},{-62,-94}},
                             color={0,0,127}));
    connect(onOffController.u, greaterEqual.u2) annotation (Line(
        points={{98,-136},{88,-136},{88,-154},{-32,-154},{-32,-138},{-22,-138}},
                                   color={0,0,127}));
    connect(table2.y, triggeredTrapezoid.u) annotation (Line(
        points={{-79,70},{104,70}}, color={255,0,255}));
    connect(timer.u, logicalSwitch.u3) annotation (Line(
        points={{98,30},{94,30},{94,30},{92,30},{92,122},{98,122}}, color={255,0,255}));
    connect(nand.y, rSFlipFlop.S) annotation (Line(
        points={{81,150},{128,150},{128,136},{138,136}}, color={255,0,255}));
    connect(pre1.y, rSFlipFlop.R) annotation (Line(
        points={{81,110},{130,110},{130,124},{138,124}}, color={255,0,255}));
    connect(booleanPulse.y, assertCondition.u) annotation (Line(points={{81,-10},{98,-10}}, color={255,0,255}));
    annotation (experiment(StopTime=10), Diagram(coordinateSystem(
            preserveAspectRatio=false,extent={{-100,-180},{180,180}})));
  end Logical;

  model IntegerTable
    extends Modelica.Icons.Example;
    Modelica.Blocks.Sources.IntegerTable integerTable(table=[0, 1; 1, 4; 1.5, 5;
          2, 6])
      annotation (Placement(transformation(extent={{-80,60},{-60,80}})));
    Modelica.Blocks.Sources.IntegerTable integerTable2(table=[0, -1])
      annotation (Placement(transformation(extent={{-80,20},{-60,40}})));
    Modelica.Blocks.Sources.IntegerTable integerTable3(table=[2, -2])
      annotation (Placement(transformation(extent={{-80,-20},{-60,0}})));
    Modelica.Blocks.Sources.IntegerTable integerTable4(table=[0, 1; 1, 4; 1.5,
          5; 2, 6; 4, 7])
      annotation (Placement(transformation(extent={{-40,60},{-20,80}})));
    annotation (experiment(StopTime=3));
  end IntegerTable;

  model BooleanTable
    extends Modelica.Icons.Example;
    Modelica.Blocks.Sources.BooleanTable booleanTable1(table={1,1.5,2})
      annotation (Placement(transformation(extent={{-80,60},{-60,80}})));
    Modelica.Blocks.Sources.BooleanTable booleanTable2a(table={0,1,2})
      annotation (Placement(transformation(extent={{-80,20},{-60,40}})));
    Modelica.Blocks.Sources.BooleanTable booleanTable2b(table={-1,0,1,2})
      annotation (Placement(transformation(extent={{-40,20},{-20,40}})));
    Modelica.Blocks.Sources.BooleanTable booleanTable3a(table={1})
      annotation (Placement(transformation(extent={{-80,-20},{-60,0}})));
    Modelica.Blocks.Sources.BooleanTable booleanTable3b(table={0})
      annotation (Placement(transformation(extent={{-40,-20},{-20,0}})));
    Modelica.Blocks.Sources.BooleanTable booleanTable3c(table={-1})
      annotation (Placement(transformation(extent={{0,-20},{20,0}})));
    Modelica.Blocks.Sources.BooleanTable booleanTable4a(table=fill(0.0, 0))
      annotation (Placement(transformation(extent={{-80,-60},{-60,-40}})));
    Modelica.Blocks.Sources.BooleanTable booleanTable4b(table=fill(0.0, 0),
        startValue=true)
      annotation (Placement(transformation(extent={{-40,-60},{-20,-40}})));
    annotation (experiment(StopTime=3));
  end BooleanTable;

  model RootMeanSquare
    extends Modelica.Icons.Example;
    Modelica.Blocks.Math.Mean mean1(f=expSine.f)
      annotation (Placement(transformation(extent={{-40,40},{-20,60}})));
    Modelica.Blocks.Sources.ExpSine expSine(
      f=2,
      damping=0.5,
      offset=-0.5)
      annotation (Placement(transformation(extent={{-80,40},{-60,60}})));
    Modelica.Blocks.Math.RootMeanSquare rootMeanSquare(f=expSine.f)
      annotation (Placement(transformation(extent={{-40,0},{-20,20}})));
  equation
    connect(expSine.y, mean1.u) annotation (Line(
        points={{-59,50},{-42,50}}, color={0,0,127}));
    connect(expSine.y, rootMeanSquare.u) annotation (Line(
        points={{-59,50},{-52,50},{-52,10},{-42,10}}, color={0,0,127}));
    annotation (experiment(StopTime=2));
  end RootMeanSquare;

  model FirstOrderHold "Test first order hold of Discrete package"
    extends Modelica.Icons.Example;
    parameter Real period=0.05;
    Modelica.Blocks.Sources.Sine sine(f=1, offset=0.5)
      annotation (Placement(transformation(extent={{-80,0},{-60,20}})));
    Modelica.Blocks.Discrete.ZeroOrderHold zeroOrderHold(samplePeriod=period)
      annotation (Placement(transformation(extent={{-40,20},{-20,40}})));
    Modelica.Blocks.Discrete.FirstOrderHold firstOrderHold(samplePeriod=period)
      annotation (Placement(transformation(extent={{-40,-20},{-20,0}})));
  equation
    connect(sine.y, zeroOrderHold.u) annotation (Line(
        points={{-59,10},{-50,10},{-50,30},{-42,30}}, color={0,0,127}));
    connect(sine.y, firstOrderHold.u) annotation (Line(
        points={{-59,10},{-50,10},{-50,-10},{-42,-10}}, color={0,0,127}));
    annotation (experiment(StopTime=2));
  end FirstOrderHold;

  model OnDelay
    extends Modelica.Icons.Example;
    Modelica.Blocks.MathBoolean.OnDelay onDelay1(delayTime=1)
      annotation (Placement(transformation(extent={{-14,66},{-6,74}})));
    Modelica.Blocks.Sources.BooleanTable booleanTable(table={1,4,6,8,9,9.5})
      annotation (Placement(transformation(extent={{-60,60},{-40,80}})));
    Modelica.Blocks.Sources.BooleanStep booleanStep3(startValue=true, startTime=
         2) annotation (Placement(transformation(extent={{-60,-20},{-40,0}})));
    Modelica.Blocks.MathBoolean.OnDelay onDelay3(delayTime=1)
      annotation (Placement(transformation(extent={{-14,-14},{-6,-6}})));
    Modelica.Blocks.Sources.BooleanStep booleanStep2(startTime=2, startValue=
          false)
      annotation (Placement(transformation(extent={{-60,20},{-40,40}})));
    Modelica.Blocks.MathBoolean.OnDelay onDelay2(delayTime=1)
      annotation (Placement(transformation(extent={{-14,26},{-6,34}})));
  equation
    connect(booleanTable.y, onDelay1.u) annotation (Line(
        points={{-39,70},{-15.6,70}}, color={255,0,255}));
    connect(booleanStep3.y, onDelay3.u) annotation (Line(
        points={{-39,-10},{-15.6,-10}}, color={255,0,255}));
    connect(booleanStep2.y, onDelay2.u) annotation (Line(
        points={{-39,30},{-15.6,30}}, color={255,0,255}));
    annotation (experiment(StopTime=11), Diagram(coordinateSystem(
            preserveAspectRatio=false, extent={{-100,-140},{100,140}})));
  end OnDelay;

  model Mean
    extends Modelica.Icons.Example;
    Modelica.Blocks.Math.Mean mean(f=2)
      annotation (Placement(transformation(extent={{-20,80},{0,100}})));
    Modelica.Blocks.Sources.Cosine cosine(
      offset=0.5,
      f=2,
      amplitude=1,
      phase=Modelica.Constants.pi/4)
      annotation (Placement(transformation(extent={{-80,80},{-60,100}})));
    Modelica.Blocks.Math.RectifiedMean rectifiedMean(f=2)
      annotation (Placement(transformation(extent={{-20,40},{0,60}})));
    Modelica.Blocks.Math.RootMeanSquare rootMeanSquare(f=2)
      annotation (Placement(transformation(extent={{-20,0},{0,20}})));
    Modelica.Blocks.Math.Harmonic harmonic(f=2, k=1)
      annotation (Placement(transformation(extent={{-20,-40},{0,-20}})));
    Modelica.Blocks.Math.PolarToRectangular polarToRectangular
      annotation (Placement(transformation(extent={{20,-40},{40,-20}})));
    Modelica.Blocks.Math.RectangularToPolar rectangularToPolar
      annotation (Placement(transformation(extent={{60,-40},{80,-20}})));
    output Real yMean=mean.y;
    output Real yRectifiedMean=rectifiedMean.y;
    output Real yRootMeanSquare=rootMeanSquare.y;
    output Real yHarmonicCos=polarToRectangular.y_re;
    output Real yHarmonicSin=polarToRectangular.y_im;
    output Real yHarmonicAbs=rectangularToPolar.y_abs;
    output Real yHarmonicArg=rectangularToPolar.y_arg;
  equation
    connect(cosine.y, mean.u) annotation (Line(
        points={{-59,90},{-22,90}}, color={0,0,127}));
    connect(cosine.y, rectifiedMean.u) annotation (Line(
        points={{-59,90},{-40,90},{-40,50},{-22,50}}, color={0,0,127}));
    connect(cosine.y, rootMeanSquare.u) annotation (Line(
        points={{-59,90},{-40,90},{-40,10},{-22,10}}, color={0,0,127}));
    connect(cosine.y, harmonic.u) annotation (Line(
        points={{-59,90},{-40,90},{-40,-30},{-22,-30}}, color={0,0,127}));
    connect(harmonic.y_rms, polarToRectangular.u_abs) annotation (Line(
        points={{1,-24},{18,-24}}, color={0,0,127}));
    connect(harmonic.y_arg, polarToRectangular.u_arg) annotation (Line(
        points={{1,-36},{18,-36}}, color={0,0,127}));
    connect(polarToRectangular.y_re, rectangularToPolar.u_re) annotation (Line(
        points={{41,-24},{58,-24}}, color={0,0,127}));
    connect(polarToRectangular.y_im, rectangularToPolar.u_im) annotation (Line(
        points={{41,-36},{58,-36}}, color={0,0,127}));
    annotation (experiment(StopTime=1.1), Diagram(coordinateSystem(
            preserveAspectRatio=false, extent={{-100,-140},{100,140}}), graphics));
  end Mean;

  model ConversionBlocks
    extends Modelica.Icons.Example;
    Modelica.Blocks.Sources.Cosine cosine(
      f=2,
      amplitude=10,
      offset=10)
      annotation (Placement(transformation(extent={{-80,100},{-60,120}})));
    Modelica.Blocks.Math.UnitConversions.To_degC to_degC
      annotation (Placement(transformation(extent={{-40,100},{-20,120}})));
    Modelica.Blocks.Math.UnitConversions.From_degC from_degC
      annotation (Placement(transformation(extent={{-10,100},{10,120}})));
    Modelica.Blocks.Math.UnitConversions.To_degF to_degF
      annotation (Placement(transformation(extent={{-40,70},{-20,90}})));
    Modelica.Blocks.Math.UnitConversions.From_degF from_degF
      annotation (Placement(transformation(extent={{-10,70},{10,90}})));
    Modelica.Blocks.Math.UnitConversions.To_degRk to_degRk
      annotation (Placement(transformation(extent={{-40,40},{-20,60}})));
    Modelica.Blocks.Math.UnitConversions.From_degRk from_degRk
      annotation (Placement(transformation(extent={{-10,40},{10,60}})));
    Modelica.Blocks.Math.UnitConversions.To_deg to_deg
      annotation (Placement(transformation(extent={{-40,10},{-20,30}})));
    Modelica.Blocks.Math.UnitConversions.From_deg from_deg
      annotation (Placement(transformation(extent={{-10,10},{10,30}})));
    Modelica.Blocks.Math.UnitConversions.To_rpm to_rpm
      annotation (Placement(transformation(extent={{-40,-20},{-20,0}})));
    Modelica.Blocks.Math.UnitConversions.From_rpm from_rpm
      annotation (Placement(transformation(extent={{-10,-20},{10,0}})));
    Modelica.Blocks.Math.UnitConversions.To_kmh to_kmh
      annotation (Placement(transformation(extent={{-40,-50},{-20,-30}})));
    Modelica.Blocks.Math.UnitConversions.From_kmh from_kmh
      annotation (Placement(transformation(extent={{-10,-50},{10,-30}})));
    Modelica.Blocks.Math.UnitConversions.To_day to_day
      annotation (Placement(transformation(extent={{-40,-80},{-20,-60}})));
    Modelica.Blocks.Math.UnitConversions.From_day from_day
      annotation (Placement(transformation(extent={{-10,-80},{10,-60}})));
    Modelica.Blocks.Math.UnitConversions.To_hour to_hour
      annotation (Placement(transformation(extent={{-40,-110},{-20,-90}})));
    Modelica.Blocks.Math.UnitConversions.From_hour from_hour
      annotation (Placement(transformation(extent={{-10,-110},{10,-90}})));
    Modelica.Blocks.Math.UnitConversions.To_minute to_minute
      annotation (Placement(transformation(extent={{-40,-140},{-20,-120}})));
    Modelica.Blocks.Math.UnitConversions.From_minute from_minute
      annotation (Placement(transformation(extent={{-10,-140},{10,-120}})));
    Modelica.Blocks.Math.UnitConversions.To_litre to_litre
      annotation (Placement(transformation(extent={{40,100},{60,120}})));
    Modelica.Blocks.Math.UnitConversions.From_litre from_litre
      annotation (Placement(transformation(extent={{70,100},{90,120}})));
    Modelica.Blocks.Math.UnitConversions.To_kWh to_kWh
      annotation (Placement(transformation(extent={{40,70},{60,90}})));
    Modelica.Blocks.Math.UnitConversions.From_kWh from_kWh
      annotation (Placement(transformation(extent={{72,70},{92,90}})));
    Modelica.Blocks.Math.UnitConversions.To_bar to_bar
      annotation (Placement(transformation(extent={{40,40},{60,60}})));
    Modelica.Blocks.Math.UnitConversions.From_bar from_bar
      annotation (Placement(transformation(extent={{72,40},{92,60}})));
    Modelica.Blocks.Math.UnitConversions.To_gps to_gps
      annotation (Placement(transformation(extent={{40,10},{60,30}})));
    Modelica.Blocks.Math.UnitConversions.From_gps from_gps
      annotation (Placement(transformation(extent={{72,10},{92,30}})));
    output Real ydegC=from_degC.y;
    output Real ydegF=from_degF.y;
    output Real ydegRk=from_degRk.y;
    output Real ydeg=from_deg.y;
    output Real yrpm=from_rpm.y;
    output Real ykmh=from_kmh.y;
    output Real yday=from_day.y;
    output Real yhour=from_hour.y;
    output Real yminute=from_minute.y;
    output Real ylitre=from_litre.y;
    output Real ykWh=from_kWh.y;
    output Real ybar=from_bar.y;
    output Real ygps=from_gps.y;
  equation
    connect(cosine.y, to_degC.u) annotation (Line(
        points={{-59,110},{-42,110}}, color={0,0,127}));
    connect(cosine.y, to_degF.u) annotation (Line(
        points={{-59,110},{-50,110},{-50,80},{-42,80}}, color={0,0,127}));
    connect(cosine.y, to_degRk.u) annotation (Line(
        points={{-59,110},{-50,110},{-50,50},{-42,50}}, color={0,0,127}));
    connect(cosine.y, to_deg.u) annotation (Line(
        points={{-59,110},{-50,110},{-50,20},{-46,20},{-46,20},{-42,20}}, color={0,0,127}));
    connect(cosine.y, to_rpm.u) annotation (Line(
        points={{-59,110},{-50,110},{-50,-10},{-42,-10}}, color={0,0,127}));
    connect(to_degC.y, from_degC.u) annotation (Line(
        points={{-19,110},{-16,110},{-16,110},{-12,110}}, color={0,0,127}));
    connect(to_degF.y, from_degF.u) annotation (Line(
        points={{-19,80},{-12,80}}, color={0,0,127}));
    connect(to_degRk.y, from_degRk.u) annotation (Line(
        points={{-19,50},{-12,50}}, color={0,0,127}));
    connect(to_deg.y, from_deg.u) annotation (Line(
        points={{-19,20},{-14,20},{-14,20},{-12,20}}, color={0,0,127}));
    connect(to_rpm.y, from_rpm.u) annotation (Line(
        points={{-19,-10},{-12,-10}}, color={0,0,127}));
    connect(to_kmh.y, from_kmh.u) annotation (Line(
        points={{-19,-40},{-12,-40}}, color={0,0,127}));
    connect(to_day.y, from_day.u) annotation (Line(
        points={{-19,-70},{-12,-70}}, color={0,0,127}));
    connect(to_hour.y, from_hour.u) annotation (Line(
        points={{-19,-100},{-12,-100}}, color={0,0,127}));
    connect(to_minute.y, from_minute.u) annotation (Line(
        points={{-19,-130},{-12,-130}}, color={0,0,127}));
    connect(cosine.y, to_kmh.u) annotation (Line(
        points={{-59,110},{-50,110},{-50,-40},{-42,-40}}, color={0,0,127}));
    connect(cosine.y, to_day.u) annotation (Line(
        points={{-59,110},{-50,110},{-50,-70},{-42,-70}}, color={0,0,127}));
    connect(cosine.y, to_hour.u) annotation (Line(
        points={{-59,110},{-50,110},{-50,-100},{-42,-100}}, color={0,0,127}));
    connect(cosine.y, to_minute.u) annotation (Line(
        points={{-59,110},{-50,110},{-50,-130},{-42,-130}}, color={0,0,127}));
    connect(cosine.y, to_litre.u) annotation (Line(
        points={{-59,110},{-50,110},{-50,128},{28,128},{28,110},{38,110}}, color={0,0,127}));
    connect(cosine.y, to_kWh.u) annotation (Line(
        points={{-59,110},{-50,110},{-50,128},{28,128},{28,80},{38,80}}, color={0,0,127}));
    connect(to_litre.y, from_litre.u) annotation (Line(
        points={{61,110},{68,110}}, color={0,0,127}));
    connect(to_kWh.y, from_kWh.u) annotation (Line(
        points={{61,80},{70,80}}, color={0,0,127}));
    connect(cosine.y, to_bar.u) annotation (Line(
        points={{-59,110},{-50,110},{-50,128},{28,128},{28,50},{38,50}}, color={0,0,127}));
    connect(cosine.y, to_gps.u) annotation (Line(
        points={{-59,110},{-50,110},{-50,128},{28,128},{28,20},{38,20}}, color={0,0,127}));
    connect(to_bar.y, from_bar.u) annotation (Line(
        points={{61,50},{70,50}}, color={0,0,127}));
    connect(to_gps.y, from_gps.u) annotation (Line(
        points={{61,20},{70,20}}, color={0,0,127}));
    annotation (experiment(StopTime=1.1), Diagram(coordinateSystem(
            preserveAspectRatio=false, extent={{-100,-140},{100,140}}), graphics));
  end ConversionBlocks;

  model PadeDelay1
    "Check that new implementation gives the same result as the old implementation for the default balance = false"
    extends Modelica.Icons.Example;
    parameter Integer n=10 "Order of Pade approximation";
    parameter SI.Time delayTime=0.2
      "Delay time of output with respect to input signal";

    block PadeDelayOld
      "Pade approximation of delay block with fixed DelayTime (from MSL 3.2.1)"
    extends Modelica.Blocks.Interfaces.SISO;
    parameter SI.Time delayTime(start=1)
        "Delay time of output with respect to input signal";
    parameter Integer n(min=1) = 1 "Order of Pade approximation";
    parameter Integer m(
      min=1,
      max=n) = n "Order of numerator";

    protected
    Real x1dot "Derivative of first state of TransferFcn";
    Real xn "Highest order state of TransferFcn";
    Real a[n + 1];
    Real b[m + 1];

    public
    final output Real x[n]
        "State of transfer function from controller canonical form";

    protected
    function padeCoefficients
      extends Modelica.Icons.Function;
      input Real T "delay time";
      input Integer n "order of denominator";
      input Integer m "order of numerator";
      output Real b[m + 1] "numerator coefficients of transfer function";
      output Real a[n + 1] "denominator coefficients of transfer function";
      protected
      Real nm;
    algorithm
      a[1] := 1;
      b[1] := 1;
      nm := n + m;

      for i in 1:n loop
        a[i + 1] := a[i]*(T*((n - i + 1)/(nm - i + 1))/i);
        if i <= m then
          b[i + 1] := -b[i]*(T*((m - i + 1)/(nm - i + 1))/i);
        end if;
      end for;

      b := b[m + 1:-1:1];
      a := a[n + 1:-1:1];
    end padeCoefficients;
    equation

    (b,a) = padeCoefficients(delayTime, n, m);

    [der(x); xn] = [x1dot; x];
    [u] = transpose([a])*[x1dot; x];
    [y] = transpose([zeros(n - m, 1); b])*[x1dot; x];

    initial equation
    x[n] = u;
    annotation (
      Documentation(info="<html>
<p>
The Input signal is delayed by a given time instant, or more precisely:
</p>
<blockquote><pre>
   y = u(time - delayTime) for time &gt; time.start + delayTime
     = u(time.start)       for time &le; time.start + delayTime
</pre></blockquote>
<p>
The delay is approximated by a Pade approximation, i.e., by
a transfer function
</p>
<blockquote><pre>
           b[1]*s^m + b[2]*s^[m-1] + ... + b[m+1]
   y(s) = --------------------------------------------- * u(s)
           a[1]*s^n + a[2]*s^[n-1] + ... + a[n+1]
</pre></blockquote>
<p>
where the coefficients b[:] and a[:] are calculated such that the
coefficients of the Taylor expansion of the delay exp(-T*s) around s=0
are identical up to order n+m.
</p>
<p>
The main advantage of this approach is that the delay is
approximated by a linear differential equation system, which
is continuous and continuously differentiable. For example, it
is uncritical to linearize a system containing a Pade-approximated
delay.
</p>
<p>
The standard text book version uses order \"m=n\", which is
also the default setting of this block. The setting
\"m=n-1\" may yield a better approximation in certain cases.
</p>
<h5>Literature</h5>
<p>Otto Foellinger: Regelungstechnik, 8. Auflage,
chapter 11.9, page 412-414, Huethig Verlag Heidelberg, 1994
</p>
</html>"),   Icon(
      coordinateSystem(preserveAspectRatio=true,
        extent={{-100.0,-100.0},{100.0,100.0}}),
        graphics={
      Text(extent={{8.0,-142.0},{8.0,-102.0}},
        textString="delayTime=%delayTime"),
      Line(points={{-94.0,0.0},{-82.7,34.2},{-75.5,53.1},{-69.1,66.4},{-63.4,74.6},{-57.8,79.1},{-52.2,79.8},{-46.6,76.6},{-40.9,69.7},{-35.3,59.4},{-28.9,44.1},{-20.83,21.2},{-3.9,-30.8},{3.3,-50.2},{9.7,-64.2},{15.3,-73.1},{21.0,-78.4},{26.6,-80.0},{32.2,-77.6},{37.9,-71.5},{43.5,-61.9},{49.9,-47.2},{58.0,-24.8},{66.0,0.0}},
        color={0,0,127},
        smooth=Smooth.Bezier),
      Line(points={{-72.0,0.0},{-60.7,34.2},{-53.5,53.1},{-47.1,66.4},{-41.4,74.6},{-35.8,79.1},{-30.2,79.8},{-24.6,76.6},{-18.9,69.7},{-13.3,59.4},{-6.9,44.1},{1.17,21.2},{18.1,-30.8},{25.3,-50.2},{31.7,-64.2},{37.3,-73.1},{43.0,-78.4},{48.6,-80.0},{54.2,-77.6},{59.9,-71.5},{65.5,-61.9},{71.9,-47.2},{80.0,-24.8},{88.0,0.0}},
        color={160,160,164},
        smooth=Smooth.Bezier),
      Text(textColor={160,160,164},
        extent={{-10.0,38.0},{100.0,100.0}},
        textString="m=%m"),
      Text(textColor={160,160,164},
        extent={{-98.0,-96.0},{6.0,-34.0}},
        textString="n=%n")}),
      Diagram(coordinateSystem(
          preserveAspectRatio=true,
          extent={{-100,-100},{100,100}}), graphics={
          Line(points={{-80,80},{-88,80}}, color={192,192,192}),
          Line(points={{-80,-80},{-88,-80}}, color={192,192,192}),
          Line(points={{-80,-88},{-80,86}}, color={192,192,192}),
          Text(
            extent={{-75,98},{-46,78}},
            textColor={0,0,255},
            textString="outPort"),
          Polygon(
            points={{-80,96},{-86,80},{-74,80},{-80,96}},
            lineColor={192,192,192},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid),
          Line(points={{-100,0},{84,0}}, color={192,192,192}),
          Polygon(
            points={{100,0},{84,6},{84,-6},{100,0}},
            lineColor={192,192,192},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid),
          Line(points={{-80,0},{-68.7,34.2},{-61.5,53.1},{-55.1,66.4},{-49.4,
                74.6},{-43.8,79.1},{-38.2,79.8},{-32.6,76.6},{-26.9,69.7},{-21.3,
                59.4},{-14.9,44.1},{-6.83,21.2},{10.1,-30.8},{17.3,-50.2},{23.7,
                -64.2},{29.3,-73.1},{35,-78.4},{40.6,-80},{46.2,-77.6},{51.9,-71.5},
                {57.5,-61.9},{63.9,-47.2},{72,-24.8},{80,0}}, color={0,0,127},
                smooth=Smooth.Bezier),
          Text(
            extent={{-24,98},{-2,78}},
            textString="inPort"),
          Line(points={{-64,0},{-52.7,34.2},{-45.5,53.1},{-39.1,66.4},{-33.4,
                74.6},{-27.8,79.1},{-22.2,79.8},{-16.6,76.6},{-10.9,69.7},{-5.3,
                59.4},{1.1,44.1},{9.17,21.2},{26.1,-30.8},{33.3,-50.2},{39.7,-64.2},
                {45.3,-73.1},{51,-78.4},{56.6,-80},{62.2,-77.6},{67.9,-71.5},{
                73.5,-61.9},{79.9,-47.2},{88,-24.8},{96,0}}, smooth=Smooth.Bezier),
          Text(
            extent={{67,22},{96,6}},
            textColor={160,160,164},
            textString="time"),
          Line(points={{-64,-30},{-64,0}}, color={192,192,192}),
          Text(
            extent={{-58,-42},{-58,-32}},
            textString="delayTime",
            textColor={0,0,255}),
          Line(points={{-94,-26},{-80,-26}}, color={192,192,192}),
          Line(points={{-64,-26},{-50,-26}}, color={192,192,192}),
          Polygon(
            points={{-80,-26},{-88,-24},{-88,-28},{-80,-26}},
            lineColor={192,192,192},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{-56,-24},{-64,-26},{-56,-28},{-56,-24}},
            lineColor={192,192,192},
            fillColor={192,192,192},
            fillPattern=FillPattern.Solid)}));
    end PadeDelayOld;

    PadeDelayOld padeDelayOld1(delayTime=delayTime, n=n)
      annotation (Placement(transformation(extent={{-40,40},{-20,60}})));
    Modelica.Blocks.Nonlinear.PadeDelay padeDelay1(
      balance=false,
      delayTime=delayTime,
      n=n) annotation (Placement(transformation(extent={{-40,0},{-20,20}})));
    Modelica.Blocks.Sources.Step step(startTime=0.1, offset=0.1)
      annotation (Placement(transformation(extent={{-80,40},{-60,60}})));
    Modelica.Blocks.Math.Feedback compare1
      annotation (Placement(transformation(extent={{-4,40},{16,60}})));
    PadeDelayOld padeDelayOld2(delayTime=delayTime, n=n)
      annotation (Placement(transformation(extent={{-40,-40},{-20,-20}})));
    Modelica.Blocks.Nonlinear.PadeDelay padeDelay2(
      balance=false,
      delayTime=delayTime,
      n=n) annotation (Placement(transformation(extent={{-40,-80},{-20,-60}})));
    Modelica.Blocks.Math.Feedback compare2
      annotation (Placement(transformation(extent={{-4,-40},{16,-20}})));
    Modelica.Blocks.Sources.Sine Sine(startTime=0.1, offset=0.1,
      f=2)
      annotation (Placement(transformation(extent={{-80,-40},{-60,-20}})));
  equation
    assert(abs(compare1.y) <= 1e-3, "PadeDelay: Old and new implementation does not give the same result");
    assert(abs(compare2.y) <= 1e-3, "PadeDelay: Old and new implementation does not give the same result");

    connect(step.y, padeDelayOld1.u) annotation (Line(
        points={{-59,50},{-42,50}}, color={0,0,127}));
    connect(step.y, padeDelay1.u) annotation (Line(
        points={{-59,50},{-52,50},{-52,10},{-42,10}}, color={0,0,127}));
    connect(padeDelayOld1.y, compare1.u1) annotation (Line(
        points={{-19,50},{-2,50}}, color={0,0,127}));
    connect(padeDelay1.y, compare1.u2) annotation (Line(
        points={{-19,10},{6,10},{6,42}}, color={0,0,127}));
    connect(padeDelayOld2.y,compare2. u1) annotation (Line(
        points={{-19,-30},{-2,-30}}, color={0,0,127}));
    connect(padeDelay2.y,compare2. u2) annotation (Line(
        points={{-19,-70},{6,-70},{6,-38}}, color={0,0,127}));
    connect(padeDelayOld2.u, Sine.y) annotation (Line(
        points={{-42,-30},{-59,-30}}, color={0,0,127}));
    connect(padeDelay2.u, Sine.y) annotation (Line(
        points={{-42,-70},{-50,-70},{-50,-30},{-59,-30}}, color={0,0,127}));
    annotation (experiment(StopTime=1.0));
  end PadeDelay1;

  model PadeDelay2
    "PadeDelay: Compare balance = false with balance = true setting"
    extends Modelica.Icons.Example;
    parameter Integer n=4 "Order of Pade approximation";
    parameter SI.Time delayTime=0.001
      "Delay time of output with respect to input signal";

    Modelica.Blocks.Nonlinear.PadeDelay padeDelay1b(
      delayTime=delayTime,
      n=n,
      balance=true)
      annotation (Placement(transformation(extent={{-40,0},{-20,20}})));
    Modelica.Blocks.Sources.Step step(               offset=0.1, startTime=0.01)
      annotation (Placement(transformation(extent={{-80,40},{-60,60}})));
    Modelica.Blocks.Math.Feedback compare1
      annotation (Placement(transformation(extent={{-4,40},{16,60}})));
    Modelica.Blocks.Nonlinear.PadeDelay padeDelay2a(delayTime=delayTime, n=n)
      annotation (Placement(transformation(extent={{-40,-40},{-20,-20}})));
    Modelica.Blocks.Nonlinear.PadeDelay padeDelay2b(
      delayTime=delayTime,
      n=n,
      balance=true)
      annotation (Placement(transformation(extent={{-40,-80},{-20,-60}})));
    Modelica.Blocks.Math.Feedback compare2
      annotation (Placement(transformation(extent={{-4,-40},{16,-20}})));
    Modelica.Blocks.Sources.Sine Sine(               offset=0.1,
      f=2,
      startTime=0.01)
      annotation (Placement(transformation(extent={{-80,-40},{-60,-20}})));
    Modelica.Blocks.Nonlinear.PadeDelay padeDelay1a(
      balance=false,
      delayTime=delayTime,
      n=n) annotation (Placement(transformation(extent={{-40,40},{-20,60}})));
  equation
    assert(abs(compare1.y) <= 1e-3, "PadeDelay: Old and new implementation does not give the same result");
    assert(abs(compare2.y) <= 1e-3, "PadeDelay: Old and new implementation does not give the same result");

    connect(step.y, padeDelay1b.u) annotation (Line(
        points={{-59,50},{-52,50},{-52,10},{-42,10}}, color={0,0,127}));
    connect(padeDelay1b.y, compare1.u2) annotation (Line(
        points={{-19,10},{6,10},{6,42}}, color={0,0,127}));
    connect(padeDelay2a.y, compare2.u1) annotation (Line(
        points={{-19,-30},{-2,-30}}, color={0,0,127}));
    connect(padeDelay2b.y, compare2.u2) annotation (Line(
        points={{-19,-70},{6,-70},{6,-38}}, color={0,0,127}));
    connect(padeDelay2a.u, Sine.y) annotation (Line(
        points={{-42,-30},{-59,-30}}, color={0,0,127}));
    connect(padeDelay2b.u, Sine.y) annotation (Line(
        points={{-42,-70},{-50,-70},{-50,-30},{-59,-30}}, color={0,0,127}));
    connect(step.y, padeDelay1a.u) annotation (Line(
        points={{-59,50},{-42,50}}, color={0,0,127}));
    connect(compare1.u1, padeDelay1a.y) annotation (Line(
        points={{-2,50},{-19,50}}, color={0,0,127}));
    annotation (experiment(StopTime=0.02),      Documentation(info="<html>
<p>
The setting with order=4 gives the same result with balance=false and balance=true.
If order=5 or higher is set, then the balance=false setting gives extremely slow
simulation. If the balance=false blocks are removed, the simulation is very fast.
This shows the improvements in the numerics when balance=true is set.
</p>
</html>"));
  end PadeDelay2;

  package FilterTests "Test of Blocks.Continuous.Filter"
    extends Modelica.Icons.ExamplesPackage;
    model AllOptions
      "Simulates 264 filter blocks and varies all possible options systematically for different orders and different cut-off frequencies"
      extends Modelica.Icons.Example;
      DifferentInitialization normalized(normalized=true)
        annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
      DifferentInitialization notNormalized(normalized=false)
        annotation (Placement(transformation(extent={{-60,0},{-40,20}})));
      Basic basicWithGain(gain=1.4)
        annotation (Placement(transformation(extent={{-20,40},{0,60}})));
      annotation (experiment(StopTime=1.1));
    end AllOptions;

    model Basic
      extends Modelica.Blocks.Icons.Block;
      parameter Integer order1=3;
      parameter Integer order2=6;
      parameter SI.Frequency f_cut1=3;
      parameter SI.Frequency f_cut2=5;
      parameter Boolean normalized=true;
      parameter Modelica.Blocks.Types.FilterType filterType=Modelica.Blocks.Types.FilterType.LowPass
        "Type of filter (LowPass/HighPass)";
      parameter Modelica.Blocks.Types.Init init=Modelica.Blocks.Types.Init.SteadyState
        "Type of initialization (no init/steady state/initial state/initial output)";

      Modelica.Blocks.Sources.Step step(startTime=0.1, offset=0.1)
        annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
      Modelica.Blocks.Continuous.Filter CriticalDamping_a(
        analogFilter=Modelica.Blocks.Types.AnalogFilter.CriticalDamping,
        normalized=normalized,
        order=order1,
        f_cut=f_cut1,
        init=init,
        filterType=filterType,
        f_min=0.8*f_cut1,
        gain=gain)
        annotation (Placement(transformation(extent={{-20,40},{0,60}})));
      Modelica.Blocks.Continuous.Filter CriticalDamping_b(
        analogFilter=Modelica.Blocks.Types.AnalogFilter.CriticalDamping,
        normalized=normalized,
        order=order2,
        f_cut=f_cut2,
        init=init,
        filterType=filterType,
        f_min=0.8*f_cut2,
        gain=gain)
        annotation (Placement(transformation(extent={{40,40},{60,60}})));
      Modelica.Blocks.Continuous.Filter Bessel_a(
        normalized=normalized,
        order=order1,
        f_cut=f_cut1,
        analogFilter=Modelica.Blocks.Types.AnalogFilter.Bessel,
        init=init,
        filterType=filterType,
        f_min=0.8*f_cut1,
        gain=gain)
        annotation (Placement(transformation(extent={{-20,0},{0,20}})));
      Modelica.Blocks.Continuous.Filter Bessel_b(
        normalized=normalized,
        order=order2,
        f_cut=f_cut2,
        analogFilter=Modelica.Blocks.Types.AnalogFilter.Bessel,
        init=init,
        filterType=filterType,
        f_min=0.8*f_cut2,
        gain=gain)
        annotation (Placement(transformation(extent={{40,0},{60,20}})));
      Modelica.Blocks.Continuous.Filter Butterworth_a(
        normalized=normalized,
        order=order1,
        f_cut=f_cut1,
        analogFilter=Modelica.Blocks.Types.AnalogFilter.Butterworth,
        init=init,
        filterType=filterType,
        f_min=0.8*f_cut1,
        gain=gain)
        annotation (Placement(transformation(extent={{-20,-40},{0,-20}})));
      Modelica.Blocks.Continuous.Filter Butterworth_b(
        normalized=normalized,
        order=order2,
        f_cut=f_cut2,
        analogFilter=Modelica.Blocks.Types.AnalogFilter.Butterworth,
        init=init,
        filterType=filterType,
        f_min=0.8*f_cut2,
        gain=gain)
        annotation (Placement(transformation(extent={{40,-40},{60,-20}})));
      Modelica.Blocks.Continuous.Filter ChebyshevI_a(
        normalized=normalized,
        order=order1,
        f_cut=f_cut1,
        analogFilter=Modelica.Blocks.Types.AnalogFilter.ChebyshevI,
        init=init,
        filterType=filterType,
        f_min=0.8*f_cut1,
        gain=gain)
        annotation (Placement(transformation(extent={{-20,-80},{0,-60}})));
      Modelica.Blocks.Continuous.Filter ChebyshevI_b(
        normalized=normalized,
        order=order2,
        f_cut=f_cut2,
        analogFilter=Modelica.Blocks.Types.AnalogFilter.ChebyshevI,
        init=init,
        filterType=filterType,
        f_min=0.8*f_cut2,
        gain=gain)
        annotation (Placement(transformation(extent={{40,-80},{60,-60}})));

      parameter Real gain=1.0
        "Gain (= amplitude of frequency response at zero frequency)";
    equation
      connect(step.y, CriticalDamping_a.u) annotation (Line(
          points={{-39,50},{-22,50}}, color={0,0,127}));
      connect(step.y, CriticalDamping_b.u) annotation (Line(
          points={{-39,50},{-32,50},{-32,70},{20,70},{20,50},{38,50}}, color={0,0,127}));
      connect(step.y, Bessel_a.u) annotation (Line(
          points={{-39,50},{-32,50},{-32,10},{-22,10}}, color={0,0,127}));
      connect(step.y, Bessel_b.u) annotation (Line(
          points={{-39,50},{-32,50},{-32,70},{20,70},{20,10},{38,10}}, color={0,0,127}));
      connect(Butterworth_a.u, step.y) annotation (Line(
          points={{-22,-30},{-32,-30},{-32,50},{-39,50}}, color={0,0,127}));
      connect(step.y, Butterworth_b.u) annotation (Line(
          points={{-39,50},{-32,50},{-32,70},{20,70},{20,-30},{38,-30}}, color={0,0,127}));
      connect(ChebyshevI_a.u, step.y) annotation (Line(
          points={{-22,-70},{-32,-70},{-32,50},{-39,50}}, color={0,0,127}));
      connect(step.y, ChebyshevI_b.u) annotation (Line(
          points={{-39,50},{-32,50},{-32,70},{20,70},{20,-70},{38,-70}}, color={0,0,127}));
      annotation (experiment(StopTime=0.9), Icon(graphics={Text(
                  extent={{-82,54},{86,22}},
                  textString="basic"),Text(
                  extent={{-84,2},{84,-30}},
                  textString="filters")}));
    end Basic;

    block DifferentFilterTypes
      extends Modelica.Blocks.Icons.Block;
      Basic lowPass(
        filterType=Modelica.Blocks.Types.FilterType.LowPass,
        normalized=normalized,
        init=init)
        annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
      Basic highPass(
        filterType=Modelica.Blocks.Types.FilterType.HighPass,
        normalized=normalized,
        init=init)
        annotation (Placement(transformation(extent={{-60,0},{-40,20}})));
      Basic bandPass(
        filterType=Modelica.Blocks.Types.FilterType.BandPass,
        normalized=normalized,
        init=init,
        order1=4,
        order2=10)
        annotation (Placement(transformation(extent={{-60,-40},{-40,-20}})));
      Basic bandStop(
        filterType=Modelica.Blocks.Types.FilterType.BandStop,
        normalized=normalized,
        init=init,
        order1=4,
        order2=10)
        annotation (Placement(transformation(extent={{-60,-80},{-40,-60}})));
      parameter Modelica.Blocks.Types.Init init=Modelica.Blocks.Types.Init.SteadyState
        "Type of initialization (no init/steady state/initial state/initial output)";
      parameter Boolean normalized=true;
    end DifferentFilterTypes;

    block DifferentInitialization
      extends Modelica.Blocks.Icons.Block;
      DifferentFilterTypes steadyState(init=Modelica.Blocks.Types.Init.SteadyState,
          normalized=normalized)
        annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
      DifferentFilterTypes initialState(init=Modelica.Blocks.Types.Init.InitialState,
          normalized=normalized)
        annotation (Placement(transformation(extent={{-60,0},{-40,20}})));
      DifferentFilterTypes initialOutput(init=Modelica.Blocks.Types.Init.InitialOutput,
          normalized=normalized)
        annotation (Placement(transformation(extent={{-60,-40},{-40,-20}})));
      DifferentFilterTypes noInit(init=Modelica.Blocks.Types.Init.InitialOutput,
          normalized=normalized)
        annotation (Placement(transformation(extent={{-60,-80},{-40,-60}})));
      parameter Boolean normalized=true;
    equation

    end DifferentInitialization;
  end FilterTests;

  model Discrete
    extends Modelica.Icons.Example;
    parameter SI.Time samplePeriod=0.02
      "Sample period of component";
    Modelica.Blocks.Sources.Sine sine(f=3)
      annotation (Placement(transformation(extent={{-80,70},{-60,90}})));
    Modelica.Blocks.Discrete.Sampler sampler(samplePeriod=samplePeriod)
      annotation (Placement(transformation(extent={{-40,70},{-20,90}})));
    Modelica.Blocks.Discrete.ZeroOrderHold zeroOrderHold(samplePeriod=
          samplePeriod)
      annotation (Placement(transformation(extent={{-40,40},{-20,60}})));
    Modelica.Blocks.Discrete.FirstOrderHold firstOrderHold(samplePeriod=
          samplePeriod)
      annotation (Placement(transformation(extent={{-40,10},{-20,30}})));
    Modelica.Blocks.Discrete.UnitDelay unitDelay(samplePeriod=samplePeriod)
      annotation (Placement(transformation(extent={{-40,-20},{-20,0}})));
    Modelica.Blocks.Discrete.TransferFunction transferFunction(
        samplePeriod=samplePeriod, a={1,0.1},
      y(start=0, fixed=true))
      annotation (Placement(transformation(extent={{-40,-50},{-20,-30}})));
    Modelica.Blocks.Discrete.StateSpace stateSpace(
      B=[0; 2],
      C=[2,3],
      D=[0.1],
      samplePeriod=samplePeriod,
      A=[0,1; -1,-0.1],
      y(each start=0, each fixed=true),
      x(each start=0, each fixed=true))
                           annotation (Placement(transformation(extent={{-40,-80},{-20,-60}})));
    Modelica.Blocks.Discrete.TriggeredSampler triggeredSampler(y_start=2)
      annotation (Placement(transformation(extent={{20,70},{40,90}})));
    Modelica.Blocks.Sources.BooleanPulse booleanPulse(period=0.2)
      annotation (Placement(transformation(extent={{0,40},{20,60}})));
    Modelica.Blocks.Discrete.TriggeredMax triggeredMax
      annotation (Placement(transformation(extent={{60,70},{80,90}})));
  equation
    connect(sine.y, sampler.u)
      annotation (Line(points={{-59,80},{-42,80}}, color={0,0,127}));
    connect(sine.y, zeroOrderHold.u) annotation (Line(points={{-59,80},{-52,80},{-52,
            50},{-42,50}}, color={0,0,127}));
    connect(sine.y, firstOrderHold.u) annotation (Line(points={{-59,80},{-52,80},{
            -52,20},{-42,20}}, color={0,0,127}));
    connect(sine.y, unitDelay.u) annotation (Line(points={{-59,80},{-52,80},{-52,-10},
            {-42,-10}}, color={0,0,127}));
    connect(sine.y, transferFunction.u) annotation (Line(points={{-59,80},{-52,80},
            {-52,-40},{-42,-40}}, color={0,0,127}));
    connect(sine.y, stateSpace.u[1]) annotation (Line(points={{-59,80},{-52,80},{-52,
            -70},{-42,-70}}, color={0,0,127}));
    connect(sine.y, triggeredSampler.u) annotation (Line(points={{-59,80},{-52,
            80},{-52,96},{2,96},{2,80},{18,80}}, color={0,0,127}));
    connect(booleanPulse.y, triggeredSampler.trigger)
      annotation (Line(points={{21,50},{30,50},{30,68.2}}, color={255,0,255}));
    connect(sine.y, triggeredMax.u) annotation (Line(points={{-59,80},{-56,80},
            {-52,80},{-52,96},{54,96},{54,80},{58,80}}, color={0,0,127}));
    connect(booleanPulse.y, triggeredMax.trigger)
      annotation (Line(points={{21,50},{70,50},{70,68.2}}, color={255,0,255}));
    annotation (experiment(StopTime=1.1));
  end Discrete;

  model Hysteresis
      extends Modelica.Icons.Example;
   Modelica.Blocks.Logical.Hysteresis
               hysteresis(uLow=-0.5, uHigh=0.5)   annotation (Placement(transformation(extent={{12,-9},
              {30,9}})));
    Modelica.Blocks.Sources.Sine Signal(f=1) "temperature in warm well"
      annotation (Placement(transformation(extent={{-34,-9},{-16,9}})));
  equation

    connect(Signal.y, hysteresis.u)
      annotation (Line(points={{-15.1,0},{10.2,0}}, color={0,0,127}));
    annotation (experiment(StopTime=3));
  end Hysteresis;

  model MuxDemux "Test model for the Mux and Demux blocks"
    extends Modelica.Icons.Example;
    Modelica.Blocks.Sources.ContinuousClock clock annotation (Placement(
          transformation(extent={{-100,-10},{-80,10}})));
    Modelica.Blocks.Routing.Multiplex mux5(n=5) annotation (Placement(
          transformation(extent={{-30,-10},{-10,10}})));
    Modelica.Blocks.Routing.DeMultiplex demux5(n=5)
      annotation (Placement(transformation(extent={{12,-10},{32,10}})));
    Modelica.Blocks.Routing.Multiplex mux3(n=3) annotation (Placement(
          transformation(extent={{-60,-30},{-40,-10}})));
    Modelica.Blocks.Routing.Multiplex mux2(n=2) annotation (Placement(
          transformation(extent={{-60,10},{-40,30}})));
    Modelica.Blocks.Routing.DeMultiplex demux2(n=2)
      annotation (Placement(transformation(extent={{60,20},{80,40}})));
    Modelica.Blocks.Interfaces.RealOutput y1 annotation (Placement(
          transformation(extent={{100,30},{120,50}})));
    Modelica.Blocks.Interfaces.RealOutput y2 annotation (Placement(
          transformation(extent={{100,10},{120,30}})));
    Modelica.Blocks.Interfaces.RealOutput y3 annotation (Placement(
          transformation(extent={{100,-30},{120,-10}})));
    Modelica.Blocks.Interfaces.RealOutput y4 annotation (Placement(
          transformation(extent={{100,-50},{120,-30}})));
    Modelica.Blocks.Interfaces.RealOutput y5 annotation (Placement(
          transformation(extent={{100,-70},{120,-50}})));
    Modelica.Blocks.Routing.DeMultiplex demux3(n=3) annotation (
        Placement(transformation(extent={{60,-50},{80,-30}})));
  equation
    connect(clock.y, mux2.u[1]) annotation (Line(points={{-79,0},{-70,0},
            {-70,23.5},{-60,23.5}}, color={0,0,127}));
    connect(clock.y, mux2.u[2]) annotation (Line(points={{-79,0},{-70,0},
            {-70,16.5},{-60,16.5}}, color={0,0,127}));
    connect(clock.y, mux3.u[1]) annotation (Line(points={{-79,0},{-70,0},{-70,
            -15.3333},{-60,-15.3333}},      color={0,0,127}));
    connect(clock.y, mux3.u[2]) annotation (Line(points={{-79,0},{-70,0},
            {-70,-20},{-60,-20}}, color={0,0,127}));
    connect(clock.y, mux3.u[3]) annotation (Line(points={{-79,0},{-70,0},{-70,
            -24.6667},{-60,-24.6667}},      color={0,0,127}));
    connect(mux2.y, mux5.u[1:2]) annotation (Line(points={{-39,20},{-34,
            20},{-34,2.8},{-30,2.8}}, color={0,0,127}));
    connect(mux3.y, mux5.u[3:5]) annotation (Line(points={{-39,-20},{-34,
            -20},{-34,-5.6},{-30,-5.6}}, color={0,0,127}));
    connect(mux5.y, demux5.u)
      annotation (Line(points={{-9,0},{10,0}}, color={0,0,127}));
    connect(demux2.y[1], y1) annotation (Line(points={{80,33.5},{91,33.5},
            {91,40},{110,40}}, color={0,0,127}));
    connect(demux2.y[2], y2) annotation (Line(points={{80,26.5},{92,26.5},
            {92,20},{110,20}}, color={0,0,127}));
    connect(demux2.u, demux5.y[1:2]) annotation (Line(points={{58,30},
            {46,30},{46,4},{32,4},{32,2.8}},
                                    color={0,0,127}));
    connect(y3, demux3.y[1]) annotation (Line(points={{110,-20},{96,-20},{96,
            -35.3333},{80,-35.3333}},     color={0,0,127}));
    connect(y4, demux3.y[2]) annotation (Line(points={{110,-40},{96,-40},
            {96,-40},{80,-40}}, color={0,0,127}));
    connect(y5, demux3.y[3]) annotation (Line(points={{110,-60},{96,-60},{96,
            -44.6667},{80,-44.6667}},     color={0,0,127}));
    connect(demux3.u, demux5.y[3:5]) annotation (Line(points={{58,-40},
            {46,-40},{46,-4},{32,-4},{32,-5.6},{32,-5.6}},
                                          color={0,0,127}));
    annotation (experiment(StopTime=2));
  end MuxDemux;

  model LimPID "Test cases for the LimPID block"
    extends Modelica.Icons.Example;
    Modelica.Blocks.Continuous.LimPID PID1(
      Ti=1,
      yMax=1,
      yMin=0,
      initType=Modelica.Blocks.Types.Init.SteadyState,
      controllerType=Modelica.Blocks.Types.SimpleController.PI)
      annotation (Placement(transformation(extent={{-40,80},{-20,100}})));
    Modelica.Blocks.Sources.Step step1(
      height=0.4,
      offset=0.5,
      startTime=1)
      annotation (Placement(transformation(extent={{-80,80},{-60,100}})));
    Modelica.Blocks.Continuous.FirstOrder firstOrder1(T=1, initType=Modelica.Blocks.Types.Init.SteadyState)
      annotation (Placement(transformation(extent={{0,80},{20,100}})));
    Modelica.Blocks.Continuous.LimPID PID2(
      Ti=1,
      yMax=1,
      yMin=0,
      initType=Modelica.Blocks.Types.Init.SteadyState,
      controllerType=Modelica.Blocks.Types.SimpleController.PI,
      homotopyType=Modelica.Blocks.Types.LimiterHomotopy.UpperLimit)
      annotation (Placement(transformation(extent={{-40,20},{-20,40}})));
    Modelica.Blocks.Sources.Step step2(
      startTime=1,
      height=-1.5,
      offset=2)
      annotation (Placement(transformation(extent={{-80,20},{-60,40}})));
    Modelica.Blocks.Continuous.FirstOrder firstOrder2(T=1, initType=Modelica.Blocks.Types.Init.SteadyState)
      annotation (Placement(transformation(extent={{0,20},{20,40}})));
    Modelica.Blocks.Continuous.LimPID PID3(
      Ti=1,
      yMax=1,
      yMin=0,
      initType=Modelica.Blocks.Types.Init.SteadyState,
      controllerType=Modelica.Blocks.Types.SimpleController.PI,
      homotopyType=Modelica.Blocks.Types.LimiterHomotopy.LowerLimit)
      annotation (Placement(transformation(extent={{-40,-40},{-20,-20}})));
    Modelica.Blocks.Sources.Step step3(
      startTime=1,
      height=1.5,
      offset=-1)
      annotation (Placement(transformation(extent={{-80,-40},{-60,-20}})));
    Modelica.Blocks.Continuous.FirstOrder firstOrder3(T=1, initType=Modelica.Blocks.Types.Init.SteadyState)
      annotation (Placement(transformation(extent={{0,-40},{20,-20}})));
    Modelica.Blocks.Continuous.LimPID PID4(
      Ti=1,
      yMax=1,
      yMin=0,
      initType=Modelica.Blocks.Types.Init.SteadyState,
      controllerType=Modelica.Blocks.Types.SimpleController.PI,
      homotopyType=Modelica.Blocks.Types.LimiterHomotopy.NoHomotopy)
      annotation (Placement(transformation(extent={{-40,-100},{-20,-80}})));
    Modelica.Blocks.Sources.Step step4(
      startTime=1,
      height=0.4,
      offset=0.5)
      annotation (Placement(transformation(extent={{-80,-100},{-60,-80}})));
    Modelica.Blocks.Continuous.FirstOrder firstOrder4(T=1, initType=Modelica.Blocks.Types.Init.SteadyState)
      annotation (Placement(transformation(extent={{0,-100},{20,-80}})));
  equation
    connect(firstOrder1.y, PID1.u_m) annotation (Line(points={{21,90},{40,90},{
            40,60},{-30,60},{-30,78}}, color={0,0,127}));
    connect(PID1.y, firstOrder1.u)
      annotation (Line(points={{-19,90},{-2,90}}, color={0,0,127}));
    connect(step1.y, PID1.u_s)
      annotation (Line(points={{-59,90},{-42,90}}, color={0,0,127}));
    connect(firstOrder2.y, PID2.u_m) annotation (Line(points={{21,30},{40,30},{
            40,0},{-30,0},{-30,18}}, color={0,0,127}));
    connect(PID2.y, firstOrder2.u)
      annotation (Line(points={{-19,30},{-2,30}}, color={0,0,127}));
    connect(step2.y, PID2.u_s)
      annotation (Line(points={{-59,30},{-42,30}}, color={0,0,127}));
    connect(firstOrder3.y, PID3.u_m) annotation (Line(points={{21,-30},{40,-30},
            {40,-60},{-30,-60},{-30,-42}}, color={0,0,127}));
    connect(PID3.y, firstOrder3.u)
      annotation (Line(points={{-19,-30},{-2,-30}}, color={0,0,127}));
    connect(step3.y, PID3.u_s)
      annotation (Line(points={{-59,-30},{-42,-30}}, color={0,0,127}));
    connect(firstOrder4.y, PID4.u_m) annotation (Line(points={{21,-90},{40,-90},
            {40,-120},{-30,-120},{-30,-102}}, color={0,0,127}));
    connect(PID4.y, firstOrder4.u)
      annotation (Line(points={{-19,-90},{-2,-90}}, color={0,0,127}));
    connect(step4.y, PID4.u_s) annotation (Line(points={{-59,-90},{-52,-90},{
            -52,-90},{-48,-90},{-48,-90},{-42,-90}}, color={0,0,127}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
              -140},{100,120}})),                                  Diagram(
          coordinateSystem(preserveAspectRatio=false, extent={{-100,-140},{100,
              120}})),
      experiment(StopTime=10),
      Documentation(info="<html>
<p>This test models demonstrates the use of the <code>homotopyType</code> parameter of the <code>LimPID</code> model in different situations.</p>
<p>The first control loop is initialized in steady state with a value of the set point which is compatible with the control variable limitations.
In this case, the default option can be used, which removes the limitations in the simplified model, making it linear and thus easier to solve</p>
<p>The second control loop is initialized in steady state with a value of the set point that causes the control output to hit
the upper saturation limit. If this is known a priori, then by setting <code>homotopyType = UpperLimit</code> the simplified model just
assumes the PID output to be yMax, thus making the simplified initialization problem linear.</p>
<p>The third control loop is similar to the second, except that the lower saturation limit is now engaged.</p>
<p>The fourth loop does not use any simplified model of the limiter during homotopy - this can be used when it is not
known a priori if the controller is saturated or not, and it is important to enforce the PID output limitations throughout
the whole homotopy transformation.</p>
</html>"));
  end LimPID;

  model Exponentiation
    extends Modelica.Icons.Example;

    Modelica.Blocks.Sources.Ramp negativeToPositiveRamp(
      height=4,
      duration=1,
      offset=-2,
      startTime=0)
      annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
    Modelica.Blocks.Math.Exponentiation evenExponent(exponent=2)
      annotation (Placement(transformation(extent={{0,80},{20,100}})));
    Modelica.Blocks.Math.Exponentiation oddExponent(exponent=3)
      annotation (Placement(transformation(extent={{0,50},{20,70}})));
    Modelica.Blocks.Math.Exponentiation oneExponent(exponent=1)
      annotation (Placement(transformation(extent={{0,20},{20,40}})));
    Modelica.Blocks.Math.Exponentiation zeroExponent(exponent=0)
      annotation (Placement(transformation(extent={{0,-70},{20,-50}})));
    Modelica.Blocks.Math.Abs abs1
      annotation (Placement(transformation(extent={{-40,-10},{-20,10}})));
    Modelica.Blocks.Math.Exponentiation nonInteger(exponent=2.1)
      annotation (Placement(transformation(extent={{0,-10},{20,10}})));
    Modelica.Blocks.Math.Exponentiation sqrtExponent(exponent=0.5)
      annotation (Placement(transformation(extent={{0,-40},{20,-20}})));
    Modelica.Blocks.Math.Max max1
      annotation (Placement(transformation(extent={{-40,-100},{-20,-80}})));
    Modelica.Blocks.Sources.Constant oneTenth(k=0.1)
      annotation (Placement(transformation(extent={{-80,-100},{-60,-80}})));
    Modelica.Blocks.Math.Exponentiation inverse(exponent=-1)
      annotation (Placement(transformation(extent={{0,-100},{20,-80}})));
  equation
    connect(negativeToPositiveRamp.y, evenExponent.u)
      annotation (Line(points={{-79,90},{-2,90}}, color={0,0,127}));
    connect(abs1.u, evenExponent.u) annotation (Line(points={{-42,0},{-50,0},{
            -50,90},{-2,90}},
                           color={0,0,127}));
    connect(abs1.y, nonInteger.u)
      annotation (Line(points={{-19,0},{-2,0}},    color={0,0,127}));
    connect(oddExponent.u, evenExponent.u) annotation (Line(points={{-2,60},{
            -20,60},{-20,90},{-2,90}},
                                    color={0,0,127}));
    connect(oneExponent.u, evenExponent.u) annotation (Line(points={{-2,30},{
            -20,30},{-20,90},{-2,90}},
                                color={0,0,127}));
    connect(sqrtExponent.u, nonInteger.u) annotation (Line(points={{-2,-30},{
            -10,-30},{-10,0},{-2,0}},     color={0,0,127}));
    connect(max1.y, inverse.u)
      annotation (Line(points={{-19,-90},{-2,-90}}, color={0,0,127}));
    connect(max1.u1, evenExponent.u) annotation (Line(points={{-42,-84},{-50,
            -84},{-50,90},{-2,90}}, color={0,0,127}));
    connect(oneTenth.y, max1.u2) annotation (Line(points={{-59,-90},{-50,-90},{
            -50,-96},{-42,-96}}, color={0,0,127}));
    connect(max1.y, zeroExponent.u) annotation (Line(points={{-19,-90},{-10,-90},
            {-10,-60},{-2,-60}}, color={0,0,127}));
    annotation (experiment(StopTime=1.0));
  end Exponentiation;

  model ZeroThresholds
    extends Modelica.Icons.Example;

    Modelica.Blocks.Logical.GreaterThreshold greaterThreshold(
      threshold=0) annotation (Placement(transformation(
          origin={70,70},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold(
      threshold=0) annotation (Placement(transformation(
          origin={70,30},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    Modelica.Blocks.Logical.LessThreshold lessThreshold(
      threshold=0) annotation (Placement(transformation(
          origin={70,-30},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    Modelica.Blocks.Logical.LessEqualThreshold lessEqualThreshold(
      threshold=0) annotation (Placement(transformation(
          origin={70,-70},
          extent={{-10,-10},{10,10}},
          rotation=0)));
    Modelica.Blocks.Nonlinear.Limiter limiterMinZero(
      homotopyType=Modelica.Blocks.Types.LimiterHomotopy.NoHomotopy,
      strict=true,
      uMax=1e5,
      uMin=0.0) annotation (Placement(transformation(extent={{20,60},{40,80}}, rotation=0)));
    Modelica.Blocks.Nonlinear.Limiter limiterMaxZero(
      homotopyType=Modelica.Blocks.Types.LimiterHomotopy.NoHomotopy,
      strict=true,
      uMax=0.0,
      uMin=-1e5) annotation (Placement(transformation(extent={{20,-40},{40,-20}}, rotation=0)));
    Modelica.Blocks.Sources.Ramp ramp(
      duration = 0.2,
      height = -1.0,
      offset = 1,
      startTime = 0.3) annotation (
      Placement(transformation(extent={{-80,-10},{-60,10}})));
    Modelica.Blocks.Math.Gain gain(
      k=-1) annotation (Placement(transformation(extent={{-20,-40},{0,-20}})));
  equation
    connect(limiterMinZero.y, greaterThreshold.u) annotation (Line(points={{41,70},{58,70}}, color={0,0,127}));
    connect(limiterMinZero.y, greaterEqualThreshold.u) annotation (Line(points={{41,70},{50,70},{50,30},{58,30}}, color={0,0,127}));
    connect(limiterMaxZero.y, lessThreshold.u) annotation (Line(points={{41,-30},{58,-30}}, color={0,0,127}));
    connect(limiterMaxZero.y, lessEqualThreshold.u) annotation (Line(points={{41,-30},{50,-30},{50,-70},{58,-70}}, color={0,0,127}));
    connect(ramp.y, limiterMinZero.u) annotation (Line(points={{-59,0},{-40,0},{-40,70},{18,70}}, color={0,0,127}));
    connect(ramp.y, gain.u) annotation (Line(points={{-59,0},{-40,0},{-40,-30},{-22,-30}}, color={0,0,127}));
    connect(gain.y, limiterMaxZero.u) annotation (Line(points={{1,-30},{10,-30},{10,-30},{18,-30}}, color={0,0,127}));
    annotation (experiment(StopTime=1.0));
  end ZeroThresholds;

  model MathFunctions "Test of elementary mathematical function blocks of Modelica.Blocks.Math"
    extends Modelica.Icons.Example;

    Modelica.Blocks.Sources.Ramp ramp1(height=1.8, duration=1, offset=-0.9)
      annotation (Placement(transformation(extent={{-90,50},{-70,70}})));
    Modelica.Blocks.Sources.Constant const1(k=0.5)
      annotation (Placement(transformation(extent={{-90,-10},{-70,10}})));
    Modelica.Blocks.Sources.Ramp ramp2(height=1.9, duration=1, offset=0.1)
      annotation (Placement(transformation(extent={{-90,-70},{-70,-50}})));
    Modelica.Blocks.Math.Cos cos1
      annotation (Placement(transformation(extent={{-30,80},{-10,100}})));
    Modelica.Blocks.Math.Tan tan1
      annotation (Placement(transformation(extent={{-30,50},{-10,70}})));
    Modelica.Blocks.Math.Acos acos1
      annotation (Placement(transformation(extent={{-30,20},{-10,40}})));
    Modelica.Blocks.Math.Sinh sinh1
      annotation (Placement(transformation(extent={{-30,-10},{-10,10}})));
    Modelica.Blocks.Math.Cosh cosh1
      annotation (Placement(transformation(extent={{-30,-40},{-10,-20}})));
    Modelica.Blocks.Math.Tanh tanh1
      annotation (Placement(transformation(extent={{-30,-70},{-10,-50}})));
    Modelica.Blocks.Math.Exp exp1
      annotation (Placement(transformation(extent={{-30,-100},{-10,-80}})));
    Modelica.Blocks.Math.Sign sign1
      annotation (Placement(transformation(extent={{10,80},{30,100}})));
    Modelica.Blocks.Math.Sign signEvent(generateEvent=true)
      annotation (Placement(transformation(extent={{10,50},{30,70}})));
    Modelica.Blocks.Math.Atan2 atan2Quadrants
      annotation (Placement(transformation(extent={{10,20},{30,40}})));
    Modelica.Blocks.Math.Division division1
      annotation (Placement(transformation(extent={{10,-100},{30,-80}})));
    Modelica.Blocks.Math.Log logNatural
      annotation (Placement(transformation(extent={{50,80},{70,100}})));
    Modelica.Blocks.Math.Log logBase2(base=2)
      annotation (Placement(transformation(extent={{50,50},{70,70}})));
    Modelica.Blocks.Math.Log10 logBase10
      annotation (Placement(transformation(extent={{50,20},{70,40}})));
    Modelica.Blocks.Math.Power powerExp(base=2)
      annotation (Placement(transformation(extent={{50,-10},{70,10}})));
    Modelica.Blocks.Math.Power powerNoExp(base=2, useExp=false)
      annotation (Placement(transformation(extent={{50,-40},{70,-20}})));
  equation
    connect(ramp1.y, cos1.u) annotation (Line(points={{-69,60},{-50,60},{-50,90},{-32,90}}, color={0,0,127}));
    connect(ramp1.y, tan1.u) annotation (Line(points={{-69,60},{-32,60}}, color={0,0,127}));
    connect(ramp1.y, acos1.u) annotation (Line(points={{-69,60},{-50,60},{-50,30},{-32,30}}, color={0,0,127}));
    connect(ramp1.y, sinh1.u) annotation (Line(points={{-69,60},{-50,60},{-50,0},{-32,0}}, color={0,0,127}));
    connect(ramp1.y, cosh1.u) annotation (Line(points={{-69,60},{-50,60},{-50,-30},{-32,-30}}, color={0,0,127}));
    connect(ramp1.y, tanh1.u) annotation (Line(points={{-69,60},{-50,60},{-50,-60},{-32,-60}}, color={0,0,127}));
    connect(ramp1.y, exp1.u) annotation (Line(points={{-69,60},{-50,60},{-50,-90},{-32,-90}}, color={0,0,127}));
    connect(ramp1.y, sign1.u) annotation (Line(points={{-69,60},{-30,60},{-30,90},{8,90}}, color={0,0,127}));
    connect(ramp1.y, signEvent.u) annotation (Line(points={{-69,60},{8,60}}, color={0,0,127}));
    connect(const1.y, atan2Quadrants.u1) annotation (Line(points={{-69,0},{-30,0},{-30,36},{8,36}}, color={0,0,127}));
    connect(ramp1.y, atan2Quadrants.u2) annotation (Line(points={{-69,60},{-30,60},{-30,24},{8,24}}, color={0,0,127}));
    connect(ramp1.y, division1.u1) annotation (Line(points={{-69,60},{-30,60},{-30,-84},{8,-84}}, color={0,0,127}));
    connect(ramp2.y, division1.u2) annotation (Line(points={{-69,-60},{-30,-60},{-30,-96},{8,-96}}, color={0,0,127}));
    connect(ramp2.y, logNatural.u) annotation (Line(points={{-69,-60},{-10,-60},{-10,90},{48,90}}, color={0,0,127}));
    connect(ramp2.y, logBase2.u) annotation (Line(points={{-69,-60},{-10,-60},{-10,60},{48,60}}, color={0,0,127}));
    connect(ramp2.y, logBase10.u) annotation (Line(points={{-69,-60},{-10,-60},{-10,30},{48,30}}, color={0,0,127}));
    connect(ramp1.y, powerExp.u) annotation (Line(points={{-69,60},{-10,60},{-10,0},{48,0}}, color={0,0,127}));
    connect(ramp1.y, powerNoExp.u) annotation (Line(points={{-69,60},{-10,60},{-10,-30},{48,-30}}, color={0,0,127}));
    annotation (experiment(StopTime=1),
      Documentation(info="<html>
<p>
Tests the single-input function blocks of
<a href=\"modelica://Modelica.Blocks.Math\">Modelica.Blocks.Math</a>
that are not exercised elsewhere: Cos, Tan, Acos, Sinh, Cosh, Tanh, Exp,
Sign (with and without events), Atan2, Division, Log (natural and base 2),
Log10 and Power (with and without the exp-based implementation).
</p>
<p>
Input <code>ramp1</code> sweeps (-0.9, 0.9), which stays inside the domain of
Acos and away from the poles of Tan. Input <code>ramp2</code> sweeps (0.1, 2)
for the logarithms. Atan2 gets a constant <code>u1</code> and a sign-changing
<code>u2</code>, so its output moves from the first to the second quadrant
without a branch jump.
</p>
</html>"));
  end MathFunctions;

  model MathOperators "Test of Min, MinMax, MultiSum, LinearDependency, Pythagoras, MultiSwitch and InverseBlockConstraints"
    extends Modelica.Icons.Example;

    Modelica.Blocks.Sources.Sine sine1(f=1)
      annotation (Placement(transformation(extent={{-90,80},{-70,100}})));
    Modelica.Blocks.Sources.Ramp ramp1(height=2, duration=1, offset=-1)
      annotation (Placement(transformation(extent={{-90,50},{-70,70}})));
    Modelica.Blocks.Sources.Constant const1(k=0.3)
      annotation (Placement(transformation(extent={{-90,20},{-70,40}})));
    Modelica.Blocks.Sources.Constant const2(k=0.8)
      annotation (Placement(transformation(extent={{-90,-10},{-70,10}})));
    Modelica.Blocks.Sources.Ramp ramp2(height=1.9, duration=1, offset=0.1)
      annotation (Placement(transformation(extent={{-90,-50},{-70,-30}})));
    Modelica.Blocks.Sources.BooleanPulse booleanPulse1(width=50, period=0.4)
      annotation (Placement(transformation(extent={{-90,-90},{-70,-70}})));
    Modelica.Blocks.Sources.BooleanPulse booleanPulse2(width=30, period=0.25, startTime=0.1)
      annotation (Placement(transformation(extent={{-90,-120},{-70,-100}})));
    Modelica.Blocks.Math.Min min1
      annotation (Placement(transformation(extent={{-30,80},{-10,100}})));
    Modelica.Blocks.Math.MinMax minMax1(nu=3)
      annotation (Placement(transformation(extent={{-30,50},{-10,70}})));
    Modelica.Blocks.Math.MultiSum multiSum1(nu=3, k={1,-2,0.5})
      annotation (Placement(transformation(extent={{-30,20},{-10,40}})));
    Modelica.Blocks.Math.LinearDependency linearDependency1(y0=1, k1=0.5, k2=-0.2)
      annotation (Placement(transformation(extent={{-30,-10},{-10,10}})));
    Modelica.Blocks.Math.Pythagoras pythagorasLegs
      annotation (Placement(transformation(extent={{30,80},{50,100}})));
    Modelica.Blocks.Math.Pythagoras pythagorasHypotenuse(u1IsHypotenuse=true)
      annotation (Placement(transformation(extent={{30,50},{50,70}})));
    Modelica.Blocks.Math.InverseBlockConstraints inverse1
      annotation (Placement(transformation(extent={{-20,-50},{40,-30}})));
    Modelica.Blocks.Math.Exp exp1
      annotation (Placement(transformation(extent={{0,-50},{20,-30}})));
    Modelica.Blocks.Math.MultiSwitch multiSwitch1(nu=2, expr={1,2}, y_default=-1)
      annotation (Placement(transformation(extent={{-30,-105},{-10,-85}})));
  equation
    connect(sine1.y, min1.u1) annotation (Line(points={{-69,90},{-50,90},{-50,96},{-32,96}}, color={0,0,127}));
    connect(ramp1.y, min1.u2) annotation (Line(points={{-69,60},{-50,60},{-50,84},{-32,84}}, color={0,0,127}));
    connect(sine1.y, minMax1.u[1]) annotation (Line(points={{-69,90},{-50,90},{-50,60},{-32,60}}, color={0,0,127}));
    connect(ramp1.y, minMax1.u[2]) annotation (Line(points={{-69,60},{-32,60}}, color={0,0,127}));
    connect(const1.y, minMax1.u[3]) annotation (Line(points={{-69,30},{-50,30},{-50,60},{-32,60}}, color={0,0,127}));
    connect(sine1.y, multiSum1.u[1]) annotation (Line(points={{-69,90},{-50,90},{-50,30},{-32,30}}, color={0,0,127}));
    connect(ramp1.y, multiSum1.u[2]) annotation (Line(points={{-69,60},{-50,60},{-50,30},{-32,30}}, color={0,0,127}));
    connect(const1.y, multiSum1.u[3]) annotation (Line(points={{-69,30},{-32,30}}, color={0,0,127}));
    connect(sine1.y, linearDependency1.u1) annotation (Line(points={{-69,90},{-50,90},{-50,6},{-32,6}}, color={0,0,127}));
    connect(ramp1.y, linearDependency1.u2) annotation (Line(points={{-69,60},{-50,60},{-50,-6},{-32,-6}}, color={0,0,127}));
    connect(ramp1.y, pythagorasLegs.u1) annotation (Line(points={{-69,60},{-20,60},{-20,96},{28,96}}, color={0,0,127}));
    connect(const1.y, pythagorasLegs.u2) annotation (Line(points={{-69,30},{-20,30},{-20,84},{28,84}}, color={0,0,127}));
    connect(const2.y, pythagorasHypotenuse.u1) annotation (Line(points={{-69,0},{-20,0},{-20,66},{28,66}}, color={0,0,127}));
    connect(ramp1.y, pythagorasHypotenuse.u2) annotation (Line(points={{-69,60},{-20,60},{-20,54},{28,54}}, color={0,0,127}));
    connect(ramp2.y, inverse1.u1) annotation (Line(points={{-69,-40},{-22,-40}}, color={0,0,127}));
    connect(inverse1.y1, exp1.u) annotation (Line(points={{-12,-40},{-2,-40}}, color={0,0,127}));
    connect(exp1.y, inverse1.u2) annotation (Line(points={{21,-40},{32,-40}}, color={0,0,127}));
    connect(booleanPulse1.y, multiSwitch1.u[1]) annotation (Line(points={{-69,-80},{-50,-80},{-50,-95},{-32,-95}}, color={255,0,255}));
    connect(booleanPulse2.y, multiSwitch1.u[2]) annotation (Line(points={{-69,-110},{-50,-110},{-50,-95},{-32,-95}}, color={255,0,255}));
    annotation (Diagram(coordinateSystem(extent={{-100,-130},{100,110}})),
      experiment(StopTime=1),
      Documentation(info="<html>
<p>
Tests multi-input blocks of
<a href=\"modelica://Modelica.Blocks.Math\">Modelica.Blocks.Math</a>.
</p>
<ul>
<li><code>pythagorasLegs</code> computes a hypotenuse from two legs. <code>pythagorasHypotenuse</code>
    computes a leg from the hypotenuse 0.8 while |u2| sweeps up to 1, so its
    <code>valid</code> output switches to false when |u2| &gt; 0.8.</li>
<li><code>inverse1</code> inverts an Exp block, so <code>inverse1.y1</code> = log(<code>ramp2.y</code>).</li>
<li><code>multiSwitch1</code> selects 1 or 2 by priority of two Boolean pulses, and -1 when neither is active.</li>
</ul>
</html>"));
  end MathOperators;

  model TypeConversionsAndChanges "Test of Integer/Boolean/Real conversion blocks and change detection blocks of Modelica.Blocks.Math"
    extends Modelica.Icons.Example;

    Modelica.Blocks.Sources.IntegerStep integerStep1(height=3, startTime=0.3)
      annotation (Placement(transformation(extent={{-90,70},{-70,90}})));
    Modelica.Blocks.Sources.IntegerStep integerStep2(height=-2, offset=1, startTime=0.6)
      annotation (Placement(transformation(extent={{-90,40},{-70,60}})));
    Modelica.Blocks.MathInteger.Sum sum1(nu=2)
      annotation (Placement(transformation(extent={{-50,55},{-30,75}})));
    Modelica.Blocks.Math.IntegerToReal integerToReal1
      annotation (Placement(transformation(extent={{-10,80},{10,100}})));
    Modelica.Blocks.Math.IntegerToBoolean integerToBoolean1(threshold=3)
      annotation (Placement(transformation(extent={{-10,50},{10,70}})));
    Modelica.Blocks.Math.IntegerChange integerChange1
      annotation (Placement(transformation(extent={{-10,20},{10,40}})));
    Modelica.Blocks.Sources.BooleanPulse booleanPulse1(width=50, period=0.2, startTime=0.05)
      annotation (Placement(transformation(extent={{-90,-50},{-70,-30}})));
    Modelica.Blocks.Math.BooleanToReal booleanToReal1(realTrue=2, realFalse=-1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Math.BooleanToInteger booleanToInteger1(integerTrue=5, integerFalse=-3)
      annotation (Placement(transformation(extent={{-10,-40},{10,-20}})));
    Modelica.Blocks.Math.Edge edge1
      annotation (Placement(transformation(extent={{-10,-70},{10,-50}})));
    Modelica.Blocks.Math.BooleanChange booleanChange1
      annotation (Placement(transformation(extent={{-10,-100},{10,-80}})));
    Modelica.Blocks.Sources.IntegerConstant integerConstant1(k=1)
      annotation (Placement(transformation(extent={{10,-140},{30,-120}})));
    Modelica.Blocks.MathInteger.TriggeredAdd countIntegerChanges
      annotation (Placement(transformation(extent={{50,20},{70,40}})));
    Modelica.Blocks.MathInteger.TriggeredAdd countEdges
      annotation (Placement(transformation(extent={{50,-70},{70,-50}})));
    Modelica.Blocks.MathInteger.TriggeredAdd countBooleanChanges
      annotation (Placement(transformation(extent={{50,-100},{70,-80}})));
  equation
    connect(integerStep1.y, sum1.u[1]) annotation (Line(points={{-69,80},{-60,80},{-60,65},{-52,65}}, color={255,127,0}));
    connect(integerStep2.y, sum1.u[2]) annotation (Line(points={{-69,50},{-60,50},{-60,65},{-52,65}}, color={255,127,0}));
    connect(sum1.y, integerToReal1.u) annotation (Line(points={{-29,65},{-20,65},{-20,90},{-12,90}}, color={255,127,0}));
    connect(sum1.y, integerToBoolean1.u) annotation (Line(points={{-29,65},{-20,65},{-20,60},{-12,60}}, color={255,127,0}));
    connect(sum1.y, integerChange1.u) annotation (Line(points={{-29,65},{-20,65},{-20,30},{-12,30}}, color={255,127,0}));
    connect(booleanPulse1.y, booleanToReal1.u) annotation (Line(points={{-69,-40},{-40,-40},{-40,0},{-12,0}}, color={255,0,255}));
    connect(booleanPulse1.y, booleanToInteger1.u) annotation (Line(points={{-69,-40},{-40,-40},{-40,-30},{-12,-30}}, color={255,0,255}));
    connect(booleanPulse1.y, edge1.u) annotation (Line(points={{-69,-40},{-40,-40},{-40,-60},{-12,-60}}, color={255,0,255}));
    connect(booleanPulse1.y, booleanChange1.u) annotation (Line(points={{-69,-40},{-40,-40},{-40,-90},{-12,-90}}, color={255,0,255}));
    connect(integerChange1.y, countIntegerChanges.trigger) annotation (Line(points={{11,30},{54,30},{54,18}}, color={255,0,255}));
    connect(edge1.y, countEdges.trigger) annotation (Line(points={{11,-60},{54,-60},{54,-72}}, color={255,0,255}));
    connect(booleanChange1.y, countBooleanChanges.trigger) annotation (Line(points={{11,-90},{54,-90},{54,-102}}, color={255,0,255}));
    connect(integerConstant1.y, countIntegerChanges.u) annotation (Line(points={{31,-130},{40,-130},{40,30},{48,30}}, color={255,127,0}));
    connect(integerConstant1.y, countEdges.u) annotation (Line(points={{31,-130},{40,-130},{40,-60},{48,-60}}, color={255,127,0}));
    connect(integerConstant1.y, countBooleanChanges.u) annotation (Line(points={{31,-130},{40,-130},{40,-90},{48,-90}}, color={255,127,0}));
    annotation (Diagram(coordinateSystem(extent={{-100,-150},{100,110}})),
      experiment(StopTime=1),
      Documentation(info="<html>
<p>
Tests IntegerToReal, IntegerToBoolean, BooleanToReal, BooleanToInteger and
the event-detection blocks Edge, BooleanChange and IntegerChange of
<a href=\"modelica://Modelica.Blocks.Math\">Modelica.Blocks.Math</a>.
</p>
<p>
The detection blocks are true only at an event instant, which cannot be
compared reliably in a result file. Each one therefore drives a
<a href=\"modelica://Modelica.Blocks.MathInteger.TriggeredAdd\">TriggeredAdd</a>
counter, and the counters are the comparison signals. Expected final values:
2 integer changes, 5 rising edges and 10 Boolean changes.
</p>
</html>"));
  end TypeConversionsAndChanges;

  model MathBooleanBlocks "Test of the vectorized Boolean blocks of Modelica.Blocks.MathBoolean and Boolean sources"
    extends Modelica.Icons.Example;

    Modelica.Blocks.Sources.BooleanTable booleanTable1(table={0.1,0.3,0.5,0.7})
      annotation (Placement(transformation(extent={{-90,70},{-70,90}})));
    Modelica.Blocks.Sources.BooleanTable booleanTable2(table={0.2,0.6,0.8})
      annotation (Placement(transformation(extent={{-90,30},{-70,50}})));
    Modelica.Blocks.Sources.BooleanPulse booleanPulse1(width=40, period=0.3)
      annotation (Placement(transformation(extent={{-90,-10},{-70,10}})));
    Modelica.Blocks.MathBoolean.And and1(nu=3)
      annotation (Placement(transformation(extent={{-30,90},{-10,110}})));
    Modelica.Blocks.MathBoolean.Or or1(nu=3)
      annotation (Placement(transformation(extent={{-30,60},{-10,80}})));
    Modelica.Blocks.MathBoolean.Xor xor1(nu=2)
      annotation (Placement(transformation(extent={{-30,30},{-10,50}})));
    Modelica.Blocks.MathBoolean.Nand nand1(nu=2)
      annotation (Placement(transformation(extent={{-30,0},{-10,20}})));
    Modelica.Blocks.MathBoolean.Nor nor1(nu=2)
      annotation (Placement(transformation(extent={{-30,-30},{-10,-10}})));
    Modelica.Blocks.MathBoolean.Not not1
      annotation (Placement(transformation(extent={{-30,-60},{-10,-40}})));
    Modelica.Blocks.MathBoolean.MultiSwitch multiSwitch1(nu=2, expr={true,false})
      annotation (Placement(transformation(extent={{-30,-90},{-10,-70}})));
    Modelica.Blocks.Routing.BooleanPassThrough booleanPassThrough1
      annotation (Placement(transformation(extent={{10,90},{30,110}})));
    Modelica.Blocks.MathBoolean.RisingEdge risingEdge1
      annotation (Placement(transformation(extent={{10,30},{30,50}})));
    Modelica.Blocks.MathBoolean.FallingEdge fallingEdge1
      annotation (Placement(transformation(extent={{10,0},{30,20}})));
    Modelica.Blocks.MathBoolean.ChangingEdge changingEdge1
      annotation (Placement(transformation(extent={{10,-30},{30,-10}})));
    Modelica.Blocks.Sources.IntegerConstant integerConstant1(k=1)
      annotation (Placement(transformation(extent={{10,-70},{30,-50}})));
    Modelica.Blocks.MathInteger.TriggeredAdd countRising
      annotation (Placement(transformation(extent={{50,30},{70,50}})));
    Modelica.Blocks.MathInteger.TriggeredAdd countFalling
      annotation (Placement(transformation(extent={{50,0},{70,20}})));
    Modelica.Blocks.MathInteger.TriggeredAdd countChanging
      annotation (Placement(transformation(extent={{50,-30},{70,-10}})));
    Modelica.Blocks.Sources.RadioButtonSource radioButtonSource1(buttonTimeTable={0.2,0.7}, reset={radioButtonSource2.on})
      annotation (Placement(transformation(extent={{-90,-130},{-70,-110}})));
    Modelica.Blocks.Sources.RadioButtonSource radioButtonSource2(buttonTimeTable={0.45}, reset={radioButtonSource1.on})
      annotation (Placement(transformation(extent={{-50,-130},{-30,-110}})));
  equation
    connect(booleanTable1.y, and1.u[1]) annotation (Line(points={{-69,80},{-50,80},{-50,100},{-32,100}}, color={255,0,255}));
    connect(booleanTable2.y, and1.u[2]) annotation (Line(points={{-69,40},{-50,40},{-50,100},{-32,100}}, color={255,0,255}));
    connect(booleanPulse1.y, and1.u[3]) annotation (Line(points={{-69,0},{-50,0},{-50,100},{-32,100}}, color={255,0,255}));
    connect(booleanTable1.y, or1.u[1]) annotation (Line(points={{-69,80},{-50,80},{-50,70},{-32,70}}, color={255,0,255}));
    connect(booleanTable2.y, or1.u[2]) annotation (Line(points={{-69,40},{-50,40},{-50,70},{-32,70}}, color={255,0,255}));
    connect(booleanPulse1.y, or1.u[3]) annotation (Line(points={{-69,0},{-50,0},{-50,70},{-32,70}}, color={255,0,255}));
    connect(booleanTable1.y, xor1.u[1]) annotation (Line(points={{-69,80},{-50,80},{-50,40},{-32,40}}, color={255,0,255}));
    connect(booleanTable2.y, xor1.u[2]) annotation (Line(points={{-69,40},{-32,40}}, color={255,0,255}));
    connect(booleanTable1.y, nand1.u[1]) annotation (Line(points={{-69,80},{-50,80},{-50,10},{-32,10}}, color={255,0,255}));
    connect(booleanTable2.y, nand1.u[2]) annotation (Line(points={{-69,40},{-50,40},{-50,10},{-32,10}}, color={255,0,255}));
    connect(booleanTable1.y, nor1.u[1]) annotation (Line(points={{-69,80},{-50,80},{-50,-20},{-32,-20}}, color={255,0,255}));
    connect(booleanTable2.y, nor1.u[2]) annotation (Line(points={{-69,40},{-50,40},{-50,-20},{-32,-20}}, color={255,0,255}));
    connect(booleanTable1.y, not1.u) annotation (Line(points={{-69,80},{-50,80},{-50,-50},{-32,-50}}, color={255,0,255}));
    connect(booleanTable1.y, multiSwitch1.u[1]) annotation (Line(points={{-69,80},{-50,80},{-50,-80},{-32,-80}}, color={255,0,255}));
    connect(booleanTable2.y, multiSwitch1.u[2]) annotation (Line(points={{-69,40},{-50,40},{-50,-80},{-32,-80}}, color={255,0,255}));
    connect(and1.y, booleanPassThrough1.u) annotation (Line(points={{-9,100},{8,100}}, color={255,0,255}));
    connect(booleanPulse1.y, risingEdge1.u) annotation (Line(points={{-69,0},{-30,0},{-30,40},{8,40}}, color={255,0,255}));
    connect(booleanPulse1.y, fallingEdge1.u) annotation (Line(points={{-69,0},{-30,0},{-30,10},{8,10}}, color={255,0,255}));
    connect(booleanPulse1.y, changingEdge1.u) annotation (Line(points={{-69,0},{-30,0},{-30,-20},{8,-20}}, color={255,0,255}));
    connect(risingEdge1.y, countRising.trigger) annotation (Line(points={{31,40},{54,40},{54,28}}, color={255,0,255}));
    connect(fallingEdge1.y, countFalling.trigger) annotation (Line(points={{31,10},{54,10},{54,-2}}, color={255,0,255}));
    connect(changingEdge1.y, countChanging.trigger) annotation (Line(points={{31,-20},{54,-20},{54,-32}}, color={255,0,255}));
    connect(integerConstant1.y, countRising.u) annotation (Line(points={{31,-60},{40,-60},{40,40},{48,40}}, color={255,127,0}));
    connect(integerConstant1.y, countFalling.u) annotation (Line(points={{31,-60},{40,-60},{40,10},{48,10}}, color={255,127,0}));
    connect(integerConstant1.y, countChanging.u) annotation (Line(points={{31,-60},{40,-60},{40,-20},{48,-20}}, color={255,127,0}));
    annotation (Diagram(coordinateSystem(extent={{-100,-140},{100,120}})),
      experiment(StopTime=1),
      Documentation(info="<html>
<p>
Tests the logical operators (And, Or, Xor, Nand, Nor, Not), the edge
detectors (RisingEdge, FallingEdge, ChangingEdge) and MultiSwitch of
<a href=\"modelica://Modelica.Blocks.MathBoolean\">Modelica.Blocks.MathBoolean</a>.
It also tests Routing.BooleanPassThrough and two mutually resetting
Sources.RadioButtonSource blocks.
</p>
<p>
As in TypeConversionsAndChanges, each edge detector drives a TriggeredAdd
counter, and the counters are compared instead of the momentary edge
signals. <code>booleanPulse1</code> (period 0.3 s, width 40 %) gives 3 rising
(0.3, 0.6, 0.9 s), 3 falling and 6 changing edges in 1 s. The rise at t = 0 is not
counted, because when-equations do not trigger during initialization.
</p>
</html>"));
  end MathBooleanBlocks;

  model MathIntegerBlocks "Test of Modelica.Blocks.MathInteger, Integer sources and Integer routing blocks"
    extends Modelica.Icons.Example;

    Modelica.Blocks.Sources.IntegerStep integerStep1(height=2, offset=1, startTime=0.25)
      annotation (Placement(transformation(extent={{-90,70},{-70,90}})));
    Modelica.Blocks.Sources.IntegerConstant integerConstant1(k=3)
      annotation (Placement(transformation(extent={{-90,40},{-70,60}})));
    Modelica.Blocks.Sources.IntegerExpression integerExpression1(y=integer(4*time))
      annotation (Placement(transformation(extent={{-90,10},{-70,30}})));
    Modelica.Blocks.MathInteger.Sum sum1(nu=3, k={1,-1,2})
      annotation (Placement(transformation(extent={{-30,70},{-10,90}})));
    Modelica.Blocks.MathInteger.Product product1(nu=3)
      annotation (Placement(transformation(extent={{-30,40},{-10,60}})));
    Modelica.Blocks.Sources.BooleanTable booleanTable1(table={0.3,0.6})
      annotation (Placement(transformation(extent={{-90,-30},{-70,-10}})));
    Modelica.Blocks.Sources.BooleanPulse booleanPulse1(width=50, period=0.4, startTime=0.1)
      annotation (Placement(transformation(extent={{-90,-60},{-70,-40}})));
    Modelica.Blocks.MathInteger.MultiSwitch multiSwitch1(nu=2, expr={10,20}, y_default=-1, use_pre_as_default=false)
      annotation (Placement(transformation(extent={{-30,-45},{-10,-25}})));
    Modelica.Blocks.Sources.SampleTrigger sampleTrigger1(period=0.1, startTime=0.05)
      annotation (Placement(transformation(extent={{-90,-100},{-70,-80}})));
    Modelica.Blocks.Sources.BooleanTable resetTable(table={0.52,0.54})
      annotation (Placement(transformation(extent={{-90,-130},{-70,-110}})));
    Modelica.Blocks.MathInteger.TriggeredAdd triggeredAdd1(use_reset=true, use_set=true, y_start=2)
      annotation (Placement(transformation(extent={{10,-100},{30,-80}})));
    Modelica.Blocks.Routing.IntegerReplicator integerReplicator1(nout=2)
      annotation (Placement(transformation(extent={{30,70},{50,90}})));
    Modelica.Blocks.Routing.IntegerPassThrough integerPassThrough1
      annotation (Placement(transformation(extent={{30,40},{50,60}})));
  equation
    connect(integerStep1.y, sum1.u[1]) annotation (Line(points={{-69,80},{-32,80}}, color={255,127,0}));
    connect(integerConstant1.y, sum1.u[2]) annotation (Line(points={{-69,50},{-50,50},{-50,80},{-32,80}}, color={255,127,0}));
    connect(integerExpression1.y, sum1.u[3]) annotation (Line(points={{-69,20},{-50,20},{-50,80},{-32,80}}, color={255,127,0}));
    connect(integerStep1.y, product1.u[1]) annotation (Line(points={{-69,80},{-50,80},{-50,50},{-32,50}}, color={255,127,0}));
    connect(integerConstant1.y, product1.u[2]) annotation (Line(points={{-69,50},{-32,50}}, color={255,127,0}));
    connect(integerExpression1.y, product1.u[3]) annotation (Line(points={{-69,20},{-50,20},{-50,50},{-32,50}}, color={255,127,0}));
    connect(booleanTable1.y, multiSwitch1.u[1]) annotation (Line(points={{-69,-20},{-50,-20},{-50,-35},{-32,-35}}, color={255,0,255}));
    connect(booleanPulse1.y, multiSwitch1.u[2]) annotation (Line(points={{-69,-50},{-50,-50},{-50,-35},{-32,-35}}, color={255,0,255}));
    connect(integerConstant1.y, triggeredAdd1.u) annotation (Line(points={{-69,50},{-30,50},{-30,-90},{8,-90}}, color={255,127,0}));
    connect(sampleTrigger1.y, triggeredAdd1.trigger) annotation (Line(points={{-69,-90},{14,-90},{14,-102}}, color={255,0,255}));
    connect(resetTable.y, triggeredAdd1.reset) annotation (Line(points={{-69,-120},{26,-120},{26,-102}}, color={255,0,255}));
    connect(integerStep1.y, triggeredAdd1.set) annotation (Line(points={{-69,80},{-24,80},{-24,-78},{20,-78}}, color={255,127,0}));
    connect(sum1.y, integerReplicator1.u) annotation (Line(points={{-9,80},{28,80}}, color={255,127,0}));
    connect(product1.y, integerPassThrough1.u) annotation (Line(points={{-9,50},{28,50}}, color={255,127,0}));
    annotation (Diagram(coordinateSystem(extent={{-100,-140},{100,100}})),
      experiment(StopTime=1),
      Documentation(info="<html>
<p>
Tests Sum, Product, MultiSwitch and TriggeredAdd (with reset and set ports) of
<a href=\"modelica://Modelica.Blocks.MathInteger\">Modelica.Blocks.MathInteger</a>,
the Integer sources IntegerStep, IntegerConstant and IntegerExpression,
Sources.SampleTrigger, and Routing.IntegerReplicator and
Routing.IntegerPassThrough.
</p>
<p>
<code>triggeredAdd1</code> starts at 2 and adds 3 at every sample of
<code>sampleTrigger1</code> (period 0.1 s, from 0.05 s). The short pulse of
<code>resetTable</code> at 0.52 s sets it back to <code>integerStep1.y</code> = 3.
</p>
</html>"));
  end MathIntegerBlocks;

  model InteractionShow "Test of the animation blocks of Modelica.Blocks.Interaction.Show"
    extends Modelica.Icons.Example;

    Modelica.Blocks.Sources.Sine sine1(f=2)
      annotation (Placement(transformation(extent={{-90,50},{-70,70}})));
    Modelica.Blocks.Sources.IntegerStep integerStep1(height=5, startTime=0.5)
      annotation (Placement(transformation(extent={{-90,-10},{-70,10}})));
    Modelica.Blocks.Sources.BooleanPulse booleanPulse1(period=0.25)
      annotation (Placement(transformation(extent={{-90,-70},{-70,-50}})));
    Modelica.Blocks.Interaction.Show.RealValue realValue1
      annotation (Placement(transformation(extent={{-30,50},{-10,70}})));
    Modelica.Blocks.Interaction.Show.RealValue realValue2(use_numberPort=false, number=2*time)
      annotation (Placement(transformation(extent={{-30,80},{-10,100}})));
    Modelica.Blocks.Interaction.Show.IntegerValue integerValue1
      annotation (Placement(transformation(extent={{-30,-10},{-10,10}})));
    Modelica.Blocks.Interaction.Show.IntegerValue integerValue2(use_numberPort=false, number=integer(10*time))
      annotation (Placement(transformation(extent={{-30,20},{-10,40}})));
    Modelica.Blocks.Interaction.Show.BooleanValue booleanValue1
      annotation (Placement(transformation(extent={{-30,-70},{-10,-50}})));
    Modelica.Blocks.Interaction.Show.BooleanValue booleanValue2(use_activePort=false, active=time > 0.5)
      annotation (Placement(transformation(extent={{-30,-40},{-10,-20}})));
  equation
    connect(sine1.y, realValue1.numberPort) annotation (Line(points={{-69,60},{-32,60}}, color={0,0,127}));
    connect(integerStep1.y, integerValue1.numberPort) annotation (Line(points={{-69,0},{-32,0}}, color={255,127,0}));
    connect(booleanPulse1.y, booleanValue1.activePort) annotation (Line(points={{-69,-60},{-32,-60}}, color={255,0,255}));
    annotation (experiment(StopTime=1),
      Documentation(info="<html>
<p>
Tests RealValue, IntegerValue and BooleanValue of
<a href=\"modelica://Modelica.Blocks.Interaction.Show\">Modelica.Blocks.Interaction.Show</a>,
each once with the input port enabled and once with the value given by a
binding equation (<code>use_numberPort=false</code> / <code>use_activePort=false</code>).
The displayed values <code>showNumber</code> and <code>showActive</code> are compared.
</p>
</html>"));
  end InteractionShow;

  model TerminateSimulation "Test of Modelica.Blocks.Logical.TerminateSimulation"
    extends Modelica.Icons.Example;

    Modelica.Blocks.Sources.Constant constant1(k=1)
      annotation (Placement(transformation(extent={{-90,-10},{-70,10}})));
    Modelica.Blocks.Continuous.Integrator integrator1
      annotation (Placement(transformation(extent={{-50,-10},{-30,10}})));
    Modelica.Blocks.Logical.TerminateSimulation terminateSimulation1(condition=integrator1.y >= 0.5, terminationText="... integrator output reached 0.5")
      annotation (Placement(transformation(extent={{-10,-10},{50,10}})));
  equation
    connect(constant1.y, integrator1.u) annotation (Line(points={{-69,0},{-52,0}}, color={0,0,127}));
    annotation (experiment(StopTime=1),
      Documentation(info="<html>
<p>
An integrator of the constant 1 reaches 0.5 at t = 0.5 s. At that point
<a href=\"modelica://Modelica.Blocks.Logical.TerminateSimulation\">TerminateSimulation</a>
stops the simulation, before the stop time of 1 s. The reference result
therefore has to end at t = 0.5 s.
</p>
</html>"));
  end TerminateSimulation;

  model Statistics "Test of the statistics and signal-analysis blocks of Modelica.Blocks.Math"
    extends Modelica.Icons.Example;

    Modelica.Blocks.Sources.Sine sine1(amplitude=1, f=2, offset=0.5)
      annotation (Placement(transformation(extent={{-90,50},{-70,70}})));
    Modelica.Blocks.Sources.Sine sineBase(amplitude=1, f=2)
      annotation (Placement(transformation(extent={{-90,-30},{-70,-10}})));
    Modelica.Blocks.Sources.Sine sineHarmonic(amplitude=0.2, f=6)
      annotation (Placement(transformation(extent={{-90,-70},{-70,-50}})));
    Modelica.Blocks.Math.Add add1
      annotation (Placement(transformation(extent={{-50,-50},{-30,-30}})));
    Modelica.Blocks.Math.ContinuousMean continuousMean1
      annotation (Placement(transformation(extent={{-10,80},{10,100}})));
    Modelica.Blocks.Math.Variance variance1
      annotation (Placement(transformation(extent={{-10,50},{10,70}})));
    Modelica.Blocks.Math.StandardDeviation standardDeviation1
      annotation (Placement(transformation(extent={{-10,20},{10,40}})));
    Modelica.Blocks.Math.SignalExtrema signalExtrema1(Ts=0.01)
      annotation (Placement(transformation(extent={{-10,-20},{10,0}})));
    Modelica.Blocks.Math.ContinuousSignalExtrema continuousSignalExtrema1
      annotation (Placement(transformation(extent={{-10,-50},{10,-30}})));
    Modelica.Blocks.Math.TotalHarmonicDistortion totalHarmonicDistortion1(f=2)
      annotation (Placement(transformation(extent={{-10,-80},{10,-60}})));
    Modelica.Blocks.Math.TotalHarmonicDistortion totalHarmonicDistortion2(f=2, useFirstHarmonic=false)
      annotation (Placement(transformation(extent={{-10,-110},{10,-90}})));
  equation
    connect(sineBase.y, add1.u1) annotation (Line(points={{-69,-20},{-60,-20},{-60,-34},{-52,-34}}, color={0,0,127}));
    connect(sineHarmonic.y, add1.u2) annotation (Line(points={{-69,-60},{-60,-60},{-60,-46},{-52,-46}}, color={0,0,127}));
    connect(sine1.y, continuousMean1.u) annotation (Line(points={{-69,60},{-40,60},{-40,90},{-12,90}}, color={0,0,127}));
    connect(sine1.y, variance1.u) annotation (Line(points={{-69,60},{-12,60}}, color={0,0,127}));
    connect(sine1.y, standardDeviation1.u) annotation (Line(points={{-69,60},{-40,60},{-40,30},{-12,30}}, color={0,0,127}));
    connect(add1.y, signalExtrema1.u) annotation (Line(points={{-29,-40},{-20,-40},{-20,-10},{-12,-10}}, color={0,0,127}));
    connect(add1.y, continuousSignalExtrema1.u) annotation (Line(points={{-29,-40},{-12,-40}}, color={0,0,127}));
    connect(add1.y, totalHarmonicDistortion1.u) annotation (Line(points={{-29,-40},{-20,-40},{-20,-70},{-12,-70}}, color={0,0,127}));
    connect(add1.y, totalHarmonicDistortion2.u) annotation (Line(points={{-29,-40},{-20,-40},{-20,-100},{-12,-100}}, color={0,0,127}));
    annotation (Diagram(coordinateSystem(extent={{-100,-120},{100,110}})),
      experiment(StopTime=2),
      Documentation(info="<html>
<p>
Tests ContinuousMean, Variance, StandardDeviation, SignalExtrema,
ContinuousSignalExtrema and TotalHarmonicDistortion of
<a href=\"modelica://Modelica.Blocks.Math\">Modelica.Blocks.Math</a>.
</p>
<ul>
<li><code>sine1</code> = 0.5 + sin(2&pi;&middot;2&middot;t). After whole periods, the mean tends
    to 0.5, the variance to 0.5 and the standard deviation to 0.707.</li>
<li><code>add1</code> = sin(2&pi;&middot;2&middot;t) + 0.2&middot;sin(2&pi;&middot;6&middot;t). Its
    THD relative to the first harmonic is 0.2 (<code>totalHarmonicDistortion1</code>).
    Relative to the total RMS it is 0.2/sqrt(1.04) = 0.196
    (<code>totalHarmonicDistortion2</code>). Both are valid after the first period of 0.5 s.</li>
</ul>
</html>"));
  end Statistics;

  model RealFFT "Test of Modelica.Blocks.Math.RealFFT"
    extends Modelica.Icons.Example;

    Modelica.Blocks.Sources.Sine sineBase(amplitude=1, f=2)
      annotation (Placement(transformation(extent={{-90,10},{-70,30}})));
    Modelica.Blocks.Sources.Sine sineHarmonic(amplitude=0.2, f=6)
      annotation (Placement(transformation(extent={{-90,-30},{-70,-10}})));
    Modelica.Blocks.Math.Add add1
      annotation (Placement(transformation(extent={{-50,-10},{-30,10}})));
    Modelica.Blocks.Math.RealFFT realFFT1(f_max=10, f_res=0.5, resultFileName="realFFT.mat")
      annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  equation
    connect(sineBase.y, add1.u1) annotation (Line(points={{-69,20},{-60,20},{-60,6},{-52,6}}, color={0,0,127}));
    connect(sineHarmonic.y, add1.u2) annotation (Line(points={{-69,-20},{-60,-20},{-60,-6},{-52,-6}}, color={0,0,127}));
    connect(add1.y, realFFT1.u) annotation (Line(points={{-29,0},{-12,0}}, color={0,0,127}));
    annotation (experiment(StopTime=2.5),
      Documentation(info="<html>
<p>
<a href=\"modelica://Modelica.Blocks.Math.RealFFT\">RealFFT</a> samples
sin(2&pi;&middot;2&middot;t) + 0.2&middot;sin(2&pi;&middot;6&middot;t) with a frequency resolution of
0.5 Hz up to 10 Hz, so sampling ends after 2 s. The FFT is computed
once and written to <code>realFFT.mat</code>. That file holds the amplitudes
at 2 Hz (expected 1) and 6 Hz (expected 0.2). The buffers <code>abs</code> and
<code>arg</code> are protected, so the comparison signal is the FFT status flag
<code>info</code> (0 = success).
</p>
</html>"));
  end RealFFT;

  model RoutingMultiplexing "Test of the multiplexer, demultiplexer and extraction blocks of Modelica.Blocks.Routing"
    extends Modelica.Icons.Example;

    Modelica.Blocks.Sources.Sine sine[6](amplitude={1,2,3,4,5,6}, each f=1)
      annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
    Modelica.Blocks.Routing.Multiplex4 multiplex4
      annotation (Placement(transformation(extent={{-50,70},{-30,90}})));
    Modelica.Blocks.Routing.Multiplex5 multiplex5
      annotation (Placement(transformation(extent={{-50,10},{-30,30}})));
    Modelica.Blocks.Routing.Multiplex6 multiplex6
      annotation (Placement(transformation(extent={{-50,-50},{-30,-30}})));
    Modelica.Blocks.Routing.DeMultiplex2 deMultiplex2(n1=2, n2=2)
      annotation (Placement(transformation(extent={{10,70},{30,90}})));
    Modelica.Blocks.Routing.DeMultiplex3 deMultiplex3(n1=1, n2=2, n3=2)
      annotation (Placement(transformation(extent={{10,10},{30,30}})));
    Modelica.Blocks.Routing.DeMultiplex4 deMultiplex4(n1=1, n2=1, n3=2, n4=2)
      annotation (Placement(transformation(extent={{10,-30},{30,-10}})));
    Modelica.Blocks.Routing.DeMultiplex6 deMultiplex6
      annotation (Placement(transformation(extent={{10,-70},{30,-50}})));
    Modelica.Blocks.Routing.ExtractSignal extractSignal1(nin=6, nout=5, extract={6,4,2,1,1})
      annotation (Placement(transformation(extent={{10,-110},{30,-90}})));
    Modelica.Blocks.Routing.DeMultiplex5 deMultiplex5
      annotation (Placement(transformation(extent={{50,-110},{70,-90}})));
    Modelica.Blocks.Sources.IntegerStep integerStep1(height=4, offset=1, startTime=0.5)
      annotation (Placement(transformation(extent={{-50,-120},{-30,-100}})));
    Modelica.Blocks.Sources.IntegerStep integerStep2(height=7, offset=1, startTime=0.5)
      annotation (Placement(transformation(extent={{-50,-160},{-30,-140}})));
    Modelica.Blocks.Routing.Extractor extractor1(nin=6)
      annotation (Placement(transformation(extent={{10,-150},{30,-130}})));
    Modelica.Blocks.Routing.Extractor extractor2(nin=6, allowOutOfRange=true, outOfRangeValue=-10)
      annotation (Placement(transformation(extent={{50,-150},{70,-130}})));
  equation
    connect(sine[1].y, multiplex4.u1[1]) annotation (Line(points={{-79,0},{-66,0},{-66,88},{-52,88}}, color={0,0,127}));
    connect(sine[2].y, multiplex4.u2[1]) annotation (Line(points={{-79,0},{-66,0},{-66,82.7},{-52,82.7}}, color={0,0,127}));
    connect(sine[3].y, multiplex4.u3[1]) annotation (Line(points={{-79,0},{-66,0},{-66,77.3},{-52,77.3}}, color={0,0,127}));
    connect(sine[4].y, multiplex4.u4[1]) annotation (Line(points={{-79,0},{-66,0},{-66,72},{-52,72}}, color={0,0,127}));
    connect(sine[1].y, multiplex5.u1[1]) annotation (Line(points={{-79,0},{-66,0},{-66,28},{-52,28}}, color={0,0,127}));
    connect(sine[2].y, multiplex5.u2[1]) annotation (Line(points={{-79,0},{-66,0},{-66,24},{-52,24}}, color={0,0,127}));
    connect(sine[3].y, multiplex5.u3[1]) annotation (Line(points={{-79,0},{-66,0},{-66,20},{-52,20}}, color={0,0,127}));
    connect(sine[4].y, multiplex5.u4[1]) annotation (Line(points={{-79,0},{-66,0},{-66,16},{-52,16}}, color={0,0,127}));
    connect(sine[5].y, multiplex5.u5[1]) annotation (Line(points={{-79,0},{-66,0},{-66,12},{-52,12}}, color={0,0,127}));
    connect(sine[1].y, multiplex6.u1[1]) annotation (Line(points={{-79,0},{-66,0},{-66,-32},{-52,-32}}, color={0,0,127}));
    connect(sine[2].y, multiplex6.u2[1]) annotation (Line(points={{-79,0},{-66,0},{-66,-35.2},{-52,-35.2}}, color={0,0,127}));
    connect(sine[3].y, multiplex6.u3[1]) annotation (Line(points={{-79,0},{-66,0},{-66,-38.4},{-52,-38.4}}, color={0,0,127}));
    connect(sine[4].y, multiplex6.u4[1]) annotation (Line(points={{-79,0},{-66,0},{-66,-41.6},{-52,-41.6}}, color={0,0,127}));
    connect(sine[5].y, multiplex6.u5[1]) annotation (Line(points={{-79,0},{-66,0},{-66,-44.8},{-52,-44.8}}, color={0,0,127}));
    connect(sine[6].y, multiplex6.u6[1]) annotation (Line(points={{-79,0},{-66,0},{-66,-48},{-52,-48}}, color={0,0,127}));
    connect(multiplex4.y, deMultiplex2.u) annotation (Line(points={{-29,80},{8,80}}, color={0,0,127}));
    connect(multiplex5.y, deMultiplex3.u) annotation (Line(points={{-29,20},{8,20}}, color={0,0,127}));
    connect(multiplex6.y, deMultiplex4.u) annotation (Line(points={{-29,-40},{-10,-40},{-10,-20},{8,-20}}, color={0,0,127}));
    connect(multiplex6.y, deMultiplex6.u) annotation (Line(points={{-29,-40},{-10,-40},{-10,-60},{8,-60}}, color={0,0,127}));
    connect(multiplex6.y, extractSignal1.u) annotation (Line(points={{-29,-40},{-10,-40},{-10,-100},{8,-100}}, color={0,0,127}));
    connect(extractSignal1.y, deMultiplex5.u) annotation (Line(points={{31,-100},{48,-100}}, color={0,0,127}));
    connect(multiplex6.y, extractor1.u) annotation (Line(points={{-29,-40},{-10,-40},{-10,-140},{8,-140}}, color={0,0,127}));
    connect(multiplex6.y, extractor2.u) annotation (Line(points={{-29,-40},{10,-40},{10,-140},{48,-140}}, color={0,0,127}));
    connect(integerStep1.y, extractor1.index) annotation (Line(points={{-29,-110},{20,-110},{20,-152}}, color={255,127,0}));
    connect(integerStep2.y, extractor2.index) annotation (Line(points={{-29,-150},{60,-150},{60,-152}}, color={255,127,0}));
    annotation (Diagram(coordinateSystem(extent={{-100,-170},{100,100}})),
      experiment(StopTime=1),
      Documentation(info="<html>
<p>
Six sine signals of amplitudes 1&hellip;6 are combined by Multiplex4, Multiplex5 and
Multiplex6 and split again by DeMultiplex2&hellip;DeMultiplex6 with different
port dimensions. ExtractSignal reorders the vector ({6,4,2,1,1}). Extractor picks
element 1 and then element 5 after 0.5 s. A second Extractor with
<code>allowOutOfRange=true</code> switches to an index out of range and
outputs <code>outOfRangeValue</code> = -10.
</p>
</html>"));
  end RoutingMultiplexing;

  model Delays "Test of Modelica.Blocks.Nonlinear.FixedDelay and VariableDelay"
    extends Modelica.Icons.Example;

    Modelica.Blocks.Sources.Sine sine1(f=2)
      annotation (Placement(transformation(extent={{-90,30},{-70,50}})));
    Modelica.Blocks.Sources.Ramp ramp1(height=0.4, duration=1, startTime=0.2)
      annotation (Placement(transformation(extent={{-90,-30},{-70,-10}})));
    Modelica.Blocks.Nonlinear.FixedDelay fixedDelay1(delayTime=0.2)
      annotation (Placement(transformation(extent={{-30,30},{-10,50}})));
    Modelica.Blocks.Nonlinear.VariableDelay variableDelay1(delayMax=0.5)
      annotation (Placement(transformation(extent={{-30,-20},{-10,0}})));
  equation
    connect(sine1.y, fixedDelay1.u) annotation (Line(points={{-69,40},{-32,40}}, color={0,0,127}));
    connect(sine1.y, variableDelay1.u) annotation (Line(points={{-69,40},{-50,40},{-50,-10},{-32,-10}}, color={0,0,127}));
    connect(ramp1.y, variableDelay1.delayTime) annotation (Line(points={{-69,-20},{-50,-20},{-50,-16},{-32,-16}}, color={0,0,127}));
    annotation (experiment(StopTime=1.5),
      Documentation(info="<html>
<p>
A 2 Hz sine is delayed by a constant 0.2 s
(<a href=\"modelica://Modelica.Blocks.Nonlinear.FixedDelay\">FixedDelay</a>)
and by a delay that ramps from 0 to 0.4 s
(<a href=\"modelica://Modelica.Blocks.Nonlinear.VariableDelay\">VariableDelay</a>,
<code>delayMax</code> = 0.5 s).
</p>
</html>"));
  end Delays;

  model NoiseGenerators "Test of the noise generators of Modelica.Blocks.Noise with fixed seeds"
    extends Modelica.Icons.Example;

    inner Modelica.Blocks.Noise.GlobalSeed globalSeed(fixedSeed=1234)
      annotation (Placement(transformation(extent={{-90,70},{-70,90}})));
    Modelica.Blocks.Noise.UniformNoise uniformNoise1(samplePeriod=0.01, y_min=-1, y_max=1, useAutomaticLocalSeed=false, fixedLocalSeed=10)
      annotation (Placement(transformation(extent={{-50,30},{-30,50}})));
    Modelica.Blocks.Noise.NormalNoise normalNoise1(samplePeriod=0.01, mu=0.5, sigma=0.2, useAutomaticLocalSeed=false, fixedLocalSeed=20)
      annotation (Placement(transformation(extent={{-50,0},{-30,20}})));
    Modelica.Blocks.Noise.TruncatedNormalNoise truncatedNormalNoise1(samplePeriod=0.01, y_min=0, y_max=2, useAutomaticLocalSeed=false, fixedLocalSeed=30)
      annotation (Placement(transformation(extent={{-50,-30},{-30,-10}})));
    Modelica.Blocks.Noise.BandLimitedWhiteNoise bandLimitedWhiteNoise1(samplePeriod=0.01, noisePower=0.1, useAutomaticLocalSeed=false, fixedLocalSeed=40)
      annotation (Placement(transformation(extent={{-50,-60},{-30,-40}})));
    Modelica.Blocks.Math.ContinuousMean meanUniform
      annotation (Placement(transformation(extent={{10,30},{30,50}})));
    Modelica.Blocks.Math.ContinuousMean meanNormal
      annotation (Placement(transformation(extent={{10,0},{30,20}})));
  equation
    connect(uniformNoise1.y, meanUniform.u) annotation (Line(points={{-29,40},{8,40}}, color={0,0,127}));
    connect(normalNoise1.y, meanNormal.u) annotation (Line(points={{-29,10},{8,10}}, color={0,0,127}));
    annotation (experiment(StopTime=1),
      Documentation(info="<html>
<p>
Tests GlobalSeed, UniformNoise, NormalNoise, TruncatedNormalNoise and
BandLimitedWhiteNoise of
<a href=\"modelica://Modelica.Blocks.Noise\">Modelica.Blocks.Noise</a>.
The global seed and all local seeds are fixed
(<code>useAutomaticLocalSeed=false</code>), so the sequences are
reproducible and the noise outputs can be compared directly. The running means
of the uniform (expected 0) and normal (expected 0.5) noise are compared as
well.
</p>
</html>"));
  end NoiseGenerators;

  model VariableSources "Test of sine/cosine sources with variable frequency and amplitude, and of Sinc"
    extends Modelica.Icons.Example;

    Modelica.Blocks.Sources.Ramp amplitudeRamp(height=1, duration=1, offset=0.5)
      annotation (Placement(transformation(extent={{-90,30},{-70,50}})));
    Modelica.Blocks.Sources.Ramp frequencyRamp(height=4, duration=1, offset=1)
      annotation (Placement(transformation(extent={{-90,-10},{-70,10}})));
    Modelica.Blocks.Sources.SineVariableFrequencyAndAmplitude sineVariable1
      annotation (Placement(transformation(extent={{-30,50},{-10,70}})));
    Modelica.Blocks.Sources.CosineVariableFrequencyAndAmplitude cosineVariable1
      annotation (Placement(transformation(extent={{-30,20},{-10,40}})));
    Modelica.Blocks.Sources.SineVariableFrequencyAndAmplitude sineVariable2(useConstantAmplitude=true, constantAmplitude=2)
      annotation (Placement(transformation(extent={{-30,-10},{-10,10}})));
    Modelica.Blocks.Sources.CosineVariableFrequencyAndAmplitude cosineVariable2(useConstantFrequency=true, constantFrequency=3)
      annotation (Placement(transformation(extent={{-30,-40},{-10,-20}})));
    Modelica.Blocks.Sources.Sinc sinc1(amplitude=2, f=5)
      annotation (Placement(transformation(extent={{-30,-80},{-10,-60}})));
  equation
    connect(amplitudeRamp.y, sineVariable1.amplitude) annotation (Line(points={{-69,40},{-50,40},{-50,66},{-32,66}}, color={0,0,127}));
    connect(frequencyRamp.y, sineVariable1.f) annotation (Line(points={{-69,0},{-50,0},{-50,54},{-32,54}}, color={0,0,127}));
    connect(amplitudeRamp.y, cosineVariable1.amplitude) annotation (Line(points={{-69,40},{-50,40},{-50,36},{-32,36}}, color={0,0,127}));
    connect(frequencyRamp.y, cosineVariable1.f) annotation (Line(points={{-69,0},{-50,0},{-50,24},{-32,24}}, color={0,0,127}));
    connect(frequencyRamp.y, sineVariable2.f) annotation (Line(points={{-69,0},{-50,0},{-50,-6},{-32,-6}}, color={0,0,127}));
    connect(amplitudeRamp.y, cosineVariable2.amplitude) annotation (Line(points={{-69,40},{-50,40},{-50,-24},{-32,-24}}, color={0,0,127}));
    annotation (experiment(StopTime=1),
      Documentation(info="<html>
<p>
Tests
<a href=\"modelica://Modelica.Blocks.Sources.SineVariableFrequencyAndAmplitude\">SineVariableFrequencyAndAmplitude</a>
and
<a href=\"modelica://Modelica.Blocks.Sources.CosineVariableFrequencyAndAmplitude\">CosineVariableFrequencyAndAmplitude</a>
with both inputs variable, and with a constant amplitude or a constant
frequency. It also tests
<a href=\"modelica://Modelica.Blocks.Sources.Sinc\">Sinc</a>.
</p>
</html>"));
  end VariableSources;

  model TableDerivatives "Test of the derivative functions of the table blocks (Modelica.Blocks.Tables.Internal)"
    extends Modelica.Icons.Example;

    Modelica.Blocks.Sources.CombiTimeTable combiTimeTableLinear(table=[0,0; 0.5,1; 1,0.5; 1.5,2], smoothness=Modelica.Blocks.Types.Smoothness.LinearSegments)
      annotation (Placement(transformation(extent={{-50,70},{-30,90}})));
    Modelica.Blocks.Sources.CombiTimeTable combiTimeTableAkima(table=[0,0; 0.5,1; 1,0.5; 1.5,2], smoothness=Modelica.Blocks.Types.Smoothness.ContinuousDerivative)
      annotation (Placement(transformation(extent={{-50,40},{-30,60}})));
    Modelica.Blocks.Sources.Ramp ramp1(height=1.5, duration=1.5)
      annotation (Placement(transformation(extent={{-90,-10},{-70,10}})));
    Modelica.Blocks.Sources.Ramp ramp2(height=1, duration=1.5)
      annotation (Placement(transformation(extent={{-90,-80},{-70,-60}})));
    Modelica.Blocks.Tables.CombiTable1Ds combiTable1DsLinear(table=[0,0; 0.5,1; 1,0.5; 1.5,2], smoothness=Modelica.Blocks.Types.Smoothness.LinearSegments)
      annotation (Placement(transformation(extent={{-50,0},{-30,20}})));
    Modelica.Blocks.Tables.CombiTable1Ds combiTable1DsAkima(table=[0,0; 0.5,1; 1,0.5; 1.5,2], smoothness=Modelica.Blocks.Types.Smoothness.ContinuousDerivative)
      annotation (Placement(transformation(extent={{-50,-30},{-30,-10}})));
    Modelica.Blocks.Tables.CombiTable2Ds combiTable2DsLinear(table=[0,0,1; 0,0,1; 1,1,3], smoothness=Modelica.Blocks.Types.Smoothness.LinearSegments)
      annotation (Placement(transformation(extent={{-50,-70},{-30,-50}})));
    Modelica.Blocks.Tables.CombiTable2Ds combiTable2DsAkima(table=[0,0,1; 0,0,1; 1,1,3], smoothness=Modelica.Blocks.Types.Smoothness.ContinuousDerivative)
      annotation (Placement(transformation(extent={{-50,-100},{-30,-80}})));
    Real der_timeTableLinear = der(combiTimeTableLinear.y[1]) "First derivative of linear time table";
    Real der_timeTableAkima = der(combiTimeTableAkima.y[1]) "First derivative of Akima time table";
    Real der2_timeTableAkima = der(der_timeTableAkima) "Second derivative of Akima time table";
    Real der_table1DsLinear = der(combiTable1DsLinear.y[1]) "First derivative of linear 1D table";
    Real der_table1DsAkima = der(combiTable1DsAkima.y[1]) "First derivative of Akima 1D table";
    Real der2_table1DsAkima = der(der_table1DsAkima) "Second derivative of Akima 1D table";
    Real der_table2DsLinear = der(combiTable2DsLinear.y) "First derivative of linear 2D table";
    Real der_table2DsAkima = der(combiTable2DsAkima.y) "First derivative of Akima 2D table";
    Real der2_table2DsAkima = der(der_table2DsAkima) "Second derivative of Akima 2D table";
  equation
    connect(ramp1.y, combiTable1DsLinear.u) annotation (Line(points={{-69,0},{-60,0},{-60,10},{-52,10}}, color={0,0,127}));
    connect(ramp1.y, combiTable1DsAkima.u) annotation (Line(points={{-69,0},{-60,0},{-60,-20},{-52,-20}}, color={0,0,127}));
    connect(ramp1.y, combiTable2DsLinear.u1) annotation (Line(points={{-69,0},{-60,0},{-60,-54},{-52,-54}}, color={0,0,127}));
    connect(ramp2.y, combiTable2DsLinear.u2) annotation (Line(points={{-69,-70},{-60,-70},{-60,-66},{-52,-66}}, color={0,0,127}));
    connect(ramp1.y, combiTable2DsAkima.u1) annotation (Line(points={{-69,0},{-60,0},{-60,-84},{-52,-84}}, color={0,0,127}));
    connect(ramp2.y, combiTable2DsAkima.u2) annotation (Line(points={{-69,-70},{-60,-70},{-60,-96},{-52,-96}}, color={0,0,127}));
    annotation (experiment(StopTime=1.5),
      Documentation(info="<html>
<p>
Differentiates the outputs of CombiTimeTable, CombiTable1Ds and CombiTable2Ds
explicitly with <code>der()</code>, so the tool has to use the
<code>derivative</code> annotations of the table interpolation functions in
<a href=\"modelica://Modelica.Blocks.Tables.Internal\">Modelica.Blocks.Tables.Internal</a>.
</p>
<ul>
<li>With <code>LinearSegments</code>, only a first derivative is available
    (<code>getDer*ValueNoDer</code>).</li>
<li>With <code>ContinuousDerivative</code> (Akima), first and second derivatives are available
    (<code>getDer*Value</code>, <code>getDer2*Value</code>).</li>
</ul>
</html>"));
  end TableDerivatives;
end Blocks;
