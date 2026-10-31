within ImpactFailures;
model QuasiStaticSharedGroundCompileHang
  "OCT does not finish compiling when two independently-rooted quasi-static systems share one ground"
  extends Modelica.Icons.Example;
  Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Ground ground;
  Modelica.Blocks.Sources.Ramp gammaRamp(height=2*Modelica.Constants.pi*100, duration=2);
  Modelica.Electrical.QuasiStatic.Polyphase.Sources.ReferenceVoltageSource voltageSource(m=3,
    V={Complex(100, 0), Complex(-50, -86.60254037844386), Complex(-50, 86.60254037844386)});
  Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starS(m=3);
  Modelica.Electrical.QuasiStatic.Polyphase.Basic.Inductor inductor(m=3, L=fill(0.1, 3));
  Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor load(m=3, R_ref=fill(10, 3));
  Modelica.Electrical.QuasiStatic.Polyphase.Basic.MultiStarResistance multiStar(m=3, R=1);
  Modelica.Electrical.QuasiStatic.Polyphase.Sources.CurrentSource currentSource(m=3, f=60, I=fill(2, 3),
    gamma(fixed=true, start=0));
  Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor load2(m=3, R_ref=fill(5, 3));
  Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starC(m=3);
equation
  connect(gammaRamp.y, voltageSource.gamma);
  connect(voltageSource.plug_n, starS.plug_p);
  connect(starS.pin_n, ground.pin);
  connect(voltageSource.plug_p, inductor.plug_p);
  connect(inductor.plug_n, load.plug_p);
  connect(load.plug_n, multiStar.plug);
  connect(multiStar.pin, ground.pin);
  connect(currentSource.plug_p, load2.plug_p);
  connect(currentSource.plug_n, starC.plug_p);
  connect(load2.plug_n, starC.plug_p);
  // the second system shares the ground: two roots in one connection graph
  connect(starC.pin_n, ground.pin);
  annotation (experiment(StopTime=1), Documentation(info="<html>
<p>
<strong>Failure:</strong> compilation does not finish. An experiment was still RUNNING after 240 s and had to
be deleted. The ModCheck client cancelled earlier attempts after 300 s, but they stayed RUNNING on the
server and blocked its compile queue for later cases. The experiments had to be deleted through the API.
</p>
<p>
<strong>Trigger:</strong> two quasi-static systems are connected to the same ground:
</p>
<ul>
<li>a ReferenceVoltageSource (50 Hz, gamma input)</li>
<li>a CurrentSource (60 Hz, <code>gamma(fixed=true)</code>)</li>
</ul>
<p>
Each QS source declares <code>Connections.root</code>, so the shared ground joins two roots in one
overdetermined connection graph. <strong>This is a modeling error</strong>, but OCT should report it instead
of hanging. Isolation on Impact:
</p>
<ul>
<li>voltage part only: 6 s</li>
<li>both systems with separate grounds: 11 s</li>
<li>this model: not finished after 240 s</li>
</ul>
<p>
<strong>Other tools:</strong> OpenModelica 1.27.1 breaks a connect edge silently and simulates. Dymola 2026x
translates it without a message.
</p>
<p>
<strong>Workaround:</strong> one ground per independent quasi-static system.
</p>
</html>"));
end QuasiStaticSharedGroundCompileHang;
