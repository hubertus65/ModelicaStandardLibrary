within ModelicaTest.Electrical.QuasiStatic;
package Machines "Test models for Modelica.Electrical.QuasiStatic.Machines"
  extends Modelica.Icons.ExamplesPackage;

  model QuasiStaticTransformersDd "Test of the quasi-static transformers of vector group Dd"
    extends Modelica.Icons.Example;

    Modelica.Electrical.QuasiStatic.Polyphase.Sources.VoltageSource source(m=3, f=50, V=fill(100/sqrt(3), 3), gamma(fixed=true, start=0))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-90,-10})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starS(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-50})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Ground ground
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-90,-100})));
    parameter Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData data(C1="D", C2="d")
      annotation (Placement(transformation(extent={{-100,70},{-80,90}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dd.Dd00 dd00(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-50,50},{-30,70}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDd00(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,30})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDd00(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,0})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dd.Dd02 dd02(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,60})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDd02(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,30})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDd02(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,0})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dd.Dd04 dd04(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,60})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDd04(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,30})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDd04(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,0})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dd.Dd06 dd06(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-40})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDd06(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-70})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDd06(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-100})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dd.Dd08 dd08(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-40})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDd08(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-70})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDd08(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-100})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dd.Dd10 dd10(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,-40})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDd10(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,-70})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDd10(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,-100})));
  equation
    connect(source.plug_n, starS.plug_p) annotation (Line(points={{-100,-10},{-104,-10},{-104,-50},{-100,-50}}, color={85,170,255}));
    connect(starS.pin_n, ground.pin) annotation (Line(points={{-80,-50},{-76,-50},{-76,-100},{-80,-100}}, color={85,170,255}));
    connect(source.plug_p, dd00.plug1) annotation (Line(points={{-80,-10},{-54,-10},{-54,60},{-50,60}}, color={85,170,255}));
    connect(dd00.plug2, loadDd00.plug_p) annotation (Line(points={{-30,60},{-26,60},{-26,44},{-40,44},{-40,40}}, color={85,170,255}));
    connect(loadDd00.plug_n, starLDd00.plug_p) annotation (Line(points={{-40,20},{-40,10}}, color={85,170,255}));
    connect(starLDd00.pin_n, ground.pin) annotation (Line(points={{-40,-10},{-40,-20},{-76,-20},{-76,-100},{-80,-100}}, color={85,170,255}));
    connect(source.plug_p, dd02.plug1) annotation (Line(points={{-80,-10},{-54,-10},{-54,72},{-14,72},{-14,60},{-10,60}}, color={85,170,255}));
    connect(dd02.plug2, loadDd02.plug_p) annotation (Line(points={{10,60},{14,60},{14,44},{0,44},{0,40}}, color={85,170,255}));
    connect(loadDd02.plug_n, starLDd02.plug_p) annotation (Line(points={{0,20},{0,10}}, color={85,170,255}));
    connect(starLDd02.pin_n, ground.pin) annotation (Line(points={{0,-10},{0,-14},{-40,-14},{-40,-20},{-76,-20},{-76,-100},{-80,-100}}, color={85,170,255}));
    connect(source.plug_p, dd04.plug1) annotation (Line(points={{-80,-10},{-54,-10},{-54,72},{16,72},{16,60},{20,60}}, color={85,170,255}));
    connect(dd04.plug2, loadDd04.plug_p) annotation (Line(points={{40,60},{44,60},{44,44},{30,44},{30,40}}, color={85,170,255}));
    connect(loadDd04.plug_n, starLDd04.plug_p) annotation (Line(points={{30,20},{30,10}}, color={85,170,255}));
    connect(starLDd04.pin_n, ground.pin) annotation (Line(points={{30,-10},{30,-14},{-40,-14},{-40,-20},{-76,-20},{-76,-100},{-80,-100}}, color={85,170,255}));
    connect(source.plug_p, dd06.plug1) annotation (Line(points={{-80,-10},{-60,-10},{-60,-26},{-40,-26},{-40,-30}}, color={85,170,255}));
    connect(dd06.plug2, loadDd06.plug_p) annotation (Line(points={{-40,-50},{-40,-60}}, color={85,170,255}));
    connect(loadDd06.plug_n, starLDd06.plug_p) annotation (Line(points={{-40,-80},{-40,-90}}, color={85,170,255}));
    connect(starLDd06.pin_n, ground.pin) annotation (Line(points={{-40,-110},{-40,-114},{-76,-114},{-76,-100},{-80,-100}}, color={85,170,255}));
    connect(source.plug_p, dd08.plug1) annotation (Line(points={{-80,-10},{-60,-10},{-60,-26},{0,-26},{0,-30}}, color={85,170,255}));
    connect(dd08.plug2, loadDd08.plug_p) annotation (Line(points={{0,-50},{0,-60}}, color={85,170,255}));
    connect(loadDd08.plug_n, starLDd08.plug_p) annotation (Line(points={{0,-80},{0,-90}}, color={85,170,255}));
    connect(starLDd08.pin_n, ground.pin) annotation (Line(points={{0,-110},{0,-114},{-76,-114},{-76,-100},{-80,-100}}, color={85,170,255}));
    connect(source.plug_p, dd10.plug1) annotation (Line(points={{-80,-10},{-60,-10},{-60,-26},{30,-26},{30,-30}}, color={85,170,255}));
    connect(dd10.plug2, loadDd10.plug_p) annotation (Line(points={{30,-50},{30,-60}}, color={85,170,255}));
    connect(loadDd10.plug_n, starLDd10.plug_p) annotation (Line(points={{30,-80},{30,-90}}, color={85,170,255}));
    connect(starLDd10.pin_n, ground.pin) annotation (Line(points={{30,-110},{30,-114},{-76,-114},{-76,-100},{-80,-100}}, color={85,170,255}));
    annotation (Diagram(coordinateSystem(extent={{-120,-120},{100,100}})),
      experiment(StopTime=0.1),
      Documentation(info="<html>
<p>
All 6 QuasiStatic transformers of vector group Dd (Dd00, Dd02, Dd04, Dd06, Dd08, Dd10), fed in parallel by a symmetric
3 phase source with 100 V line-to-line, each loaded by a symmetric resistive star load of 1/3 Ohm.
The transformer parameters are taken from a
<a href=\"modelica://Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData\">TransformerData</a>
record with C1=&quot;D&quot; and C2=&quot;d&quot;.
The phase 1 load voltages differ in their phase shift by 60 degree (clock number times 30 degree).
</p>
</html>"));
  end QuasiStaticTransformersDd;

  model QuasiStaticTransformersDy "Test of the quasi-static transformers of vector group Dy"
    extends Modelica.Icons.Example;

    Modelica.Electrical.QuasiStatic.Polyphase.Sources.VoltageSource source(m=3, f=50, V=fill(100/sqrt(3), 3), gamma(fixed=true, start=0))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-90,-20})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starS(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-100})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Ground ground
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-90,-150})));
    parameter Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData data(C1="D", C2="y")
      annotation (Placement(transformation(extent={{-100,70},{-80,90}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dy.Dy01 dy01(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,50})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDy01(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,20})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDy01(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-20})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Dy01(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-10,80})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dy.Dy03 dy03(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,50})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDy03(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,20})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDy03(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-20})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Dy03(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={20,80})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dy.Dy05 dy05(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,50})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDy05(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,20})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDy05(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,-20})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Dy05(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={60,80})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dy.Dy07 dy07(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,-90})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDy07(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-120})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDy07(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-150})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Dy07(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-10,-50})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dy.Dy09 dy09(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-90})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDy09(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-120})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDy09(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-150})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Dy09(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={20,-50})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dy.Dy11 dy11(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,-90})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDy11(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,-120})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDy11(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,-150})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Dy11(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={60,-50})));
  equation
    connect(source.plug_n, starS.plug_p) annotation (Line(points={{-100,-20},{-104,-20},{-104,-100},{-100,-100}}, color={85,170,255}));
    connect(starS.pin_n, ground.pin) annotation (Line(points={{-80,-100},{-76,-100},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, dy01.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,50},{-50,50}}, color={85,170,255}));
    connect(dy01.plug2, loadDy01.plug_p) annotation (Line(points={{-30,50},{-26,50},{-26,34},{-40,34},{-40,30}}, color={85,170,255}));
    connect(loadDy01.plug_n, starLDy01.plug_p) annotation (Line(points={{-40,10},{-40,-10}}, color={85,170,255}));
    connect(starLDy01.pin_n, ground.pin) annotation (Line(points={{-40,-30},{-40,-70},{-76,-70},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(dy01.starpoint2, earth2Dy01.pin_p) annotation (Line(points={{-35,40},{-35,36},{-12,36},{-12,68},{4,68},{4,80},{0,80}}, color={85,170,255}));
    connect(earth2Dy01.pin_n, ground.pin) annotation (Line(points={{-20,80},{-60,80},{-60,-70},{-76,-70},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, dy03.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,62},{-14,62},{-14,50},{-10,50}}, color={85,170,255}));
    connect(dy03.plug2, loadDy03.plug_p) annotation (Line(points={{10,50},{14,50},{14,34},{0,34},{0,30}}, color={85,170,255}));
    connect(loadDy03.plug_n, starLDy03.plug_p) annotation (Line(points={{0,10},{0,-10}}, color={85,170,255}));
    connect(starLDy03.pin_n, ground.pin) annotation (Line(points={{0,-30},{0,-38},{-40,-38},{-40,-70},{-76,-70},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(dy03.starpoint2, earth2Dy03.pin_p) annotation (Line(points={{5,40},{5,36},{18,36},{18,68},{34,68},{34,80},{30,80}}, color={85,170,255}));
    connect(earth2Dy03.pin_n, ground.pin) annotation (Line(points={{10,80},{6,80},{6,66},{-60,66},{-60,-70},{-76,-70},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, dy05.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,62},{16,62},{16,50},{20,50}}, color={85,170,255}));
    connect(dy05.plug2, loadDy05.plug_p) annotation (Line(points={{40,50},{44,50},{44,34},{30,34},{30,30}}, color={85,170,255}));
    connect(loadDy05.plug_n, starLDy05.plug_p) annotation (Line(points={{30,10},{30,-10}}, color={85,170,255}));
    connect(starLDy05.pin_n, ground.pin) annotation (Line(points={{30,-30},{30,-36},{6,-36},{6,-38},{-40,-38},{-40,-70},{-76,-70},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(dy05.starpoint2, earth2Dy05.pin_p) annotation (Line(points={{35,40},{35,36},{74,36},{74,80},{70,80}}, color={85,170,255}));
    connect(earth2Dy05.pin_n, ground.pin) annotation (Line(points={{50,80},{46,80},{46,-50},{40,-50},{40,-38},{-40,-38},{-40,-70},{-76,-70},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, dy07.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-90},{-50,-90}}, color={85,170,255}));
    connect(dy07.plug2, loadDy07.plug_p) annotation (Line(points={{-30,-90},{-26,-90},{-26,-106},{-40,-106},{-40,-110}}, color={85,170,255}));
    connect(loadDy07.plug_n, starLDy07.plug_p) annotation (Line(points={{-40,-130},{-40,-140}}, color={85,170,255}));
    connect(starLDy07.pin_n, ground.pin) annotation (Line(points={{-40,-160},{-40,-164},{-76,-164},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(dy07.starpoint2, earth2Dy07.pin_p) annotation (Line(points={{-35,-100},{-35,-104},{-20,-104},{-20,-70},{4,-70},{4,-50},{0,-50}}, color={85,170,255}));
    connect(earth2Dy07.pin_n, ground.pin) annotation (Line(points={{-20,-50},{-40,-50},{-40,-70},{-76,-70},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, dy09.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-78},{-14,-78},{-14,-90},{-10,-90}}, color={85,170,255}));
    connect(dy09.plug2, loadDy09.plug_p) annotation (Line(points={{10,-90},{14,-90},{14,-106},{0,-106},{0,-110}}, color={85,170,255}));
    connect(loadDy09.plug_n, starLDy09.plug_p) annotation (Line(points={{0,-130},{0,-140}}, color={85,170,255}));
    connect(starLDy09.pin_n, ground.pin) annotation (Line(points={{0,-160},{0,-164},{-76,-164},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(dy09.starpoint2, earth2Dy09.pin_p) annotation (Line(points={{5,-100},{5,-104},{18,-104},{18,-62},{34,-62},{34,-50},{30,-50}}, color={85,170,255}));
    connect(earth2Dy09.pin_n, ground.pin) annotation (Line(points={{10,-50},{6,-50},{6,-38},{-40,-38},{-40,-70},{-76,-70},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, dy11.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-78},{16,-78},{16,-90},{20,-90}}, color={85,170,255}));
    connect(dy11.plug2, loadDy11.plug_p) annotation (Line(points={{40,-90},{44,-90},{44,-106},{30,-106},{30,-110}}, color={85,170,255}));
    connect(loadDy11.plug_n, starLDy11.plug_p) annotation (Line(points={{30,-130},{30,-140}}, color={85,170,255}));
    connect(starLDy11.pin_n, ground.pin) annotation (Line(points={{30,-160},{30,-164},{-76,-164},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(dy11.starpoint2, earth2Dy11.pin_p) annotation (Line(points={{35,-100},{35,-104},{74,-104},{74,-50},{70,-50}}, color={85,170,255}));
    connect(earth2Dy11.pin_n, ground.pin) annotation (Line(points={{50,-50},{40,-50},{40,-38},{-40,-38},{-40,-70},{-76,-70},{-76,-150},{-80,-150}}, color={85,170,255}));
    annotation (Diagram(coordinateSystem(extent={{-120,-180},{100,100}})),
      experiment(StopTime=0.1),
      Documentation(info="<html>
<p>
All 6 QuasiStatic transformers of vector group Dy (Dy01, Dy03, Dy05, Dy07, Dy09, Dy11), fed in parallel by a symmetric
3 phase source with 100 V line-to-line, each loaded by a symmetric resistive star load of 1/3 Ohm.
The transformer parameters are taken from a
<a href=\"modelica://Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData\">TransformerData</a>
record with C1=&quot;D&quot; and C2=&quot;y&quot;. The secondary starpoints are grounded by an earthing resistance of 1 MOhm.
The phase 1 load voltages differ in their phase shift by 60 degree (clock number times 30 degree).
</p>
</html>"));
  end QuasiStaticTransformersDy;

  model QuasiStaticTransformersDz "Test of the quasi-static transformers of vector group Dz"
    extends Modelica.Icons.Example;

    Modelica.Electrical.QuasiStatic.Polyphase.Sources.VoltageSource source(m=3, f=50, V=fill(100/sqrt(3), 3), gamma(fixed=true, start=0))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-90,-20})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starS(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-100})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Ground ground
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-90,-150})));
    parameter Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData data(C1="D", C2="z")
      annotation (Placement(transformation(extent={{-100,70},{-80,90}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dz.Dz00 dz00(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,50})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDz00(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,20})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDz00(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-20})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Dz00(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-10,80})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dz.Dz02 dz02(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,50})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDz02(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,20})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDz02(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-20})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Dz02(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={20,80})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dz.Dz04 dz04(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,50})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDz04(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,20})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDz04(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,-20})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Dz04(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={60,80})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dz.Dz06 dz06(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,-90})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDz06(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-120})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDz06(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-150})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Dz06(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-10,-50})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dz.Dz08 dz08(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-90})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDz08(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-120})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDz08(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-150})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Dz08(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={20,-50})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dz.Dz10 dz10(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,-90})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDz10(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,-120})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDz10(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,-150})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Dz10(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={60,-50})));
  equation
    connect(source.plug_n, starS.plug_p) annotation (Line(points={{-100,-20},{-104,-20},{-104,-100},{-100,-100}}, color={85,170,255}));
    connect(starS.pin_n, ground.pin) annotation (Line(points={{-80,-100},{-76,-100},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, dz00.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,50},{-50,50}}, color={85,170,255}));
    connect(dz00.plug2, loadDz00.plug_p) annotation (Line(points={{-30,50},{-26,50},{-26,34},{-40,34},{-40,30}}, color={85,170,255}));
    connect(loadDz00.plug_n, starLDz00.plug_p) annotation (Line(points={{-40,10},{-40,-10}}, color={85,170,255}));
    connect(starLDz00.pin_n, ground.pin) annotation (Line(points={{-40,-30},{-40,-70},{-76,-70},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(dz00.starpoint2, earth2Dz00.pin_p) annotation (Line(points={{-35,40},{-35,36},{-12,36},{-12,68},{4,68},{4,80},{0,80}}, color={85,170,255}));
    connect(earth2Dz00.pin_n, ground.pin) annotation (Line(points={{-20,80},{-60,80},{-60,-70},{-76,-70},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, dz02.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,62},{-14,62},{-14,50},{-10,50}}, color={85,170,255}));
    connect(dz02.plug2, loadDz02.plug_p) annotation (Line(points={{10,50},{14,50},{14,34},{0,34},{0,30}}, color={85,170,255}));
    connect(loadDz02.plug_n, starLDz02.plug_p) annotation (Line(points={{0,10},{0,-10}}, color={85,170,255}));
    connect(starLDz02.pin_n, ground.pin) annotation (Line(points={{0,-30},{0,-38},{-40,-38},{-40,-70},{-76,-70},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(dz02.starpoint2, earth2Dz02.pin_p) annotation (Line(points={{5,40},{5,36},{18,36},{18,68},{34,68},{34,80},{30,80}}, color={85,170,255}));
    connect(earth2Dz02.pin_n, ground.pin) annotation (Line(points={{10,80},{6,80},{6,66},{-60,66},{-60,-70},{-76,-70},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, dz04.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,62},{16,62},{16,50},{20,50}}, color={85,170,255}));
    connect(dz04.plug2, loadDz04.plug_p) annotation (Line(points={{40,50},{44,50},{44,34},{30,34},{30,30}}, color={85,170,255}));
    connect(loadDz04.plug_n, starLDz04.plug_p) annotation (Line(points={{30,10},{30,-10}}, color={85,170,255}));
    connect(starLDz04.pin_n, ground.pin) annotation (Line(points={{30,-30},{30,-36},{6,-36},{6,-38},{-40,-38},{-40,-70},{-76,-70},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(dz04.starpoint2, earth2Dz04.pin_p) annotation (Line(points={{35,40},{35,36},{74,36},{74,80},{70,80}}, color={85,170,255}));
    connect(earth2Dz04.pin_n, ground.pin) annotation (Line(points={{50,80},{46,80},{46,-50},{40,-50},{40,-38},{-40,-38},{-40,-70},{-76,-70},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, dz06.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-90},{-50,-90}}, color={85,170,255}));
    connect(dz06.plug2, loadDz06.plug_p) annotation (Line(points={{-30,-90},{-26,-90},{-26,-106},{-40,-106},{-40,-110}}, color={85,170,255}));
    connect(loadDz06.plug_n, starLDz06.plug_p) annotation (Line(points={{-40,-130},{-40,-140}}, color={85,170,255}));
    connect(starLDz06.pin_n, ground.pin) annotation (Line(points={{-40,-160},{-40,-164},{-76,-164},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(dz06.starpoint2, earth2Dz06.pin_p) annotation (Line(points={{-35,-100},{-35,-104},{-20,-104},{-20,-70},{4,-70},{4,-50},{0,-50}}, color={85,170,255}));
    connect(earth2Dz06.pin_n, ground.pin) annotation (Line(points={{-20,-50},{-40,-50},{-40,-70},{-76,-70},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, dz08.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-78},{-14,-78},{-14,-90},{-10,-90}}, color={85,170,255}));
    connect(dz08.plug2, loadDz08.plug_p) annotation (Line(points={{10,-90},{14,-90},{14,-106},{0,-106},{0,-110}}, color={85,170,255}));
    connect(loadDz08.plug_n, starLDz08.plug_p) annotation (Line(points={{0,-130},{0,-140}}, color={85,170,255}));
    connect(starLDz08.pin_n, ground.pin) annotation (Line(points={{0,-160},{0,-164},{-76,-164},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(dz08.starpoint2, earth2Dz08.pin_p) annotation (Line(points={{5,-100},{5,-104},{18,-104},{18,-62},{34,-62},{34,-50},{30,-50}}, color={85,170,255}));
    connect(earth2Dz08.pin_n, ground.pin) annotation (Line(points={{10,-50},{6,-50},{6,-38},{-40,-38},{-40,-70},{-76,-70},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, dz10.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-78},{16,-78},{16,-90},{20,-90}}, color={85,170,255}));
    connect(dz10.plug2, loadDz10.plug_p) annotation (Line(points={{40,-90},{44,-90},{44,-106},{30,-106},{30,-110}}, color={85,170,255}));
    connect(loadDz10.plug_n, starLDz10.plug_p) annotation (Line(points={{30,-130},{30,-140}}, color={85,170,255}));
    connect(starLDz10.pin_n, ground.pin) annotation (Line(points={{30,-160},{30,-164},{-76,-164},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(dz10.starpoint2, earth2Dz10.pin_p) annotation (Line(points={{35,-100},{35,-104},{74,-104},{74,-50},{70,-50}}, color={85,170,255}));
    connect(earth2Dz10.pin_n, ground.pin) annotation (Line(points={{50,-50},{40,-50},{40,-38},{-40,-38},{-40,-70},{-76,-70},{-76,-150},{-80,-150}}, color={85,170,255}));
    annotation (Diagram(coordinateSystem(extent={{-120,-180},{100,100}})),
      experiment(StopTime=0.1),
      Documentation(info="<html>
<p>
All 6 QuasiStatic transformers of vector group Dz (Dz00, Dz02, Dz04, Dz06, Dz08, Dz10), fed in parallel by a symmetric
3 phase source with 100 V line-to-line, each loaded by a symmetric resistive star load of 1/3 Ohm.
The transformer parameters are taken from a
<a href=\"modelica://Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData\">TransformerData</a>
record with C1=&quot;D&quot; and C2=&quot;z&quot;. The secondary starpoints are grounded by an earthing resistance of 1 MOhm.
The phase 1 load voltages differ in their phase shift by 60 degree (clock number times 30 degree).
</p>
</html>"));
  end QuasiStaticTransformersDz;

  model QuasiStaticTransformersYd "Test of the quasi-static transformers of vector group Yd"
    extends Modelica.Icons.Example;

    Modelica.Electrical.QuasiStatic.Polyphase.Sources.VoltageSource source(m=3, f=50, V=fill(100/sqrt(3), 3), gamma(fixed=true, start=0))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-90,-20})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starS(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-100})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Ground ground
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-90,-150})));
    parameter Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData data(C1="Y", C2="d")
      annotation (Placement(transformation(extent={{-100,70},{-80,90}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yd.Yd01 yd01(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,50})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYd01(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,20})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYd01(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-20})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yd01(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-10,80})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yd.Yd03 yd03(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,50})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYd03(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,20})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYd03(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-20})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yd03(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={20,80})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yd.Yd05 yd05(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,50})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYd05(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,20})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYd05(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,-20})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yd05(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={60,80})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yd.Yd07 yd07(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,-90})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYd07(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-120})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYd07(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-150})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yd07(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-10,-50})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yd.Yd09 yd09(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-90})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYd09(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-120})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYd09(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={0,-150})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yd09(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={20,-50})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yd.Yd11 yd11(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,-90})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYd11(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,-120})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYd11(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={30,-150})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yd11(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={60,-50})));
  equation
    connect(source.plug_n, starS.plug_p) annotation (Line(points={{-100,-20},{-104,-20},{-104,-100},{-100,-100}}, color={85,170,255}));
    connect(starS.pin_n, ground.pin) annotation (Line(points={{-80,-100},{-76,-100},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, yd01.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,50},{-50,50}}, color={85,170,255}));
    connect(yd01.plug2, loadYd01.plug_p) annotation (Line(points={{-30,50},{-26,50},{-26,34},{-40,34},{-40,30}}, color={85,170,255}));
    connect(loadYd01.plug_n, starLYd01.plug_p) annotation (Line(points={{-40,10},{-40,-10}}, color={85,170,255}));
    connect(starLYd01.pin_n, ground.pin) annotation (Line(points={{-40,-30},{-40,-36},{-76,-36},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yd01.starpoint1, earth1Yd01.pin_p) annotation (Line(points={{-45,40},{-45,36},{-52,36},{-52,92},{4,92},{4,80},{0,80}}, color={85,170,255}));
    connect(earth1Yd01.pin_n, ground.pin) annotation (Line(points={{-20,80},{-24,80},{-24,-36},{-76,-36},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, yd03.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,32},{-14,32},{-14,50},{-10,50}}, color={85,170,255}));
    connect(yd03.plug2, loadYd03.plug_p) annotation (Line(points={{10,50},{14,50},{14,34},{0,34},{0,30}}, color={85,170,255}));
    connect(loadYd03.plug_n, starLYd03.plug_p) annotation (Line(points={{0,10},{0,-10}}, color={85,170,255}));
    connect(starLYd03.pin_n, ground.pin) annotation (Line(points={{0,-30},{0,-36},{-76,-36},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yd03.starpoint1, earth1Yd03.pin_p) annotation (Line(points={{-5,40},{-5,36},{-12,36},{-12,68},{34,68},{34,80},{30,80}}, color={85,170,255}));
    connect(earth1Yd03.pin_n, ground.pin) annotation (Line(points={{10,80},{6,80},{6,66},{-24,66},{-24,-36},{-76,-36},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, yd05.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,32},{16,32},{16,50},{20,50}}, color={85,170,255}));
    connect(yd05.plug2, loadYd05.plug_p) annotation (Line(points={{40,50},{44,50},{44,34},{30,34},{30,30}}, color={85,170,255}));
    connect(loadYd05.plug_n, starLYd05.plug_p) annotation (Line(points={{30,10},{30,-10}}, color={85,170,255}));
    connect(starLYd05.pin_n, ground.pin) annotation (Line(points={{30,-30},{30,-34},{6,-34},{6,-36},{-76,-36},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yd05.starpoint1, earth1Yd05.pin_p) annotation (Line(points={{25,40},{25,36},{74,36},{74,80},{70,80}}, color={85,170,255}));
    connect(earth1Yd05.pin_n, ground.pin) annotation (Line(points={{50,80},{40,80},{40,66},{-24,66},{-24,-36},{-76,-36},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, yd07.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-90},{-50,-90}}, color={85,170,255}));
    connect(yd07.plug2, loadYd07.plug_p) annotation (Line(points={{-30,-90},{-26,-90},{-26,-106},{-40,-106},{-40,-110}}, color={85,170,255}));
    connect(loadYd07.plug_n, starLYd07.plug_p) annotation (Line(points={{-40,-130},{-40,-140}}, color={85,170,255}));
    connect(starLYd07.pin_n, ground.pin) annotation (Line(points={{-40,-160},{-40,-164},{-76,-164},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yd07.starpoint1, earth1Yd07.pin_p) annotation (Line(points={{-45,-100},{-45,-104},{-52,-104},{-52,-38},{4,-38},{4,-50},{0,-50}}, color={85,170,255}));
    connect(earth1Yd07.pin_n, ground.pin) annotation (Line(points={{-20,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, yd09.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-78},{-14,-78},{-14,-90},{-10,-90}}, color={85,170,255}));
    connect(yd09.plug2, loadYd09.plug_p) annotation (Line(points={{10,-90},{14,-90},{14,-106},{0,-106},{0,-110}}, color={85,170,255}));
    connect(loadYd09.plug_n, starLYd09.plug_p) annotation (Line(points={{0,-130},{0,-140}}, color={85,170,255}));
    connect(starLYd09.pin_n, ground.pin) annotation (Line(points={{0,-160},{0,-164},{-76,-164},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yd09.starpoint1, earth1Yd09.pin_p) annotation (Line(points={{-5,-100},{-5,-104},{-12,-104},{-12,-62},{34,-62},{34,-50},{30,-50}}, color={85,170,255}));
    connect(earth1Yd09.pin_n, ground.pin) annotation (Line(points={{10,-50},{6,-50},{6,-36},{-76,-36},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, yd11.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-78},{16,-78},{16,-90},{20,-90}}, color={85,170,255}));
    connect(yd11.plug2, loadYd11.plug_p) annotation (Line(points={{40,-90},{44,-90},{44,-106},{30,-106},{30,-110}}, color={85,170,255}));
    connect(loadYd11.plug_n, starLYd11.plug_p) annotation (Line(points={{30,-130},{30,-140}}, color={85,170,255}));
    connect(starLYd11.pin_n, ground.pin) annotation (Line(points={{30,-160},{30,-164},{-76,-164},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yd11.starpoint1, earth1Yd11.pin_p) annotation (Line(points={{25,-100},{25,-104},{74,-104},{74,-50},{70,-50}}, color={85,170,255}));
    connect(earth1Yd11.pin_n, ground.pin) annotation (Line(points={{50,-50},{40,-50},{40,-38},{6,-38},{6,-36},{-76,-36},{-76,-150},{-80,-150}}, color={85,170,255}));
    annotation (Diagram(coordinateSystem(extent={{-120,-180},{100,100}})),
      experiment(StopTime=0.1),
      Documentation(info="<html>
<p>
All 6 QuasiStatic transformers of vector group Yd (Yd01, Yd03, Yd05, Yd07, Yd09, Yd11), fed in parallel by a symmetric
3 phase source with 100 V line-to-line, each loaded by a symmetric resistive star load of 1/3 Ohm.
The transformer parameters are taken from a
<a href=\"modelica://Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData\">TransformerData</a>
record with C1=&quot;Y&quot; and C2=&quot;d&quot;. The primary starpoints are grounded by an earthing resistance of 1 MOhm.
The phase 1 load voltages differ in their phase shift by 60 degree (clock number times 30 degree).
</p>
</html>"));
  end QuasiStaticTransformersYd;

  model QuasiStaticTransformersYy "Test of the quasi-static transformers of vector group Yy"
    extends Modelica.Icons.Example;

    Modelica.Electrical.QuasiStatic.Polyphase.Sources.VoltageSource source(m=3, f=50, V=fill(100/sqrt(3), 3), gamma(fixed=true, start=0))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-90,-20})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starS(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-100})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Ground ground
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-90,-150})));
    parameter Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData data(C1="Y", C2="y")
      annotation (Placement(transformation(extent={{-100,70},{-80,90}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yy.Yy00 yy00(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,50})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYy00(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,20})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYy00(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-20})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yy00(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-10,80})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Yy00(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-40,80})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yy.Yy02 yy02(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={20,50})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYy02(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={20,20})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYy02(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={20,-20})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yy02(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={20,80})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Yy02(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={60,80})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yy.Yy04 yy04(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={90,50})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYy04(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={90,20})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYy04(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={90,-20})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yy04(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={90,80})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Yy04(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={120,80})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yy.Yy06 yy06(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,-90})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYy06(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-120})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYy06(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-150})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yy06(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-10,-50})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Yy06(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-40,-50})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yy.Yy08 yy08(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={20,-90})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYy08(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={20,-120})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYy08(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={20,-150})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yy08(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={20,-50})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Yy08(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={60,-50})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yy.Yy10 yy10(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={90,-90})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYy10(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={90,-120})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYy10(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={90,-150})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yy10(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={90,-50})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Yy10(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={120,-50})));
  equation
    connect(source.plug_n, starS.plug_p) annotation (Line(points={{-100,-20},{-104,-20},{-104,-100},{-100,-100}}, color={85,170,255}));
    connect(starS.pin_n, ground.pin) annotation (Line(points={{-80,-100},{-76,-100},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, yy00.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,50},{-50,50}}, color={85,170,255}));
    connect(yy00.plug2, loadYy00.plug_p) annotation (Line(points={{-30,50},{-26,50},{-26,34},{-40,34},{-40,30}}, color={85,170,255}));
    connect(loadYy00.plug_n, starLYy00.plug_p) annotation (Line(points={{-40,10},{-40,-10}}, color={85,170,255}));
    connect(starLYy00.pin_n, ground.pin) annotation (Line(points={{-40,-30},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yy00.starpoint1, earth1Yy00.pin_p) annotation (Line(points={{-45,40},{-45,36},{-44,36},{-44,32},{4,32},{4,80},{0,80}}, color={85,170,255}));
    connect(earth1Yy00.pin_n, ground.pin) annotation (Line(points={{-20,80},{-26,80},{-26,68},{-60,68},{-60,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yy00.starpoint2, earth2Yy00.pin_p) annotation (Line(points={{-35,40},{-35,36},{-28,36},{-28,80},{-30,80}}, color={85,170,255}));
    connect(earth2Yy00.pin_n, ground.pin) annotation (Line(points={{-50,80},{-60,80},{-60,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, yy02.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,6},{6,6},{6,50},{10,50}}, color={85,170,255}));
    connect(yy02.plug2, loadYy02.plug_p) annotation (Line(points={{30,50},{34,50},{34,34},{20,34},{20,30}}, color={85,170,255}));
    connect(loadYy02.plug_n, starLYy02.plug_p) annotation (Line(points={{20,10},{20,-10}}, color={85,170,255}));
    connect(starLYy02.pin_n, ground.pin) annotation (Line(points={{20,-30},{20,-34},{-40,-34},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yy02.starpoint1, earth1Yy02.pin_p) annotation (Line(points={{15,40},{15,36},{32,36},{32,80},{30,80}}, color={85,170,255}));
    connect(earth1Yy02.pin_n, ground.pin) annotation (Line(points={{10,80},{6,80},{6,92},{-52,92},{-52,80},{-60,80},{-60,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yy02.starpoint2, earth2Yy02.pin_p) annotation (Line(points={{25,40},{25,36},{24,36},{24,32},{74,32},{74,80},{70,80}}, color={85,170,255}));
    connect(earth2Yy02.pin_n, ground.pin) annotation (Line(points={{50,80},{40,80},{40,92},{-52,92},{-52,80},{-60,80},{-60,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, yy04.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,6},{76,6},{76,50},{80,50}}, color={85,170,255}));
    connect(yy04.plug2, loadYy04.plug_p) annotation (Line(points={{100,50},{104,50},{104,34},{90,34},{90,30}}, color={85,170,255}));
    connect(loadYy04.plug_n, starLYy04.plug_p) annotation (Line(points={{90,10},{90,-10}}, color={85,170,255}));
    connect(starLYy04.pin_n, ground.pin) annotation (Line(points={{90,-30},{90,-34},{78,-34},{78,-36},{20,-36},{20,-34},{-40,-34},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yy04.starpoint1, earth1Yy04.pin_p) annotation (Line(points={{85,40},{85,36},{78,36},{78,68},{104,68},{104,80},{100,80}}, color={85,170,255}));
    connect(earth1Yy04.pin_n, ground.pin) annotation (Line(points={{80,80},{76,80},{76,92},{-52,92},{-52,80},{-60,80},{-60,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yy04.starpoint2, earth2Yy04.pin_p) annotation (Line(points={{95,40},{95,36},{134,36},{134,80},{130,80}}, color={85,170,255}));
    connect(earth2Yy04.pin_n, ground.pin) annotation (Line(points={{110,80},{106,80},{106,-38},{78,-38},{78,-36},{20,-36},{20,-34},{-40,-34},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, yy06.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-90},{-50,-90}}, color={85,170,255}));
    connect(yy06.plug2, loadYy06.plug_p) annotation (Line(points={{-30,-90},{-26,-90},{-26,-106},{-40,-106},{-40,-110}}, color={85,170,255}));
    connect(loadYy06.plug_n, starLYy06.plug_p) annotation (Line(points={{-40,-130},{-40,-140}}, color={85,170,255}));
    connect(starLYy06.pin_n, ground.pin) annotation (Line(points={{-40,-160},{-40,-164},{-76,-164},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yy06.starpoint1, earth1Yy06.pin_p) annotation (Line(points={{-45,-100},{-45,-104},{-44,-104},{-44,-108},{4,-108},{4,-50},{0,-50}}, color={85,170,255}));
    connect(earth1Yy06.pin_n, ground.pin) annotation (Line(points={{-20,-50},{-26,-50},{-26,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yy06.starpoint2, earth2Yy06.pin_p) annotation (Line(points={{-35,-100},{-35,-104},{-28,-104},{-28,-50},{-30,-50}}, color={85,170,255}));
    connect(earth2Yy06.pin_n, ground.pin) annotation (Line(points={{-50,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, yy08.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-36},{6,-36},{6,-90},{10,-90}}, color={85,170,255}));
    connect(yy08.plug2, loadYy08.plug_p) annotation (Line(points={{30,-90},{34,-90},{34,-106},{20,-106},{20,-110}}, color={85,170,255}));
    connect(loadYy08.plug_n, starLYy08.plug_p) annotation (Line(points={{20,-130},{20,-140}}, color={85,170,255}));
    connect(starLYy08.pin_n, ground.pin) annotation (Line(points={{20,-160},{20,-164},{-76,-164},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yy08.starpoint1, earth1Yy08.pin_p) annotation (Line(points={{15,-100},{15,-104},{32,-104},{32,-50},{30,-50}}, color={85,170,255}));
    connect(earth1Yy08.pin_n, ground.pin) annotation (Line(points={{10,-50},{6,-50},{6,-48},{4,-48},{4,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yy08.starpoint2, earth2Yy08.pin_p) annotation (Line(points={{25,-100},{25,-104},{24,-104},{24,-108},{74,-108},{74,-50},{70,-50}}, color={85,170,255}));
    connect(earth2Yy08.pin_n, ground.pin) annotation (Line(points={{50,-50},{40,-50},{40,-36},{20,-36},{20,-34},{-40,-34},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, yy10.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-36},{6,-36},{6,-38},{76,-38},{76,-90},{80,-90}}, color={85,170,255}));
    connect(yy10.plug2, loadYy10.plug_p) annotation (Line(points={{100,-90},{104,-90},{104,-106},{90,-106},{90,-110}}, color={85,170,255}));
    connect(loadYy10.plug_n, starLYy10.plug_p) annotation (Line(points={{90,-130},{90,-140}}, color={85,170,255}));
    connect(starLYy10.pin_n, ground.pin) annotation (Line(points={{90,-160},{90,-164},{-76,-164},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yy10.starpoint1, earth1Yy10.pin_p) annotation (Line(points={{85,-100},{85,-104},{78,-104},{78,-62},{104,-62},{104,-50},{100,-50}}, color={85,170,255}));
    connect(earth1Yy10.pin_n, ground.pin) annotation (Line(points={{80,-50},{76,-50},{76,-48},{78,-48},{78,-36},{20,-36},{20,-34},{-40,-34},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yy10.starpoint2, earth2Yy10.pin_p) annotation (Line(points={{95,-100},{95,-104},{134,-104},{134,-50},{130,-50}}, color={85,170,255}));
    connect(earth2Yy10.pin_n, ground.pin) annotation (Line(points={{110,-50},{106,-50},{106,-38},{78,-38},{78,-36},{20,-36},{20,-34},{-40,-34},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    annotation (Diagram(coordinateSystem(extent={{-120,-180},{140,100}})),
      experiment(StopTime=0.1),
      Documentation(info="<html>
<p>
All 6 QuasiStatic transformers of vector group Yy (Yy00, Yy02, Yy04, Yy06, Yy08, Yy10), fed in parallel by a symmetric
3 phase source with 100 V line-to-line, each loaded by a symmetric resistive star load of 1/3 Ohm.
The transformer parameters are taken from a
<a href=\"modelica://Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData\">TransformerData</a>
record with C1=&quot;Y&quot; and C2=&quot;y&quot;. The primary and secondary starpoints are grounded by an earthing resistance of 1 MOhm.
The phase 1 load voltages differ in their phase shift by 60 degree (clock number times 30 degree).
</p>
</html>"));
  end QuasiStaticTransformersYy;

  model QuasiStaticTransformersYz "Test of the quasi-static transformers of vector group Yz"
    extends Modelica.Icons.Example;

    Modelica.Electrical.QuasiStatic.Polyphase.Sources.VoltageSource source(m=3, f=50, V=fill(100/sqrt(3), 3), gamma(fixed=true, start=0))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-90,-20})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starS(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-90,-100})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Ground ground
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-90,-150})));
    parameter Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData data(C1="Y", C2="z")
      annotation (Placement(transformation(extent={{-100,70},{-80,90}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yz.Yz01 yz01(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,50})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYz01(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,20})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYz01(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-20})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yz01(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-10,80})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Yz01(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-40,80})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yz.Yz03 yz03(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={20,50})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYz03(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={20,20})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYz03(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={20,-20})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yz03(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={20,80})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Yz03(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={60,80})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yz.Yz05 yz05(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={90,50})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYz05(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={90,20})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYz05(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={90,-20})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yz05(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={90,80})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Yz05(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={120,80})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yz.Yz07 yz07(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,-90})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYz07(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-120})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYz07(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-150})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yz07(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-10,-50})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Yz07(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-40,-50})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yz.Yz09 yz09(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={20,-90})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYz09(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={20,-120})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYz09(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={20,-150})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yz09(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={20,-50})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Yz09(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={60,-50})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yz.Yz11 yz11(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={90,-90})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYz11(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={90,-120})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYz11(m=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={90,-150})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yz11(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={90,-50})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Yz11(R_ref=1e6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={120,-50})));
  equation
    connect(source.plug_n, starS.plug_p) annotation (Line(points={{-100,-20},{-104,-20},{-104,-100},{-100,-100}}, color={85,170,255}));
    connect(starS.pin_n, ground.pin) annotation (Line(points={{-80,-100},{-76,-100},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, yz01.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,50},{-50,50}}, color={85,170,255}));
    connect(yz01.plug2, loadYz01.plug_p) annotation (Line(points={{-30,50},{-26,50},{-26,34},{-40,34},{-40,30}}, color={85,170,255}));
    connect(loadYz01.plug_n, starLYz01.plug_p) annotation (Line(points={{-40,10},{-40,-10}}, color={85,170,255}));
    connect(starLYz01.pin_n, ground.pin) annotation (Line(points={{-40,-30},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yz01.starpoint1, earth1Yz01.pin_p) annotation (Line(points={{-45,40},{-45,36},{-44,36},{-44,32},{4,32},{4,80},{0,80}}, color={85,170,255}));
    connect(earth1Yz01.pin_n, ground.pin) annotation (Line(points={{-20,80},{-26,80},{-26,68},{-60,68},{-60,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yz01.starpoint2, earth2Yz01.pin_p) annotation (Line(points={{-35,40},{-35,36},{-28,36},{-28,80},{-30,80}}, color={85,170,255}));
    connect(earth2Yz01.pin_n, ground.pin) annotation (Line(points={{-50,80},{-60,80},{-60,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, yz03.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,6},{6,6},{6,50},{10,50}}, color={85,170,255}));
    connect(yz03.plug2, loadYz03.plug_p) annotation (Line(points={{30,50},{34,50},{34,34},{20,34},{20,30}}, color={85,170,255}));
    connect(loadYz03.plug_n, starLYz03.plug_p) annotation (Line(points={{20,10},{20,-10}}, color={85,170,255}));
    connect(starLYz03.pin_n, ground.pin) annotation (Line(points={{20,-30},{20,-34},{-40,-34},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yz03.starpoint1, earth1Yz03.pin_p) annotation (Line(points={{15,40},{15,36},{32,36},{32,80},{30,80}}, color={85,170,255}));
    connect(earth1Yz03.pin_n, ground.pin) annotation (Line(points={{10,80},{6,80},{6,92},{-52,92},{-52,80},{-60,80},{-60,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yz03.starpoint2, earth2Yz03.pin_p) annotation (Line(points={{25,40},{25,36},{24,36},{24,32},{74,32},{74,80},{70,80}}, color={85,170,255}));
    connect(earth2Yz03.pin_n, ground.pin) annotation (Line(points={{50,80},{40,80},{40,92},{-52,92},{-52,80},{-60,80},{-60,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, yz05.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,6},{76,6},{76,50},{80,50}}, color={85,170,255}));
    connect(yz05.plug2, loadYz05.plug_p) annotation (Line(points={{100,50},{104,50},{104,34},{90,34},{90,30}}, color={85,170,255}));
    connect(loadYz05.plug_n, starLYz05.plug_p) annotation (Line(points={{90,10},{90,-10}}, color={85,170,255}));
    connect(starLYz05.pin_n, ground.pin) annotation (Line(points={{90,-30},{90,-34},{78,-34},{78,-36},{20,-36},{20,-34},{-40,-34},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yz05.starpoint1, earth1Yz05.pin_p) annotation (Line(points={{85,40},{85,36},{78,36},{78,68},{104,68},{104,80},{100,80}}, color={85,170,255}));
    connect(earth1Yz05.pin_n, ground.pin) annotation (Line(points={{80,80},{76,80},{76,92},{-52,92},{-52,80},{-60,80},{-60,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yz05.starpoint2, earth2Yz05.pin_p) annotation (Line(points={{95,40},{95,36},{134,36},{134,80},{130,80}}, color={85,170,255}));
    connect(earth2Yz05.pin_n, ground.pin) annotation (Line(points={{110,80},{106,80},{106,-38},{78,-38},{78,-36},{20,-36},{20,-34},{-40,-34},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, yz07.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-90},{-50,-90}}, color={85,170,255}));
    connect(yz07.plug2, loadYz07.plug_p) annotation (Line(points={{-30,-90},{-26,-90},{-26,-106},{-40,-106},{-40,-110}}, color={85,170,255}));
    connect(loadYz07.plug_n, starLYz07.plug_p) annotation (Line(points={{-40,-130},{-40,-140}}, color={85,170,255}));
    connect(starLYz07.pin_n, ground.pin) annotation (Line(points={{-40,-160},{-40,-164},{-76,-164},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yz07.starpoint1, earth1Yz07.pin_p) annotation (Line(points={{-45,-100},{-45,-104},{-44,-104},{-44,-108},{4,-108},{4,-50},{0,-50}}, color={85,170,255}));
    connect(earth1Yz07.pin_n, ground.pin) annotation (Line(points={{-20,-50},{-26,-50},{-26,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yz07.starpoint2, earth2Yz07.pin_p) annotation (Line(points={{-35,-100},{-35,-104},{-28,-104},{-28,-50},{-30,-50}}, color={85,170,255}));
    connect(earth2Yz07.pin_n, ground.pin) annotation (Line(points={{-50,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, yz09.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-36},{6,-36},{6,-90},{10,-90}}, color={85,170,255}));
    connect(yz09.plug2, loadYz09.plug_p) annotation (Line(points={{30,-90},{34,-90},{34,-106},{20,-106},{20,-110}}, color={85,170,255}));
    connect(loadYz09.plug_n, starLYz09.plug_p) annotation (Line(points={{20,-130},{20,-140}}, color={85,170,255}));
    connect(starLYz09.pin_n, ground.pin) annotation (Line(points={{20,-160},{20,-164},{-76,-164},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yz09.starpoint1, earth1Yz09.pin_p) annotation (Line(points={{15,-100},{15,-104},{32,-104},{32,-50},{30,-50}}, color={85,170,255}));
    connect(earth1Yz09.pin_n, ground.pin) annotation (Line(points={{10,-50},{6,-50},{6,-48},{4,-48},{4,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yz09.starpoint2, earth2Yz09.pin_p) annotation (Line(points={{25,-100},{25,-104},{24,-104},{24,-108},{74,-108},{74,-50},{70,-50}}, color={85,170,255}));
    connect(earth2Yz09.pin_n, ground.pin) annotation (Line(points={{50,-50},{40,-50},{40,-36},{20,-36},{20,-34},{-40,-34},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(source.plug_p, yz11.plug1) annotation (Line(points={{-80,-20},{-54,-20},{-54,-36},{6,-36},{6,-38},{76,-38},{76,-90},{80,-90}}, color={85,170,255}));
    connect(yz11.plug2, loadYz11.plug_p) annotation (Line(points={{100,-90},{104,-90},{104,-106},{90,-106},{90,-110}}, color={85,170,255}));
    connect(loadYz11.plug_n, starLYz11.plug_p) annotation (Line(points={{90,-130},{90,-140}}, color={85,170,255}));
    connect(starLYz11.pin_n, ground.pin) annotation (Line(points={{90,-160},{90,-164},{-76,-164},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yz11.starpoint1, earth1Yz11.pin_p) annotation (Line(points={{85,-100},{85,-104},{78,-104},{78,-62},{104,-62},{104,-50},{100,-50}}, color={85,170,255}));
    connect(earth1Yz11.pin_n, ground.pin) annotation (Line(points={{80,-50},{76,-50},{76,-48},{78,-48},{78,-36},{20,-36},{20,-34},{-40,-34},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    connect(yz11.starpoint2, earth2Yz11.pin_p) annotation (Line(points={{95,-100},{95,-104},{134,-104},{134,-50},{130,-50}}, color={85,170,255}));
    connect(earth2Yz11.pin_n, ground.pin) annotation (Line(points={{110,-50},{106,-50},{106,-38},{78,-38},{78,-36},{20,-36},{20,-34},{-40,-34},{-40,-38},{-52,-38},{-52,-50},{-76,-50},{-76,-150},{-80,-150}}, color={85,170,255}));
    annotation (Diagram(coordinateSystem(extent={{-120,-180},{140,100}})),
      experiment(StopTime=0.1),
      Documentation(info="<html>
<p>
All 6 QuasiStatic transformers of vector group Yz (Yz01, Yz03, Yz05, Yz07, Yz09, Yz11), fed in parallel by a symmetric
3 phase source with 100 V line-to-line, each loaded by a symmetric resistive star load of 1/3 Ohm.
The transformer parameters are taken from a
<a href=\"modelica://Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData\">TransformerData</a>
record with C1=&quot;Y&quot; and C2=&quot;z&quot;. The primary and secondary starpoints are grounded by an earthing resistance of 1 MOhm.
The phase 1 load voltages differ in their phase shift by 60 degree (clock number times 30 degree).
</p>
</html>"));
  end QuasiStaticTransformersYz;
end Machines;
