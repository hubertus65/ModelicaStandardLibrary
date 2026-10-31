within ModelicaTest.Fluid.TestUtilities;
model VectorizedPortsFluidAndHeat
  "Test of the vectorized connectors Modelica.Fluid.Interfaces.FluidPorts_a and HeatPorts_b"
  extends Modelica.Icons.Example;
  package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater "Medium";
  model FluidJunction "Lossless junction of two fluid ports, as FluidPorts_a"
    replaceable package Medium = Modelica.Media.Interfaces.PartialMedium "Medium";
    Modelica.Fluid.Interfaces.FluidPorts_a ports[2](redeclare each package Medium=Medium)
      "Two fluid ports";
  equation
    ports[1].p = ports[2].p;
    ports[1].m_flow + ports[2].m_flow = 0;
    ports[1].h_outflow = inStream(ports[2].h_outflow);
    ports[2].h_outflow = inStream(ports[1].h_outflow);
    ports[1].Xi_outflow = inStream(ports[2].Xi_outflow);
    ports[2].Xi_outflow = inStream(ports[1].Xi_outflow);
    ports[1].C_outflow = inStream(ports[2].C_outflow);
    ports[2].C_outflow = inStream(ports[1].C_outflow);
  end FluidJunction;
  model HeatJunction "Ideal thermal connection of two heat ports, as HeatPorts_b"
    Modelica.Fluid.Interfaces.HeatPorts_b heatPorts[2] "Two heat ports";
  equation
    heatPorts[1].T = heatPorts[2].T;
    heatPorts[1].Q_flow + heatPorts[2].Q_flow = 0;
  end HeatJunction;
  inner Modelica.Fluid.System system "System properties";
  Modelica.Fluid.Sources.Boundary_pT source(redeclare package Medium=Medium, p=2e5, T=300, nPorts=1)
    "Pressure source";
  Modelica.Fluid.Sources.Boundary_pT sink(redeclare package Medium=Medium, p=1e5, T=300, nPorts=1,
    use_p_in=true) "Sink with variable pressure";
  Modelica.Blocks.Sources.Ramp pSink(height=0.5e5, duration=1, offset=1e5) "Sink pressure";
  Modelica.Fluid.Fittings.SimpleGenericOrifice orifice(redeclare package Medium=Medium, diameter=0.02,
    zeta=2) "Orifice";
  FluidJunction junction(redeclare package Medium=Medium) "Junction with FluidPorts_a";
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature hot(T=350) "Hot side";
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature cold(T=300) "Cold side";
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor conductor(G=2) "Conductance";
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor conductor2(G=3) "Second conductance";
  HeatJunction heatJunction "Junction with HeatPorts_b";
equation
  connect(source.ports[1], junction.ports[1]);
  connect(junction.ports[2], orifice.port_a);
  connect(orifice.port_b, sink.ports[1]);
  connect(pSink.y, sink.p_in);
  connect(hot.port, conductor.port_a);
  connect(conductor.port_b, heatJunction.heatPorts[1]);
  connect(heatJunction.heatPorts[2], conductor2.port_a);
  connect(conductor2.port_b, cold.port);
  annotation (experiment(StopTime=1), Documentation(info="<html>
<p>
The vectorized connectors
<a href=\"modelica://Modelica.Fluid.Interfaces.FluidPorts_a\">FluidPorts_a</a> and
<a href=\"modelica://Modelica.Fluid.Interfaces.HeatPorts_b\">HeatPorts_b</a> are not used anywhere in the
MSL. Each is used by a small junction model in series with an orifice (flow from 2 bar to a sink rising
from 1 to 1.5 bar) and between two thermal conductances (350 K and 300 K, G = 2 and 3 W/K: 60 W, junction at
320 K).
</p>
</html>"));
end VectorizedPortsFluidAndHeat;
