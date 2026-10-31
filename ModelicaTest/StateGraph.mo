within ModelicaTest;
package StateGraph "Test models for Modelica.StateGraph"
  extends Modelica.Icons.ExamplesPackage;

  model StepsAndTransitions "Test of steps, transitions, Alternative and Parallel of Modelica.StateGraph"
    extends Modelica.Icons.Example;

    inner Modelica.StateGraph.StateGraphRoot stateGraphRoot
      annotation (Placement(transformation(extent={{-90,70},{-70,90}})));
    Modelica.StateGraph.InitialStepWithSignal initialStep1(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-95,-10},{-75,10}})));
    Modelica.StateGraph.Alternative alternative1(nBranches=2)
      annotation (Placement(transformation(extent={{-70,-30},{-10,30}})));
    Modelica.StateGraph.TransitionWithSignal transitionWithSignal1
      annotation (Placement(transformation(extent={{-65,10},{-45,30}})));
    Modelica.StateGraph.StepWithSignal stepWithSignal1(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-50,10},{-30,30}})));
    Modelica.StateGraph.Transition transition2(enableTimer=true, waitTime=0.3)
      annotation (Placement(transformation(extent={{-35,10},{-15,30}})));
    Modelica.StateGraph.Transition transition3(enableTimer=true, waitTime=0.6)
      annotation (Placement(transformation(extent={{-65,-30},{-45,-10}})));
    Modelica.StateGraph.Step step2(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-50,-30},{-30,-10}})));
    Modelica.StateGraph.Transition transition4(enableTimer=true, waitTime=0.1)
      annotation (Placement(transformation(extent={{-35,-30},{-15,-10}})));
    Modelica.StateGraph.Step stepAfterAlternative(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
    Modelica.StateGraph.Transition transition1(enableTimer=true, waitTime=0.1)
      annotation (Placement(transformation(extent={{5,-10},{25,10}})));
    Modelica.Blocks.Sources.BooleanExpression booleanExpression1(y=time > 0.5 and time < 1.5)
      annotation (Placement(transformation(extent={{-70,-70},{-50,-50}})));
    Modelica.StateGraph.Parallel parallel1(nBranches=2)
      annotation (Placement(transformation(extent={{25,-30},{75,30}})));
    Modelica.StateGraph.Step step3(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{25,10},{45,30}})));
    Modelica.StateGraph.Transition transition5(enableTimer=true, waitTime=0.2)
      annotation (Placement(transformation(extent={{40,10},{60,30}})));
    Modelica.StateGraph.Step step4(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{55,10},{75,30}})));
    Modelica.StateGraph.StepWithSignal stepWithSignal2(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{25,-30},{45,-10}})));
    Modelica.StateGraph.Transition transition6(enableTimer=true, waitTime=0.4)
      annotation (Placement(transformation(extent={{40,-30},{60,-10}})));
    Modelica.StateGraph.Step step5(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{55,-30},{75,-10}})));
    Modelica.StateGraph.Transition transition7(enableTimer=true, waitTime=0.1)
      annotation (Placement(transformation(extent={{75,-10},{95,10}})));
  equation
    connect(initialStep1.outPort[1], alternative1.inPort) annotation (Line(points={{-74,0},{-72,0}}, color={0,0,0}));
    connect(alternative1.split[1], transitionWithSignal1.inPort) annotation (Line(points={{-66,20},{-67,20}}, color={0,0,0}));
    connect(transitionWithSignal1.outPort, stepWithSignal1.inPort[1]) annotation (Line(points={{-44,20},{-52,20}}, color={0,0,0}));
    connect(stepWithSignal1.outPort[1], transition2.inPort) annotation (Line(points={{-29,20},{-37,20}}, color={0,0,0}));
    connect(transition2.outPort, alternative1.join[1]) annotation (Line(points={{-14,20},{-14,20}}, color={0,0,0}));
    connect(alternative1.split[2], transition3.inPort) annotation (Line(points={{-66,0},{-71,0},{-71,-20},{-67,-20}}, color={0,0,0}));
    connect(transition3.outPort, step2.inPort[1]) annotation (Line(points={{-44,-20},{-52,-20}}, color={0,0,0}));
    connect(step2.outPort[1], transition4.inPort) annotation (Line(points={{-29,-20},{-37,-20}}, color={0,0,0}));
    connect(transition4.outPort, alternative1.join[2]) annotation (Line(points={{-14,-20},{-18,-20},{-18,0},{-14,0}}, color={0,0,0}));
    connect(booleanExpression1.y, transitionWithSignal1.condition) annotation (Line(points={{-49,-60},{-55,-60},{-55,8}}, color={0,0,127}));
    connect(alternative1.outPort, stepAfterAlternative.inPort[1]) annotation (Line(points={{-9,0},{-12,0}}, color={0,0,0}));
    connect(stepAfterAlternative.outPort[1], transition1.inPort) annotation (Line(points={{11,0},{3,0}}, color={0,0,0}));
    connect(transition1.outPort, parallel1.inPort) annotation (Line(points={{26,0},{23,0}}, color={0,0,0}));
    connect(parallel1.split[1], step3.inPort[1]) annotation (Line(points={{29,20},{23,20}}, color={0,0,0}));
    connect(step3.outPort[1], transition5.inPort) annotation (Line(points={{46,20},{38,20}}, color={0,0,0}));
    connect(transition5.outPort, step4.inPort[1]) annotation (Line(points={{61,20},{53,20}}, color={0,0,0}));
    connect(step4.outPort[1], parallel1.join[1]) annotation (Line(points={{76,20},{71,20}}, color={0,0,0}));
    connect(parallel1.split[2], stepWithSignal2.inPort[1]) annotation (Line(points={{29,0},{19,0},{19,-20},{23,-20}}, color={0,0,0}));
    connect(stepWithSignal2.outPort[1], transition6.inPort) annotation (Line(points={{46,-20},{38,-20}}, color={0,0,0}));
    connect(transition6.outPort, step5.inPort[1]) annotation (Line(points={{61,-20},{53,-20}}, color={0,0,0}));
    connect(step5.outPort[1], parallel1.join[2]) annotation (Line(points={{76,-20},{67,-20},{67,0},{71,0}}, color={0,0,0}));
    connect(parallel1.outPort, transition7.inPort) annotation (Line(points={{76,0},{73,0}}, color={0,0,0}));
    connect(transition7.outPort, initialStep1.inPort[1]) annotation (Line(points={{96,0},{-97,0}}, color={0,0,0}));
    annotation (experiment(StopTime=3.5),
      Documentation(info="<html>
<p>
A looping state graph built from the basic elements of
<a href=\"modelica://Modelica.StateGraph\">Modelica.StateGraph</a>:
InitialStepWithSignal, Transition (with timer), TransitionWithSignal,
Step, StepWithSignal, Alternative and Parallel.
</p>
<ul>
<li>Round 1: <code>alternative1</code> takes branch 1, because <code>transitionWithSignal1</code>
    fires at t = 0.5 s, before the 0.6 s timer of branch 2 runs out.</li>
<li>Round 2 starts at t = 1.4 s, while the condition (0.5 s &lt; t &lt; 1.5 s) still holds,
    so branch 1 is taken immediately.</li>
<li>Round 3 starts at t = 2.3 s, when the condition is false, so branch 2 (<code>step2</code>) is taken
    at t = 2.9 s.</li>
<li><code>parallel1</code> runs two branches of different length. It is left only when both have
    reached their last step.</li>
</ul>
</html>"));
  end StepsAndTransitions;

  model CompositeStepWithTwoSteps
    "Composite step with two consecutive steps (used in CompositeStepSuspendResume)"
    extends Modelica.StateGraph.PartialCompositeStep;
    Modelica.StateGraph.Step stepA(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
    Modelica.StateGraph.Transition transitionAB(enableTimer=true, waitTime=0.4)
      annotation (Placement(transformation(extent={{-40,-10},{-20,10}})));
    Modelica.StateGraph.Step stepB(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{20,-10},{40,10}})));
  equation
    connect(inPort, stepA.inPort[1])
      annotation (Line(points={{-160,0},{-101,0}}));
    connect(stepA.outPort[1], transitionAB.inPort)
      annotation (Line(points={{-79.5,0},{-34,0}}));
    connect(transitionAB.outPort, stepB.inPort[1])
      annotation (Line(points={{-28.5,0},{19,0}}));
    connect(stepB.outPort[1], outPort)
      annotation (Line(points={{40.5,0},{155,0}}));
    annotation (Documentation(info="<html>
<p>
Composite step used in
<a href=\"modelica://ModelicaTest.StateGraph.CompositeStepSuspendResume\">CompositeStepSuspendResume</a>:
stepA is active for 0.4 s, then stepB until the transition after the composite step fires.
</p>
</html>"));
  end CompositeStepWithTwoSteps;

  model CompositeStepSuspendResume
    "Test of a composite step of Modelica.StateGraph that is suspended and resumed"
    extends Modelica.Icons.Example;

    inner Modelica.StateGraph.StateGraphRoot stateGraphRoot
      annotation (Placement(transformation(extent={{-90,60},{-70,80}})));
    Modelica.StateGraph.InitialStep initialStep1(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-90,-10},{-70,10}})));
    Modelica.StateGraph.Transition transition1(enableTimer=true, waitTime=0.2)
      annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
    CompositeStepWithTwoSteps compositeStep1(nSuspend=1, nResume=1)
      annotation (Placement(transformation(extent={{-20,-10},{20,10}})));
    Modelica.StateGraph.Transition transition2(enableTimer=true, waitTime=0.3)
      annotation (Placement(transformation(extent={{40,-10},{60,10}})));
    Modelica.StateGraph.Step step1(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{70,-10},{90,10}})));
    Modelica.StateGraph.Transition transition3(enableTimer=true, waitTime=0.5)
      annotation (Placement(transformation(extent={{70,-50},{50,-30}})));
    Modelica.StateGraph.TransitionWithSignal transitionSuspend
      annotation (Placement(transformation(extent={{-10,30},{10,50}})));
    Modelica.StateGraph.Step stepSuspended(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{20,30},{40,50}})));
    Modelica.StateGraph.Transition transitionResume(enableTimer=true, waitTime=0.3)
      annotation (Placement(transformation(extent={{50,30},{70,50}})));
    Modelica.Blocks.Sources.BooleanExpression suspendCondition(y=time > 0.7 and time < 0.75)
      annotation (Placement(transformation(extent={{-40,60},{-20,80}})));
  equation
    connect(initialStep1.outPort[1], transition1.inPort)
      annotation (Line(points={{-69.5,0},{-54,0}}));
    connect(transition1.outPort, compositeStep1.inPort)
      annotation (Line(points={{-48.5,0},{-20,0}}));
    connect(compositeStep1.outPort, transition2.inPort)
      annotation (Line(points={{20.2,0},{46,0}}));
    connect(transition2.outPort, step1.inPort[1])
      annotation (Line(points={{51.5,0},{69,0}}));
    connect(step1.outPort[1], transition3.inPort)
      annotation (Line(points={{90.5,0},{96,0},{96,-40},{64,-40}}));
    connect(transition3.outPort, initialStep1.inPort[1])
      annotation (Line(points={{58.5,-40},{-96,-40},{-96,0},{-91,0}}));
    connect(compositeStep1.suspend[1], transitionSuspend.inPort)
      annotation (Line(points={{-10,10.2},{-10,40},{-4,40}}));
    connect(transitionSuspend.outPort, stepSuspended.inPort[1])
      annotation (Line(points={{1.5,40},{19,40}}));
    connect(stepSuspended.outPort[1], transitionResume.inPort)
      annotation (Line(points={{40.5,40},{56,40}}));
    connect(transitionResume.outPort, compositeStep1.resume[1])
      annotation (Line(points={{61.5,40},{80,40},{80,20},{10,20},{10,10.2}}));
    connect(suspendCondition.y, transitionSuspend.condition)
      annotation (Line(points={{-19,70},{0,70},{0,52}}, color={255,0,255}));
    annotation (experiment(StopTime=3.0), Documentation(info="<html>
<p>
Tests InitialStep and the composite-step machinery of
<a href=\"modelica://Modelica.StateGraph\">Modelica.StateGraph</a>
(PartialCompositeStep with its OuterState/InnerState, and the
CompositeStepState of every step inside it). The composite step
<code>compositeStep1</code> contains <code>stepA</code> (0.4 s) and
<code>stepB</code>, which is left 0.3 s later by <code>transition2</code>.
</p>
<p>
In the first round the composite step is entered at t = 0.2 s. It is suspended at
t = 0.7 s (<code>suspendCondition</code>), while <code>stepB</code> is active.
After 0.3 s in <code>stepSuspended</code> it is resumed at t = 1.0 s. It must
continue with <code>stepB</code>, the step that was active when it was suspended,
not start over with <code>stepA</code>. The next round, from t = 2.0 s, runs
through the composite step without suspension.
</p>
</html>"));
  end CompositeStepSuspendResume;
end StateGraph;
