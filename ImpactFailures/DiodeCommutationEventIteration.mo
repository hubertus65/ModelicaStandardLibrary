within ImpactFailures;
model DiodeCommutationEventIteration
  "OCT continues with inconsistent ideal-diode states after a failed event iteration at a commutation"
  extends Modelica.Electrical.PowerConverters.Examples.ACDC.RectifierCenterTap2mPulse.DiodeCenterTap2mPulse(m=5);
  annotation (experiment(StopTime=0.1, Interval=0.0002, Tolerance=1e-6), Documentation(info="<html>
<p>
<strong>Failure:</strong> wrong results, reported as a successful simulation. This is the MSL example
<a href=\"modelica://Modelica.Electrical.PowerConverters.Examples.ACDC.RectifierCenterTap2mPulse.DiodeCenterTap2mPulse\">DiodeCenterTap2mPulse</a>
with <code>m=5</code> phases: ten ideal diodes on a resistive load. Each commutation hands the load
current from one diode to the next. In Modelon Impact, at a few commutations, the outgoing diode stays
conducting. That shorts two windings through 2&middot;Ron = 2e-5 &Omega;, and the circulating current grows
to about 2e6 A. It lasts about 1.3 ms, until the next commutation event. The <code>Mean</code> blocks integrate it:
</p>
<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
<tr><th>Impact, rtol 1e-6</th><th>Value</th><th>Correct (OpenModelica 1.27.1)</th></tr>
<tr><td>resistor.i at t = 0.0013434 s (left limit of the next event)</td><td>1.969e6 A</td><td>7.4 to 7.8 A</td></tr>
<tr><td>meanCurrent.y, first averaging period (t = 0.002 to 0.004 s)</td><td>6.713e5 A</td><td>7.65 A</td></tr>
<tr><td>meanCurrent.y, period t = 0.014 to 0.016 s</td><td>6.713e5 A</td><td>7.65 A</td></tr>
</table>
<p>
<strong>Isolation:</strong> the simulation log (level INFO) shows
<code>Error: Detected infinite loop in enhanced fixed point iteration in block = \"1\", iter = 2</code>
at exactly the three instants after which the results are wrong (t = 2.454e-9, 0.012000002 and 0.680000002 s
in a 1 s run). Normally the incoming diode turns on 2.45 ns before the phase crossing and the outgoing one
turns off 2.45 ns after it, as two separate events. The failures happen where both mode changes fall into one
event: at t = 0, where phases p5 and n2 are equal, and where the 2 ms sample event of the <code>Mean</code>
blocks lands exactly on a commutation (commutations are also 2 ms apart). At the crossing both diodes sit at
the knee (s &asymp; 0), and the fixed-point iteration over the diode modes alternates between the two
combinations. Impact logs the error but continues with the last, inconsistent iterate, which no later
zero crossing corrects until the next commutation.
</p>
<ul>
<li>A tighter tolerance makes it fail outright: at rtol 1e-8 and 1e-10 the simulation stops at t = 2.454e-9 s with
<code>Failed to find a consistent solution in event iteration in block = \"1\"</code>.</li>
<li>A nominal on the diode variable <code>s</code> (tested in a copy of the circuit) does not fix it: nominal 1, 100 and
1000 give 3, 3 and 5 wrong intervals in 1 s; nominal 10 happens to give none.</li>
<li>Shifting all source phases by +1e-6 or +1e-3 rad moves the commutations off the sample grid and removes
it; -1e-3 rad still leaves one wrong interval.</li>
</ul>
<p>
<strong>Expected:</strong> resolve the event iteration (with both diodes at the knee, either mode combination is
consistent), or fail the simulation. Continuing silently with the inconsistent state gives wrong results.
</p>
<p>
<strong>Workaround:</strong> none in the model. Found through the ModelicaTest test
<code>ModelicaTest.Electrical.PowerConverters.DiodeCenterTap2mPulse_5Phase</code> (branch
<code>coverage-improvement</code>), whose Impact baseline differs from OpenModelica in the first averaging period.
<code>DiodeCenterTapmPulse_5Phase</code> differs in the same period too (not analysed separately).
</p>
</html>"));
end DiodeCommutationEventIteration;
