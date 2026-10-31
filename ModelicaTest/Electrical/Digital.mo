within ModelicaTest.Electrical;
package Digital "Test models for Modelica.Electrical.Digital"
  extends Modelica.Icons.ExamplesPackage;

  model DigitalGatesConvertersAndMemory "Test of basic gates, delayed gates, tristates, converters, sources and the ROM of Modelica.Electrical.Digital"
    extends Modelica.Icons.Example;

    Modelica.Electrical.Digital.Sources.DigitalClock clock(period=0.2, width=50)
      annotation (Placement(transformation(extent={{-100,90},{-80,110}})));
    Modelica.Electrical.Digital.Sources.Step step(before=Modelica.Electrical.Digital.Interfaces.Logic.'0', after=Modelica.Electrical.Digital.Interfaces.Logic.'1', stepTime=0.35)
      annotation (Placement(transformation(extent={{-100,60},{-80,80}})));
    Modelica.Electrical.Digital.Sources.Pulse pulse(width=30, period=0.15, pulse=Modelica.Electrical.Digital.Interfaces.Logic.'1', quiet=Modelica.Electrical.Digital.Interfaces.Logic.'0')
      annotation (Placement(transformation(extent={{-100,30},{-80,50}})));
    Modelica.Electrical.Digital.Sources.Set setX(x=Modelica.Electrical.Digital.Interfaces.Logic.'X')
      annotation (Placement(transformation(extent={{-100,0},{-80,20}})));
    Modelica.Electrical.Digital.Sources.Table table(x={Modelica.Electrical.Digital.Interfaces.Logic.'1', Modelica.Electrical.Digital.Interfaces.Logic.'0', Modelica.Electrical.Digital.Interfaces.Logic.'X', Modelica.Electrical.Digital.Interfaces.Logic.'Z', Modelica.Electrical.Digital.Interfaces.Logic.'1'}, t={0.1, 0.3, 0.5, 0.7, 0.9})
      annotation (Placement(transformation(extent={{-100,-30},{-80,-10}})));
    Modelica.Electrical.Digital.Basic.Nand nand1(n=2)
      annotation (Placement(transformation(extent={{-60,90},{-40,110}})));
    Modelica.Electrical.Digital.Basic.Xnor xnor1(n=2)
      annotation (Placement(transformation(extent={{-60,60},{-40,80}})));
    Modelica.Electrical.Digital.Gates.InvGate invGate(tLH=0.01, tHL=0.02)
      annotation (Placement(transformation(extent={{-20,90},{0,110}})));
    Modelica.Electrical.Digital.Gates.NandGate nandGate(n=2, tLH=0.01, tHL=0.02)
      annotation (Placement(transformation(extent={{-20,65},{0,85}})));
    Modelica.Electrical.Digital.Gates.OrGate orGate(n=2, tLH=0.01, tHL=0.02)
      annotation (Placement(transformation(extent={{-20,40},{0,60}})));
    Modelica.Electrical.Digital.Gates.NorGate norGate(n=2, tLH=0.01, tHL=0.02)
      annotation (Placement(transformation(extent={{-20,15},{0,35}})));
    Modelica.Electrical.Digital.Gates.XnorGate xnorGate(n=2, tLH=0.01, tHL=0.02)
      annotation (Placement(transformation(extent={{-20,-10},{0,10}})));
    Modelica.Electrical.Digital.Gates.BufGate bufGate(tLH=0.03, tHL=0.01)
      annotation (Placement(transformation(extent={{-20,-35},{0,-15}})));
    Modelica.Electrical.Digital.Delay.InertialDelay inertialDelay(delayTime=0.05)
      annotation (Placement(transformation(extent={{-20,-60},{0,-40}})));
    Modelica.Electrical.Digital.Tristates.PXFERGATE pxfer
      annotation (Placement(transformation(extent={{20,90},{40,110}})));
    Modelica.Electrical.Digital.Tristates.PRXFERGATE prxfer
      annotation (Placement(transformation(extent={{20,65},{40,85}})));
    Modelica.Electrical.Digital.Tristates.BUF3SL buf3sl
      annotation (Placement(transformation(extent={{20,40},{40,60}})));
    Modelica.Electrical.Digital.Tristates.INV3SL inv3sl
      annotation (Placement(transformation(extent={{20,15},{40,35}})));
    Modelica.Electrical.Digital.Converters.LogicToX01 toX01(n=1)
      annotation (Placement(transformation(extent={{20,-20},{40,0}})));
    Modelica.Electrical.Digital.Converters.LogicToX01Z toX01Z(n=1)
      annotation (Placement(transformation(extent={{20,-45},{40,-25}})));
    Modelica.Electrical.Digital.Converters.LogicToUX01 toUX01(n=1)
      annotation (Placement(transformation(extent={{20,-70},{40,-50}})));
    Modelica.Blocks.Sources.BooleanPulse booleanPulse(width=50, period=0.25)
      annotation (Placement(transformation(extent={{-100,-70},{-80,-50}})));
    Modelica.Electrical.Digital.Converters.BooleanToLogic booleanToLogic(n=1)
      annotation (Placement(transformation(extent={{-60,-70},{-40,-50}})));
    Modelica.Electrical.Digital.Converters.LogicToBoolean logicToBoolean(n=1)
      annotation (Placement(transformation(extent={{-60,-100},{-40,-80}})));
    Modelica.Blocks.Sources.Ramp ramp(height=1.5, duration=1, offset=-0.2)
      annotation (Placement(transformation(extent={{-100,-130},{-80,-110}})));
    Modelica.Electrical.Digital.Converters.RealToLogic realToLogic(n=1, upper_limit=0.7, lower_limit=0.3)
      annotation (Placement(transformation(extent={{-60,-130},{-40,-110}})));
    Modelica.Electrical.Digital.Memories.DLATROM rom(n_addr=2, n_data=4)
      annotation (Placement(transformation(extent={{20,-110},{40,-90}})));
    Modelica.Electrical.Digital.Sources.Table addr2(x={Modelica.Electrical.Digital.Interfaces.Logic.'1', Modelica.Electrical.Digital.Interfaces.Logic.'0'}, t={0.25, 0.75})
      annotation (Placement(transformation(extent={{-20,-120},{0,-100}})));
  equation
    connect(clock.y, nand1.x[1]) annotation (Line(points={{-79,100},{-62,100}}, color={0,0,127}));
    connect(step.y, nand1.x[2]) annotation (Line(points={{-79,70},{-70,70},{-70,100},{-62,100}}, color={0,0,127}));
    connect(clock.y, xnor1.x[1]) annotation (Line(points={{-79,100},{-70,100},{-70,70},{-62,70}}, color={0,0,127}));
    connect(pulse.y, xnor1.x[2]) annotation (Line(points={{-79,40},{-70,40},{-70,70},{-62,70}}, color={0,0,127}));
    connect(clock.y, invGate.x) annotation (Line(points={{-79,100},{-22,100}}, color={0,0,127}));
    connect(clock.y, nandGate.x[1]) annotation (Line(points={{-79,100},{-50,100},{-50,75},{-22,75}}, color={0,0,127}));
    connect(step.y, nandGate.x[2]) annotation (Line(points={{-79,70},{-50,70},{-50,75},{-22,75}}, color={0,0,127}));
    connect(clock.y, orGate.x[1]) annotation (Line(points={{-79,100},{-50,100},{-50,50},{-22,50}}, color={0,0,127}));
    connect(pulse.y, orGate.x[2]) annotation (Line(points={{-79,40},{-50,40},{-50,50},{-22,50}}, color={0,0,127}));
    connect(step.y, norGate.x[1]) annotation (Line(points={{-79,70},{-50,70},{-50,25},{-22,25}}, color={0,0,127}));
    connect(pulse.y, norGate.x[2]) annotation (Line(points={{-79,40},{-50,40},{-50,25},{-22,25}}, color={0,0,127}));
    connect(clock.y, xnorGate.x[1]) annotation (Line(points={{-79,100},{-50,100},{-50,0},{-22,0}}, color={0,0,127}));
    connect(step.y, xnorGate.x[2]) annotation (Line(points={{-79,70},{-50,70},{-50,0},{-22,0}}, color={0,0,127}));
    connect(pulse.y, bufGate.x) annotation (Line(points={{-79,40},{-50,40},{-50,-25},{-22,-25}}, color={0,0,127}));
    connect(pulse.y, inertialDelay.x) annotation (Line(points={{-79,40},{-50,40},{-50,-50},{-22,-50}}, color={0,0,127}));
    connect(clock.y, pxfer.x) annotation (Line(points={{-79,100},{18,100}}, color={0,0,127}));
    connect(step.y, pxfer.enable) annotation (Line(points={{-79,70},{-30,70},{-30,100},{18,100}}, color={0,0,127}));
    connect(clock.y, prxfer.x) annotation (Line(points={{-79,100},{-30,100},{-30,75},{18,75}}, color={0,0,127}));
    connect(step.y, prxfer.enable) annotation (Line(points={{-79,70},{-30,70},{-30,75},{18,75}}, color={0,0,127}));
    connect(clock.y, buf3sl.x) annotation (Line(points={{-79,100},{-30,100},{-30,50},{18,50}}, color={0,0,127}));
    connect(pulse.y, buf3sl.enable) annotation (Line(points={{-79,40},{-30,40},{-30,50},{18,50}}, color={0,0,127}));
    connect(clock.y, inv3sl.x) annotation (Line(points={{-79,100},{-30,100},{-30,25},{18,25}}, color={0,0,127}));
    connect(pulse.y, inv3sl.enable) annotation (Line(points={{-79,40},{-30,40},{-30,25},{18,25}}, color={0,0,127}));
    connect(table.y, toX01.x[1]) annotation (Line(points={{-79,-20},{-30,-20},{-30,-10},{18,-10}}, color={0,0,127}));
    connect(table.y, toX01Z.x[1]) annotation (Line(points={{-79,-20},{-30,-20},{-30,-35},{18,-35}}, color={0,0,127}));
    connect(table.y, toUX01.x[1]) annotation (Line(points={{-79,-20},{-30,-20},{-30,-60},{18,-60}}, color={0,0,127}));
    connect(booleanPulse.y, booleanToLogic.x[1]) annotation (Line(points={{-79,-60},{-62,-60}}, color={255,0,255}));
    connect(booleanToLogic.y[1], logicToBoolean.x[1]) annotation (Line(points={{-39,-60},{-66,-60},{-66,-90},{-62,-90}}, color={0,0,127}));
    connect(ramp.y, realToLogic.x[1]) annotation (Line(points={{-79,-120},{-62,-120}}, color={0,0,127}));
    connect(clock.y, rom.addr[1]) annotation (Line(points={{-79,100},{-30,100},{-30,-100},{18,-100}}, color={0,0,127}));
    connect(addr2.y, rom.addr[2]) annotation (Line(points={{1,-110},{10,-110},{10,-100},{18,-100}}, color={0,0,127}));
    connect(setX.y, rom.RE) annotation (Line(points={{-79,10},{-30,10},{-30,-100},{18,-100}}, color={0,0,127}));
    annotation (Diagram(coordinateSystem(extent={{-100,-140},{100,120}})),
      experiment(StopTime=1),
      Documentation(info="<html>
<p>
Digital signals from DigitalClock, Step, Pulse, Set and Table of
<a href=\"modelica://Modelica.Electrical.Digital.Sources\">Modelica.Electrical.Digital.Sources</a>
drive:
</p>
<ul>
<li>Basic.Nand and Basic.Xnor; Gates.InvGate, NandGate, OrGate, NorGate, XnorGate and BufGate with delays</li>
<li>Delay.InertialDelay</li>
<li>Tristates.PXFERGATE, PRXFERGATE, BUF3SL and INV3SL with an enable signal</li>
<li>Converters LogicToX01, LogicToX01Z and LogicToUX01 on a table with all logic values, and
    BooleanToLogic, LogicToBoolean and RealToLogic</li>
<li>Memories.DLATROM reading the memory file of the library (Interfaces.MemoryBase.getMemory/address)</li>
</ul>
</html>"));
  end DigitalGatesConvertersAndMemory;

  model FullAdder_SlowClock = Modelica.Electrical.Digital.Examples.FullAdder(CLK(period=2))
    "Variant of FullAdder with a clock period of 2 s"
    annotation (experiment(StopTime=10), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.Digital.Examples.FullAdder\">FullAdder</a> (AndGate, XorGate, TransportDelay, LogicToReal) with a
clock period of 2 s instead of 1 s.
</p>
</html>"));

  model DFFREGL_Delays = Modelica.Electrical.Digital.Examples.DFFREGL(dFFREGL(tHL=1, tLH=2))
    "Variant of DFFREGL with modified delay times"
    annotation (experiment(StopTime=25), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.Digital.Examples.DFFREGL\">DFFREGL</a> with the delay times tHL=1, tLH=2 of dFFREGL.
</p>
</html>"));

  model DLATREGL_Delays = Modelica.Electrical.Digital.Examples.DLATREGL(dLATREGL(tHL=1, tLH=2))
    "Variant of DLATREGL with modified delay times"
    annotation (experiment(StopTime=25), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.Digital.Examples.DLATREGL\">DLATREGL</a> with the delay times tHL=1, tLH=2 of dLATREGL.
</p>
</html>"));

  model DFFREGSRL_Delays = Modelica.Electrical.Digital.Examples.DFFREGSRL(dFFREGSRL(tHL=1, tLH=2))
    "Variant of DFFREGSRL with modified delay times"
    annotation (experiment(StopTime=15), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.Digital.Examples.DFFREGSRL\">DFFREGSRL</a> with the delay times tHL=1, tLH=2 of dFFREGSRL.
</p>
</html>"));

  model DLATREGSRL_Delays = Modelica.Electrical.Digital.Examples.DLATREGSRL(dLATREGSRL(tHL=1, tLH=2))
    "Variant of DLATREGSRL with modified delay times"
    annotation (experiment(StopTime=25), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.Digital.Examples.DLATREGSRL\">DLATREGSRL</a> with the delay times tHL=1, tLH=2 of dLATREGSRL.
</p>
</html>"));

  model RAM_Delays = Modelica.Electrical.Digital.Examples.RAM(dLATRAM(tHL=2, tLH=3))
    "Variant of RAM with modified delay times"
    annotation (experiment(StopTime=400), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.Digital.Examples.RAM\">RAM</a> with the delay times tHL=2, tLH=3 of dLATRAM.
</p>
</html>"));

  model NXFER_Delays = Modelica.Electrical.Digital.Examples.NXFER(nXFERGATE(tHL=1, tLH=2))
    "Variant of NXFER with modified delay times"
    annotation (experiment(StopTime=12), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.Digital.Examples.NXFER\">NXFER</a> with the delay times tHL=1, tLH=2 of nXFERGATE.
</p>
</html>"));

  model NRXFER_Delays = Modelica.Electrical.Digital.Examples.NRXFER(nRXFERGATE(tHL=1, tLH=2))
    "Variant of NRXFER with modified delay times"
    annotation (experiment(StopTime=12), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.Digital.Examples.NRXFER\">NRXFER</a> with the delay times tHL=1, tLH=2 of nRXFERGATE.
</p>
</html>"));

  model INV3S_Delays = Modelica.Electrical.Digital.Examples.INV3S(iNV3S(tHL=1, tLH=2))
    "Variant of INV3S with modified delay times"
    annotation (experiment(StopTime=12), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.Digital.Examples.INV3S\">INV3S</a> with the delay times tHL=1, tLH=2 of iNV3S.
</p>
</html>"));

  model MUX2x1_Delays = Modelica.Electrical.Digital.Examples.MUX2x1(Mux2x1(tHL=1, tLH=2))
    "Variant of MUX2x1 with modified delay times"
    annotation (experiment(StopTime=15), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.Digital.Examples.MUX2x1\">MUX2x1</a> with the delay times tHL=1, tLH=2 of Mux2x1.
</p>
</html>"));

  model WiredX_Delays = Modelica.Electrical.Digital.Examples.WiredX(bUF3S1(tHL=1, tLH=1), bUF3S2(tHL=2, tLH=2))
    "Variant of WiredX with delayed tristate buffers"
    annotation (experiment(StopTime=12), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.Digital.Examples.WiredX\">WiredX</a> with delay times of 1 s and 2 s for the two BUF3S
tristate buffers driving the WiredX node.
</p>
</html>"));
end Digital;
