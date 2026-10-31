within ModelicaTest.Electrical.QuasiStatic;
package Polyphase "Polyphase quasi-static package"
  extends Modelica.Icons.ExamplesPackage;
  model SerialConnection "Example of serial connections"
    extends Modelica.Icons.Example;
    parameter Integer m = 3 "Number of phases" annotation(Evaluate=true);
    output SI.ComplexVoltage v[m] = voltageSensor.v "Total voltage";
    Modelica.Electrical.QuasiStatic.Polyphase.Sources.VariableCurrentSource currentSource(gamma(fixed=true, start=0), m=m)                                             annotation (Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=90,
          origin={-50,-20})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Ground ground annotation (Placement(transformation(extent={{-60,-100},{-40,-80}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Impedance impedance(Z_ref=fill(Complex(1,1),m), m=m)
                                                                             annotation (Placement(transformation(extent={{-90,20},{-70,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Admittance admittance(Y_ref=fill(Complex(0.5,0.5),m), m=m)
                                                                                                    annotation (Placement(transformation(extent={{-60,20},{-40,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.VariableResistor variableResistor(m=m) annotation (Placement(transformation(extent={{-30,20},{-10,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.VariableConductor variableConductor(m=m) annotation (Placement(transformation(extent={{0,20},{20,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Conductor conductor(G_ref=fill(1,m), m=m) annotation (Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=90,
          origin={-90,10})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.VariableCapacitor variableCapacitor(m=m) annotation (Placement(transformation(extent={{30,20},{50,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.VariableInductor variableInductor(m=m) annotation (Placement(transformation(extent={{60,20},{80,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.VariableImpedance variableImpedance(m=m) annotation (Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=180,
          origin={70,-40})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.VariableAdmittance variableAdmittance(m=m) annotation (Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=180,
          origin={40,-40})));
    Modelica.Blocks.Sources.Constant const[m](k=fill(1,m)) annotation (Placement(transformation(extent={{-50,50},{-30,70}})));
    Modelica.Blocks.Sources.Constant const1[m](k=fill(1,m)) annotation (Placement(transformation(extent={{-20,70},{0,90}})));
    Modelica.Blocks.Sources.Constant const2[m](k=fill(1/100/Modelica.Constants.pi,m)) annotation (Placement(transformation(extent={{70,70},{50,90}})));
    Modelica.Blocks.Sources.Constant const3[m](k=fill(1/100/Modelica.Constants.pi,m)) annotation (Placement(transformation(extent={{100,50},{80,70}})));
    Modelica.ComplexBlocks.Sources.ComplexConstant const4[m](k=fill(Complex(0.5,0.5),m)) annotation (Placement(transformation(extent={{0,-70},{20,-50}})));
    Modelica.ComplexBlocks.Sources.ComplexConstant const5[m](k=fill(Complex(1,1),m)) annotation (Placement(transformation(extent={{-30,-90},{-10,-70}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Sensors.VoltageSensor voltageSensor(m=m) annotation (Placement(transformation(
          extent={{-10,10},{10,-10}},
          rotation=270,
          origin={-20,-20})));
    Modelica.ComplexBlocks.Sources.ComplexConstant const6[m](k=Modelica.ComplexMath.fromPolar(fill(1, m), -Modelica.Electrical.Polyphase.Functions.symmetricOrientation(m)))
                                                                                     annotation (Placement(transformation(extent={{-100,-60},{-80,-40}})));
    Modelica.Blocks.Sources.Ramp ramp(
      height=80,
      duration=1,
      offset=10,
      startTime=0) annotation (Placement(transformation(extent={{-100,-30},{-80,-10}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star star(m=m) annotation (Placement(transformation(
          extent={{10,-10},{-10,10}},
          rotation=90,
          origin={-50,-60})));
  equation

    connect(const.y, variableResistor.R_ref) annotation (Line(points={{-29,60},{-20,60},{-20,42}}, color={0,0,127}));
    connect(const1.y, variableConductor.G_ref) annotation (Line(points={{1,80},{6,80},{10,80},{10,42}}, color={0,0,127}));
    connect(const2.y, variableCapacitor.C) annotation (Line(points={{49,80},{40,80},{40,42}}, color={0,0,127}));
    connect(const3.y, variableInductor.L) annotation (Line(points={{79,60},{70,60},{70,42}}, color={0,0,127}));
    connect(currentSource.plug_n, conductor.plug_p) annotation (Line(points={{-50,-10},{-50,-10},{-50,0},{-90,0}}, color={85,170,255}));
    connect(conductor.plug_n, impedance.plug_p) annotation (Line(points={{-90,20},{-90,30}}, color={85,170,255}));
    connect(impedance.plug_n, admittance.plug_p) annotation (Line(points={{-70,30},{-60,30}}, color={85,170,255}));
    connect(admittance.plug_n, variableResistor.plug_p) annotation (Line(points={{-40,30},{-40,30},{-30,30}}, color={85,170,255}));
    connect(variableResistor.plug_n, variableConductor.plug_p) annotation (Line(points={{-10,30},{-5,30},{0,30}}, color={85,170,255}));
    connect(variableConductor.plug_n, variableCapacitor.plug_p) annotation (Line(points={{20,30},{25,30},{30,30}}, color={85,170,255}));
    connect(variableCapacitor.plug_n, variableInductor.plug_p) annotation (Line(points={{50,30},{55,30},{60,30}}, color={85,170,255}));
    connect(variableInductor.plug_n, variableImpedance.plug_p) annotation (Line(points={{80,30},{90,30},{90,-40},{80,-40}}, color={85,170,255}));
    connect(variableImpedance.plug_n, variableAdmittance.plug_p) annotation (Line(points={{60,-40},{55,-40},{50,-40}}, color={85,170,255}));
    connect(const4.y, variableAdmittance.Y_ref) annotation (Line(points={{21,-60},{30,-60},{40,-60},{40,-52}}, color={85,170,255}));
    connect(const5.y, variableImpedance.Z_ref) annotation (Line(points={{-9,-80},{28,-80},{70,-80},{70,-52}}, color={85,170,255}));
    connect(voltageSensor.plug_p, conductor.plug_p) annotation (Line(points={{-20,-10},{-20,0},{-90,0}}, color={85,170,255}));
    connect(const6.y, currentSource.I) annotation (Line(points={{-79,-50},{-70,-50},{-70,-26.2},{-62,-26.2}},
                                                                                                          color={85,170,255}));
    connect(ramp.y, currentSource.f) annotation (Line(points={{-79,-20},{-74,-20},{-70,-20},{-70,-14},{-62,-14}}, color={0,0,127}));
    connect(currentSource.plug_p, variableAdmittance.plug_n) annotation (Line(points={{-50,-30},{-50,-40},{30,-40}}, color={85,170,255}));
    connect(variableAdmittance.plug_n, voltageSensor.plug_n) annotation (Line(points={{30,-40},{8,-40},{-20,-40},{-20,-36},{-20,-30}}, color={85,170,255}));
    connect(star.plug_p, currentSource.plug_p) annotation (Line(points={{-50,-50},{-50,-50},{-50,-30}}, color={85,170,255}));
    connect(star.pin_n, ground.pin) annotation (Line(points={{-50,-70},{-50,-70},{-50,-80}}, color={85,170,255}));
    annotation (experiment(StopTime=1),
      Documentation(info="<html>
<p>Serial connection of different polyphase basic components</p>
</html>"));
  end SerialConnection;

  model Ideal "Ideal components"
    extends Modelica.Icons.Example;
    parameter Integer m = 3 "Number of phases" annotation(Evaluate=true);
    output SI.ComplexCurrent I[m] = currentSensor.i "Current";
    Modelica.Electrical.QuasiStatic.Polyphase.Ideal.Idle idle(m=m) annotation (Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=270,
          origin={-50,10})));
    Modelica.Electrical.QuasiStatic.Polyphase.Ideal.Short short(m=m) annotation (Placement(transformation(extent={{-80,20},{-60,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Ideal.IdealCommutingSwitch idealCommutingSwitch(m=m,
      Ron=fill(1E-5, m),
      Goff=fill(1E-5, m)) annotation (Placement(transformation(extent={{30,20},{50,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Ideal.IdealIntermediateSwitch idealIntermediateSwitch(m=m,
      Ron=fill(1E-5, m),
      Goff=fill(1E-5, m))                                                                             annotation (Placement(transformation(extent={{60,20},{80,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Ideal.IdealOpeningSwitch idealOpeningSwitch(m=m,
      Ron=fill(1E-5, m),
      Goff=fill(1E-5, m))                                                                      annotation (Placement(transformation(extent={{-40,20},{-20,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Ideal.IdealClosingSwitch idealClosingSwitch(m=m,
      Ron=fill(1E-5, m),
      Goff=fill(1E-5, m))                                                                      annotation (Placement(transformation(extent={{-10,20},{10,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Impedance impedance(
      useHeatPort=true,
      m=m,
      T_ref=fill(293.15, m),
      alpha_ref=fill(0.004, m),
      Z_ref=fill(Complex(2, 2), m))
                        annotation (Placement(transformation(extent={{80,-10},{60,10}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Sources.VoltageSource voltageSource(
      gamma(start=0, fixed=true),
      f=50,
      m=m,
      V=fill(1, m),
      phi=-Modelica.Electrical.Polyphase.Functions.symmetricOrientation(m))
           annotation (Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=270,
          origin={-90,10})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Admittance admittance(
      useHeatPort=true,
      m=m,
      T_ref=fill(293.15, m),
      alpha_ref=fill(0.004, m),
      Y_ref=fill(Complex(0.5, 0.5), m))
                        annotation (Placement(transformation(extent={{80,-30},{60,-10}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Ground ground annotation (Placement(transformation(extent={{-100,-80},{-80,-60}})));
    Modelica.Blocks.Sources.BooleanStep booleanStep1[m](startTime=fill(0.2, m)) annotation (Placement(transformation(extent={{-32,70},{-12,90}})));
    Modelica.Blocks.Sources.BooleanStep booleanStep2[m](startTime=fill(0.4, m)) annotation (Placement(transformation(extent={{70,70},{50,90}})));
    Modelica.Blocks.Sources.BooleanStep booleanStep3[m](startTime=fill(0.6, m)) annotation (Placement(transformation(extent={{100,50},{80,70}})));
    Modelica.Blocks.Sources.BooleanStep booleanStep4[m](startTime=fill(0.8, m)) annotation (Placement(transformation(extent={{-60,50},{-40,70}})));
    Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature[m] annotation (Placement(transformation(extent={{0,-100},{20,-80}})));
    Modelica.Blocks.Sources.Ramp ramp[m](
      height=fill(100, m),
      duration=fill(1, m),
      offset=fill(293.15, m),
      startTime=fill(0, m)) annotation (Placement(transformation(extent={{-40,-100},{-20,-80}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.VariableImpedance variableImpedance(
      useHeatPort=true,
      m=m,
      T_ref=fill(293.15, m),
      alpha_ref=fill(0.004, m))
                       annotation (Placement(transformation(extent={{30,10},{10,-10}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.VariableAdmittance variableAdmittance(
      useHeatPort=true,
      m=m,
      T_ref=fill(293.15, m),
      alpha_ref=fill(0.004, m))
                       annotation (Placement(transformation(extent={{10,-10},{-10,-30}})));
    Modelica.ComplexBlocks.Sources.ComplexConstant const_admittance[m](k=fill(Complex(0.5, 0.5), m)) annotation (Placement(transformation(extent={{-60,-50},{-40,-30}})));
    Modelica.ComplexBlocks.Sources.ComplexConstant const_impedance[m](k=fill(Complex(2, 2), m)) annotation (Placement(transformation(extent={{-30,-70},{-10,-50}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Sensors.CurrentSensor currentSensor annotation (Placement(transformation(extent={{-60,-30},{-80,-10}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star star(m=m) annotation (Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=270,
          origin={-90,-40})));
  equation

    connect(voltageSource.plug_p, short.plug_p) annotation (Line(points={{-90,20},{-90,20},{-90,30},{-80,30}}, color={85,170,255}));
    connect(short.plug_n, idle.plug_p) annotation (Line(points={{-60,30},{-50,30},{-50,20}}, color={85,170,255}));
    connect(short.plug_n, idealOpeningSwitch.plug_p) annotation (Line(points={{-60,30},{-60,30},{-40,30}}, color={85,170,255}));
    connect(booleanStep2.y, idealCommutingSwitch.control) annotation (Line(points={{49,80},{49,80},{40,80},{40,38}}, color={255,0,255}));
    connect(booleanStep3.y, idealIntermediateSwitch.control) annotation (Line(points={{79,60},{70,60},{70,38}}, color={255,0,255}));
    connect(prescribedTemperature.port, admittance.heatPort) annotation (Line(points={{20,-90},{50,-90},{50,-30},{70,-30}}, color={191,0,0}));
    connect(prescribedTemperature.port, impedance.heatPort) annotation (Line(points={{20,-90},{50,-90},{50,-10},{70,-10}}, color={191,0,0}));
    connect(ramp.y, prescribedTemperature.T) annotation (Line(points={{-19,-90},{-10.5,-90},{-2,-90}}, color={0,0,127}));
    connect(variableAdmittance.plug_p, admittance.plug_n) annotation (Line(points={{10,-20},{36,-20},{60,-20}}, color={85,170,255}));
    connect(impedance.plug_n, variableImpedance.plug_p) annotation (Line(points={{60,0},{46,0},{30,0}}, color={85,170,255}));
    connect(variableImpedance.plug_n, variableAdmittance.plug_n) annotation (Line(points={{10,0},{-30,0},{-30,-20},{-10,-20}}, color={85,170,255}));
    connect(const_admittance.y, variableAdmittance.Y_ref) annotation (Line(points={{-39,-40},{-22,-40},{0,-40},{0,-31}}, color={85,170,255}));
    connect(const_impedance.y, variableImpedance.Z_ref) annotation (Line(points={{-9,-60},{4,-60},{20,-60},{20,-11}}, color={85,170,255}));
    connect(variableAdmittance.heatPort, variableImpedance.heatPort) annotation (Line(points={{0,-10},{0,-10},{0,6},{0,10},{20,10}}, color={191,0,0}));
    connect(variableImpedance.heatPort, prescribedTemperature.port) annotation (Line(points={{20,10},{34,10},{50,10},{50,-90},{20,-90}}, color={191,0,0}));
    connect(booleanStep1.y, idealClosingSwitch.control) annotation (Line(points={{-11,80},{0,80},{0,37}}, color={255,0,255}));
    connect(booleanStep4.y, idealOpeningSwitch.control) annotation (Line(points={{-39,60},{-30,60},{-30,37}}, color={255,0,255}));
    connect(idealOpeningSwitch.plug_n, idealClosingSwitch.plug_p) annotation (Line(points={{-20,30},{-15,30},{-10,30}}, color={85,170,255}));
    connect(idle.plug_n, variableAdmittance.plug_n) annotation (Line(points={{-50,0},{-50,0},{-50,-20},{-10,-20}}, color={85,170,255}));
    connect(currentSensor.plug_p, variableAdmittance.plug_n) annotation (Line(points={{-60,-20},{-35,-20},{-10,-20}}, color={85,170,255}));
    connect(currentSensor.plug_n, voltageSource.plug_n) annotation (Line(points={{-80,-20},{-90,-20},{-90,0}}, color={85,170,255}));
    connect(voltageSource.plug_n, star.plug_p) annotation (Line(points={{-90,0},{-90,0},{-90,-30}}, color={85,170,255}));
    connect(star.pin_n, ground.pin) annotation (Line(points={{-90,-50},{-90,-55},{-90,-60}}, color={85,170,255}));
    connect(idealClosingSwitch.plug_n, idealCommutingSwitch.plug_p) annotation (Line(points={{10,30},{18,30},{30,30}}, color={85,170,255}));
    connect(idealCommutingSwitch.plug_n1, idealIntermediateSwitch.plug_p1) annotation (Line(points={{50,35},{56,35},{60,35}}, color={85,170,255}));
    connect(idealCommutingSwitch.plug_n2, idealIntermediateSwitch.plug_p2) annotation (Line(points={{50,30},{56,30},{60,30}}, color={85,170,255}));
    connect(idealIntermediateSwitch.plug_n2, impedance.plug_p) annotation (Line(points={{80,30},{90,30},{90,0},{80,0}}, color={85,170,255}));
    connect(idealIntermediateSwitch.plug_n1, admittance.plug_p) annotation (Line(points={{80,35},{100,35},{100,-20},{80,-20}}, color={85,170,255}));
    annotation (experiment(StopTime=1),      Documentation(info="<html>
<p>Serial connection of different polyphase ideal components and temperature dependent basic components</p>
</html>"));
  end Ideal;

  model FrequencySweep "Tests voltage and current frequency sweep sources"
    extends Modelica.Icons.Example;
    output SI.Current iL[3] = inductor.abs_i "Inductor current";
    output SI.Voltage vC[3] = capacitor.abs_v "Inductor voltage";

    Modelica.Electrical.QuasiStatic.Polyphase.Sources.FrequencySweepVoltageSource voltageSource(
      gamma(start=0, fixed=true),
      startTime=0,
      duration=1,
      V=fill(1, 3),
      fStart=0.01,
      fStop=100) annotation (Placement(transformation(extent={{-40,40},{-20,60}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Inductor  inductor(L=fill(1, 3))  annotation (Placement(transformation(extent={{-40,70},{-20,90}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starV annotation (Placement(transformation(extent={{-20,10},{-40,30}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Ground groundV annotation (Placement(transformation(extent={{-70,0},{-50,20}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Sources.FrequencySweepCurrentSource currentSource(
      gamma(start=0, fixed=true),
      startTime=0,
      duration=1,
      I=fill(1, 3),
      fStart=0.01,
      fStop=100) annotation (Placement(transformation(extent={{-20,-60},{-40,-40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Capacitor capacitor(C=fill(1, 3)) annotation (Placement(transformation(extent={{-40,-30},{-20,-10}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starI     annotation (Placement(transformation(extent={{-20,-90},{-40,-70}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Ground groundI annotation (Placement(transformation(extent={{-70,-100},{-50,-80}})));
  equation
    connect(voltageSource.plug_p, inductor.plug_p) annotation (Line(points={{-40,50},{-50,50},{-50,80},{-40,80}}, color={85,170,255}));
    connect(inductor.plug_n, voltageSource.plug_n) annotation (Line(points={{-20,80},{-10,80},{-10,50},{-20,50}}, color={85,170,255}));
    connect(starV.plug_p, voltageSource.plug_n) annotation (Line(points={{-20,20},{-20,50}}, color={85,170,255}));
    connect(groundV.pin, starV.pin_n) annotation (Line(points={{-60,20},{-40,20}}, color={85,170,255}));
    connect(groundI.pin,starI. pin_n) annotation (Line(points={{-60,-80},{-40,-80}}, color={85,170,255}));
    connect(starI.plug_p,currentSource. plug_p) annotation (Line(points={{-20,-80},{-20,-50}}, color={85,170,255}));
    connect(currentSource.plug_p, capacitor.plug_n) annotation (Line(points={{-20,-50},{-10,-50},{-10,-20},{-20,-20}}, color={85,170,255}));
    connect(capacitor.plug_p,currentSource. plug_n) annotation (Line(points={{-40,-20},{-50,-20},{-50,-50},{-40,-50}}, color={85,170,255}));
  annotation(experiment(StopTime = 1.0));
  end FrequencySweep;

  model TestSensors_RL = Modelica.Electrical.QuasiStatic.Polyphase.Examples.TestSensors(R=1, L=0.002)
    "Variant of TestSensors with a different load impedance"
    annotation (experiment(StopTime=0.1, Interval=0.0001), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.QuasiStatic.Polyphase.Examples.TestSensors\">TestSensors</a> (AronSensor, ReactivePowerSensor) with a load of
R = 1 Ohm and L = 2 mH.
</p>
</html>"));

  model SpacePhasorAndSymmetricalComponentsBlocks "Test of the space phasor and symmetrical component blocks of Modelica.Electrical.QuasiStatic"
    extends Modelica.Icons.Example;

    Modelica.Blocks.Sources.Cosine cosine(f=1)
      annotation (Placement(transformation(extent={{-100,20},{-80,40}})));
    Modelica.Blocks.Sources.Sine sine(f=1)
      annotation (Placement(transformation(extent={{-100,-20},{-80,0}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Blocks.FromSpacePhasor fromSpacePhasor(m=3)
      annotation (Placement(transformation(extent={{-60,0},{-40,20}})));
    Modelica.Electrical.QuasiStatic.Machines.SpacePhasors.Blocks.ToSpacePhasor toSpacePhasor(m=3)
      annotation (Placement(transformation(extent={{-20,0},{0,20}})));
    Modelica.Blocks.Sources.Cosine cosine2(f=1, amplitude=2)
      annotation (Placement(transformation(extent={{-100,-70},{-80,-50}})));
    Modelica.Blocks.Sources.Sine sine2(f=1, amplitude=2)
      annotation (Placement(transformation(extent={{-100,-110},{-80,-90}})));
    Modelica.Electrical.QuasiStatic.Machines.SpacePhasors.Blocks.FromSpacePhasor fromSpacePhasor2(m=3)
      annotation (Placement(transformation(extent={{-60,-90},{-40,-70}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Blocks.SymmetricalComponents symmetricalComponents(m=3)
      annotation (Placement(transformation(extent={{-20,-90},{0,-70}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Blocks.FromSymmetricalComponents fromSymmetricalComponents(m=3)
      annotation (Placement(transformation(extent={{20,-90},{40,-70}})));
  equation
    connect(cosine.y, fromSpacePhasor.u[1]) annotation (Line(points={{-79,30},{-70,30},{-70,10},{-62,10}}, color={0,0,127}));
    connect(sine.y, fromSpacePhasor.u[2]) annotation (Line(points={{-79,-10},{-70,-10},{-70,10},{-62,10}}, color={0,0,127}));
    connect(fromSpacePhasor.y, toSpacePhasor.u) annotation (Line(points={{-39,10},{-22,10}}, color={0,0,127}));
    connect(cosine2.y, fromSpacePhasor2.u[1]) annotation (Line(points={{-79,-60},{-70,-60},{-70,-80},{-62,-80}}, color={0,0,127}));
    connect(sine2.y, fromSpacePhasor2.u[2]) annotation (Line(points={{-79,-100},{-70,-100},{-70,-80},{-62,-80}}, color={0,0,127}));
    connect(fromSpacePhasor2.y, symmetricalComponents.u) annotation (Line(points={{-39,-80},{-22,-80}}, color={0,0,127}));
    connect(symmetricalComponents.y, fromSymmetricalComponents.u) annotation (Line(points={{1,-80},{18,-80}}, color={0,0,127}));
    annotation (Diagram(coordinateSystem(extent={{-100,-120},{100,100}})),
      experiment(StopTime=1),
      Documentation(info="<html>
<p>
A rotating space phasor (cos, sin with 1 Hz, amplitude 1) is converted to 3 complex phasors by
Polyphase.Blocks.FromSpacePhasor and back by Machines.SpacePhasors.Blocks.ToSpacePhasor. A second
space phasor (amplitude 2) is converted by Machines.SpacePhasors.Blocks.FromSpacePhasor, decomposed into
symmetrical components and recomposed by FromSymmetricalComponents.
</p>
</html>"));
  end SpacePhasorAndSymmetricalComponentsBlocks;

  model ReferenceSourceAndSensors "Test of ReferenceVoltageSource, CurrentSource, MultiStarResistance and frequency/reference sensors"
    extends Modelica.Icons.Example;

    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Ground ground
      annotation (Placement(transformation(extent={{-70,-100},{-50,-80}})));
    Modelica.Blocks.Sources.Ramp gammaRamp(height=2*Modelica.Constants.pi*100, duration=2)
      annotation (Placement(transformation(extent={{-100,60},{-80,80}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Sources.ReferenceVoltageSource voltageSource(m=3, V={Complex(100, 0), Complex(-50, -86.60254037844386), Complex(-50, 86.60254037844386)})
      annotation (Placement(transformation(extent={{-70,20},{-50,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starS(m=3)
      annotation (Placement(transformation(extent={{-70,-30},{-50,-10}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Inductor inductor(m=3, L=fill(0.1, 3))
      annotation (Placement(transformation(extent={{-30,40},{-10,60}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor load(m=3, R_ref=fill(10, 3))
      annotation (Placement(transformation(extent={{10,40},{30,60}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.MultiStarResistance multiStar(m=3, R=1)
      annotation (Placement(transformation(extent={{10,0},{30,20}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Sensors.FrequencySensor frequencySensor(m=3)
      annotation (Placement(transformation(extent={{-30,80},{-10,100}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.PlugToPin_p plugToPin(m=3, k=1)
      annotation (Placement(transformation(extent={{-40,-10},{-20,10}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Sensors.FrequencySensor frequencySensor1
      annotation (Placement(transformation(extent={{-20,-20},{0,0}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Sensors.ReferenceSensor referenceSensor
      annotation (Placement(transformation(extent={{-20,-50},{0,-30}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Sources.CurrentSource currentSource(m=3, f=60, I=fill(2, 3), gamma(fixed=true, start=0))
      annotation (Placement(transformation(extent={{50,-60},{70,-40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor load2(m=3, R_ref=fill(5, 3))
      annotation (Placement(transformation(extent={{80,-60},{100,-40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starC(m=3)
      annotation (Placement(transformation(extent={{50,-100},{70,-80}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Ground groundC
      annotation (Placement(transformation(extent={{50,-130},{70,-110}})));
  equation
    connect(gammaRamp.y, voltageSource.gamma) annotation (Line(points={{-79,70},{-76,70},{-76,30},{-72,30}}, color={0,0,127}));
    connect(voltageSource.plug_n, starS.plug_p) annotation (Line(points={{-49,30},{-76,30},{-76,-20},{-72,-20}}, color={0,0,127}));
    connect(starS.pin_n, ground.pin) annotation (Line(points={{-49,-20},{-76,-20},{-76,-90},{-72,-90}}, color={0,0,127}));
    connect(voltageSource.plug_p, inductor.plug_p) annotation (Line(points={{-49,30},{-40,30},{-40,50},{-32,50}}, color={0,0,127}));
    connect(inductor.plug_n, load.plug_p) annotation (Line(points={{-9,50},{8,50}}, color={0,0,127}));
    connect(load.plug_n, multiStar.plug) annotation (Line(points={{31,50},{4,50},{4,10},{8,10}}, color={0,0,127}));
    connect(multiStar.pin, ground.pin) annotation (Line(points={{31,10},{-76,10},{-76,-90},{-72,-90}}, color={0,0,127}));
    connect(voltageSource.plug_p, frequencySensor.plug_p) annotation (Line(points={{-49,30},{-40,30},{-40,90},{-32,90}}, color={0,0,127}));
    connect(voltageSource.plug_p, plugToPin.plug_p) annotation (Line(points={{-49,30},{-46,30},{-46,0},{-42,0}}, color={0,0,127}));
    connect(plugToPin.pin_p, frequencySensor1.pin) annotation (Line(points={{-19,0},{-26,0},{-26,-10},{-22,-10}}, color={0,0,127}));
    connect(plugToPin.pin_p, referenceSensor.pin) annotation (Line(points={{-19,0},{-26,0},{-26,-40},{-22,-40}}, color={0,0,127}));
    connect(currentSource.plug_p, load2.plug_p) annotation (Line(points={{71,-50},{78,-50}}, color={0,0,127}));
    connect(currentSource.plug_n, starC.plug_p) annotation (Line(points={{71,-50},{44,-50},{44,-90},{48,-90}}, color={0,0,127}));
    connect(load2.plug_n, starC.plug_p) annotation (Line(points={{101,-50},{44,-50},{44,-90},{48,-90}}, color={0,0,127}));
    connect(starC.pin_n, groundC.pin) annotation (Line(points={{71,-90},{44,-90},{44,-120},{48,-120}}, color={0,0,127}));
    annotation (Diagram(coordinateSystem(extent={{-100,-140},{100,110}})),
      experiment(StopTime=1),
      Documentation(info="<html>
<p>
A <a href=\"modelica://Modelica.Electrical.QuasiStatic.Polyphase.Sources.ReferenceVoltageSource\">ReferenceVoltageSource</a>,
whose reference angle ramps with 2&pi;&middot;50 rad/s (i.e. 50 Hz; the ramp ends after the stop time) and
whose voltage phasor input is bound to a symmetric 100 V system, feeds an inductive-resistive load, grounded
by a MultiStarResistance. A 60 Hz CurrentSource feeds a second resistive load. The two quasi-static systems
have independent references and therefore separate grounds: one ground shared by both would join two
reference roots in one overdetermined connection graph. The frequency is measured by the polyphase and single-phase
FrequencySensor, the reference angle by the single-phase ReferenceSensor.
</p>
</html>"));
  end ReferenceSourceAndSensors;

  model MutualInductor "Test of Modelica.Electrical.QuasiStatic.Polyphase.Basic.MutualInductor"
    extends Modelica.Icons.Example;

    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Ground ground
      annotation (Placement(transformation(extent={{-70,-70},{-50,-50}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Sources.VoltageSource source(m=3, f=50, V=fill(100, 3), gamma(fixed=true, start=0))
      annotation (Placement(transformation(extent={{-70,10},{-50,30}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starS(m=3)
      annotation (Placement(transformation(extent={{-70,-30},{-50,-10}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.MutualInductor mutualInductor(m=3, L=[0.1, 0.02, 0.02; 0.02, 0.1, 0.02; 0.02, 0.02, 0.1])
      annotation (Placement(transformation(extent={{-30,30},{-10,50}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor load(m=3, R_ref=fill(10, 3))
      annotation (Placement(transformation(extent={{10,30},{30,50}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starL(m=3)
      annotation (Placement(transformation(extent={{10,-30},{30,-10}})));
  equation
    connect(source.plug_n, starS.plug_p) annotation (Line(points={{-49,20},{-76,20},{-76,-20},{-72,-20}}, color={0,0,127}));
    connect(starS.pin_n, ground.pin) annotation (Line(points={{-49,-20},{-76,-20},{-76,-60},{-72,-60}}, color={0,0,127}));
    connect(source.plug_p, mutualInductor.plug_p) annotation (Line(points={{-49,20},{-40,20},{-40,40},{-32,40}}, color={0,0,127}));
    connect(mutualInductor.plug_n, load.plug_p) annotation (Line(points={{-9,40},{8,40}}, color={0,0,127}));
    connect(load.plug_n, starL.plug_p) annotation (Line(points={{31,40},{4,40},{4,-20},{8,-20}}, color={0,0,127}));
    connect(starL.pin_n, ground.pin) annotation (Line(points={{31,-20},{-76,-20},{-76,-60},{-72,-60}}, color={0,0,127}));
    annotation (experiment(StopTime=1),
      Documentation(info="<html>
<p>
A symmetric 3 phase source (100 V, 50 Hz) feeds a
<a href=\"modelica://Modelica.Electrical.QuasiStatic.Polyphase.Basic.MutualInductor\">MutualInductor</a>
with self inductances of 0.1 H and mutual inductances of 0.02 H in series with a resistive load of 10 Ohm.
The phase currents equal those of uncoupled inductances of 0.1 - 0.02 = 0.08 H.
</p>
</html>"));
  end MutualInductor;
end Polyphase;
