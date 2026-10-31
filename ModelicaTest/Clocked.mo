within ModelicaTest;
package Clocked "Test models for Modelica.Clocked"
  extends Modelica.Icons.ExamplesPackage;

  model RealSamplersAndHolds "Test of the samplers and holds of Modelica.Clocked.RealSignals"
    extends Modelica.Icons.Example;

    Modelica.Clocked.ClockSignals.Clocks.PeriodicRealClock periodicClock(period=0.02)
      annotation (Placement(transformation(extent={{-100,125},{-80,145}})));
    Modelica.Blocks.Sources.Sine src(f=2)
      annotation (Placement(transformation(extent={{-100,50},{-80,70}})));
    Modelica.Blocks.Sources.Ramp src2(duration=1)
      annotation (Placement(transformation(extent={{-100,-70},{-80,-50}})));
    Modelica.Blocks.Sources.IntegerConstant one(k=1)
      annotation (Placement(transformation(extent={{-100,-130},{-80,-110}})));
    Modelica.Clocked.RealSignals.Sampler.Sample sample1
      annotation (Placement(transformation(extent={{-70,100},{-50,120}})));
    Modelica.Clocked.RealSignals.Sampler.AssignClock assignClock1
      annotation (Placement(transformation(extent={{-40,100},{-20,120}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold1
      annotation (Placement(transformation(extent={{-10,100},{10,120}})));
    Modelica.Clocked.RealSignals.Sampler.SampleClocked sampleClocked1
      annotation (Placement(transformation(extent={{-70,75},{-50,95}})));
    Modelica.Clocked.RealSignals.Sampler.SubSample subSample1(factor=5, inferFactor=false)
      annotation (Placement(transformation(extent={{-40,75},{-20,95}})));
    Modelica.Clocked.RealSignals.Sampler.SuperSample superSample1(factor=5, inferFactor=false)
      annotation (Placement(transformation(extent={{-10,75},{10,95}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold2
      annotation (Placement(transformation(extent={{20,75},{40,95}})));
    Modelica.Clocked.RealSignals.Sampler.ShiftSample shiftSample1(shiftCounter=1, resolution=2)
      annotation (Placement(transformation(extent={{-40,50},{-20,70}})));
    Modelica.Clocked.RealSignals.Sampler.BackSample backSample1(backCounter=1, resolution=2)
      annotation (Placement(transformation(extent={{-10,50},{10,70}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold3
      annotation (Placement(transformation(extent={{20,50},{40,70}})));
    Modelica.Clocked.RealSignals.Sampler.Utilities.UpSample upSample1(factor=4, inferFactor=false)
      annotation (Placement(transformation(extent={{-40,25},{-20,45}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold4
      annotation (Placement(transformation(extent={{-10,25},{10,45}})));
    Modelica.Clocked.RealSignals.NonPeriodic.UnitDelay unitDelay1
      annotation (Placement(transformation(extent={{-40,0},{-20,20}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold5
      annotation (Placement(transformation(extent={{-10,0},{10,20}})));
    Modelica.Clocked.RealSignals.NonPeriodic.FractionalDelay fractionalDelay1(shift=3, resolution=2)
      annotation (Placement(transformation(extent={{-40,-25},{-20,-5}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold6
      annotation (Placement(transformation(extent={{-10,-25},{10,-5}})));
    Modelica.Clocked.RealSignals.Sampler.Utilities.AssignClockToSquareWaveHold squareWave1
      annotation (Placement(transformation(extent={{-40,-50},{-20,-30}})));
    Modelica.Clocked.RealSignals.Sampler.Utilities.AssignClockToTriggerHold triggerHold1
      annotation (Placement(transformation(extent={{-40,-75},{-20,-55}})));
    Modelica.Blocks.MathInteger.TriggeredAdd countTriggers
      annotation (Placement(transformation(extent={{-10,-75},{10,-55}})));
    Modelica.Clocked.RealSignals.Sampler.SampleVectorizedAndClocked sampleVectorized1(n=2)
      annotation (Placement(transformation(extent={{-70,-100},{-50,-80}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold7
      annotation (Placement(transformation(extent={{-40,-100},{-20,-80}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold8
      annotation (Placement(transformation(extent={{-40,-112},{-20,-92}})));
    Modelica.Clocked.RealSignals.Sampler.Sample sample3
      annotation (Placement(transformation(extent={{-70,-125},{-50,-105}})));
    Modelica.Clocked.RealSignals.Sampler.Sample sample4
      annotation (Placement(transformation(extent={{-70,-137},{-50,-117}})));
    Modelica.Clocked.RealSignals.Sampler.AssignClockVectorized assignClockVectorized1(n=2)
      annotation (Placement(transformation(extent={{-40,-125},{-20,-105}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold9
      annotation (Placement(transformation(extent={{-10,-125},{10,-105}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold10
      annotation (Placement(transformation(extent={{-10,-137},{10,-117}})));
    Modelica.Clocked.RealSignals.Sampler.SuperSampleInterpolated superSampleInterpolated1(factor=4, inferFactor=false)
      annotation (Placement(transformation(extent={{-40,-175},{-20,-155}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold11
      annotation (Placement(transformation(extent={{-10,-175},{10,-155}})));
    Modelica.Clocked.RealSignals.Sampler.HoldWithDAeffects holdWithDAeffects1(computationalDelay=true, shiftCounter=1, resolution=2, limited=true, quantized=true, yMax=0.8, bits=4)
      annotation (Placement(transformation(extent={{-40,-200},{-20,-180}})));
    Modelica.Clocked.RealSignals.Sampler.SampleWithADeffects sampleWithADeffects1(noisy=true, limited=true, quantized=true, yMax=0.8, bits=6)
      annotation (Placement(transformation(extent={{-70,-225},{-50,-205}})));
    Modelica.Clocked.RealSignals.Sampler.AssignClock assignClock2
      annotation (Placement(transformation(extent={{-40,-225},{-20,-205}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold12
      annotation (Placement(transformation(extent={{-10,-225},{10,-205}})));
  equation
    connect(src.y, sample1.u) annotation (Line(points={{-79,60},{-76,60},{-76,110},{-72,110}}, color={0,0,127}));
    connect(sample1.y, assignClock1.u) annotation (Line(points={{-49,110},{-42,110}}, color={0,0,127}));
    connect(periodicClock.y, assignClock1.clock) annotation (Line(points={{-79,135},{-30,135},{-30,98}}, color={175,175,175}));
    connect(assignClock1.y, hold1.u) annotation (Line(points={{-19,110},{-12,110}}, color={0,0,127}));
    connect(src.y, sampleClocked1.u) annotation (Line(points={{-79,60},{-76,60},{-76,85},{-72,85}}, color={0,0,127}));
    connect(periodicClock.y, sampleClocked1.clock) annotation (Line(points={{-79,135},{-60,135},{-60,73}}, color={175,175,175}));
    connect(sampleClocked1.y, subSample1.u) annotation (Line(points={{-49,85},{-42,85}}, color={0,0,127}));
    connect(subSample1.y, superSample1.u) annotation (Line(points={{-19,85},{-12,85}}, color={0,0,127}));
    connect(superSample1.y, hold2.u) annotation (Line(points={{11,85},{18,85}}, color={0,0,127}));
    connect(sampleClocked1.y, shiftSample1.u) annotation (Line(points={{-49,85},{-46,85},{-46,60},{-42,60}}, color={0,0,127}));
    connect(shiftSample1.y, backSample1.u) annotation (Line(points={{-19,60},{-12,60}}, color={0,0,127}));
    connect(backSample1.y, hold3.u) annotation (Line(points={{11,60},{18,60}}, color={0,0,127}));
    connect(sampleClocked1.y, upSample1.u) annotation (Line(points={{-49,85},{-46,85},{-46,35},{-42,35}}, color={0,0,127}));
    connect(upSample1.y, hold4.u) annotation (Line(points={{-19,35},{-12,35}}, color={0,0,127}));
    connect(sampleClocked1.y, unitDelay1.u) annotation (Line(points={{-49,85},{-46,85},{-46,10},{-42,10}}, color={0,0,127}));
    connect(unitDelay1.y, hold5.u) annotation (Line(points={{-19,10},{-12,10}}, color={0,0,127}));
    connect(sampleClocked1.y, fractionalDelay1.u) annotation (Line(points={{-49,85},{-46,85},{-46,-15},{-42,-15}}, color={0,0,127}));
    connect(fractionalDelay1.y, hold6.u) annotation (Line(points={{-19,-15},{-12,-15}}, color={0,0,127}));
    connect(sampleClocked1.y, squareWave1.u) annotation (Line(points={{-49,85},{-46,85},{-46,-40},{-42,-40}}, color={0,0,127}));
    connect(sampleClocked1.y, triggerHold1.u) annotation (Line(points={{-49,85},{-46,85},{-46,-65},{-42,-65}}, color={0,0,127}));
    connect(triggerHold1.y, countTriggers.trigger) annotation (Line(points={{-19,-65},{-6,-65},{-6,-77}}, color={255,0,255}));
    connect(one.y, countTriggers.u) annotation (Line(points={{-79,-120},{-46,-120},{-46,-65},{-12,-65}}, color={255,127,0}));
    connect(src.y, sampleVectorized1.u[1]) annotation (Line(points={{-79,60},{-76,60},{-76,-90},{-72,-90}}, color={0,0,127}));
    connect(src2.y, sampleVectorized1.u[2]) annotation (Line(points={{-79,-60},{-76,-60},{-76,-90},{-72,-90}}, color={0,0,127}));
    connect(periodicClock.y, sampleVectorized1.clock) annotation (Line(points={{-79,135},{-60,135},{-60,-102}}, color={175,175,175}));
    connect(sampleVectorized1.y[1], hold7.u) annotation (Line(points={{-49,-90},{-42,-90}}, color={0,0,127}));
    connect(sampleVectorized1.y[2], hold8.u) annotation (Line(points={{-49,-90},{-46,-90},{-46,-102},{-42,-102}}, color={0,0,127}));
    connect(src.y, sample3.u) annotation (Line(points={{-79,60},{-76,60},{-76,-115},{-72,-115}}, color={0,0,127}));
    connect(src2.y, sample4.u) annotation (Line(points={{-79,-60},{-76,-60},{-76,-127},{-72,-127}}, color={0,0,127}));
    connect(sample3.y, assignClockVectorized1.u[1]) annotation (Line(points={{-49,-115},{-42,-115}}, color={0,0,127}));
    connect(sample4.y, assignClockVectorized1.u[2]) annotation (Line(points={{-49,-127},{-46,-127},{-46,-115},{-42,-115}}, color={0,0,127}));
    connect(periodicClock.y, assignClockVectorized1.clock) annotation (Line(points={{-79,135},{-30,135},{-30,-127}}, color={175,175,175}));
    connect(assignClockVectorized1.y[1], hold9.u) annotation (Line(points={{-19,-115},{-12,-115}}, color={0,0,127}));
    connect(assignClockVectorized1.y[2], hold10.u) annotation (Line(points={{-19,-115},{-16,-115},{-16,-127},{-12,-127}}, color={0,0,127}));
    connect(sampleClocked1.y, superSampleInterpolated1.u) annotation (Line(points={{-49,85},{-46,85},{-46,-165},{-42,-165}}, color={0,0,127}));
    connect(superSampleInterpolated1.y, hold11.u) annotation (Line(points={{-19,-165},{-12,-165}}, color={0,0,127}));
    connect(sampleClocked1.y, holdWithDAeffects1.u) annotation (Line(points={{-49,85},{-46,85},{-46,-190},{-42,-190}}, color={0,0,127}));
    connect(src.y, sampleWithADeffects1.u) annotation (Line(points={{-79,60},{-76,60},{-76,-215},{-72,-215}}, color={0,0,127}));
    connect(sampleWithADeffects1.y, assignClock2.u) annotation (Line(points={{-49,-215},{-42,-215}}, color={0,0,127}));
    connect(periodicClock.y, assignClock2.clock) annotation (Line(points={{-79,135},{-30,135},{-30,-227}}, color={175,175,175}));
    connect(assignClock2.y, hold12.u) annotation (Line(points={{-19,-215},{-12,-215}}, color={0,0,127}));
    annotation (Diagram(coordinateSystem(extent={{-100,-235},{100,155}})),
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
      annotation (Placement(transformation(extent={{-100,125},{-80,145}})));
    Modelica.Blocks.Sources.BooleanPulse src(width=50, period=0.1)
      annotation (Placement(transformation(extent={{-100,50},{-80,70}})));
    Modelica.Blocks.Sources.BooleanPulse src2(width=30, period=0.17)
      annotation (Placement(transformation(extent={{-100,-70},{-80,-50}})));
    Modelica.Blocks.Sources.IntegerConstant one(k=1)
      annotation (Placement(transformation(extent={{-100,-130},{-80,-110}})));
    Modelica.Clocked.BooleanSignals.Sampler.Sample sample1
      annotation (Placement(transformation(extent={{-70,100},{-50,120}})));
    Modelica.Clocked.BooleanSignals.Sampler.AssignClock assignClock1
      annotation (Placement(transformation(extent={{-40,100},{-20,120}})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold1
      annotation (Placement(transformation(extent={{-10,100},{10,120}})));
    Modelica.Clocked.BooleanSignals.Sampler.SampleClocked sampleClocked1
      annotation (Placement(transformation(extent={{-70,75},{-50,95}})));
    Modelica.Clocked.BooleanSignals.Sampler.SubSample subSample1(factor=5, inferFactor=false)
      annotation (Placement(transformation(extent={{-40,75},{-20,95}})));
    Modelica.Clocked.BooleanSignals.Sampler.SuperSample superSample1(factor=5, inferFactor=false)
      annotation (Placement(transformation(extent={{-10,75},{10,95}})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold2
      annotation (Placement(transformation(extent={{20,75},{40,95}})));
    Modelica.Clocked.BooleanSignals.Sampler.ShiftSample shiftSample1(shiftCounter=1, resolution=2)
      annotation (Placement(transformation(extent={{-40,50},{-20,70}})));
    Modelica.Clocked.BooleanSignals.Sampler.BackSample backSample1(backCounter=1, resolution=2)
      annotation (Placement(transformation(extent={{-10,50},{10,70}})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold3
      annotation (Placement(transformation(extent={{20,50},{40,70}})));
    Modelica.Clocked.BooleanSignals.Sampler.Utilities.UpSample upSample1(factor=4, inferFactor=false)
      annotation (Placement(transformation(extent={{-40,25},{-20,45}})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold4
      annotation (Placement(transformation(extent={{-10,25},{10,45}})));
    Modelica.Clocked.BooleanSignals.NonPeriodic.UnitDelay unitDelay1
      annotation (Placement(transformation(extent={{-40,0},{-20,20}})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold5
      annotation (Placement(transformation(extent={{-10,0},{10,20}})));
    Modelica.Clocked.BooleanSignals.NonPeriodic.FractionalDelay fractionalDelay1(shift=3, resolution=2)
      annotation (Placement(transformation(extent={{-40,-25},{-20,-5}})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold6
      annotation (Placement(transformation(extent={{-10,-25},{10,-5}})));
    Modelica.Clocked.BooleanSignals.Sampler.Utilities.AssignClockToTriggerHold triggerHold1
      annotation (Placement(transformation(extent={{-40,-50},{-20,-30}})));
    Modelica.Blocks.MathInteger.TriggeredAdd countTriggers
      annotation (Placement(transformation(extent={{-10,-50},{10,-30}})));
    Modelica.Clocked.BooleanSignals.Sampler.SampleVectorizedAndClocked sampleVectorized1(n=2)
      annotation (Placement(transformation(extent={{-70,-75},{-50,-55}})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold7
      annotation (Placement(transformation(extent={{-40,-75},{-20,-55}})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold8
      annotation (Placement(transformation(extent={{-40,-87},{-20,-67}})));
    Modelica.Clocked.BooleanSignals.Sampler.Sample sample3
      annotation (Placement(transformation(extent={{-70,-100},{-50,-80}})));
    Modelica.Clocked.BooleanSignals.Sampler.Sample sample4
      annotation (Placement(transformation(extent={{-70,-112},{-50,-92}})));
    Modelica.Clocked.BooleanSignals.Sampler.AssignClockVectorized assignClockVectorized1(n=2)
      annotation (Placement(transformation(extent={{-40,-100},{-20,-80}})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold9
      annotation (Placement(transformation(extent={{-10,-100},{10,-80}})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold10
      annotation (Placement(transformation(extent={{-10,-112},{10,-92}})));
    Modelica.Clocked.BooleanSignals.NonPeriodic.BooleanChange booleanChange1
      annotation (Placement(transformation(extent={{-40,-150},{-20,-130}})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold11
      annotation (Placement(transformation(extent={{-10,-150},{10,-130}})));
    Modelica.Clocked.BooleanSignals.NonPeriodic.ClockToBoolean clockToBoolean1
      annotation (Placement(transformation(extent={{-40,-175},{-20,-155}})));
    Modelica.Blocks.MathInteger.TriggeredAdd countTicks
      annotation (Placement(transformation(extent={{-10,-175},{10,-155}})));
    Modelica.Clocked.BooleanSignals.TickBasedSources.Pulse tickPulse1(widthTicks=2, periodTicks=5)
      annotation (Placement(transformation(extent={{-70,-200},{-50,-180}})));
    Modelica.Clocked.BooleanSignals.Sampler.AssignClock assign_tickPulse1
      annotation (Placement(transformation(extent={{-40,-200},{-20,-180}})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold12
      annotation (Placement(transformation(extent={{-10,-200},{10,-180}})));
    Modelica.Clocked.BooleanSignals.TickBasedSources.Step tickStep1(startTick=10, startValue=false)
      annotation (Placement(transformation(extent={{-70,-225},{-50,-205}})));
    Modelica.Clocked.BooleanSignals.Sampler.AssignClock assign_tickStep1
      annotation (Placement(transformation(extent={{-40,-225},{-20,-205}})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold13
      annotation (Placement(transformation(extent={{-10,-225},{10,-205}})));
    Modelica.Clocked.BooleanSignals.TimeBasedSources.Pulse timePulse1(width=30, period=0.2)
      annotation (Placement(transformation(extent={{-70,-250},{-50,-230}})));
    Modelica.Clocked.BooleanSignals.Sampler.AssignClock assign_timePulse1
      annotation (Placement(transformation(extent={{-40,-250},{-20,-230}})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold14
      annotation (Placement(transformation(extent={{-10,-250},{10,-230}})));
    Modelica.Clocked.BooleanSignals.TimeBasedSources.Step timeStep1(startTime=0.5)
      annotation (Placement(transformation(extent={{-70,-275},{-50,-255}})));
    Modelica.Clocked.BooleanSignals.Sampler.AssignClock assign_timeStep1
      annotation (Placement(transformation(extent={{-40,-275},{-20,-255}})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold15
      annotation (Placement(transformation(extent={{-10,-275},{10,-255}})));
  equation
    connect(src.y, sample1.u) annotation (Line(points={{-79,60},{-76,60},{-76,110},{-72,110}}, color={255,0,255}));
    connect(sample1.y, assignClock1.u) annotation (Line(points={{-49,110},{-42,110}}, color={255,0,255}));
    connect(periodicClock.y, assignClock1.clock) annotation (Line(points={{-79,135},{-30,135},{-30,98}}, color={175,175,175}));
    connect(assignClock1.y, hold1.u) annotation (Line(points={{-19,110},{-12,110}}, color={255,0,255}));
    connect(src.y, sampleClocked1.u) annotation (Line(points={{-79,60},{-76,60},{-76,85},{-72,85}}, color={255,0,255}));
    connect(periodicClock.y, sampleClocked1.clock) annotation (Line(points={{-79,135},{-60,135},{-60,73}}, color={175,175,175}));
    connect(sampleClocked1.y, subSample1.u) annotation (Line(points={{-49,85},{-42,85}}, color={255,0,255}));
    connect(subSample1.y, superSample1.u) annotation (Line(points={{-19,85},{-12,85}}, color={255,0,255}));
    connect(superSample1.y, hold2.u) annotation (Line(points={{11,85},{18,85}}, color={255,0,255}));
    connect(sampleClocked1.y, shiftSample1.u) annotation (Line(points={{-49,85},{-46,85},{-46,60},{-42,60}}, color={255,0,255}));
    connect(shiftSample1.y, backSample1.u) annotation (Line(points={{-19,60},{-12,60}}, color={255,0,255}));
    connect(backSample1.y, hold3.u) annotation (Line(points={{11,60},{18,60}}, color={255,0,255}));
    connect(sampleClocked1.y, upSample1.u) annotation (Line(points={{-49,85},{-46,85},{-46,35},{-42,35}}, color={255,0,255}));
    connect(upSample1.y, hold4.u) annotation (Line(points={{-19,35},{-12,35}}, color={255,0,255}));
    connect(sampleClocked1.y, unitDelay1.u) annotation (Line(points={{-49,85},{-46,85},{-46,10},{-42,10}}, color={255,0,255}));
    connect(unitDelay1.y, hold5.u) annotation (Line(points={{-19,10},{-12,10}}, color={255,0,255}));
    connect(sampleClocked1.y, fractionalDelay1.u) annotation (Line(points={{-49,85},{-46,85},{-46,-15},{-42,-15}}, color={255,0,255}));
    connect(fractionalDelay1.y, hold6.u) annotation (Line(points={{-19,-15},{-12,-15}}, color={255,0,255}));
    connect(sampleClocked1.y, triggerHold1.u) annotation (Line(points={{-49,85},{-46,85},{-46,-40},{-42,-40}}, color={255,0,255}));
    connect(triggerHold1.y, countTriggers.trigger) annotation (Line(points={{-19,-40},{-6,-40},{-6,-52}}, color={255,0,255}));
    connect(one.y, countTriggers.u) annotation (Line(points={{-79,-120},{-46,-120},{-46,-40},{-12,-40}}, color={255,127,0}));
    connect(src.y, sampleVectorized1.u[1]) annotation (Line(points={{-79,60},{-76,60},{-76,-65},{-72,-65}}, color={255,0,255}));
    connect(src2.y, sampleVectorized1.u[2]) annotation (Line(points={{-79,-60},{-76,-60},{-76,-65},{-72,-65}}, color={255,0,255}));
    connect(periodicClock.y, sampleVectorized1.clock) annotation (Line(points={{-79,135},{-60,135},{-60,-77}}, color={175,175,175}));
    connect(sampleVectorized1.y[1], hold7.u) annotation (Line(points={{-49,-65},{-42,-65}}, color={255,0,255}));
    connect(sampleVectorized1.y[2], hold8.u) annotation (Line(points={{-49,-65},{-46,-65},{-46,-77},{-42,-77}}, color={255,0,255}));
    connect(src.y, sample3.u) annotation (Line(points={{-79,60},{-76,60},{-76,-90},{-72,-90}}, color={255,0,255}));
    connect(src2.y, sample4.u) annotation (Line(points={{-79,-60},{-76,-60},{-76,-102},{-72,-102}}, color={255,0,255}));
    connect(sample3.y, assignClockVectorized1.u[1]) annotation (Line(points={{-49,-90},{-42,-90}}, color={255,0,255}));
    connect(sample4.y, assignClockVectorized1.u[2]) annotation (Line(points={{-49,-102},{-46,-102},{-46,-90},{-42,-90}}, color={255,0,255}));
    connect(periodicClock.y, assignClockVectorized1.clock) annotation (Line(points={{-79,135},{-30,135},{-30,-102}}, color={175,175,175}));
    connect(assignClockVectorized1.y[1], hold9.u) annotation (Line(points={{-19,-90},{-12,-90}}, color={255,0,255}));
    connect(assignClockVectorized1.y[2], hold10.u) annotation (Line(points={{-19,-90},{-16,-90},{-16,-102},{-12,-102}}, color={255,0,255}));
    connect(sampleClocked1.y, booleanChange1.u) annotation (Line(points={{-49,85},{-46,85},{-46,-140},{-42,-140}}, color={255,0,255}));
    connect(booleanChange1.y, hold11.u) annotation (Line(points={{-19,-140},{-12,-140}}, color={255,0,255}));
    connect(periodicClock.y, clockToBoolean1.u) annotation (Line(points={{-79,135},{-60,135},{-60,-165},{-42,-165}}, color={175,175,175}));
    connect(clockToBoolean1.y, countTicks.trigger) annotation (Line(points={{-19,-165},{-6,-165},{-6,-177}}, color={255,0,255}));
    connect(one.y, countTicks.u) annotation (Line(points={{-79,-120},{-46,-120},{-46,-165},{-12,-165}}, color={255,127,0}));
    connect(tickPulse1.y, assign_tickPulse1.u) annotation (Line(points={{-49,-190},{-42,-190}}, color={255,0,255}));
    connect(periodicClock.y, assign_tickPulse1.clock) annotation (Line(points={{-79,135},{-30,135},{-30,-202}}, color={175,175,175}));
    connect(assign_tickPulse1.y, hold12.u) annotation (Line(points={{-19,-190},{-12,-190}}, color={255,0,255}));
    connect(tickStep1.y, assign_tickStep1.u) annotation (Line(points={{-49,-215},{-42,-215}}, color={255,0,255}));
    connect(periodicClock.y, assign_tickStep1.clock) annotation (Line(points={{-79,135},{-30,135},{-30,-227}}, color={175,175,175}));
    connect(assign_tickStep1.y, hold13.u) annotation (Line(points={{-19,-215},{-12,-215}}, color={255,0,255}));
    connect(timePulse1.y, assign_timePulse1.u) annotation (Line(points={{-49,-240},{-42,-240}}, color={255,0,255}));
    connect(periodicClock.y, assign_timePulse1.clock) annotation (Line(points={{-79,135},{-30,135},{-30,-252}}, color={175,175,175}));
    connect(assign_timePulse1.y, hold14.u) annotation (Line(points={{-19,-240},{-12,-240}}, color={255,0,255}));
    connect(timeStep1.y, assign_timeStep1.u) annotation (Line(points={{-49,-265},{-42,-265}}, color={255,0,255}));
    connect(periodicClock.y, assign_timeStep1.clock) annotation (Line(points={{-79,135},{-30,135},{-30,-277}}, color={175,175,175}));
    connect(assign_timeStep1.y, hold15.u) annotation (Line(points={{-19,-265},{-12,-265}}, color={255,0,255}));
    annotation (Diagram(coordinateSystem(extent={{-100,-285},{100,155}})),
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
      annotation (Placement(transformation(extent={{-100,125},{-80,145}})));
    Modelica.Blocks.Sources.IntegerTable src(table=[0,1; 0.3,4; 0.6,-2; 0.9,7])
      annotation (Placement(transformation(extent={{-100,50},{-80,70}})));
    Modelica.Blocks.Sources.IntegerStep src2(height=5, startTime=0.45)
      annotation (Placement(transformation(extent={{-100,-70},{-80,-50}})));
    Modelica.Blocks.Sources.IntegerConstant one(k=1)
      annotation (Placement(transformation(extent={{-100,-130},{-80,-110}})));
    Modelica.Clocked.IntegerSignals.Sampler.Sample sample1
      annotation (Placement(transformation(extent={{-70,100},{-50,120}})));
    Modelica.Clocked.IntegerSignals.Sampler.AssignClock assignClock1
      annotation (Placement(transformation(extent={{-40,100},{-20,120}})));
    Modelica.Clocked.IntegerSignals.Sampler.Hold hold1
      annotation (Placement(transformation(extent={{-10,100},{10,120}})));
    Modelica.Clocked.IntegerSignals.Sampler.SampleClocked sampleClocked1
      annotation (Placement(transformation(extent={{-70,75},{-50,95}})));
    Modelica.Clocked.IntegerSignals.Sampler.SubSample subSample1(factor=5, inferFactor=false)
      annotation (Placement(transformation(extent={{-40,75},{-20,95}})));
    Modelica.Clocked.IntegerSignals.Sampler.SuperSample superSample1(factor=5, inferFactor=false)
      annotation (Placement(transformation(extent={{-10,75},{10,95}})));
    Modelica.Clocked.IntegerSignals.Sampler.Hold hold2
      annotation (Placement(transformation(extent={{20,75},{40,95}})));
    Modelica.Clocked.IntegerSignals.Sampler.ShiftSample shiftSample1(shiftCounter=1, resolution=2)
      annotation (Placement(transformation(extent={{-40,50},{-20,70}})));
    Modelica.Clocked.IntegerSignals.Sampler.BackSample backSample1(backCounter=1, resolution=2)
      annotation (Placement(transformation(extent={{-10,50},{10,70}})));
    Modelica.Clocked.IntegerSignals.Sampler.Hold hold3
      annotation (Placement(transformation(extent={{20,50},{40,70}})));
    Modelica.Clocked.IntegerSignals.Sampler.Utilities.UpSample upSample1(factor=4, inferFactor=false)
      annotation (Placement(transformation(extent={{-40,25},{-20,45}})));
    Modelica.Clocked.IntegerSignals.Sampler.Hold hold4
      annotation (Placement(transformation(extent={{-10,25},{10,45}})));
    Modelica.Clocked.IntegerSignals.NonPeriodic.UnitDelay unitDelay1
      annotation (Placement(transformation(extent={{-40,0},{-20,20}})));
    Modelica.Clocked.IntegerSignals.Sampler.Hold hold5
      annotation (Placement(transformation(extent={{-10,0},{10,20}})));
    Modelica.Clocked.IntegerSignals.NonPeriodic.FractionalDelay fractionalDelay1(shift=3, resolution=2)
      annotation (Placement(transformation(extent={{-40,-25},{-20,-5}})));
    Modelica.Clocked.IntegerSignals.Sampler.Hold hold6
      annotation (Placement(transformation(extent={{-10,-25},{10,-5}})));
    Modelica.Clocked.IntegerSignals.Sampler.Utilities.AssignClockToTriggerHold triggerHold1
      annotation (Placement(transformation(extent={{-40,-50},{-20,-30}})));
    Modelica.Blocks.MathInteger.TriggeredAdd countTriggers
      annotation (Placement(transformation(extent={{-10,-50},{10,-30}})));
    Modelica.Clocked.IntegerSignals.Sampler.SampleVectorizedAndClocked sampleVectorized1(n=2)
      annotation (Placement(transformation(extent={{-70,-75},{-50,-55}})));
    Modelica.Clocked.IntegerSignals.Sampler.Hold hold7
      annotation (Placement(transformation(extent={{-40,-75},{-20,-55}})));
    Modelica.Clocked.IntegerSignals.Sampler.Hold hold8
      annotation (Placement(transformation(extent={{-40,-87},{-20,-67}})));
    Modelica.Clocked.IntegerSignals.Sampler.Sample sample3
      annotation (Placement(transformation(extent={{-70,-100},{-50,-80}})));
    Modelica.Clocked.IntegerSignals.Sampler.Sample sample4
      annotation (Placement(transformation(extent={{-70,-112},{-50,-92}})));
    Modelica.Clocked.IntegerSignals.Sampler.AssignClockVectorized assignClockVectorized1(n=2)
      annotation (Placement(transformation(extent={{-40,-100},{-20,-80}})));
    Modelica.Clocked.IntegerSignals.Sampler.Hold hold9
      annotation (Placement(transformation(extent={{-10,-100},{10,-80}})));
    Modelica.Clocked.IntegerSignals.Sampler.Hold hold10
      annotation (Placement(transformation(extent={{-10,-112},{10,-92}})));
    Modelica.Clocked.IntegerSignals.NonPeriodic.IntegerChange integerChange1
      annotation (Placement(transformation(extent={{-40,-150},{-20,-130}})));
    Modelica.Clocked.BooleanSignals.Sampler.Hold hold11
      annotation (Placement(transformation(extent={{-10,-150},{10,-130}})));
    Modelica.Clocked.IntegerSignals.TickBasedSources.Step tickStep1(height=3, offset=-1, startTick=10)
      annotation (Placement(transformation(extent={{-70,-175},{-50,-155}})));
    Modelica.Clocked.IntegerSignals.Sampler.AssignClock assign_tickStep1
      annotation (Placement(transformation(extent={{-40,-175},{-20,-155}})));
    Modelica.Clocked.IntegerSignals.Sampler.Hold hold12
      annotation (Placement(transformation(extent={{-10,-175},{10,-155}})));
    Modelica.Clocked.IntegerSignals.TimeBasedSources.Step timeStep1(height=2, offset=1, startTime=0.5)
      annotation (Placement(transformation(extent={{-70,-200},{-50,-180}})));
    Modelica.Clocked.IntegerSignals.Sampler.AssignClock assign_timeStep1
      annotation (Placement(transformation(extent={{-40,-200},{-20,-180}})));
    Modelica.Clocked.IntegerSignals.Sampler.Hold hold13
      annotation (Placement(transformation(extent={{-10,-200},{10,-180}})));
  equation
    connect(src.y, sample1.u) annotation (Line(points={{-79,60},{-76,60},{-76,110},{-72,110}}, color={0,0,127}));
    connect(sample1.y, assignClock1.u) annotation (Line(points={{-49,110},{-42,110}}, color={255,127,0}));
    connect(periodicClock.y, assignClock1.clock) annotation (Line(points={{-79,135},{-30,135},{-30,98}}, color={175,175,175}));
    connect(assignClock1.y, hold1.u) annotation (Line(points={{-19,110},{-12,110}}, color={255,127,0}));
    connect(src.y, sampleClocked1.u) annotation (Line(points={{-79,60},{-76,60},{-76,85},{-72,85}}, color={0,0,127}));
    connect(periodicClock.y, sampleClocked1.clock) annotation (Line(points={{-79,135},{-60,135},{-60,73}}, color={175,175,175}));
    connect(sampleClocked1.y, subSample1.u) annotation (Line(points={{-49,85},{-42,85}}, color={255,127,0}));
    connect(subSample1.y, superSample1.u) annotation (Line(points={{-19,85},{-12,85}}, color={255,127,0}));
    connect(superSample1.y, hold2.u) annotation (Line(points={{11,85},{18,85}}, color={255,127,0}));
    connect(sampleClocked1.y, shiftSample1.u) annotation (Line(points={{-49,85},{-46,85},{-46,60},{-42,60}}, color={255,127,0}));
    connect(shiftSample1.y, backSample1.u) annotation (Line(points={{-19,60},{-12,60}}, color={255,127,0}));
    connect(backSample1.y, hold3.u) annotation (Line(points={{11,60},{18,60}}, color={255,127,0}));
    connect(sampleClocked1.y, upSample1.u) annotation (Line(points={{-49,85},{-46,85},{-46,35},{-42,35}}, color={255,127,0}));
    connect(upSample1.y, hold4.u) annotation (Line(points={{-19,35},{-12,35}}, color={255,127,0}));
    connect(sampleClocked1.y, unitDelay1.u) annotation (Line(points={{-49,85},{-46,85},{-46,10},{-42,10}}, color={255,127,0}));
    connect(unitDelay1.y, hold5.u) annotation (Line(points={{-19,10},{-12,10}}, color={255,127,0}));
    connect(sampleClocked1.y, fractionalDelay1.u) annotation (Line(points={{-49,85},{-46,85},{-46,-15},{-42,-15}}, color={255,127,0}));
    connect(fractionalDelay1.y, hold6.u) annotation (Line(points={{-19,-15},{-12,-15}}, color={255,127,0}));
    connect(sampleClocked1.y, triggerHold1.u) annotation (Line(points={{-49,85},{-46,85},{-46,-40},{-42,-40}}, color={255,127,0}));
    connect(triggerHold1.y, countTriggers.trigger) annotation (Line(points={{-19,-40},{-6,-40},{-6,-52}}, color={255,0,255}));
    connect(one.y, countTriggers.u) annotation (Line(points={{-79,-120},{-46,-120},{-46,-40},{-12,-40}}, color={255,127,0}));
    connect(src.y, sampleVectorized1.u[1]) annotation (Line(points={{-79,60},{-76,60},{-76,-65},{-72,-65}}, color={0,0,127}));
    connect(src2.y, sampleVectorized1.u[2]) annotation (Line(points={{-79,-60},{-76,-60},{-76,-65},{-72,-65}}, color={255,127,0}));
    connect(periodicClock.y, sampleVectorized1.clock) annotation (Line(points={{-79,135},{-60,135},{-60,-77}}, color={175,175,175}));
    connect(sampleVectorized1.y[1], hold7.u) annotation (Line(points={{-49,-65},{-42,-65}}, color={255,127,0}));
    connect(sampleVectorized1.y[2], hold8.u) annotation (Line(points={{-49,-65},{-46,-65},{-46,-77},{-42,-77}}, color={255,127,0}));
    connect(src.y, sample3.u) annotation (Line(points={{-79,60},{-76,60},{-76,-90},{-72,-90}}, color={0,0,127}));
    connect(src2.y, sample4.u) annotation (Line(points={{-79,-60},{-76,-60},{-76,-102},{-72,-102}}, color={255,127,0}));
    connect(sample3.y, assignClockVectorized1.u[1]) annotation (Line(points={{-49,-90},{-42,-90}}, color={255,127,0}));
    connect(sample4.y, assignClockVectorized1.u[2]) annotation (Line(points={{-49,-102},{-46,-102},{-46,-90},{-42,-90}}, color={255,127,0}));
    connect(periodicClock.y, assignClockVectorized1.clock) annotation (Line(points={{-79,135},{-30,135},{-30,-102}}, color={175,175,175}));
    connect(assignClockVectorized1.y[1], hold9.u) annotation (Line(points={{-19,-90},{-12,-90}}, color={255,127,0}));
    connect(assignClockVectorized1.y[2], hold10.u) annotation (Line(points={{-19,-90},{-16,-90},{-16,-102},{-12,-102}}, color={255,127,0}));
    connect(sampleClocked1.y, integerChange1.u) annotation (Line(points={{-49,85},{-46,85},{-46,-140},{-42,-140}}, color={255,127,0}));
    connect(integerChange1.y, hold11.u) annotation (Line(points={{-19,-140},{-12,-140}}, color={255,0,255}));
    connect(tickStep1.y, assign_tickStep1.u) annotation (Line(points={{-49,-165},{-42,-165}}, color={255,127,0}));
    connect(periodicClock.y, assign_tickStep1.clock) annotation (Line(points={{-79,135},{-30,135},{-30,-177}}, color={175,175,175}));
    connect(assign_tickStep1.y, hold12.u) annotation (Line(points={{-19,-165},{-12,-165}}, color={255,127,0}));
    connect(timeStep1.y, assign_timeStep1.u) annotation (Line(points={{-49,-190},{-42,-190}}, color={255,127,0}));
    connect(periodicClock.y, assign_timeStep1.clock) annotation (Line(points={{-79,135},{-30,135},{-30,-202}}, color={175,175,175}));
    connect(assign_timeStep1.y, hold13.u) annotation (Line(points={{-19,-190},{-12,-190}}, color={255,127,0}));
    annotation (Diagram(coordinateSystem(extent={{-100,-210},{100,155}})),
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
      annotation (Placement(transformation(extent={{-100,125},{-80,145}})));
    Modelica.Blocks.Sources.Sine sine1(f=2)
      annotation (Placement(transformation(extent={{-100,50},{-80,70}})));
    Modelica.Clocked.RealSignals.Sampler.SampleClocked sampleClocked1
      annotation (Placement(transformation(extent={{-70,50},{-50,70}})));
    Modelica.Clocked.RealSignals.NonPeriodic.PI nonPeriodicPI1(k=2, T=0.2)
      annotation (Placement(transformation(extent={{-40,100},{-20,120}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold1
      annotation (Placement(transformation(extent={{-10,100},{10,120}})));
    Modelica.Clocked.RealSignals.Periodic.PI periodicPI1(kd=2, Td=0.2)
      annotation (Placement(transformation(extent={{-40,75},{-20,95}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold2
      annotation (Placement(transformation(extent={{-10,75},{10,95}})));
    Modelica.Clocked.RealSignals.Periodic.FIRbyCoefficients fir1(a={0.25, 0.5, 0.25})
      annotation (Placement(transformation(extent={{-40,50},{-20,70}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold3
      annotation (Placement(transformation(extent={{-10,50},{10,70}})));
    Modelica.Clocked.RealSignals.Periodic.MovingAverage movingAverage1(n=4)
      annotation (Placement(transformation(extent={{-40,25},{-20,45}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold4
      annotation (Placement(transformation(extent={{-10,25},{10,45}})));
    Modelica.Clocked.RealSignals.Periodic.TransferFunction transferFunction1(b={0.1}, a={1, -0.9})
      annotation (Placement(transformation(extent={{-40,0},{-20,20}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold5
      annotation (Placement(transformation(extent={{-10,0},{10,20}})));
    Modelica.Clocked.RealSignals.Periodic.StateSpace stateSpace1(A=[0.9, 0.1; -0.1, 0.9], B=[0; 0.1], C=[1, 0; 0, 1])
      annotation (Placement(transformation(extent={{-40,-25},{-20,-5}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold6
      annotation (Placement(transformation(extent={{-10,-25},{10,-5}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold7
      annotation (Placement(transformation(extent={{-10,-37},{10,-17}})));
    Modelica.Clocked.RealSignals.TickBasedSources.Ramp tickRamp1(height=2, durationTicks=20, offset=-1, startTick=5)
      annotation (Placement(transformation(extent={{-70,-75},{-50,-55}})));
    Modelica.Clocked.RealSignals.Sampler.AssignClock assign_tickRamp1
      annotation (Placement(transformation(extent={{-40,-75},{-20,-55}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold8
      annotation (Placement(transformation(extent={{-10,-75},{10,-55}})));
    Modelica.Clocked.RealSignals.TickBasedSources.Sine tickSine1(amplitude=1.5, periodTicks=10, periodOffset=2)
      annotation (Placement(transformation(extent={{-70,-100},{-50,-80}})));
    Modelica.Clocked.RealSignals.Sampler.AssignClock assign_tickSine1
      annotation (Placement(transformation(extent={{-40,-100},{-20,-80}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold9
      annotation (Placement(transformation(extent={{-10,-100},{10,-80}})));
    Modelica.Clocked.RealSignals.TickBasedSources.Step tickStep1(height=3, offset=1, startTick=10)
      annotation (Placement(transformation(extent={{-70,-125},{-50,-105}})));
    Modelica.Clocked.RealSignals.Sampler.AssignClock assign_tickStep1
      annotation (Placement(transformation(extent={{-40,-125},{-20,-105}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold10
      annotation (Placement(transformation(extent={{-10,-125},{10,-105}})));
    Modelica.Clocked.RealSignals.TimeBasedSources.Ramp timeRamp1(height=2, duration=0.5, offset=-1, startTime=0.2)
      annotation (Placement(transformation(extent={{-70,-150},{-50,-130}})));
    Modelica.Clocked.RealSignals.Sampler.AssignClock assign_timeRamp1
      annotation (Placement(transformation(extent={{-40,-150},{-20,-130}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold11
      annotation (Placement(transformation(extent={{-10,-150},{10,-130}})));
    Modelica.Clocked.RealSignals.TimeBasedSources.Sine timeSine1(amplitude=1.5, f=3, phase=0.5)
      annotation (Placement(transformation(extent={{-70,-175},{-50,-155}})));
    Modelica.Clocked.RealSignals.Sampler.AssignClock assign_timeSine1
      annotation (Placement(transformation(extent={{-40,-175},{-20,-155}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold12
      annotation (Placement(transformation(extent={{-10,-175},{10,-155}})));
    Modelica.Clocked.RealSignals.TimeBasedSources.Step timeStep1(height=3, offset=1, startTime=0.5)
      annotation (Placement(transformation(extent={{-70,-200},{-50,-180}})));
    Modelica.Clocked.RealSignals.Sampler.AssignClock assign_timeStep1
      annotation (Placement(transformation(extent={{-40,-200},{-20,-180}})));
    Modelica.Clocked.RealSignals.Sampler.Hold hold13
      annotation (Placement(transformation(extent={{-10,-200},{10,-180}})));
  equation
    connect(sine1.y, sampleClocked1.u) annotation (Line(points={{-79,60},{-72,60}}, color={0,0,127}));
    connect(periodicClock.y, sampleClocked1.clock) annotation (Line(points={{-79,135},{-60,135},{-60,48}}, color={175,175,175}));
    connect(sampleClocked1.y, nonPeriodicPI1.u) annotation (Line(points={{-49,60},{-46,60},{-46,110},{-42,110}}, color={0,0,127}));
    connect(nonPeriodicPI1.y, hold1.u) annotation (Line(points={{-19,110},{-12,110}}, color={0,0,127}));
    connect(sampleClocked1.y, periodicPI1.u) annotation (Line(points={{-49,60},{-46,60},{-46,85},{-42,85}}, color={0,0,127}));
    connect(periodicPI1.y, hold2.u) annotation (Line(points={{-19,85},{-12,85}}, color={0,0,127}));
    connect(sampleClocked1.y, fir1.u) annotation (Line(points={{-49,60},{-42,60}}, color={0,0,127}));
    connect(fir1.y, hold3.u) annotation (Line(points={{-19,60},{-12,60}}, color={0,0,127}));
    connect(sampleClocked1.y, movingAverage1.u) annotation (Line(points={{-49,60},{-46,60},{-46,35},{-42,35}}, color={0,0,127}));
    connect(movingAverage1.y, hold4.u) annotation (Line(points={{-19,35},{-12,35}}, color={0,0,127}));
    connect(sampleClocked1.y, transferFunction1.u) annotation (Line(points={{-49,60},{-46,60},{-46,10},{-42,10}}, color={0,0,127}));
    connect(transferFunction1.y, hold5.u) annotation (Line(points={{-19,10},{-12,10}}, color={0,0,127}));
    connect(sampleClocked1.y, stateSpace1.u[1]) annotation (Line(points={{-49,60},{-46,60},{-46,-15},{-42,-15}}, color={0,0,127}));
    connect(stateSpace1.y[1], hold6.u) annotation (Line(points={{-19,-15},{-12,-15}}, color={0,0,127}));
    connect(stateSpace1.y[2], hold7.u) annotation (Line(points={{-19,-15},{-16,-15},{-16,-27},{-12,-27}}, color={0,0,127}));
    connect(tickRamp1.y, assign_tickRamp1.u) annotation (Line(points={{-49,-65},{-42,-65}}, color={0,0,127}));
    connect(periodicClock.y, assign_tickRamp1.clock) annotation (Line(points={{-79,135},{-30,135},{-30,-77}}, color={175,175,175}));
    connect(assign_tickRamp1.y, hold8.u) annotation (Line(points={{-19,-65},{-12,-65}}, color={0,0,127}));
    connect(tickSine1.y, assign_tickSine1.u) annotation (Line(points={{-49,-90},{-42,-90}}, color={0,0,127}));
    connect(periodicClock.y, assign_tickSine1.clock) annotation (Line(points={{-79,135},{-30,135},{-30,-102}}, color={175,175,175}));
    connect(assign_tickSine1.y, hold9.u) annotation (Line(points={{-19,-90},{-12,-90}}, color={0,0,127}));
    connect(tickStep1.y, assign_tickStep1.u) annotation (Line(points={{-49,-115},{-42,-115}}, color={0,0,127}));
    connect(periodicClock.y, assign_tickStep1.clock) annotation (Line(points={{-79,135},{-30,135},{-30,-127}}, color={175,175,175}));
    connect(assign_tickStep1.y, hold10.u) annotation (Line(points={{-19,-115},{-12,-115}}, color={0,0,127}));
    connect(timeRamp1.y, assign_timeRamp1.u) annotation (Line(points={{-49,-140},{-42,-140}}, color={0,0,127}));
    connect(periodicClock.y, assign_timeRamp1.clock) annotation (Line(points={{-79,135},{-30,135},{-30,-152}}, color={175,175,175}));
    connect(assign_timeRamp1.y, hold11.u) annotation (Line(points={{-19,-140},{-12,-140}}, color={0,0,127}));
    connect(timeSine1.y, assign_timeSine1.u) annotation (Line(points={{-49,-165},{-42,-165}}, color={0,0,127}));
    connect(periodicClock.y, assign_timeSine1.clock) annotation (Line(points={{-79,135},{-30,135},{-30,-177}}, color={175,175,175}));
    connect(assign_timeSine1.y, hold12.u) annotation (Line(points={{-19,-165},{-12,-165}}, color={0,0,127}));
    connect(timeStep1.y, assign_timeStep1.u) annotation (Line(points={{-49,-190},{-42,-190}}, color={0,0,127}));
    connect(periodicClock.y, assign_timeStep1.clock) annotation (Line(points={{-79,135},{-30,135},{-30,-202}}, color={175,175,175}));
    connect(assign_timeStep1.y, hold13.u) annotation (Line(points={{-19,-190},{-12,-190}}, color={0,0,127}));
    annotation (Diagram(coordinateSystem(extent={{-100,-210},{100,155}})),
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
      annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
    Modelica.Blocks.Sources.Ramp angle1(height=10*Modelica.Constants.pi, duration=1)
      annotation (Placement(transformation(extent={{-100,-70},{-80,-50}})));
    Modelica.Blocks.Sources.Constant interval1(k=Modelica.Constants.pi)
      annotation (Placement(transformation(extent={{-100,-100},{-80,-80}})));
    Modelica.Blocks.Sources.BooleanPulse eventSource(width=50, period=0.15, startTime=0.05)
      annotation (Placement(transformation(extent={{-100,50},{-80,70}})));
    Modelica.Clocked.ClockSignals.Clocks.PeriodicExactClock periodicExactClock1(factor=20, resolution=Modelica.Clocked.Types.Resolution.ms)
      annotation (Placement(transformation(extent={{-40,90},{-20,110}})));
    Modelica.Clocked.RealSignals.Sampler.SampleClocked tick_periodicExactClock1
      annotation (Placement(transformation(extent={{-10,90},{10,110}})));
    Modelica.Clocked.RealSignals.Sampler.Hold lastTick_periodicExactClock1(y_start=-1)
      annotation (Placement(transformation(extent={{20,90},{40,110}})));
    Modelica.Clocked.ClockSignals.Clocks.PeriodicExactClock periodicExactClock2(factor=30, resolution=Modelica.Clocked.Types.Resolution.ms)
      annotation (Placement(transformation(extent={{-40,68},{-20,88}})));
    Modelica.Clocked.RealSignals.Sampler.SampleClocked tick_periodicExactClock2
      annotation (Placement(transformation(extent={{-10,68},{10,88}})));
    Modelica.Clocked.RealSignals.Sampler.Hold lastTick_periodicExactClock2(y_start=-1)
      annotation (Placement(transformation(extent={{20,68},{40,88}})));
    Modelica.Clocked.ClockSignals.Clocks.EventClock eventClock1
      annotation (Placement(transformation(extent={{-40,46},{-20,66}})));
    Modelica.Clocked.RealSignals.Sampler.SampleClocked tick_eventClock1
      annotation (Placement(transformation(extent={{-10,46},{10,66}})));
    Modelica.Clocked.RealSignals.Sampler.Hold lastTick_eventClock1(y_start=-1)
      annotation (Placement(transformation(extent={{20,46},{40,66}})));
    Modelica.Clocked.ClockSignals.Clocks.Logical.ConjunctiveClock conjunctiveClock1(nu=2)
      annotation (Placement(transformation(extent={{-40,24},{-20,44}})));
    Modelica.Clocked.RealSignals.Sampler.SampleClocked tick_conjunctiveClock1
      annotation (Placement(transformation(extent={{-10,24},{10,44}})));
    Modelica.Clocked.RealSignals.Sampler.Hold lastTick_conjunctiveClock1(y_start=-1)
      annotation (Placement(transformation(extent={{20,24},{40,44}})));
    Modelica.Clocked.ClockSignals.Clocks.Logical.DisjunctiveClock disjunctiveClock1(nu=2)
      annotation (Placement(transformation(extent={{-40,2},{-20,22}})));
    Modelica.Clocked.RealSignals.Sampler.SampleClocked tick_disjunctiveClock1
      annotation (Placement(transformation(extent={{-10,2},{10,22}})));
    Modelica.Clocked.RealSignals.Sampler.Hold lastTick_disjunctiveClock1(y_start=-1)
      annotation (Placement(transformation(extent={{20,2},{40,22}})));
    Modelica.Clocked.ClockSignals.Sampler.SubSample subSampleClock1(factor=3)
      annotation (Placement(transformation(extent={{-40,-20},{-20,0}})));
    Modelica.Clocked.RealSignals.Sampler.SampleClocked tick_subSampleClock1
      annotation (Placement(transformation(extent={{-10,-20},{10,0}})));
    Modelica.Clocked.RealSignals.Sampler.Hold lastTick_subSampleClock1(y_start=-1)
      annotation (Placement(transformation(extent={{20,-20},{40,0}})));
    Modelica.Clocked.ClockSignals.Sampler.SuperSample superSampleClock1(factor=2)
      annotation (Placement(transformation(extent={{-40,-42},{-20,-22}})));
    Modelica.Clocked.RealSignals.Sampler.SampleClocked tick_superSampleClock1
      annotation (Placement(transformation(extent={{-10,-42},{10,-22}})));
    Modelica.Clocked.RealSignals.Sampler.Hold lastTick_superSampleClock1(y_start=-1)
      annotation (Placement(transformation(extent={{20,-42},{40,-22}})));
    Modelica.Clocked.ClockSignals.Sampler.ShiftSample shiftSampleClock1(shiftCounter=1, resolution=2)
      annotation (Placement(transformation(extent={{-40,-64},{-20,-44}})));
    Modelica.Clocked.RealSignals.Sampler.SampleClocked tick_shiftSampleClock1
      annotation (Placement(transformation(extent={{-10,-64},{10,-44}})));
    Modelica.Clocked.RealSignals.Sampler.Hold lastTick_shiftSampleClock1(y_start=-1)
      annotation (Placement(transformation(extent={{20,-64},{40,-44}})));
    Modelica.Clocked.ClockSignals.Clocks.Rotational.RotationalClock rotationalClock1
      annotation (Placement(transformation(extent={{-40,-86},{-20,-66}})));
    Modelica.Clocked.RealSignals.Sampler.SampleClocked tick_rotationalClock1
      annotation (Placement(transformation(extent={{-10,-86},{10,-66}})));
    Modelica.Clocked.RealSignals.Sampler.Hold lastTick_rotationalClock1(y_start=-1)
      annotation (Placement(transformation(extent={{20,-86},{40,-66}})));
    Modelica.Clocked.ClockSignals.Clocks.Rotational.FixedRotationalClock fixedRotationalClock1(trigger_interval=2*Modelica.Constants.pi)
      annotation (Placement(transformation(extent={{-40,-108},{-20,-88}})));
    Modelica.Clocked.RealSignals.Sampler.SampleClocked tick_fixedRotationalClock1
      annotation (Placement(transformation(extent={{-10,-108},{10,-88}})));
    Modelica.Clocked.RealSignals.Sampler.Hold lastTick_fixedRotationalClock1(y_start=-1)
      annotation (Placement(transformation(extent={{20,-108},{40,-88}})));
  equation
    connect(time1.y, tick_periodicExactClock1.u) annotation (Line(points={{-79,0},{-46,0},{-46,100},{-12,100}}, color={0,0,127}));
    connect(periodicExactClock1.y, tick_periodicExactClock1.clock) annotation (Line(points={{-19,100},{0,100},{0,88}}, color={175,175,175}));
    connect(tick_periodicExactClock1.y, lastTick_periodicExactClock1.u) annotation (Line(points={{11,100},{18,100}}, color={0,0,127}));
    connect(time1.y, tick_periodicExactClock2.u) annotation (Line(points={{-79,0},{-46,0},{-46,78},{-12,78}}, color={0,0,127}));
    connect(periodicExactClock2.y, tick_periodicExactClock2.clock) annotation (Line(points={{-19,78},{0,78},{0,66}}, color={175,175,175}));
    connect(tick_periodicExactClock2.y, lastTick_periodicExactClock2.u) annotation (Line(points={{11,78},{18,78}}, color={0,0,127}));
    connect(eventSource.y, eventClock1.u) annotation (Line(points={{-79,60},{-60,60},{-60,56},{-42,56}}, color={255,0,255}));
    connect(time1.y, tick_eventClock1.u) annotation (Line(points={{-79,0},{-46,0},{-46,56},{-12,56}}, color={0,0,127}));
    connect(eventClock1.y, tick_eventClock1.clock) annotation (Line(points={{-19,56},{0,56},{0,44}}, color={175,175,175}));
    connect(tick_eventClock1.y, lastTick_eventClock1.u) annotation (Line(points={{11,56},{18,56}}, color={0,0,127}));
    connect(periodicExactClock1.y, conjunctiveClock1.u[1]) annotation (Line(points={{-19,100},{-46,100},{-46,34},{-42,34}}, color={175,175,175}));
    connect(periodicExactClock2.y, conjunctiveClock1.u[2]) annotation (Line(points={{-19,78},{-46,78},{-46,34},{-42,34}}, color={175,175,175}));
    connect(time1.y, tick_conjunctiveClock1.u) annotation (Line(points={{-79,0},{-46,0},{-46,34},{-12,34}}, color={0,0,127}));
    connect(conjunctiveClock1.y, tick_conjunctiveClock1.clock) annotation (Line(points={{-19,34},{0,34},{0,22}}, color={175,175,175}));
    connect(tick_conjunctiveClock1.y, lastTick_conjunctiveClock1.u) annotation (Line(points={{11,34},{18,34}}, color={0,0,127}));
    connect(periodicExactClock1.y, disjunctiveClock1.u[1]) annotation (Line(points={{-19,100},{-46,100},{-46,12},{-42,12}}, color={175,175,175}));
    connect(periodicExactClock2.y, disjunctiveClock1.u[2]) annotation (Line(points={{-19,78},{-46,78},{-46,12},{-42,12}}, color={175,175,175}));
    connect(time1.y, tick_disjunctiveClock1.u) annotation (Line(points={{-79,0},{-46,0},{-46,12},{-12,12}}, color={0,0,127}));
    connect(disjunctiveClock1.y, tick_disjunctiveClock1.clock) annotation (Line(points={{-19,12},{0,12},{0,0}}, color={175,175,175}));
    connect(tick_disjunctiveClock1.y, lastTick_disjunctiveClock1.u) annotation (Line(points={{11,12},{18,12}}, color={0,0,127}));
    connect(periodicExactClock1.y, subSampleClock1.u) annotation (Line(points={{-19,100},{-46,100},{-46,-10},{-42,-10}}, color={175,175,175}));
    connect(time1.y, tick_subSampleClock1.u) annotation (Line(points={{-79,0},{-46,0},{-46,-10},{-12,-10}}, color={0,0,127}));
    connect(subSampleClock1.y, tick_subSampleClock1.clock) annotation (Line(points={{-19,-10},{0,-10},{0,-22}}, color={175,175,175}));
    connect(tick_subSampleClock1.y, lastTick_subSampleClock1.u) annotation (Line(points={{11,-10},{18,-10}}, color={0,0,127}));
    connect(periodicExactClock2.y, superSampleClock1.u) annotation (Line(points={{-19,78},{-46,78},{-46,-32},{-42,-32}}, color={175,175,175}));
    connect(time1.y, tick_superSampleClock1.u) annotation (Line(points={{-79,0},{-46,0},{-46,-32},{-12,-32}}, color={0,0,127}));
    connect(superSampleClock1.y, tick_superSampleClock1.clock) annotation (Line(points={{-19,-32},{0,-32},{0,-44}}, color={175,175,175}));
    connect(tick_superSampleClock1.y, lastTick_superSampleClock1.u) annotation (Line(points={{11,-32},{18,-32}}, color={0,0,127}));
    connect(periodicExactClock2.y, shiftSampleClock1.u) annotation (Line(points={{-19,78},{-46,78},{-46,-54},{-42,-54}}, color={175,175,175}));
    connect(time1.y, tick_shiftSampleClock1.u) annotation (Line(points={{-79,0},{-46,0},{-46,-54},{-12,-54}}, color={0,0,127}));
    connect(shiftSampleClock1.y, tick_shiftSampleClock1.clock) annotation (Line(points={{-19,-54},{0,-54},{0,-66}}, color={175,175,175}));
    connect(tick_shiftSampleClock1.y, lastTick_shiftSampleClock1.u) annotation (Line(points={{11,-54},{18,-54}}, color={0,0,127}));
    connect(angle1.y, rotationalClock1.angle) annotation (Line(points={{-79,-60},{-60,-60},{-60,-76},{-42,-76}}, color={0,0,127}));
    connect(interval1.y, rotationalClock1.trigger_interval) annotation (Line(points={{-79,-90},{-60,-90},{-60,-76},{-42,-76}}, color={0,0,127}));
    connect(time1.y, tick_rotationalClock1.u) annotation (Line(points={{-79,0},{-46,0},{-46,-76},{-12,-76}}, color={0,0,127}));
    connect(rotationalClock1.y, tick_rotationalClock1.clock) annotation (Line(points={{-19,-76},{0,-76},{0,-88}}, color={175,175,175}));
    connect(tick_rotationalClock1.y, lastTick_rotationalClock1.u) annotation (Line(points={{11,-76},{18,-76}}, color={0,0,127}));
    connect(angle1.y, fixedRotationalClock1.angle) annotation (Line(points={{-79,-60},{-60,-60},{-60,-98},{-42,-98}}, color={0,0,127}));
    connect(time1.y, tick_fixedRotationalClock1.u) annotation (Line(points={{-79,0},{-46,0},{-46,-98},{-12,-98}}, color={0,0,127}));
    connect(fixedRotationalClock1.y, tick_fixedRotationalClock1.clock) annotation (Line(points={{-19,-98},{0,-98},{0,-110}}, color={175,175,175}));
    connect(tick_fixedRotationalClock1.y, lastTick_fixedRotationalClock1.u) annotation (Line(points={{11,-98},{18,-98}}, color={0,0,127}));
    annotation (Diagram(coordinateSystem(extent={{-100,-118},{100,120}})),
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
    connect(integerTable1.y, sampleClockedInteger.u) annotation (Line(points={{-79,40},{-72,40}}, color={0,0,127}));
    connect(periodicClock.y, sampleClockedInteger.clock) annotation (Line(points={{-79,90},{-60,90},{-60,28}}, color={175,175,175}));
    connect(sampleClockedInteger.y, squareWaveInteger.u) annotation (Line(points={{-49,40},{-42,40}}, color={255,127,0}));
    connect(booleanPulse1.y, sampleClockedBoolean.u) annotation (Line(points={{-79,0},{-72,0}}, color={255,0,255}));
    connect(periodicClock.y, sampleClockedBoolean.clock) annotation (Line(points={{-79,90},{-60,90},{-60,-12}}, color={175,175,175}));
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
end Clocked;
