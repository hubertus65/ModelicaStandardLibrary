within ModelicaTest;
package StateGraph "Test models for Modelica.StateGraph"
  extends Modelica.Icons.ExamplesPackage;

  model StepsAndTransitions "Test of steps, transitions, Alternative and Parallel of Modelica.StateGraph"
    extends Modelica.Icons.Example;

    inner Modelica.StateGraph.StateGraphRoot stateGraphRoot
      annotation (Placement(transformation(extent={{-90,70},{-70,90}})));
    Modelica.StateGraph.InitialStepWithSignal initialStep1(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-80,-30})));
    Modelica.StateGraph.Alternative alternative1(nBranches=2)
      annotation (Placement(transformation(extent={{-30,-30},{30,30}}, origin={-30,-30})));
    Modelica.StateGraph.TransitionWithSignal transitionWithSignal1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-20,20})));
    Modelica.StateGraph.StepWithSignal stepWithSignal1(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={90,20})));
    Modelica.StateGraph.Transition transition2(enableTimer=true, waitTime=0.3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={20,20})));
    Modelica.StateGraph.Transition transition3(enableTimer=true, waitTime=0.6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-20,-80})));
    Modelica.StateGraph.Step step2(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={60,-80})));
    Modelica.StateGraph.Transition transition4(enableTimer=true, waitTime=0.1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={20,-80})));
    Modelica.StateGraph.Step stepAfterAlternative(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={100,-30})));
    Modelica.StateGraph.Transition transition1(enableTimer=true, waitTime=0.1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={140,-30})));
    Modelica.Blocks.Sources.BooleanExpression booleanExpression1(y=time > 0.5 and time < 1.5)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-120})));
    Modelica.StateGraph.Parallel parallel1(nBranches=2)
      annotation (Placement(transformation(extent={{-25,-30},{25,30}}, origin={220,-30})));
    Modelica.StateGraph.Step step3(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={180,20})));
    Modelica.StateGraph.Transition transition5(enableTimer=true, waitTime=0.2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={250,20})));
    Modelica.StateGraph.Step step4(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={210,20})));
    Modelica.StateGraph.StepWithSignal stepWithSignal2(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={180,-80})));
    Modelica.StateGraph.Transition transition6(enableTimer=true, waitTime=0.4)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={250,-80})));
    Modelica.StateGraph.Step step5(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={210,-80})));
    Modelica.StateGraph.Transition transition7(enableTimer=true, waitTime=0.1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={270,-30})));
  equation
    connect(initialStep1.outPort[1], alternative1.inPort) annotation (Line(points={{-69.5,-30},{-60.9,-30}}, color={0,0,0}));
    connect(alternative1.split[1], transitionWithSignal1.inPort) annotation (Line(points={{-53.7,-30},{-53.7,2},{-54,2},{-54,8},{-24,8},{-24,20}}, color={0,0,0}));
    connect(transitionWithSignal1.outPort, stepWithSignal1.inPort[1]) annotation (Line(points={{-18.5,20},{0,20},{0,34},{76,34},{76,20},{79,20}}, color={0,0,0}));
    connect(stepWithSignal1.outPort[1], transition2.inPort) annotation (Line(points={{100.5,20},{104,20},{104,32},{32,32},{32,20},{16,20}}, color={0,0,0}));
    connect(transition2.outPort, alternative1.join[1]) annotation (Line(points={{21.5,20},{21.5,8},{22,8},{22,2},{-6.3,2},{-6.3,-30}}, color={0,0,0}));
    connect(alternative1.split[2], transition3.inPort) annotation (Line(points={{-53.7,-30},{-53.7,-62},{-54,-62},{-54,-68},{-24,-68},{-24,-80}}, color={0,0,0}));
    connect(transition3.outPort, step2.inPort[1]) annotation (Line(points={{-18.5,-80},{0,-80},{0,-92},{44,-92},{44,-80},{49,-80}}, color={0,0,0}));
    connect(step2.outPort[1], transition4.inPort) annotation (Line(points={{70.5,-80},{74,-80},{74,-68},{32,-68},{32,-80},{16,-80}}, color={0,0,0}));
    connect(transition4.outPort, alternative1.join[2]) annotation (Line(points={{21.5,-80},{21.5,-68},{22,-68},{22,-62},{-6.3,-62},{-6.3,-30}}, color={0,0,0}));
    connect(booleanExpression1.y, transitionWithSignal1.condition) annotation (Line(points={{-19,-120},{2,-120},{2,4},{-20,4},{-20,8}}, color={255,0,255}));
    connect(alternative1.outPort, stepAfterAlternative.inPort[1]) annotation (Line(points={{0.6,-30},{89,-30}}, color={0,0,0}));
    connect(stepAfterAlternative.outPort[1], transition1.inPort) annotation (Line(points={{110.5,-30},{136,-30}}, color={0,0,0}));
    connect(transition1.outPort, parallel1.inPort) annotation (Line(points={{141.5,-30},{194.25,-30}}, color={0,0,0}));
    connect(parallel1.split[1], step3.inPort[1]) annotation (Line(points={{200.62,-30},{200.62,2},{200,2},{200,6},{164,6},{164,20},{169,20}}, color={0,0,0}));
    connect(step3.outPort[1], transition5.inPort) annotation (Line(points={{190.5,20},{194,20},{194,8},{238,8},{238,20},{246,20}}, color={0,0,0}));
    connect(transition5.outPort, step4.inPort[1]) annotation (Line(points={{251.5,20},{230,20},{230,32},{196,32},{196,20},{199,20}}, color={0,0,0}));
    connect(step4.outPort[1], parallel1.join[1]) annotation (Line(points={{220.5,20},{228,20},{228,2},{239.38,2},{239.38,-30}}, color={0,0,0}));
    connect(parallel1.split[2], stepWithSignal2.inPort[1]) annotation (Line(points={{200.62,-30},{200.62,-62},{200,-62},{200,-66},{164,-66},{164,-80},{169,-80}}, color={0,0,0}));
    connect(stepWithSignal2.outPort[1], transition6.inPort) annotation (Line(points={{190.5,-80},{194,-80},{194,-92},{238,-92},{238,-80},{246,-80}}, color={0,0,0}));
    connect(transition6.outPort, step5.inPort[1]) annotation (Line(points={{251.5,-80},{230,-80},{230,-68},{196,-68},{196,-80},{199,-80}}, color={0,0,0}));
    connect(step5.outPort[1], parallel1.join[2]) annotation (Line(points={{220.5,-80},{228,-80},{228,-62},{239.38,-62},{239.38,-30}}, color={0,0,0}));
    connect(parallel1.outPort, transition7.inPort) annotation (Line(points={{245.5,-30},{266,-30}}, color={0,0,0}));
    connect(transition7.outPort, initialStep1.inPort[1]) annotation (Line(points={{271.5,-30},{258,-30},{258,8},{262,8},{262,36},{-96,36},{-96,-30},{-91,-30}}, color={0,0,0}));
    annotation (Diagram(coordinateSystem(extent={{-100,-140},{280,100}})),
      experiment(StopTime=3.5),
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
      annotation (Line(points={{-48.5,0},{-21.33,0}}));
    connect(compositeStep1.outPort, transition2.inPort)
      annotation (Line(points={{20.67,0},{46,0}}));
    connect(transition2.outPort, step1.inPort[1])
      annotation (Line(points={{51.5,0},{69,0}}));
    connect(step1.outPort[1], transition3.inPort)
      annotation (Line(points={{90.5,0},{94,0},{94,-28},{64,-28},{64,-40}}));
    connect(transition3.outPort, initialStep1.inPort[1])
      annotation (Line(points={{58.5,-40},{-96,-40},{-96,0},{-91,0}}));
    connect(compositeStep1.suspend[1], transitionSuspend.inPort)
      annotation (Line(points={{-10,-10.33},{-10,-14},{-22,-14},{-22,28},{-4,28},{-4,40}}));
    connect(transitionSuspend.outPort, stepSuspended.inPort[1])
      annotation (Line(points={{1.5,40},{19,40}}));
    connect(stepSuspended.outPort[1], transitionResume.inPort)
      annotation (Line(points={{40.5,40},{56,40}}));
    connect(transitionResume.outPort, compositeStep1.resume[1])
      annotation (Line(points={{61.5,40},{48,40},{48,20},{30,20},{30,-14},{10,-14},{10,-10.67}}));
    connect(suspendCondition.y, transitionSuspend.condition)
      annotation (Line(points={{-19,70},{-12,70},{-12,24},{0,24},{0,28}}, color={255,0,255}));
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
