within ModelicaTest;
package Clocked "Test models for Modelica.Clocked"
  extends Modelica.Icons.ExamplesPackage;

  model RealSamplersAndHolds "Test of the samplers and holds of Modelica.Clocked.RealSignals"
    extends Modelica.Icons.Example;

    Modelica.Clocked.ClockSignals.Clocks.PeriodicRealClock periodicClock(period=0.02)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,140})));
    Modelica.Blocks.Sources.Sine src(f=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,40})));
    Modelica.Blocks.Sources.Ramp src2(duration=1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-130})));
    Modelica.Blocks.Sources.IntegerConstant one(k=1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-240})));
    Modelica.Clocked.RealSignals.Sampler.Sample sample1
      annotation (Placement(transformation(extent={{-70,100},{-50,120}})));
    Modelica.Clocked.RealSignals.Sampler.AssignClock assignClock1
      annotation (Placement(transformation(extent={{-40,100},{-20,120}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold1
      annotation (Placement(transformation(extent={{-10,100},{10,120}})));
    Modelica.Clocked.RealSignals.Sampler.SampleClocked sampleClocked1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,80})));
    Modelica.Clocked.RealSignals.Sampler.SubSample subSample1(factor=5, inferFactor=false)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,80})));
    Modelica.Clocked.RealSignals.Sampler.SuperSample superSample1(factor=5, inferFactor=false)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,80})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold2
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,80})));
    Modelica.Clocked.RealSignals.Sampler.ShiftSample shiftSample1(shiftCounter=1, resolution=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,40})));
    Modelica.Clocked.RealSignals.Sampler.BackSample backSample1(backCounter=1, resolution=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,40})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold3
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,40})));
    Modelica.Clocked.RealSignals.Sampler.Utilities.UpSample upSample1(factor=4, inferFactor=false)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,0})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold4
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,0})));
    Modelica.Clocked.RealSignals.NonPeriodic.UnitDelay unitDelay1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-30})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold5
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-30})));
    Modelica.Clocked.RealSignals.NonPeriodic.FractionalDelay fractionalDelay1(shift=3, resolution=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-60})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold6
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-60})));
    Modelica.Clocked.RealSignals.Sampler.Utilities.AssignClockToSquareWaveHold squareWave1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-100})));
    Modelica.Clocked.RealSignals.Sampler.Utilities.AssignClockToTriggerHold triggerHold1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-140})));
    Modelica.Blocks.MathInteger.TriggeredAdd countTriggers
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-140})));
    Modelica.Clocked.RealSignals.Sampler.SampleVectorizedAndClocked sampleVectorized1(n=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-170})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold7
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-170})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold8
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-200})));
    Modelica.Clocked.RealSignals.Sampler.Sample sample3
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-240})));
    Modelica.Clocked.RealSignals.Sampler.Sample sample4
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-270})));
    Modelica.Clocked.RealSignals.Sampler.AssignClockVectorized assignClockVectorized1(n=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-240})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold9
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-240})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold10
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-270})));
    Modelica.Clocked.RealSignals.Sampler.SuperSampleInterpolated superSampleInterpolated1(factor=4, inferFactor=false)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-300})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold11
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-300})));
    Modelica.Clocked.RealSignals.Sampler.HoldWithDAeffects holdWithDAeffects1(computationalDelay=true, shiftCounter=1, resolution=2, limited=true, quantized=true, yMax=0.8, bits=4)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-340})));
    Modelica.Clocked.RealSignals.Sampler.SampleWithADeffects sampleWithADeffects1(noisy=true, limited=true, quantized=true, yMax=0.8, bits=6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-380})));
    Modelica.Clocked.RealSignals.Sampler.AssignClock assignClock2
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-380})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold12
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-380})));
  equation
    connect(src.y, sample1.u) annotation (Line(points={{-79,40},{-76,40},{-76,110},{-72,110}}, color={0,0,127}));
    connect(sample1.y, assignClock1.u) annotation (Line(points={{-49,110},{-42,110}}, color={0,0,127}));
    connect(periodicClock.y, assignClock1.clock) annotation (Line(points={{-79,140},{-42,140},{-42,94},{-30,94},{-30,98}}, color={175,175,175}));
    connect(assignClock1.y, hold1.u) annotation (Line(points={{-19,110},{-12,110}}, color={0,0,127}));
    connect(src.y, sampleClocked1.u) annotation (Line(points={{-79,40},{-76,40},{-76,80},{-72,80}}, color={0,0,127}));
    connect(periodicClock.y, sampleClocked1.clock) annotation (Line(points={{-79,140},{-42,140},{-42,84},{-48,84},{-48,64},{-60,64},{-60,68}}, color={175,175,175}));
    connect(sampleClocked1.y, subSample1.u) annotation (Line(points={{-49,80},{-44,80},{-44,82},{-46,82},{-46,80},{-42,80}}, color={0,0,127}));
    connect(subSample1.y, superSample1.u) annotation (Line(points={{-19,80},{-12,80}}, color={0,0,127}));
    connect(superSample1.y, hold2.u) annotation (Line(points={{11,80},{16,80},{16,82},{14,82},{14,80},{18,80}}, color={0,0,127}));
    connect(sampleClocked1.y, shiftSample1.u) annotation (Line(points={{-49,80},{-44,80},{-44,82},{-46,82},{-46,40},{-42,40}}, color={0,0,127}));
    connect(shiftSample1.y, backSample1.u) annotation (Line(points={{-19,40},{-12,40}}, color={0,0,127}));
    connect(backSample1.y, hold3.u) annotation (Line(points={{11,40},{16,40},{16,42},{14,42},{14,40},{18,40}}, color={0,0,127}));
    connect(sampleClocked1.y, upSample1.u) annotation (Line(points={{-49,80},{-44,80},{-44,82},{-46,82},{-46,0},{-42,0}}, color={0,0,127}));
    connect(upSample1.y, hold4.u) annotation (Line(points={{-19,0},{-12,0}}, color={0,0,127}));
    connect(sampleClocked1.y, unitDelay1.u) annotation (Line(points={{-49,80},{-44,80},{-44,82},{-46,82},{-46,-30},{-42,-30}}, color={0,0,127}));
    connect(unitDelay1.y, hold5.u) annotation (Line(points={{-19,-30},{-12,-30}}, color={0,0,127}));
    connect(sampleClocked1.y, fractionalDelay1.u) annotation (Line(points={{-49,80},{-44,80},{-44,82},{-46,82},{-46,-60},{-42,-60}}, color={0,0,127}));
    connect(fractionalDelay1.y, hold6.u) annotation (Line(points={{-19,-60},{-12,-60}}, color={0,0,127}));
    connect(sampleClocked1.y, squareWave1.u) annotation (Line(points={{-49,80},{-44,80},{-44,82},{-46,82},{-46,-100},{-42,-100}}, color={0,0,127}));
    connect(sampleClocked1.y, triggerHold1.u) annotation (Line(points={{-49,80},{-44,80},{-44,82},{-46,82},{-46,-140},{-42,-140}}, color={0,0,127}));
    connect(triggerHold1.y, countTriggers.trigger) annotation (Line(points={{-19,-140},{-12,-140},{-12,-156},{-6,-156},{-6,-152}}, color={255,0,255}));
    connect(one.y, countTriggers.u) annotation (Line(points={{-79,-240},{-72,-240},{-72,-212},{-18,-212},{-18,-140},{-14,-140}}, color={255,127,0}));
    connect(src.y, sampleVectorized1.u[1]) annotation (Line(points={{-79,40},{-74,40},{-74,-169},{-72,-169}}, color={0,0,127}));
    connect(src2.y, sampleVectorized1.u[2]) annotation (Line(points={{-79,-130},{-76,-130},{-76,-171},{-72,-171}}, color={0,0,127}));
    connect(periodicClock.y, sampleVectorized1.clock) annotation (Line(points={{-79,140},{-42,140},{-42,84},{-48,84},{-48,-186},{-60,-186},{-60,-182}}, color={175,175,175}));
    connect(sampleVectorized1.y[1], hold7.u) annotation (Line(points={{-49,-169.5},{-44,-169.5},{-44,-170},{-42,-170}}, color={0,0,127}));
    connect(sampleVectorized1.y[2], hold8.u) annotation (Line(points={{-49,-170.5},{-44,-170.5},{-44,-200},{-42,-200}}, color={0,0,127}));
    connect(src.y, sample3.u) annotation (Line(points={{-79,40},{-74,40},{-74,-240},{-72,-240}}, color={0,0,127}));
    connect(src2.y, sample4.u) annotation (Line(points={{-79,-130},{-76,-130},{-76,-270},{-72,-270}}, color={0,0,127}));
    connect(sample3.y, assignClockVectorized1.u[1]) annotation (Line(points={{-49,-240},{-44,-240},{-44,-239},{-42,-239}}, color={0,0,127}));
    connect(sample4.y, assignClockVectorized1.u[2]) annotation (Line(points={{-49,-270},{-44,-270},{-44,-241},{-42,-241}}, color={0,0,127}));
    connect(periodicClock.y, assignClockVectorized1.clock) annotation (Line(points={{-79,140},{-42,140},{-42,84},{-48,84},{-48,-256},{-30,-256},{-30,-252}}, color={175,175,175}));
    connect(assignClockVectorized1.y[1], hold9.u) annotation (Line(points={{-19,-239.5},{-16,-239.5},{-16,-240},{-12,-240}}, color={0,0,127}));
    connect(assignClockVectorized1.y[2], hold10.u) annotation (Line(points={{-19,-240.5},{-16,-240.5},{-16,-270},{-12,-270}}, color={0,0,127}));
    connect(sampleClocked1.y, superSampleInterpolated1.u) annotation (Line(points={{-49,80},{-44,80},{-44,82},{-46,82},{-46,-140},{-42,-140},{-42,-300}}, color={0,0,127}));
    connect(superSampleInterpolated1.y, hold11.u) annotation (Line(points={{-19,-300},{-12,-300}}, color={0,0,127}));
    connect(sampleClocked1.y, holdWithDAeffects1.u) annotation (Line(points={{-49,80},{-44,80},{-44,82},{-46,82},{-46,-140},{-42,-140},{-42,-340}}, color={0,0,127}));
    connect(src.y, sampleWithADeffects1.u) annotation (Line(points={{-79,40},{-74,40},{-74,-380},{-72,-380}}, color={0,0,127}));
    connect(sampleWithADeffects1.y, assignClock2.u) annotation (Line(points={{-49,-380},{-44,-380},{-44,-378},{-46,-378},{-46,-380},{-42,-380}}, color={0,0,127}));
    connect(periodicClock.y, assignClock2.clock) annotation (Line(points={{-79,140},{-42,140},{-42,84},{-48,84},{-48,-396},{-30,-396},{-30,-392}}, color={175,175,175}));
    connect(assignClock2.y, hold12.u) annotation (Line(points={{-19,-380},{-12,-380}}, color={0,0,127}));
    annotation (Diagram(coordinateSystem(extent={{-100,-400},{100,160}})),
      experiment(StopTime=1),
      Documentation(info="<html>
<p>
Exercises the sampler and hold blocks of
<a href=\"modelica://Modelica.Clocked.RealSignals.Sampler\">Modelica.Clocked.RealSignals.Sampler</a> on one periodic clock
(period 0.02 s). Every clocked signal is converted back to continuous time with a Hold, and the
held signals are compared:
</p>
<ul>
<li>Sample followed by AssignClock, and SampleClocked</li>
<li>SubSample followed by SuperSample (factor 5, so the result is the input sampled every 0.1 s)</li>
<li>ShiftSample followed by BackSample with the same shift (1/2 tick), which must cancel</li>
<li>UpSample (factor 4), UnitDelay, FractionalDelay (3/2 ticks)</li>
<li>AssignClockToSquareWaveHold, and AssignClockToTriggerHold (whose pulses are counted, because they
    last only for an event instant)</li>
<li>SampleVectorizedAndClocked and AssignClockVectorized for two signals</li>
<li>SuperSampleInterpolated (factor 4)</li>
<li>HoldWithDAeffects (computational delay, limitation to 0.8, 4 bit quantization)</li>
<li>SampleWithADeffects (noise, limitation, 6 bit quantization; the noise generator
    uses fixed seeds, so the result is reproducible)</li>
</ul>
</html>"));
  end RealSamplersAndHolds;

  model BooleanSamplersAndHolds "Test of the samplers, holds, sources and non-periodic blocks of Modelica.Clocked.BooleanSignals"
    extends Modelica.Icons.Example;

    Modelica.Clocked.ClockSignals.Clocks.PeriodicRealClock periodicClock(period=0.02)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,140})));
    Modelica.Blocks.Sources.BooleanPulse src(width=50, period=0.1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,40})));
    Modelica.Blocks.Sources.BooleanPulse src2(width=30, period=0.17)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-130})));
    Modelica.Blocks.Sources.IntegerConstant one(k=1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-250})));
    Modelica.Clocked.BooleanSignals.Sampler.Sample sample1
      annotation (Placement(transformation(extent={{-70,100},{-50,120}})));
    Modelica.Clocked.BooleanSignals.Sampler.AssignClock assignClock1
      annotation (Placement(transformation(extent={{-40,100},{-20,120}})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold1
      annotation (Placement(transformation(extent={{-10,100},{10,120}})));
    Modelica.Clocked.BooleanSignals.Sampler.SampleClocked sampleClocked1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,80})));
    Modelica.Clocked.BooleanSignals.Sampler.SubSample subSample1(factor=5, inferFactor=false)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,80})));
    Modelica.Clocked.BooleanSignals.Sampler.SuperSample superSample1(factor=5, inferFactor=false)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,80})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold2
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,80})));
    Modelica.Clocked.BooleanSignals.Sampler.ShiftSample shiftSample1(shiftCounter=1, resolution=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,40})));
    Modelica.Clocked.BooleanSignals.Sampler.BackSample backSample1(backCounter=1, resolution=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,40})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold3
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,40})));
    Modelica.Clocked.BooleanSignals.Sampler.Utilities.UpSample upSample1(factor=4, inferFactor=false)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,0})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold4
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,0})));
    Modelica.Clocked.BooleanSignals.NonPeriodic.UnitDelay unitDelay1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-30})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold5
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-30})));
    Modelica.Clocked.BooleanSignals.NonPeriodic.FractionalDelay fractionalDelay1(shift=3, resolution=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-60})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold6
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-60})));
    Modelica.Clocked.BooleanSignals.Sampler.Utilities.AssignClockToTriggerHold triggerHold1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-100})));
    Modelica.Blocks.MathInteger.TriggeredAdd countTriggers
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-100})));
    Modelica.Clocked.BooleanSignals.Sampler.SampleVectorizedAndClocked sampleVectorized1(n=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-140})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold7
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-140})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold8
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-170})));
    Modelica.Clocked.BooleanSignals.Sampler.Sample sample3
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-200})));
    Modelica.Clocked.BooleanSignals.Sampler.Sample sample4
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-230})));
    Modelica.Clocked.BooleanSignals.Sampler.AssignClockVectorized assignClockVectorized1(n=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-200})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold9
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-200})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold10
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-230})));
    Modelica.Clocked.BooleanSignals.NonPeriodic.BooleanChange booleanChange1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-270})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold11
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-270})));
    Modelica.Clocked.BooleanSignals.NonPeriodic.ClockToBoolean clockToBoolean1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-300})));
    Modelica.Blocks.MathInteger.TriggeredAdd countTicks
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-300})));
    Modelica.Clocked.BooleanSignals.TickBasedSources.Pulse tickPulse1(widthTicks=2, periodTicks=5)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-340})));
    Modelica.Clocked.BooleanSignals.Sampler.AssignClock assign_tickPulse1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-340})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold12
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-340})));
    Modelica.Clocked.BooleanSignals.TickBasedSources.Step tickStep1(startTick=10, startValue=false)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-380})));
    Modelica.Clocked.BooleanSignals.Sampler.AssignClock assign_tickStep1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-380})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold13
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-380})));
    Modelica.Clocked.BooleanSignals.TimeBasedSources.Pulse timePulse1(width=30, period=0.2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-410})));
    Modelica.Clocked.BooleanSignals.Sampler.AssignClock assign_timePulse1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-410})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold14
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-410})));
    Modelica.Clocked.BooleanSignals.TimeBasedSources.Step timeStep1(startTime=0.5)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-440})));
    Modelica.Clocked.BooleanSignals.Sampler.AssignClock assign_timeStep1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-440})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold15
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-440})));
  equation
    connect(src.y, sample1.u) annotation (Line(points={{-79,40},{-76,40},{-76,110},{-72,110}}, color={255,0,255}));
    connect(sample1.y, assignClock1.u) annotation (Line(points={{-49,110},{-42,110}}, color={255,0,255}));
    connect(periodicClock.y, assignClock1.clock) annotation (Line(points={{-79,140},{-42,140},{-42,94},{-30,94},{-30,98}}, color={175,175,175}));
    connect(assignClock1.y, hold1.u) annotation (Line(points={{-19,110},{-12,110}}, color={255,0,255}));
    connect(src.y, sampleClocked1.u) annotation (Line(points={{-79,40},{-76,40},{-76,80},{-72,80}}, color={255,0,255}));
    connect(periodicClock.y, sampleClocked1.clock) annotation (Line(points={{-79,140},{-42,140},{-42,84},{-48,84},{-48,64},{-60,64},{-60,68}}, color={175,175,175}));
    connect(sampleClocked1.y, subSample1.u) annotation (Line(points={{-49,80},{-44,80},{-44,82},{-46,82},{-46,80},{-42,80}}, color={255,0,255}));
    connect(subSample1.y, superSample1.u) annotation (Line(points={{-19,80},{-12,80}}, color={255,0,255}));
    connect(superSample1.y, hold2.u) annotation (Line(points={{11,80},{16,80},{16,82},{14,82},{14,80},{18,80}}, color={255,0,255}));
    connect(sampleClocked1.y, shiftSample1.u) annotation (Line(points={{-49,80},{-44,80},{-44,82},{-46,82},{-46,40},{-42,40}}, color={255,0,255}));
    connect(shiftSample1.y, backSample1.u) annotation (Line(points={{-19,40},{-12,40}}, color={255,0,255}));
    connect(backSample1.y, hold3.u) annotation (Line(points={{11,40},{16,40},{16,42},{14,42},{14,40},{18,40}}, color={255,0,255}));
    connect(sampleClocked1.y, upSample1.u) annotation (Line(points={{-49,80},{-44,80},{-44,82},{-46,82},{-46,0},{-42,0}}, color={255,0,255}));
    connect(upSample1.y, hold4.u) annotation (Line(points={{-19,0},{-12,0}}, color={255,0,255}));
    connect(sampleClocked1.y, unitDelay1.u) annotation (Line(points={{-49,80},{-44,80},{-44,82},{-46,82},{-46,-30},{-42,-30}}, color={255,0,255}));
    connect(unitDelay1.y, hold5.u) annotation (Line(points={{-19,-30},{-12,-30}}, color={255,0,255}));
    connect(sampleClocked1.y, fractionalDelay1.u) annotation (Line(points={{-49,80},{-44,80},{-44,82},{-46,82},{-46,-60},{-42,-60}}, color={255,0,255}));
    connect(fractionalDelay1.y, hold6.u) annotation (Line(points={{-19,-60},{-12,-60}}, color={255,0,255}));
    connect(sampleClocked1.y, triggerHold1.u) annotation (Line(points={{-49,80},{-44,80},{-44,82},{-46,82},{-46,-100},{-42,-100}}, color={255,0,255}));
    connect(triggerHold1.y, countTriggers.trigger) annotation (Line(points={{-19,-100},{-12,-100},{-12,-116},{-6,-116},{-6,-112}}, color={255,0,255}));
    connect(one.y, countTriggers.u) annotation (Line(points={{-79,-250},{-18,-250},{-18,-100},{-14,-100}}, color={255,127,0}));
    connect(src.y, sampleVectorized1.u[1]) annotation (Line(points={{-79,40},{-74,40},{-74,-139},{-72,-139}}, color={255,0,255}));
    connect(src2.y, sampleVectorized1.u[2]) annotation (Line(points={{-79,-130},{-76,-130},{-76,-141},{-72,-141}}, color={255,0,255}));
    connect(periodicClock.y, sampleVectorized1.clock) annotation (Line(points={{-79,140},{-42,140},{-42,84},{-48,84},{-48,-156},{-60,-156},{-60,-152}}, color={175,175,175}));
    connect(sampleVectorized1.y[1], hold7.u) annotation (Line(points={{-49,-139.5},{-44,-139.5},{-44,-140},{-42,-140}}, color={255,0,255}));
    connect(sampleVectorized1.y[2], hold8.u) annotation (Line(points={{-49,-140.5},{-44,-140.5},{-44,-170},{-42,-170}}, color={255,0,255}));
    connect(src.y, sample3.u) annotation (Line(points={{-79,40},{-74,40},{-74,-200},{-72,-200}}, color={255,0,255}));
    connect(src2.y, sample4.u) annotation (Line(points={{-79,-130},{-76,-130},{-76,-230},{-72,-230}}, color={255,0,255}));
    connect(sample3.y, assignClockVectorized1.u[1]) annotation (Line(points={{-49,-200},{-44,-200},{-44,-199},{-42,-199}}, color={255,0,255}));
    connect(sample4.y, assignClockVectorized1.u[2]) annotation (Line(points={{-49,-230},{-44,-230},{-44,-201},{-42,-201}}, color={255,0,255}));
    connect(periodicClock.y, assignClockVectorized1.clock) annotation (Line(points={{-79,140},{-42,140},{-42,84},{-48,84},{-48,-216},{-30,-216},{-30,-212}}, color={175,175,175}));
    connect(assignClockVectorized1.y[1], hold9.u) annotation (Line(points={{-19,-199.5},{-16,-199.5},{-16,-200},{-12,-200}}, color={255,0,255}));
    connect(assignClockVectorized1.y[2], hold10.u) annotation (Line(points={{-19,-200.5},{-16,-200.5},{-16,-230},{-12,-230}}, color={255,0,255}));
    connect(sampleClocked1.y, booleanChange1.u) annotation (Line(points={{-49,80},{-44,80},{-44,82},{-46,82},{-46,-100},{-42,-100},{-42,-270}}, color={255,0,255}));
    connect(booleanChange1.y, hold11.u) annotation (Line(points={{-19,-270},{-12,-270}}, color={255,0,255}));
    connect(periodicClock.y, clockToBoolean1.u) annotation (Line(points={{-79,140},{-42,140},{-42,84},{-48,84},{-48,-216},{-46,-216},{-46,-300},{-42,-300}}, color={175,175,175}));
    connect(clockToBoolean1.y, countTicks.trigger) annotation (Line(points={{-19,-300},{-12,-300},{-12,-316},{-6,-316},{-6,-312}}, color={255,0,255}));
    connect(one.y, countTicks.u) annotation (Line(points={{-79,-250},{-50,-250},{-50,-288},{-18,-288},{-18,-300},{-14,-300}}, color={255,127,0}));
    connect(tickPulse1.y, assign_tickPulse1.u) annotation (Line(points={{-49,-340},{-44,-340},{-44,-338},{-46,-338},{-46,-340},{-42,-340}}, color={255,0,255}));
    connect(periodicClock.y, assign_tickPulse1.clock) annotation (Line(points={{-79,140},{-42,140},{-42,84},{-48,84},{-48,-216},{-46,-216},{-46,-300},{-42,-300},{-42,-356},{-30,-356},{-30,-352}}, color={175,175,175}));
    connect(assign_tickPulse1.y, hold12.u) annotation (Line(points={{-19,-340},{-12,-340}}, color={255,0,255}));
    connect(tickStep1.y, assign_tickStep1.u) annotation (Line(points={{-49,-380},{-44,-380},{-44,-378},{-46,-378},{-46,-380},{-42,-380}}, color={255,0,255}));
    connect(periodicClock.y, assign_tickStep1.clock) annotation (Line(points={{-79,140},{-42,140},{-42,84},{-48,84},{-48,-216},{-46,-216},{-46,-300},{-42,-300},{-42,-396},{-30,-396},{-30,-392}}, color={175,175,175}));
    connect(assign_tickStep1.y, hold13.u) annotation (Line(points={{-19,-380},{-12,-380}}, color={255,0,255}));
    connect(timePulse1.y, assign_timePulse1.u) annotation (Line(points={{-49,-410},{-44,-410},{-44,-408},{-46,-408},{-46,-410},{-42,-410}}, color={255,0,255}));
    connect(periodicClock.y, assign_timePulse1.clock) annotation (Line(points={{-79,140},{-42,140},{-42,84},{-48,84},{-48,-216},{-46,-216},{-46,-300},{-42,-300},{-42,-426},{-30,-426},{-30,-422}}, color={175,175,175}));
    connect(assign_timePulse1.y, hold14.u) annotation (Line(points={{-19,-410},{-12,-410}}, color={255,0,255}));
    connect(timeStep1.y, assign_timeStep1.u) annotation (Line(points={{-49,-440},{-44,-440},{-44,-438},{-46,-438},{-46,-440},{-42,-440}}, color={255,0,255}));
    connect(periodicClock.y, assign_timeStep1.clock) annotation (Line(points={{-79,140},{-42,140},{-42,84},{-48,84},{-48,-216},{-46,-216},{-46,-300},{-42,-300},{-42,-456},{-30,-456},{-30,-452}}, color={175,175,175}));
    connect(assign_timeStep1.y, hold15.u) annotation (Line(points={{-19,-440},{-12,-440}}, color={255,0,255}));
    annotation (Diagram(coordinateSystem(extent={{-100,-460},{100,160}})),
      experiment(StopTime=1),
      Documentation(info="<html>
<p>
Exercises the sampler, hold, source and non-periodic blocks of
<a href=\"modelica://Modelica.Clocked.BooleanSignals\">Modelica.Clocked.BooleanSignals</a> on one periodic clock
(period 0.02 s). Every clocked signal is converted back to continuous time with a Hold, and the
held signals are compared:
</p>
<ul>
<li>Sample followed by AssignClock, and SampleClocked</li>
<li>SubSample followed by SuperSample (factor 5, so the result is the input sampled every 0.1 s)</li>
<li>ShiftSample followed by BackSample with the same shift (1/2 tick), which must cancel</li>
<li>UpSample (factor 4), UnitDelay, FractionalDelay (3/2 ticks)</li>
<li>AssignClockToSquareWaveHold, and AssignClockToTriggerHold (whose pulses are counted, because they
    last only for an event instant)</li>
<li>SampleVectorizedAndClocked and AssignClockVectorized for two signals</li>
<li>NonPeriodic.BooleanChange, and NonPeriodic.ClockToBoolean (ticks counted;
    AssignClockToSquareWaveHold is tested in AssignClockToSquareWaveHold)</li>
<li>TickBasedSources.Pulse and Step, TimeBasedSources.Pulse and Step</li>
</ul>
</html>"));
  end BooleanSamplersAndHolds;

  model IntegerSamplersAndHolds "Test of the samplers, holds, sources and non-periodic blocks of Modelica.Clocked.IntegerSignals"
    extends Modelica.Icons.Example;

    Modelica.Clocked.ClockSignals.Clocks.PeriodicRealClock periodicClock(period=0.02)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,140})));
    Modelica.Blocks.Sources.IntegerTable src(table=[0,1; 0.3,4; 0.6,-2; 0.9,7])
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,40})));
    Modelica.Blocks.Sources.IntegerStep src2(height=5, startTime=0.45)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-130})));
    Modelica.Blocks.Sources.IntegerConstant one(k=1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-250})));
    Modelica.Clocked.IntegerSignals.Sampler.Sample sample1
      annotation (Placement(transformation(extent={{-70,100},{-50,120}})));
    Modelica.Clocked.IntegerSignals.Sampler.AssignClock assignClock1
      annotation (Placement(transformation(extent={{-40,100},{-20,120}})));
    Modelica.Clocked.IntegerSignals.Sampler.Hold hold1
      annotation (Placement(transformation(extent={{-10,100},{10,120}})));
    Modelica.Clocked.IntegerSignals.Sampler.SampleClocked sampleClocked1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,80})));
    Modelica.Clocked.IntegerSignals.Sampler.SubSample subSample1(factor=5, inferFactor=false)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,80})));
    Modelica.Clocked.IntegerSignals.Sampler.SuperSample superSample1(factor=5, inferFactor=false)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,80})));
    Modelica.Clocked.IntegerSignals.Sampler.Hold hold2
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,80})));
    Modelica.Clocked.IntegerSignals.Sampler.ShiftSample shiftSample1(shiftCounter=1, resolution=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,40})));
    Modelica.Clocked.IntegerSignals.Sampler.BackSample backSample1(backCounter=1, resolution=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,40})));
    Modelica.Clocked.IntegerSignals.Sampler.Hold hold3
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,40})));
    Modelica.Clocked.IntegerSignals.Sampler.Utilities.UpSample upSample1(factor=4, inferFactor=false)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,0})));
    Modelica.Clocked.IntegerSignals.Sampler.Hold hold4
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,0})));
    Modelica.Clocked.IntegerSignals.NonPeriodic.UnitDelay unitDelay1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-30})));
    Modelica.Clocked.IntegerSignals.Sampler.Hold hold5
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-30})));
    Modelica.Clocked.IntegerSignals.NonPeriodic.FractionalDelay fractionalDelay1(shift=3, resolution=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-60})));
    Modelica.Clocked.IntegerSignals.Sampler.Hold hold6
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-60})));
    Modelica.Clocked.IntegerSignals.Sampler.Utilities.AssignClockToTriggerHold triggerHold1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-100})));
    Modelica.Blocks.MathInteger.TriggeredAdd countTriggers
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-100})));
    Modelica.Clocked.IntegerSignals.Sampler.SampleVectorizedAndClocked sampleVectorized1(n=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-140})));
    Modelica.Clocked.IntegerSignals.Sampler.Hold hold7
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-140})));
    Modelica.Clocked.IntegerSignals.Sampler.Hold hold8
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-170})));
    Modelica.Clocked.IntegerSignals.Sampler.Sample sample3
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-200})));
    Modelica.Clocked.IntegerSignals.Sampler.Sample sample4
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-230})));
    Modelica.Clocked.IntegerSignals.Sampler.AssignClockVectorized assignClockVectorized1(n=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-200})));
    Modelica.Clocked.IntegerSignals.Sampler.Hold hold9
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-200})));
    Modelica.Clocked.IntegerSignals.Sampler.Hold hold10
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-230})));
    Modelica.Clocked.IntegerSignals.NonPeriodic.IntegerChange integerChange1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-270})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold11
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-270})));
    Modelica.Clocked.IntegerSignals.TickBasedSources.Step tickStep1(height=3, offset=-1, startTick=10)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-300})));
    Modelica.Clocked.IntegerSignals.Sampler.AssignClock assign_tickStep1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-300})));
    Modelica.Clocked.IntegerSignals.Sampler.Hold hold12
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-300})));
    Modelica.Clocked.IntegerSignals.TimeBasedSources.Step timeStep1(height=2, offset=1, startTime=0.5)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-340})));
    Modelica.Clocked.IntegerSignals.Sampler.AssignClock assign_timeStep1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-340})));
    Modelica.Clocked.IntegerSignals.Sampler.Hold hold13
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-340})));
  equation
    connect(src.y, sample1.u) annotation (Line(points={{-79,40},{-76,40},{-76,110},{-72,110}}, color={255,127,0}));
    connect(sample1.y, assignClock1.u) annotation (Line(points={{-49,110},{-42,110}}, color={255,127,0}));
    connect(periodicClock.y, assignClock1.clock) annotation (Line(points={{-79,140},{-42,140},{-42,94},{-30,94},{-30,98}}, color={175,175,175}));
    connect(assignClock1.y, hold1.u) annotation (Line(points={{-19,110},{-12,110}}, color={255,127,0}));
    connect(src.y, sampleClocked1.u) annotation (Line(points={{-79,40},{-76,40},{-76,80},{-72,80}}, color={255,127,0}));
    connect(periodicClock.y, sampleClocked1.clock) annotation (Line(points={{-79,140},{-42,140},{-42,84},{-48,84},{-48,64},{-60,64},{-60,68}}, color={175,175,175}));
    connect(sampleClocked1.y, subSample1.u) annotation (Line(points={{-49,80},{-44,80},{-44,82},{-46,82},{-46,80},{-42,80}}, color={255,127,0}));
    connect(subSample1.y, superSample1.u) annotation (Line(points={{-19,80},{-12,80}}, color={255,127,0}));
    connect(superSample1.y, hold2.u) annotation (Line(points={{11,80},{16,80},{16,82},{14,82},{14,80},{18,80}}, color={255,127,0}));
    connect(sampleClocked1.y, shiftSample1.u) annotation (Line(points={{-49,80},{-44,80},{-44,82},{-46,82},{-46,40},{-42,40}}, color={255,127,0}));
    connect(shiftSample1.y, backSample1.u) annotation (Line(points={{-19,40},{-12,40}}, color={255,127,0}));
    connect(backSample1.y, hold3.u) annotation (Line(points={{11,40},{16,40},{16,42},{14,42},{14,40},{18,40}}, color={255,127,0}));
    connect(sampleClocked1.y, upSample1.u) annotation (Line(points={{-49,80},{-44,80},{-44,82},{-46,82},{-46,0},{-42,0}}, color={255,127,0}));
    connect(upSample1.y, hold4.u) annotation (Line(points={{-19,0},{-12,0}}, color={255,127,0}));
    connect(sampleClocked1.y, unitDelay1.u) annotation (Line(points={{-49,80},{-44,80},{-44,82},{-46,82},{-46,-30},{-42,-30}}, color={255,127,0}));
    connect(unitDelay1.y, hold5.u) annotation (Line(points={{-19,-30},{-12,-30}}, color={255,127,0}));
    connect(sampleClocked1.y, fractionalDelay1.u) annotation (Line(points={{-49,80},{-44,80},{-44,82},{-46,82},{-46,-60},{-42,-60}}, color={255,127,0}));
    connect(fractionalDelay1.y, hold6.u) annotation (Line(points={{-19,-60},{-12,-60}}, color={255,127,0}));
    connect(sampleClocked1.y, triggerHold1.u) annotation (Line(points={{-49,80},{-44,80},{-44,82},{-46,82},{-46,-100},{-42,-100}}, color={255,127,0}));
    connect(triggerHold1.y, countTriggers.trigger) annotation (Line(points={{-19,-100},{-12,-100},{-12,-116},{-6,-116},{-6,-112}}, color={255,0,255}));
    connect(one.y, countTriggers.u) annotation (Line(points={{-79,-250},{-18,-250},{-18,-100},{-14,-100}}, color={255,127,0}));
    connect(src.y, sampleVectorized1.u[1]) annotation (Line(points={{-79,40},{-74,40},{-74,-139},{-72,-139}}, color={255,127,0}));
    connect(src2.y, sampleVectorized1.u[2]) annotation (Line(points={{-79,-130},{-76,-130},{-76,-141},{-72,-141}}, color={255,127,0}));
    connect(periodicClock.y, sampleVectorized1.clock) annotation (Line(points={{-79,140},{-42,140},{-42,84},{-48,84},{-48,-156},{-60,-156},{-60,-152}}, color={175,175,175}));
    connect(sampleVectorized1.y[1], hold7.u) annotation (Line(points={{-49,-139.5},{-44,-139.5},{-44,-140},{-42,-140}}, color={255,127,0}));
    connect(sampleVectorized1.y[2], hold8.u) annotation (Line(points={{-49,-140.5},{-44,-140.5},{-44,-170},{-42,-170}}, color={255,127,0}));
    connect(src.y, sample3.u) annotation (Line(points={{-79,40},{-74,40},{-74,-200},{-72,-200}}, color={255,127,0}));
    connect(src2.y, sample4.u) annotation (Line(points={{-79,-130},{-76,-130},{-76,-230},{-72,-230}}, color={255,127,0}));
    connect(sample3.y, assignClockVectorized1.u[1]) annotation (Line(points={{-49,-200},{-44,-200},{-44,-199},{-42,-199}}, color={255,127,0}));
    connect(sample4.y, assignClockVectorized1.u[2]) annotation (Line(points={{-49,-230},{-44,-230},{-44,-201},{-42,-201}}, color={255,127,0}));
    connect(periodicClock.y, assignClockVectorized1.clock) annotation (Line(points={{-79,140},{-42,140},{-42,84},{-48,84},{-48,-216},{-30,-216},{-30,-212}}, color={175,175,175}));
    connect(assignClockVectorized1.y[1], hold9.u) annotation (Line(points={{-19,-199.5},{-16,-199.5},{-16,-200},{-12,-200}}, color={255,127,0}));
    connect(assignClockVectorized1.y[2], hold10.u) annotation (Line(points={{-19,-200.5},{-16,-200.5},{-16,-230},{-12,-230}}, color={255,127,0}));
    connect(sampleClocked1.y, integerChange1.u) annotation (Line(points={{-49,80},{-44,80},{-44,82},{-46,82},{-46,-100},{-42,-100},{-42,-270}}, color={255,127,0}));
    connect(integerChange1.y, hold11.u) annotation (Line(points={{-19,-270},{-12,-270}}, color={255,0,255}));
    connect(tickStep1.y, assign_tickStep1.u) annotation (Line(points={{-49,-300},{-44,-300},{-44,-298},{-46,-298},{-46,-300},{-42,-300}}, color={255,127,0}));
    connect(periodicClock.y, assign_tickStep1.clock) annotation (Line(points={{-79,140},{-42,140},{-42,84},{-48,84},{-48,-316},{-30,-316},{-30,-312}}, color={175,175,175}));
    connect(assign_tickStep1.y, hold12.u) annotation (Line(points={{-19,-300},{-12,-300}}, color={255,127,0}));
    connect(timeStep1.y, assign_timeStep1.u) annotation (Line(points={{-49,-340},{-44,-340},{-44,-338},{-46,-338},{-46,-340},{-42,-340}}, color={255,127,0}));
    connect(periodicClock.y, assign_timeStep1.clock) annotation (Line(points={{-79,140},{-42,140},{-42,84},{-48,84},{-48,-356},{-30,-356},{-30,-352}}, color={175,175,175}));
    connect(assign_timeStep1.y, hold13.u) annotation (Line(points={{-19,-340},{-12,-340}}, color={255,127,0}));
    annotation (Diagram(coordinateSystem(extent={{-100,-360},{100,160}})),
      experiment(StopTime=1),
      Documentation(info="<html>
<p>
Exercises the sampler, hold, source and non-periodic blocks of
<a href=\"modelica://Modelica.Clocked.IntegerSignals\">Modelica.Clocked.IntegerSignals</a> on one periodic clock
(period 0.02 s). Every clocked signal is converted back to continuous time with a Hold, and the
held signals are compared:
</p>
<ul>
<li>Sample followed by AssignClock, and SampleClocked</li>
<li>SubSample followed by SuperSample (factor 5, so the result is the input sampled every 0.1 s)</li>
<li>ShiftSample followed by BackSample with the same shift (1/2 tick), which must cancel</li>
<li>UpSample (factor 4), UnitDelay, FractionalDelay (3/2 ticks)</li>
<li>AssignClockToSquareWaveHold, and AssignClockToTriggerHold (whose pulses are counted, because they
    last only for an event instant)</li>
<li>SampleVectorizedAndClocked and AssignClockVectorized for two signals</li>
<li>NonPeriodic.IntegerChange (AssignClockToSquareWaveHold is tested in
    AssignClockToSquareWaveHold)</li>
<li>TickBasedSources.Step and TimeBasedSources.Step</li>
</ul>
</html>"));
  end IntegerSamplersAndHolds;

  model RealClockedBlocksAndSources "Test of the clocked controllers, filters and sources of Modelica.Clocked.RealSignals"
    extends Modelica.Icons.Example;

    Modelica.Clocked.ClockSignals.Clocks.PeriodicRealClock periodicClock(period=0.02)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,140})));
    Modelica.Blocks.Sources.Sine sine1(f=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,40})));
    Modelica.Clocked.RealSignals.Sampler.SampleClocked sampleClocked1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,40})));
    Modelica.Clocked.RealSignals.NonPeriodic.PI nonPeriodicPI1(k=2, T=0.2)
      annotation (Placement(transformation(extent={{-40,100},{-20,120}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold1
      annotation (Placement(transformation(extent={{-10,100},{10,120}})));
    Modelica.Clocked.RealSignals.Periodic.PI periodicPI1(kd=2, Td=0.2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,80})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold2
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,80})));
    Modelica.Clocked.RealSignals.Periodic.FIRbyCoefficients fir1(a={0.25, 0.5, 0.25})
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,40})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold3
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,40})));
    Modelica.Clocked.RealSignals.Periodic.MovingAverage movingAverage1(n=4)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,0})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold4
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,0})));
    Modelica.Clocked.RealSignals.Periodic.TransferFunction transferFunction1(b={0.1}, a={1, -0.9})
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-30})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold5
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-30})));
    Modelica.Clocked.RealSignals.Periodic.StateSpace stateSpace1(A=[0.9, 0.1; -0.1, 0.9], B=[0; 0.1], C=[1, 0; 0, 1])
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-60})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold6
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-60})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold7
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-100})));
    Modelica.Clocked.RealSignals.TickBasedSources.Ramp tickRamp1(height=2, durationTicks=20, offset=-1, startTick=5)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-140})));
    Modelica.Clocked.RealSignals.Sampler.AssignClock assign_tickRamp1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-140})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold8
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-140})));
    Modelica.Clocked.RealSignals.TickBasedSources.Sine tickSine1(amplitude=1.5, periodTicks=10, periodOffset=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-170})));
    Modelica.Clocked.RealSignals.Sampler.AssignClock assign_tickSine1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-170})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold9
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-170})));
    Modelica.Clocked.RealSignals.TickBasedSources.Step tickStep1(height=3, offset=1, startTick=10)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-200})));
    Modelica.Clocked.RealSignals.Sampler.AssignClock assign_tickStep1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-200})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold10
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-200})));
    Modelica.Clocked.RealSignals.TimeBasedSources.Ramp timeRamp1(height=2, duration=0.5, offset=-1, startTime=0.2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-240})));
    Modelica.Clocked.RealSignals.Sampler.AssignClock assign_timeRamp1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-240})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold11
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-240})));
    Modelica.Clocked.RealSignals.TimeBasedSources.Sine timeSine1(amplitude=1.5, f=3, phase=0.5)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-280})));
    Modelica.Clocked.RealSignals.Sampler.AssignClock assign_timeSine1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-280})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold12
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-280})));
    Modelica.Clocked.RealSignals.TimeBasedSources.Step timeStep1(height=3, offset=1, startTime=0.5)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-60,-310})));
    Modelica.Clocked.RealSignals.Sampler.AssignClock assign_timeStep1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-310})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold13
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-310})));
  equation
    connect(sine1.y, sampleClocked1.u) annotation (Line(points={{-79,40},{-72,40}}, color={0,0,127}));
    connect(periodicClock.y, sampleClocked1.clock) annotation (Line(points={{-79,140},{-72,140},{-72,24},{-60,24},{-60,28}}, color={175,175,175}));
    connect(sampleClocked1.y, nonPeriodicPI1.u) annotation (Line(points={{-49,40},{-44,40},{-44,42},{-46,42},{-46,110},{-42,110}}, color={0,0,127}));
    connect(nonPeriodicPI1.y, hold1.u) annotation (Line(points={{-19,110},{-12,110}}, color={0,0,127}));
    connect(sampleClocked1.y, periodicPI1.u) annotation (Line(points={{-49,40},{-44,40},{-44,42},{-46,42},{-46,80},{-42,80}}, color={0,0,127}));
    connect(periodicPI1.y, hold2.u) annotation (Line(points={{-19,80},{-12,80}}, color={0,0,127}));
    connect(sampleClocked1.y, fir1.u) annotation (Line(points={{-49,40},{-44,40},{-44,42},{-46,42},{-46,40},{-42,40}}, color={0,0,127}));
    connect(fir1.y, hold3.u) annotation (Line(points={{-19,40},{-12,40}}, color={0,0,127}));
    connect(sampleClocked1.y, movingAverage1.u) annotation (Line(points={{-49,40},{-44,40},{-44,42},{-46,42},{-46,0},{-42,0}}, color={0,0,127}));
    connect(movingAverage1.y, hold4.u) annotation (Line(points={{-19,0},{-12,0}}, color={0,0,127}));
    connect(sampleClocked1.y, transferFunction1.u) annotation (Line(points={{-49,40},{-44,40},{-44,42},{-46,42},{-46,-30},{-42,-30}}, color={0,0,127}));
    connect(transferFunction1.y, hold5.u) annotation (Line(points={{-19,-30},{-12,-30}}, color={0,0,127}));
    connect(sampleClocked1.y, stateSpace1.u[1]) annotation (Line(points={{-49,40},{-44,40},{-44,42},{-46,42},{-46,-60},{-42,-60}}, color={0,0,127}));
    connect(stateSpace1.y[1], hold6.u) annotation (Line(points={{-19,-59.5},{-16,-59.5},{-16,-60},{-12,-60}}, color={0,0,127}));
    connect(stateSpace1.y[2], hold7.u) annotation (Line(points={{-19,-60.5},{-16,-60.5},{-16,-100},{-12,-100}}, color={0,0,127}));
    connect(tickRamp1.y, assign_tickRamp1.u) annotation (Line(points={{-49,-140},{-44,-140},{-44,-138},{-46,-138},{-46,-140},{-42,-140}}, color={0,0,127}));
    connect(periodicClock.y, assign_tickRamp1.clock) annotation (Line(points={{-79,140},{-72,140},{-72,-156},{-30,-156},{-30,-152}}, color={175,175,175}));
    connect(assign_tickRamp1.y, hold8.u) annotation (Line(points={{-19,-140},{-12,-140}}, color={0,0,127}));
    connect(tickSine1.y, assign_tickSine1.u) annotation (Line(points={{-49,-170},{-44,-170},{-44,-168},{-46,-168},{-46,-170},{-42,-170}}, color={0,0,127}));
    connect(periodicClock.y, assign_tickSine1.clock) annotation (Line(points={{-79,140},{-72,140},{-72,-186},{-30,-186},{-30,-182}}, color={175,175,175}));
    connect(assign_tickSine1.y, hold9.u) annotation (Line(points={{-19,-170},{-12,-170}}, color={0,0,127}));
    connect(tickStep1.y, assign_tickStep1.u) annotation (Line(points={{-49,-200},{-44,-200},{-44,-198},{-46,-198},{-46,-200},{-42,-200}}, color={0,0,127}));
    connect(periodicClock.y, assign_tickStep1.clock) annotation (Line(points={{-79,140},{-72,140},{-72,-216},{-30,-216},{-30,-212}}, color={175,175,175}));
    connect(assign_tickStep1.y, hold10.u) annotation (Line(points={{-19,-200},{-12,-200}}, color={0,0,127}));
    connect(timeRamp1.y, assign_timeRamp1.u) annotation (Line(points={{-49,-240},{-44,-240},{-44,-238},{-46,-238},{-46,-240},{-42,-240}}, color={0,0,127}));
    connect(periodicClock.y, assign_timeRamp1.clock) annotation (Line(points={{-79,140},{-72,140},{-72,-256},{-30,-256},{-30,-252}}, color={175,175,175}));
    connect(assign_timeRamp1.y, hold11.u) annotation (Line(points={{-19,-240},{-12,-240}}, color={0,0,127}));
    connect(timeSine1.y, assign_timeSine1.u) annotation (Line(points={{-49,-280},{-44,-280},{-44,-278},{-46,-278},{-46,-280},{-42,-280}}, color={0,0,127}));
    connect(periodicClock.y, assign_timeSine1.clock) annotation (Line(points={{-79,140},{-72,140},{-72,-296},{-30,-296},{-30,-292}}, color={175,175,175}));
    connect(assign_timeSine1.y, hold12.u) annotation (Line(points={{-19,-280},{-12,-280}}, color={0,0,127}));
    connect(timeStep1.y, assign_timeStep1.u) annotation (Line(points={{-49,-310},{-44,-310},{-44,-308},{-46,-308},{-46,-310},{-42,-310}}, color={0,0,127}));
    connect(periodicClock.y, assign_timeStep1.clock) annotation (Line(points={{-79,140},{-72,140},{-72,-326},{-30,-326},{-30,-322}}, color={175,175,175}));
    connect(assign_timeStep1.y, hold13.u) annotation (Line(points={{-19,-310},{-12,-310}}, color={0,0,127}));
    annotation (Diagram(coordinateSystem(extent={{-100,-340},{100,160}})),
      experiment(StopTime=1),
      Documentation(info="<html>
<p>
A 2 Hz sine, sampled with 50 Hz, is processed by the clocked blocks of
<a href=\"modelica://Modelica.Clocked.RealSignals\">Modelica.Clocked.RealSignals</a>:
NonPeriodic.PI, Periodic.PI, Periodic.FIRbyCoefficients (a = {0.25, 0.5, 0.25}),
Periodic.MovingAverage (n = 4), Periodic.TransferFunction (0.1/(z - 0.9)) and
Periodic.StateSpace (a damped discrete rotation).
The tick-based and time-based Ramp, Sine and Step sources run on the same clock.
All results are compared after a Hold.
</p>
</html>"));
  end RealClockedBlocksAndSources;

  model Clocks "Test of the clocks and clock samplers of Modelica.Clocked.ClockSignals"
    extends Modelica.Icons.Example;

    Modelica.Blocks.Sources.ContinuousClock time1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-50})));
    Modelica.Blocks.Sources.Ramp angle1(height=10*Modelica.Constants.pi, duration=1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-130})));
    Modelica.Blocks.Sources.Constant interval1(k=Modelica.Constants.pi)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-180})));
    Modelica.Blocks.Sources.BooleanPulse eventSource(width=50, period=0.15, startTime=0.05)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,40})));
    Modelica.Clocked.ClockSignals.Clocks.PeriodicExactClock periodicExactClock1(factor=20, resolution=Modelica.Clocked.Types.Resolution.ms)
      annotation (Placement(transformation(extent={{-40,90},{-20,110}})));
    Modelica.Clocked.RealSignals.Sampler.SampleClocked tick_periodicExactClock1
      annotation (Placement(transformation(extent={{-10,90},{10,110}})));
    Modelica.Clocked.RealSignals.Sampler.Hold lastTick_periodicExactClock1(y_start=-1)
      annotation (Placement(transformation(extent={{20,90},{40,110}})));
    Modelica.Clocked.ClockSignals.Clocks.PeriodicExactClock periodicExactClock2(factor=30, resolution=Modelica.Clocked.Types.Resolution.ms)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,70})));
    Modelica.Clocked.RealSignals.Sampler.SampleClocked tick_periodicExactClock2
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,70})));
    Modelica.Clocked.RealSignals.Sampler.Hold lastTick_periodicExactClock2(y_start=-1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,70})));
    Modelica.Clocked.ClockSignals.Clocks.EventClock eventClock1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,40})));
    Modelica.Clocked.RealSignals.Sampler.SampleClocked tick_eventClock1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,40})));
    Modelica.Clocked.RealSignals.Sampler.Hold lastTick_eventClock1(y_start=-1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,40})));
    Modelica.Clocked.ClockSignals.Clocks.Logical.ConjunctiveClock conjunctiveClock1(nu=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,0})));
    Modelica.Clocked.RealSignals.Sampler.SampleClocked tick_conjunctiveClock1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,0})));
    Modelica.Clocked.RealSignals.Sampler.Hold lastTick_conjunctiveClock1(y_start=-1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,0})));
    Modelica.Clocked.ClockSignals.Clocks.Logical.DisjunctiveClock disjunctiveClock1(nu=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-30})));
    Modelica.Clocked.RealSignals.Sampler.SampleClocked tick_disjunctiveClock1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-30})));
    Modelica.Clocked.RealSignals.Sampler.Hold lastTick_disjunctiveClock1(y_start=-1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,-30})));
    Modelica.Clocked.ClockSignals.Sampler.SubSample subSampleClock1(factor=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-60})));
    Modelica.Clocked.RealSignals.Sampler.SampleClocked tick_subSampleClock1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-60})));
    Modelica.Clocked.RealSignals.Sampler.Hold lastTick_subSampleClock1(y_start=-1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,-60})));
    Modelica.Clocked.ClockSignals.Sampler.SuperSample superSampleClock1(factor=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-90})));
    Modelica.Clocked.RealSignals.Sampler.SampleClocked tick_superSampleClock1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-90})));
    Modelica.Clocked.RealSignals.Sampler.Hold lastTick_superSampleClock1(y_start=-1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,-90})));
    Modelica.Clocked.ClockSignals.Sampler.ShiftSample shiftSampleClock1(shiftCounter=1, resolution=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-120})));
    Modelica.Clocked.RealSignals.Sampler.SampleClocked tick_shiftSampleClock1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-120})));
    Modelica.Clocked.RealSignals.Sampler.Hold lastTick_shiftSampleClock1(y_start=-1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,-120})));
    Modelica.Clocked.ClockSignals.Clocks.Rotational.RotationalClock rotationalClock1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-160})));
    Modelica.Clocked.RealSignals.Sampler.SampleClocked tick_rotationalClock1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-160})));
    Modelica.Clocked.RealSignals.Sampler.Hold lastTick_rotationalClock1(y_start=-1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,-160})));
    Modelica.Clocked.ClockSignals.Clocks.Rotational.FixedRotationalClock fixedRotationalClock1(trigger_interval=2*Modelica.Constants.pi)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-30,-190})));
    Modelica.Clocked.RealSignals.Sampler.SampleClocked tick_fixedRotationalClock1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-190})));
    Modelica.Clocked.RealSignals.Sampler.Hold lastTick_fixedRotationalClock1(y_start=-1)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,-190})));
  equation
    connect(time1.y, tick_periodicExactClock1.u) annotation (Line(points={{-79,-50},{-50,-50},{-50,88},{-16,88},{-16,100},{-12,100}}, color={0,0,127}));
    connect(periodicExactClock1.y, tick_periodicExactClock1.clock) annotation (Line(points={{-19,100},{-12,100},{-12,84},{0,84},{0,88}}, color={175,175,175}));
    connect(tick_periodicExactClock1.y, lastTick_periodicExactClock1.u) annotation (Line(points={{11,100},{18,100}}, color={0,0,127}));
    connect(time1.y, tick_periodicExactClock2.u) annotation (Line(points={{-79,-50},{-50,-50},{-50,-48},{-16,-48},{-16,70},{-12,70}}, color={0,0,127}));
    connect(periodicExactClock2.y, tick_periodicExactClock2.clock) annotation (Line(points={{-19,70},{-16,70},{-16,72},{-18,72},{-18,54},{0,54},{0,58}}, color={175,175,175}));
    connect(tick_periodicExactClock2.y, lastTick_periodicExactClock2.u) annotation (Line(points={{11,70},{16,70},{16,72},{14,72},{14,70},{18,70}}, color={0,0,127}));
    connect(eventSource.y, eventClock1.u) annotation (Line(points={{-79,40},{-42,40}}, color={255,0,255}));
    connect(time1.y, tick_eventClock1.u) annotation (Line(points={{-79,-50},{-50,-50},{-50,-48},{-16,-48},{-16,40},{-12,40}}, color={0,0,127}));
    connect(eventClock1.y, tick_eventClock1.clock) annotation (Line(points={{-19,40},{-12,40},{-12,24},{0,24},{0,28}}, color={175,175,175}));
    connect(tick_eventClock1.y, lastTick_eventClock1.u) annotation (Line(points={{11,40},{16,40},{16,42},{14,42},{14,40},{18,40}}, color={0,0,127}));
    connect(periodicExactClock1.y, conjunctiveClock1.u[1]) annotation (Line(points={{-19,100},{-14,100},{-14,82},{-46,82},{-46,3.5},{-40,3.5}}, color={175,175,175}));
    connect(periodicExactClock2.y, conjunctiveClock1.u[2]) annotation (Line(points={{-19,70},{-18,70},{-18,52},{-44,52},{-44,-3.5},{-40,-3.5}}, color={175,175,175}));
    connect(time1.y, tick_conjunctiveClock1.u) annotation (Line(points={{-79,-50},{-50,-50},{-50,-48},{-16,-48},{-16,0},{-12,0}}, color={0,0,127}));
    connect(conjunctiveClock1.y, tick_conjunctiveClock1.clock) annotation (Line(points={{-19,0},{-12,0},{-12,-16},{0,-16},{0,-12}}, color={175,175,175}));
    connect(tick_conjunctiveClock1.y, lastTick_conjunctiveClock1.u) annotation (Line(points={{11,0},{16,0},{16,2},{14,2},{14,0},{18,0}}, color={0,0,127}));
    connect(periodicExactClock1.y, disjunctiveClock1.u[1]) annotation (Line(points={{-19,100},{-14,100},{-14,82},{-46,82},{-46,-26.5},{-40,-26.5}}, color={175,175,175}));
    connect(periodicExactClock2.y, disjunctiveClock1.u[2]) annotation (Line(points={{-19,70},{-18,70},{-18,52},{-44,52},{-44,-33.5},{-40,-33.5}}, color={175,175,175}));
    connect(time1.y, tick_disjunctiveClock1.u) annotation (Line(points={{-79,-50},{-50,-50},{-50,-48},{-16,-48},{-16,-30},{-12,-30}}, color={0,0,127}));
    connect(disjunctiveClock1.y, tick_disjunctiveClock1.clock) annotation (Line(points={{-19,-30},{-12,-30},{-12,-46},{0,-46},{0,-42}}, color={175,175,175}));
    connect(tick_disjunctiveClock1.y, lastTick_disjunctiveClock1.u) annotation (Line(points={{11,-30},{16,-30},{16,-28},{14,-28},{14,-30},{18,-30}}, color={0,0,127}));
    connect(periodicExactClock1.y, subSampleClock1.u) annotation (Line(points={{-19,100},{-12,100},{-12,82},{-46,82},{-46,-60},{-42,-60}}, color={175,175,175}));
    connect(time1.y, tick_subSampleClock1.u) annotation (Line(points={{-79,-50},{-50,-50},{-50,-48},{-16,-48},{-16,-60},{-12,-60}}, color={0,0,127}));
    connect(subSampleClock1.y, tick_subSampleClock1.clock) annotation (Line(points={{-19,-60},{-12,-60},{-12,-76},{0,-76},{0,-72}}, color={175,175,175}));
    connect(tick_subSampleClock1.y, lastTick_subSampleClock1.u) annotation (Line(points={{11,-60},{16,-60},{16,-58},{14,-58},{14,-60},{18,-60}}, color={0,0,127}));
    connect(periodicExactClock2.y, superSampleClock1.u) annotation (Line(points={{-19,70},{-16,70},{-16,72},{-18,72},{-18,52},{-44,52},{-44,-90},{-42,-90}}, color={175,175,175}));
    connect(time1.y, tick_superSampleClock1.u) annotation (Line(points={{-79,-50},{-50,-50},{-50,-48},{-16,-48},{-16,-90},{-12,-90}}, color={0,0,127}));
    connect(superSampleClock1.y, tick_superSampleClock1.clock) annotation (Line(points={{-19,-90},{-12,-90},{-12,-106},{0,-106},{0,-102}}, color={175,175,175}));
    connect(tick_superSampleClock1.y, lastTick_superSampleClock1.u) annotation (Line(points={{11,-90},{16,-90},{16,-88},{14,-88},{14,-90},{18,-90}}, color={0,0,127}));
    connect(periodicExactClock2.y, shiftSampleClock1.u) annotation (Line(points={{-19,70},{-16,70},{-16,72},{-18,72},{-18,52},{-44,52},{-44,-120},{-42,-120}}, color={175,175,175}));
    connect(time1.y, tick_shiftSampleClock1.u) annotation (Line(points={{-79,-50},{-50,-50},{-50,-48},{-16,-48},{-16,-120},{-12,-120}}, color={0,0,127}));
    connect(shiftSampleClock1.y, tick_shiftSampleClock1.clock) annotation (Line(points={{-19,-120},{-12,-120},{-12,-136},{0,-136},{0,-132}}, color={175,175,175}));
    connect(tick_shiftSampleClock1.y, lastTick_shiftSampleClock1.u) annotation (Line(points={{11,-120},{16,-120},{16,-118},{14,-118},{14,-120},{18,-120}}, color={0,0,127}));
    connect(angle1.y, rotationalClock1.angle) annotation (Line(points={{-79,-130},{-50,-130},{-50,-160},{-42,-160}}, color={0,0,127}));
    connect(interval1.y, rotationalClock1.trigger_interval) annotation (Line(points={{-79,-180},{-46,-180},{-46,-154},{-42,-154}}, color={0,0,127}));
    connect(time1.y, tick_rotationalClock1.u) annotation (Line(points={{-79,-50},{-50,-50},{-50,-48},{-16,-48},{-16,-160},{-12,-160}}, color={0,0,127}));
    connect(rotationalClock1.y, tick_rotationalClock1.clock) annotation (Line(points={{-19,-160},{-12,-160},{-12,-176},{0,-176},{0,-172}}, color={175,175,175}));
    connect(tick_rotationalClock1.y, lastTick_rotationalClock1.u) annotation (Line(points={{11,-160},{16,-160},{16,-158},{14,-158},{14,-160},{18,-160}}, color={0,0,127}));
    connect(angle1.y, fixedRotationalClock1.angle) annotation (Line(points={{-79,-130},{-50,-130},{-50,-190},{-42,-190}}, color={0,0,127}));
    connect(time1.y, tick_fixedRotationalClock1.u) annotation (Line(points={{-79,-50},{-50,-50},{-50,-102},{-16,-102},{-16,-190},{-12,-190}}, color={0,0,127}));
    connect(fixedRotationalClock1.y, tick_fixedRotationalClock1.clock) annotation (Line(points={{-19,-190},{-16,-190},{-16,-206},{0,-206},{0,-202}}, color={175,175,175}));
    connect(tick_fixedRotationalClock1.y, lastTick_fixedRotationalClock1.u) annotation (Line(points={{11,-190},{16,-190},{16,-188},{14,-188},{14,-190},{18,-190}}, color={0,0,127}));
    annotation (Diagram(coordinateSystem(extent={{-100,-220},{100,120}})),
      experiment(StopTime=1),
      Documentation(info="<html>
<p>
Each clock of
<a href=\"modelica://Modelica.Clocked.ClockSignals\">Modelica.Clocked.ClockSignals</a> samples the
simulation time. The held value (<code>lastTick_*</code>) is the time of the latest tick,
so the comparison checks the tick times:
</p>
<ul>
<li>PeriodicExactClock: 20 ms and 30 ms</li>
<li>EventClock: rising edges of a Boolean pulse (period 0.15 s, starting at 0.05 s)</li>
<li>ConjunctiveClock: ticks as soon as both input clocks have ticked at least once since its last
    tick, i.e. at 0, 30, 60, 90 ms, ... DisjunctiveClock: ticks whenever either input clock ticks.</li>
<li>SubSample (factor 3 of 20 ms), SuperSample (factor 2 of 30 ms), ShiftSample (1/2 tick of 30 ms)</li>
<li>RotationalClock (every &pi; rad) and FixedRotationalClock (every 2&pi; rad) on an angle that rises
    linearly to 10&pi; rad</li>
</ul>
</html>"));
  end Clocks;

  model AssignClockToSquareWaveHold "Test of AssignClockToSquareWaveHold of Modelica.Clocked.IntegerSignals and BooleanSignals"
    extends Modelica.Icons.Example;

    Modelica.Clocked.ClockSignals.Clocks.PeriodicRealClock periodicClock(period=0.02)
      annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
    Modelica.Blocks.Sources.IntegerTable integerTable1(table=[0,1; 0.3,4; 0.6,-2; 0.9,7])
      annotation (Placement(transformation(extent={{-100,30},{-80,50}})));
    Modelica.Blocks.Sources.BooleanPulse booleanPulse1(width=50, period=0.1)
      annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
    Modelica.Clocked.IntegerSignals.Sampler.SampleClocked sampleClockedInteger
      annotation (Placement(transformation(extent={{-70,30},{-50,50}})));
    Modelica.Clocked.IntegerSignals.Sampler.Utilities.AssignClockToSquareWaveHold squareWaveInteger
      annotation (Placement(transformation(extent={{-40,30},{-20,50}})));
    Modelica.Clocked.BooleanSignals.Sampler.SampleClocked sampleClockedBoolean
      annotation (Placement(transformation(extent={{-70,-10},{-50,10}})));
    Modelica.Clocked.BooleanSignals.Sampler.Utilities.AssignClockToSquareWaveHold squareWaveBoolean
      annotation (Placement(transformation(extent={{-40,-10},{-20,10}})));
  equation
    connect(integerTable1.y, sampleClockedInteger.u) annotation (Line(points={{-79,40},{-72,40}}, color={255,127,0}));
    connect(periodicClock.y, sampleClockedInteger.clock) annotation (Line(points={{-79,90},{-72,90},{-72,24},{-60,24},{-60,28}}, color={175,175,175}));
    connect(sampleClockedInteger.y, squareWaveInteger.u) annotation (Line(points={{-49,40},{-42,40}}, color={255,127,0}));
    connect(booleanPulse1.y, sampleClockedBoolean.u) annotation (Line(points={{-79,0},{-72,0}}, color={255,0,255}));
    connect(periodicClock.y, sampleClockedBoolean.clock) annotation (Line(points={{-79,90},{-72,90},{-72,-16},{-60,-16},{-60,-12}}, color={175,175,175}));
    connect(sampleClockedBoolean.y, squareWaveBoolean.u) annotation (Line(points={{-49,0},{-42,0}}, color={255,0,255}));
    annotation (experiment(StopTime=1),
      Documentation(info="<html>
<p>
Converts a clocked Integer and a clocked Boolean signal (20 ms clock) into a continuous-time
square wave with AssignClockToSquareWaveHold of
<a href=\"modelica://Modelica.Clocked.IntegerSignals.Sampler.Utilities\">IntegerSignals</a> and
<a href=\"modelica://Modelica.Clocked.BooleanSignals.Sampler.Utilities\">BooleanSignals</a>.
The output must toggle at every tick, i.e. every 20 ms.
</p>
<p>
Note: with the original MSL code and OpenModelica 1.27.1, the output toggled only every second. The square wave is
assigned the default clock (1 s) instead of the clock of the input, because the
\"dummy condition\" <code>y2 = if u &gt; 0 then not previous(y2) else not previous(y2)</code>
has identical branches and does not tie the clock of <code>y2</code> to <code>u</code> after
simplification. The Real version (tested in RealSamplersAndHolds) works. The Integer and Boolean
versions now use the clocked when-equation of the Real version
(modelica/ModelicaStandardLibrary#4849), and the output toggles every 20 ms.
</p>
</html>"));
  end AssignClockToSquareWaveHold;

model UniformNoiseXorshift64star_Clock10ms = Modelica.Clocked.Examples.Elementary.RealSignals.UniformNoiseXorshift64star(periodicClock(factor=10))
  "Variant of UniformNoiseXorshift64star with a 10 ms clock"
  annotation (experiment(StopTime=1), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Clocked.Examples.Elementary.RealSignals.UniformNoiseXorshift64star\">UniformNoiseXorshift64star</a> (RealSignals.Sampler.Utilities.Internal.UniformNoiseXorshift64star)
with a clock period of 10 ms instead of 20 ms.
</p>
</html>"));
end Clocked;
