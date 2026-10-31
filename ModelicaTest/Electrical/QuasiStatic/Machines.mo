within ModelicaTest.Electrical.QuasiStatic;
package Machines "Test models for Modelica.Electrical.QuasiStatic.Machines"
  extends Modelica.Icons.ExamplesPackage;

  model QuasiStaticTransformersDd "Test of the quasi-static transformers of vector group Dd"
    extends Modelica.Icons.Example;

    Modelica.Electrical.QuasiStatic.Polyphase.Sources.VoltageSource source(m=3, f=50, V=fill(100/sqrt(3), 3), gamma(fixed=true, start=0))
      annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starS(m=3)
      annotation (Placement(transformation(extent={{-100,-50},{-80,-30}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Ground ground
      annotation (Placement(transformation(extent={{-100,-90},{-80,-70}})));
    parameter Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData data(C1="D", C2="d")
      annotation (Placement(transformation(extent={{-100,70},{-80,90}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dd.Dd00 dd00(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-50,50},{-30,70}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDd00(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-50,20},{-30,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDd00(m=3)
      annotation (Placement(transformation(extent={{-50,-5},{-30,15}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dd.Dd02 dd02(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-25,50},{-5,70}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDd02(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-25,20},{-5,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDd02(m=3)
      annotation (Placement(transformation(extent={{-25,-5},{-5,15}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dd.Dd04 dd04(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{0,50},{20,70}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDd04(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{0,20},{20,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDd04(m=3)
      annotation (Placement(transformation(extent={{0,-5},{20,15}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dd.Dd06 dd06(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-50,-40},{-30,-20}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDd06(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-50,-70},{-30,-50}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDd06(m=3)
      annotation (Placement(transformation(extent={{-50,-95},{-30,-75}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dd.Dd08 dd08(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-25,-40},{-5,-20}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDd08(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-25,-70},{-5,-50}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDd08(m=3)
      annotation (Placement(transformation(extent={{-25,-95},{-5,-75}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dd.Dd10 dd10(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{0,-40},{20,-20}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDd10(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{0,-70},{20,-50}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDd10(m=3)
      annotation (Placement(transformation(extent={{0,-95},{20,-75}})));
  equation
    connect(source.plug_n, starS.plug_p) annotation (Line(points={{-79,0},{-106,0},{-106,-40},{-102,-40}}, color={0,0,127}));
    connect(starS.pin_n, ground.pin) annotation (Line(points={{-79,-40},{-106,-40},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, dd00.plug1) annotation (Line(points={{-79,0},{-66,0},{-66,60},{-52,60}}, color={0,0,127}));
    connect(dd00.plug2, loadDd00.plug_p) annotation (Line(points={{-29,60},{-56,60},{-56,30},{-52,30}}, color={0,0,127}));
    connect(loadDd00.plug_n, starLDd00.plug_p) annotation (Line(points={{-29,30},{-56,30},{-56,5},{-52,5}}, color={0,0,127}));
    connect(starLDd00.pin_n, ground.pin) annotation (Line(points={{-29,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, dd02.plug1) annotation (Line(points={{-79,0},{-53,0},{-53,60},{-27,60}}, color={0,0,127}));
    connect(dd02.plug2, loadDd02.plug_p) annotation (Line(points={{-4,60},{-31,60},{-31,30},{-27,30}}, color={0,0,127}));
    connect(loadDd02.plug_n, starLDd02.plug_p) annotation (Line(points={{-4,30},{-31,30},{-31,5},{-27,5}}, color={0,0,127}));
    connect(starLDd02.pin_n, ground.pin) annotation (Line(points={{-4,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, dd04.plug1) annotation (Line(points={{-79,0},{-40,0},{-40,60},{-2,60}}, color={0,0,127}));
    connect(dd04.plug2, loadDd04.plug_p) annotation (Line(points={{21,60},{-6,60},{-6,30},{-2,30}}, color={0,0,127}));
    connect(loadDd04.plug_n, starLDd04.plug_p) annotation (Line(points={{21,30},{-6,30},{-6,5},{-2,5}}, color={0,0,127}));
    connect(starLDd04.pin_n, ground.pin) annotation (Line(points={{21,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, dd06.plug1) annotation (Line(points={{-79,0},{-66,0},{-66,-30},{-52,-30}}, color={0,0,127}));
    connect(dd06.plug2, loadDd06.plug_p) annotation (Line(points={{-29,-30},{-56,-30},{-56,-60},{-52,-60}}, color={0,0,127}));
    connect(loadDd06.plug_n, starLDd06.plug_p) annotation (Line(points={{-29,-60},{-56,-60},{-56,-85},{-52,-85}}, color={0,0,127}));
    connect(starLDd06.pin_n, ground.pin) annotation (Line(points={{-29,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, dd08.plug1) annotation (Line(points={{-79,0},{-53,0},{-53,-30},{-27,-30}}, color={0,0,127}));
    connect(dd08.plug2, loadDd08.plug_p) annotation (Line(points={{-4,-30},{-31,-30},{-31,-60},{-27,-60}}, color={0,0,127}));
    connect(loadDd08.plug_n, starLDd08.plug_p) annotation (Line(points={{-4,-60},{-31,-60},{-31,-85},{-27,-85}}, color={0,0,127}));
    connect(starLDd08.pin_n, ground.pin) annotation (Line(points={{-4,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, dd10.plug1) annotation (Line(points={{-79,0},{-40,0},{-40,-30},{-2,-30}}, color={0,0,127}));
    connect(dd10.plug2, loadDd10.plug_p) annotation (Line(points={{21,-30},{-6,-30},{-6,-60},{-2,-60}}, color={0,0,127}));
    connect(loadDd10.plug_n, starLDd10.plug_p) annotation (Line(points={{21,-60},{-6,-60},{-6,-85},{-2,-85}}, color={0,0,127}));
    connect(starLDd10.pin_n, ground.pin) annotation (Line(points={{21,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
    annotation (experiment(StopTime=0.1),
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
      annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starS(m=3)
      annotation (Placement(transformation(extent={{-100,-50},{-80,-30}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Ground ground
      annotation (Placement(transformation(extent={{-100,-90},{-80,-70}})));
    parameter Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData data(C1="D", C2="y")
      annotation (Placement(transformation(extent={{-100,70},{-80,90}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dy.Dy01 dy01(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-50,50},{-30,70}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDy01(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-50,20},{-30,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDy01(m=3)
      annotation (Placement(transformation(extent={{-50,-5},{-30,15}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Dy01(R_ref=1e6)
      annotation (Placement(transformation(extent={{-30,75},{-10,95}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dy.Dy03 dy03(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-25,50},{-5,70}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDy03(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-25,20},{-5,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDy03(m=3)
      annotation (Placement(transformation(extent={{-25,-5},{-5,15}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Dy03(R_ref=1e6)
      annotation (Placement(transformation(extent={{-5,75},{15,95}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dy.Dy05 dy05(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{0,50},{20,70}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDy05(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{0,20},{20,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDy05(m=3)
      annotation (Placement(transformation(extent={{0,-5},{20,15}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Dy05(R_ref=1e6)
      annotation (Placement(transformation(extent={{20,75},{40,95}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dy.Dy07 dy07(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-50,-40},{-30,-20}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDy07(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-50,-70},{-30,-50}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDy07(m=3)
      annotation (Placement(transformation(extent={{-50,-95},{-30,-75}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Dy07(R_ref=1e6)
      annotation (Placement(transformation(extent={{-30,-15},{-10,5}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dy.Dy09 dy09(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-25,-40},{-5,-20}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDy09(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-25,-70},{-5,-50}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDy09(m=3)
      annotation (Placement(transformation(extent={{-25,-95},{-5,-75}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Dy09(R_ref=1e6)
      annotation (Placement(transformation(extent={{-5,-15},{15,5}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dy.Dy11 dy11(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{0,-40},{20,-20}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDy11(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{0,-70},{20,-50}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDy11(m=3)
      annotation (Placement(transformation(extent={{0,-95},{20,-75}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Dy11(R_ref=1e6)
      annotation (Placement(transformation(extent={{20,-15},{40,5}})));
  equation
    connect(source.plug_n, starS.plug_p) annotation (Line(points={{-79,0},{-106,0},{-106,-40},{-102,-40}}, color={0,0,127}));
    connect(starS.pin_n, ground.pin) annotation (Line(points={{-79,-40},{-106,-40},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, dy01.plug1) annotation (Line(points={{-79,0},{-66,0},{-66,60},{-52,60}}, color={0,0,127}));
    connect(dy01.plug2, loadDy01.plug_p) annotation (Line(points={{-29,60},{-56,60},{-56,30},{-52,30}}, color={0,0,127}));
    connect(loadDy01.plug_n, starLDy01.plug_p) annotation (Line(points={{-29,30},{-56,30},{-56,5},{-52,5}}, color={0,0,127}));
    connect(starLDy01.pin_n, ground.pin) annotation (Line(points={{-29,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(dy01.starpoint2, earth2Dy01.pin_p) annotation (Line(points={{-29,60},{-36,60},{-36,85},{-32,85}}, color={0,0,127}));
    connect(earth2Dy01.pin_n, ground.pin) annotation (Line(points={{-9,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, dy03.plug1) annotation (Line(points={{-79,0},{-53,0},{-53,60},{-27,60}}, color={0,0,127}));
    connect(dy03.plug2, loadDy03.plug_p) annotation (Line(points={{-4,60},{-31,60},{-31,30},{-27,30}}, color={0,0,127}));
    connect(loadDy03.plug_n, starLDy03.plug_p) annotation (Line(points={{-4,30},{-31,30},{-31,5},{-27,5}}, color={0,0,127}));
    connect(starLDy03.pin_n, ground.pin) annotation (Line(points={{-4,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(dy03.starpoint2, earth2Dy03.pin_p) annotation (Line(points={{-4,60},{-11,60},{-11,85},{-7,85}}, color={0,0,127}));
    connect(earth2Dy03.pin_n, ground.pin) annotation (Line(points={{16,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, dy05.plug1) annotation (Line(points={{-79,0},{-40,0},{-40,60},{-2,60}}, color={0,0,127}));
    connect(dy05.plug2, loadDy05.plug_p) annotation (Line(points={{21,60},{-6,60},{-6,30},{-2,30}}, color={0,0,127}));
    connect(loadDy05.plug_n, starLDy05.plug_p) annotation (Line(points={{21,30},{-6,30},{-6,5},{-2,5}}, color={0,0,127}));
    connect(starLDy05.pin_n, ground.pin) annotation (Line(points={{21,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(dy05.starpoint2, earth2Dy05.pin_p) annotation (Line(points={{21,60},{14,60},{14,85},{18,85}}, color={0,0,127}));
    connect(earth2Dy05.pin_n, ground.pin) annotation (Line(points={{41,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, dy07.plug1) annotation (Line(points={{-79,0},{-66,0},{-66,-30},{-52,-30}}, color={0,0,127}));
    connect(dy07.plug2, loadDy07.plug_p) annotation (Line(points={{-29,-30},{-56,-30},{-56,-60},{-52,-60}}, color={0,0,127}));
    connect(loadDy07.plug_n, starLDy07.plug_p) annotation (Line(points={{-29,-60},{-56,-60},{-56,-85},{-52,-85}}, color={0,0,127}));
    connect(starLDy07.pin_n, ground.pin) annotation (Line(points={{-29,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(dy07.starpoint2, earth2Dy07.pin_p) annotation (Line(points={{-29,-30},{-36,-30},{-36,-5},{-32,-5}}, color={0,0,127}));
    connect(earth2Dy07.pin_n, ground.pin) annotation (Line(points={{-9,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, dy09.plug1) annotation (Line(points={{-79,0},{-53,0},{-53,-30},{-27,-30}}, color={0,0,127}));
    connect(dy09.plug2, loadDy09.plug_p) annotation (Line(points={{-4,-30},{-31,-30},{-31,-60},{-27,-60}}, color={0,0,127}));
    connect(loadDy09.plug_n, starLDy09.plug_p) annotation (Line(points={{-4,-60},{-31,-60},{-31,-85},{-27,-85}}, color={0,0,127}));
    connect(starLDy09.pin_n, ground.pin) annotation (Line(points={{-4,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(dy09.starpoint2, earth2Dy09.pin_p) annotation (Line(points={{-4,-30},{-11,-30},{-11,-5},{-7,-5}}, color={0,0,127}));
    connect(earth2Dy09.pin_n, ground.pin) annotation (Line(points={{16,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, dy11.plug1) annotation (Line(points={{-79,0},{-40,0},{-40,-30},{-2,-30}}, color={0,0,127}));
    connect(dy11.plug2, loadDy11.plug_p) annotation (Line(points={{21,-30},{-6,-30},{-6,-60},{-2,-60}}, color={0,0,127}));
    connect(loadDy11.plug_n, starLDy11.plug_p) annotation (Line(points={{21,-60},{-6,-60},{-6,-85},{-2,-85}}, color={0,0,127}));
    connect(starLDy11.pin_n, ground.pin) annotation (Line(points={{21,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(dy11.starpoint2, earth2Dy11.pin_p) annotation (Line(points={{21,-30},{14,-30},{14,-5},{18,-5}}, color={0,0,127}));
    connect(earth2Dy11.pin_n, ground.pin) annotation (Line(points={{41,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
    annotation (experiment(StopTime=0.1),
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
      annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starS(m=3)
      annotation (Placement(transformation(extent={{-100,-50},{-80,-30}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Ground ground
      annotation (Placement(transformation(extent={{-100,-90},{-80,-70}})));
    parameter Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData data(C1="D", C2="z")
      annotation (Placement(transformation(extent={{-100,70},{-80,90}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dz.Dz00 dz00(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-50,50},{-30,70}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDz00(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-50,20},{-30,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDz00(m=3)
      annotation (Placement(transformation(extent={{-50,-5},{-30,15}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Dz00(R_ref=1e6)
      annotation (Placement(transformation(extent={{-30,75},{-10,95}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dz.Dz02 dz02(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-25,50},{-5,70}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDz02(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-25,20},{-5,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDz02(m=3)
      annotation (Placement(transformation(extent={{-25,-5},{-5,15}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Dz02(R_ref=1e6)
      annotation (Placement(transformation(extent={{-5,75},{15,95}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dz.Dz04 dz04(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{0,50},{20,70}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDz04(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{0,20},{20,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDz04(m=3)
      annotation (Placement(transformation(extent={{0,-5},{20,15}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Dz04(R_ref=1e6)
      annotation (Placement(transformation(extent={{20,75},{40,95}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dz.Dz06 dz06(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-50,-40},{-30,-20}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDz06(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-50,-70},{-30,-50}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDz06(m=3)
      annotation (Placement(transformation(extent={{-50,-95},{-30,-75}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Dz06(R_ref=1e6)
      annotation (Placement(transformation(extent={{-30,-15},{-10,5}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dz.Dz08 dz08(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-25,-40},{-5,-20}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDz08(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-25,-70},{-5,-50}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDz08(m=3)
      annotation (Placement(transformation(extent={{-25,-95},{-5,-75}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Dz08(R_ref=1e6)
      annotation (Placement(transformation(extent={{-5,-15},{15,5}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dz.Dz10 dz10(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{0,-40},{20,-20}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadDz10(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{0,-70},{20,-50}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLDz10(m=3)
      annotation (Placement(transformation(extent={{0,-95},{20,-75}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Dz10(R_ref=1e6)
      annotation (Placement(transformation(extent={{20,-15},{40,5}})));
  equation
    connect(source.plug_n, starS.plug_p) annotation (Line(points={{-79,0},{-106,0},{-106,-40},{-102,-40}}, color={0,0,127}));
    connect(starS.pin_n, ground.pin) annotation (Line(points={{-79,-40},{-106,-40},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, dz00.plug1) annotation (Line(points={{-79,0},{-66,0},{-66,60},{-52,60}}, color={0,0,127}));
    connect(dz00.plug2, loadDz00.plug_p) annotation (Line(points={{-29,60},{-56,60},{-56,30},{-52,30}}, color={0,0,127}));
    connect(loadDz00.plug_n, starLDz00.plug_p) annotation (Line(points={{-29,30},{-56,30},{-56,5},{-52,5}}, color={0,0,127}));
    connect(starLDz00.pin_n, ground.pin) annotation (Line(points={{-29,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(dz00.starpoint2, earth2Dz00.pin_p) annotation (Line(points={{-29,60},{-36,60},{-36,85},{-32,85}}, color={0,0,127}));
    connect(earth2Dz00.pin_n, ground.pin) annotation (Line(points={{-9,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, dz02.plug1) annotation (Line(points={{-79,0},{-53,0},{-53,60},{-27,60}}, color={0,0,127}));
    connect(dz02.plug2, loadDz02.plug_p) annotation (Line(points={{-4,60},{-31,60},{-31,30},{-27,30}}, color={0,0,127}));
    connect(loadDz02.plug_n, starLDz02.plug_p) annotation (Line(points={{-4,30},{-31,30},{-31,5},{-27,5}}, color={0,0,127}));
    connect(starLDz02.pin_n, ground.pin) annotation (Line(points={{-4,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(dz02.starpoint2, earth2Dz02.pin_p) annotation (Line(points={{-4,60},{-11,60},{-11,85},{-7,85}}, color={0,0,127}));
    connect(earth2Dz02.pin_n, ground.pin) annotation (Line(points={{16,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, dz04.plug1) annotation (Line(points={{-79,0},{-40,0},{-40,60},{-2,60}}, color={0,0,127}));
    connect(dz04.plug2, loadDz04.plug_p) annotation (Line(points={{21,60},{-6,60},{-6,30},{-2,30}}, color={0,0,127}));
    connect(loadDz04.plug_n, starLDz04.plug_p) annotation (Line(points={{21,30},{-6,30},{-6,5},{-2,5}}, color={0,0,127}));
    connect(starLDz04.pin_n, ground.pin) annotation (Line(points={{21,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(dz04.starpoint2, earth2Dz04.pin_p) annotation (Line(points={{21,60},{14,60},{14,85},{18,85}}, color={0,0,127}));
    connect(earth2Dz04.pin_n, ground.pin) annotation (Line(points={{41,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, dz06.plug1) annotation (Line(points={{-79,0},{-66,0},{-66,-30},{-52,-30}}, color={0,0,127}));
    connect(dz06.plug2, loadDz06.plug_p) annotation (Line(points={{-29,-30},{-56,-30},{-56,-60},{-52,-60}}, color={0,0,127}));
    connect(loadDz06.plug_n, starLDz06.plug_p) annotation (Line(points={{-29,-60},{-56,-60},{-56,-85},{-52,-85}}, color={0,0,127}));
    connect(starLDz06.pin_n, ground.pin) annotation (Line(points={{-29,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(dz06.starpoint2, earth2Dz06.pin_p) annotation (Line(points={{-29,-30},{-36,-30},{-36,-5},{-32,-5}}, color={0,0,127}));
    connect(earth2Dz06.pin_n, ground.pin) annotation (Line(points={{-9,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, dz08.plug1) annotation (Line(points={{-79,0},{-53,0},{-53,-30},{-27,-30}}, color={0,0,127}));
    connect(dz08.plug2, loadDz08.plug_p) annotation (Line(points={{-4,-30},{-31,-30},{-31,-60},{-27,-60}}, color={0,0,127}));
    connect(loadDz08.plug_n, starLDz08.plug_p) annotation (Line(points={{-4,-60},{-31,-60},{-31,-85},{-27,-85}}, color={0,0,127}));
    connect(starLDz08.pin_n, ground.pin) annotation (Line(points={{-4,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(dz08.starpoint2, earth2Dz08.pin_p) annotation (Line(points={{-4,-30},{-11,-30},{-11,-5},{-7,-5}}, color={0,0,127}));
    connect(earth2Dz08.pin_n, ground.pin) annotation (Line(points={{16,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, dz10.plug1) annotation (Line(points={{-79,0},{-40,0},{-40,-30},{-2,-30}}, color={0,0,127}));
    connect(dz10.plug2, loadDz10.plug_p) annotation (Line(points={{21,-30},{-6,-30},{-6,-60},{-2,-60}}, color={0,0,127}));
    connect(loadDz10.plug_n, starLDz10.plug_p) annotation (Line(points={{21,-60},{-6,-60},{-6,-85},{-2,-85}}, color={0,0,127}));
    connect(starLDz10.pin_n, ground.pin) annotation (Line(points={{21,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(dz10.starpoint2, earth2Dz10.pin_p) annotation (Line(points={{21,-30},{14,-30},{14,-5},{18,-5}}, color={0,0,127}));
    connect(earth2Dz10.pin_n, ground.pin) annotation (Line(points={{41,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
    annotation (experiment(StopTime=0.1),
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
      annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starS(m=3)
      annotation (Placement(transformation(extent={{-100,-50},{-80,-30}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Ground ground
      annotation (Placement(transformation(extent={{-100,-90},{-80,-70}})));
    parameter Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData data(C1="Y", C2="d")
      annotation (Placement(transformation(extent={{-100,70},{-80,90}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yd.Yd01 yd01(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-50,50},{-30,70}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYd01(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-50,20},{-30,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYd01(m=3)
      annotation (Placement(transformation(extent={{-50,-5},{-30,15}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yd01(R_ref=1e6)
      annotation (Placement(transformation(extent={{-40,75},{-20,95}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yd.Yd03 yd03(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-25,50},{-5,70}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYd03(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-25,20},{-5,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYd03(m=3)
      annotation (Placement(transformation(extent={{-25,-5},{-5,15}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yd03(R_ref=1e6)
      annotation (Placement(transformation(extent={{-15,75},{5,95}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yd.Yd05 yd05(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{0,50},{20,70}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYd05(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{0,20},{20,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYd05(m=3)
      annotation (Placement(transformation(extent={{0,-5},{20,15}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yd05(R_ref=1e6)
      annotation (Placement(transformation(extent={{10,75},{30,95}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yd.Yd07 yd07(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-50,-40},{-30,-20}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYd07(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-50,-70},{-30,-50}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYd07(m=3)
      annotation (Placement(transformation(extent={{-50,-95},{-30,-75}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yd07(R_ref=1e6)
      annotation (Placement(transformation(extent={{-40,-15},{-20,5}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yd.Yd09 yd09(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-25,-40},{-5,-20}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYd09(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-25,-70},{-5,-50}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYd09(m=3)
      annotation (Placement(transformation(extent={{-25,-95},{-5,-75}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yd09(R_ref=1e6)
      annotation (Placement(transformation(extent={{-15,-15},{5,5}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yd.Yd11 yd11(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{0,-40},{20,-20}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYd11(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{0,-70},{20,-50}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYd11(m=3)
      annotation (Placement(transformation(extent={{0,-95},{20,-75}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yd11(R_ref=1e6)
      annotation (Placement(transformation(extent={{10,-15},{30,5}})));
  equation
    connect(source.plug_n, starS.plug_p) annotation (Line(points={{-79,0},{-106,0},{-106,-40},{-102,-40}}, color={0,0,127}));
    connect(starS.pin_n, ground.pin) annotation (Line(points={{-79,-40},{-106,-40},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, yd01.plug1) annotation (Line(points={{-79,0},{-66,0},{-66,60},{-52,60}}, color={0,0,127}));
    connect(yd01.plug2, loadYd01.plug_p) annotation (Line(points={{-29,60},{-56,60},{-56,30},{-52,30}}, color={0,0,127}));
    connect(loadYd01.plug_n, starLYd01.plug_p) annotation (Line(points={{-29,30},{-56,30},{-56,5},{-52,5}}, color={0,0,127}));
    connect(starLYd01.pin_n, ground.pin) annotation (Line(points={{-29,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yd01.starpoint1, earth1Yd01.pin_p) annotation (Line(points={{-29,60},{-46,60},{-46,85},{-42,85}}, color={0,0,127}));
    connect(earth1Yd01.pin_n, ground.pin) annotation (Line(points={{-19,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, yd03.plug1) annotation (Line(points={{-79,0},{-53,0},{-53,60},{-27,60}}, color={0,0,127}));
    connect(yd03.plug2, loadYd03.plug_p) annotation (Line(points={{-4,60},{-31,60},{-31,30},{-27,30}}, color={0,0,127}));
    connect(loadYd03.plug_n, starLYd03.plug_p) annotation (Line(points={{-4,30},{-31,30},{-31,5},{-27,5}}, color={0,0,127}));
    connect(starLYd03.pin_n, ground.pin) annotation (Line(points={{-4,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yd03.starpoint1, earth1Yd03.pin_p) annotation (Line(points={{-4,60},{-21,60},{-21,85},{-17,85}}, color={0,0,127}));
    connect(earth1Yd03.pin_n, ground.pin) annotation (Line(points={{6,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, yd05.plug1) annotation (Line(points={{-79,0},{-40,0},{-40,60},{-2,60}}, color={0,0,127}));
    connect(yd05.plug2, loadYd05.plug_p) annotation (Line(points={{21,60},{-6,60},{-6,30},{-2,30}}, color={0,0,127}));
    connect(loadYd05.plug_n, starLYd05.plug_p) annotation (Line(points={{21,30},{-6,30},{-6,5},{-2,5}}, color={0,0,127}));
    connect(starLYd05.pin_n, ground.pin) annotation (Line(points={{21,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yd05.starpoint1, earth1Yd05.pin_p) annotation (Line(points={{21,60},{4,60},{4,85},{8,85}}, color={0,0,127}));
    connect(earth1Yd05.pin_n, ground.pin) annotation (Line(points={{31,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, yd07.plug1) annotation (Line(points={{-79,0},{-66,0},{-66,-30},{-52,-30}}, color={0,0,127}));
    connect(yd07.plug2, loadYd07.plug_p) annotation (Line(points={{-29,-30},{-56,-30},{-56,-60},{-52,-60}}, color={0,0,127}));
    connect(loadYd07.plug_n, starLYd07.plug_p) annotation (Line(points={{-29,-60},{-56,-60},{-56,-85},{-52,-85}}, color={0,0,127}));
    connect(starLYd07.pin_n, ground.pin) annotation (Line(points={{-29,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yd07.starpoint1, earth1Yd07.pin_p) annotation (Line(points={{-29,-30},{-46,-30},{-46,-5},{-42,-5}}, color={0,0,127}));
    connect(earth1Yd07.pin_n, ground.pin) annotation (Line(points={{-19,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, yd09.plug1) annotation (Line(points={{-79,0},{-53,0},{-53,-30},{-27,-30}}, color={0,0,127}));
    connect(yd09.plug2, loadYd09.plug_p) annotation (Line(points={{-4,-30},{-31,-30},{-31,-60},{-27,-60}}, color={0,0,127}));
    connect(loadYd09.plug_n, starLYd09.plug_p) annotation (Line(points={{-4,-60},{-31,-60},{-31,-85},{-27,-85}}, color={0,0,127}));
    connect(starLYd09.pin_n, ground.pin) annotation (Line(points={{-4,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yd09.starpoint1, earth1Yd09.pin_p) annotation (Line(points={{-4,-30},{-21,-30},{-21,-5},{-17,-5}}, color={0,0,127}));
    connect(earth1Yd09.pin_n, ground.pin) annotation (Line(points={{6,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, yd11.plug1) annotation (Line(points={{-79,0},{-40,0},{-40,-30},{-2,-30}}, color={0,0,127}));
    connect(yd11.plug2, loadYd11.plug_p) annotation (Line(points={{21,-30},{-6,-30},{-6,-60},{-2,-60}}, color={0,0,127}));
    connect(loadYd11.plug_n, starLYd11.plug_p) annotation (Line(points={{21,-60},{-6,-60},{-6,-85},{-2,-85}}, color={0,0,127}));
    connect(starLYd11.pin_n, ground.pin) annotation (Line(points={{21,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yd11.starpoint1, earth1Yd11.pin_p) annotation (Line(points={{21,-30},{4,-30},{4,-5},{8,-5}}, color={0,0,127}));
    connect(earth1Yd11.pin_n, ground.pin) annotation (Line(points={{31,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
    annotation (experiment(StopTime=0.1),
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
      annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starS(m=3)
      annotation (Placement(transformation(extent={{-100,-50},{-80,-30}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Ground ground
      annotation (Placement(transformation(extent={{-100,-90},{-80,-70}})));
    parameter Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData data(C1="Y", C2="y")
      annotation (Placement(transformation(extent={{-100,70},{-80,90}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yy.Yy00 yy00(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-50,50},{-30,70}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYy00(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-50,20},{-30,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYy00(m=3)
      annotation (Placement(transformation(extent={{-50,-5},{-30,15}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yy00(R_ref=1e6)
      annotation (Placement(transformation(extent={{-40,75},{-20,95}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Yy00(R_ref=1e6)
      annotation (Placement(transformation(extent={{-30,75},{-10,95}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yy.Yy02 yy02(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-25,50},{-5,70}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYy02(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-25,20},{-5,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYy02(m=3)
      annotation (Placement(transformation(extent={{-25,-5},{-5,15}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yy02(R_ref=1e6)
      annotation (Placement(transformation(extent={{-15,75},{5,95}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Yy02(R_ref=1e6)
      annotation (Placement(transformation(extent={{-5,75},{15,95}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yy.Yy04 yy04(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{0,50},{20,70}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYy04(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{0,20},{20,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYy04(m=3)
      annotation (Placement(transformation(extent={{0,-5},{20,15}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yy04(R_ref=1e6)
      annotation (Placement(transformation(extent={{10,75},{30,95}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Yy04(R_ref=1e6)
      annotation (Placement(transformation(extent={{20,75},{40,95}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yy.Yy06 yy06(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-50,-40},{-30,-20}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYy06(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-50,-70},{-30,-50}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYy06(m=3)
      annotation (Placement(transformation(extent={{-50,-95},{-30,-75}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yy06(R_ref=1e6)
      annotation (Placement(transformation(extent={{-40,-15},{-20,5}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Yy06(R_ref=1e6)
      annotation (Placement(transformation(extent={{-30,-15},{-10,5}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yy.Yy08 yy08(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-25,-40},{-5,-20}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYy08(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-25,-70},{-5,-50}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYy08(m=3)
      annotation (Placement(transformation(extent={{-25,-95},{-5,-75}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yy08(R_ref=1e6)
      annotation (Placement(transformation(extent={{-15,-15},{5,5}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Yy08(R_ref=1e6)
      annotation (Placement(transformation(extent={{-5,-15},{15,5}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yy.Yy10 yy10(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{0,-40},{20,-20}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYy10(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{0,-70},{20,-50}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYy10(m=3)
      annotation (Placement(transformation(extent={{0,-95},{20,-75}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yy10(R_ref=1e6)
      annotation (Placement(transformation(extent={{10,-15},{30,5}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Yy10(R_ref=1e6)
      annotation (Placement(transformation(extent={{20,-15},{40,5}})));
  equation
    connect(source.plug_n, starS.plug_p) annotation (Line(points={{-79,0},{-106,0},{-106,-40},{-102,-40}}, color={0,0,127}));
    connect(starS.pin_n, ground.pin) annotation (Line(points={{-79,-40},{-106,-40},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, yy00.plug1) annotation (Line(points={{-79,0},{-66,0},{-66,60},{-52,60}}, color={0,0,127}));
    connect(yy00.plug2, loadYy00.plug_p) annotation (Line(points={{-29,60},{-56,60},{-56,30},{-52,30}}, color={0,0,127}));
    connect(loadYy00.plug_n, starLYy00.plug_p) annotation (Line(points={{-29,30},{-56,30},{-56,5},{-52,5}}, color={0,0,127}));
    connect(starLYy00.pin_n, ground.pin) annotation (Line(points={{-29,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yy00.starpoint1, earth1Yy00.pin_p) annotation (Line(points={{-29,60},{-46,60},{-46,85},{-42,85}}, color={0,0,127}));
    connect(earth1Yy00.pin_n, ground.pin) annotation (Line(points={{-19,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yy00.starpoint2, earth2Yy00.pin_p) annotation (Line(points={{-29,60},{-36,60},{-36,85},{-32,85}}, color={0,0,127}));
    connect(earth2Yy00.pin_n, ground.pin) annotation (Line(points={{-9,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, yy02.plug1) annotation (Line(points={{-79,0},{-53,0},{-53,60},{-27,60}}, color={0,0,127}));
    connect(yy02.plug2, loadYy02.plug_p) annotation (Line(points={{-4,60},{-31,60},{-31,30},{-27,30}}, color={0,0,127}));
    connect(loadYy02.plug_n, starLYy02.plug_p) annotation (Line(points={{-4,30},{-31,30},{-31,5},{-27,5}}, color={0,0,127}));
    connect(starLYy02.pin_n, ground.pin) annotation (Line(points={{-4,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yy02.starpoint1, earth1Yy02.pin_p) annotation (Line(points={{-4,60},{-21,60},{-21,85},{-17,85}}, color={0,0,127}));
    connect(earth1Yy02.pin_n, ground.pin) annotation (Line(points={{6,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yy02.starpoint2, earth2Yy02.pin_p) annotation (Line(points={{-4,60},{-11,60},{-11,85},{-7,85}}, color={0,0,127}));
    connect(earth2Yy02.pin_n, ground.pin) annotation (Line(points={{16,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, yy04.plug1) annotation (Line(points={{-79,0},{-40,0},{-40,60},{-2,60}}, color={0,0,127}));
    connect(yy04.plug2, loadYy04.plug_p) annotation (Line(points={{21,60},{-6,60},{-6,30},{-2,30}}, color={0,0,127}));
    connect(loadYy04.plug_n, starLYy04.plug_p) annotation (Line(points={{21,30},{-6,30},{-6,5},{-2,5}}, color={0,0,127}));
    connect(starLYy04.pin_n, ground.pin) annotation (Line(points={{21,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yy04.starpoint1, earth1Yy04.pin_p) annotation (Line(points={{21,60},{4,60},{4,85},{8,85}}, color={0,0,127}));
    connect(earth1Yy04.pin_n, ground.pin) annotation (Line(points={{31,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yy04.starpoint2, earth2Yy04.pin_p) annotation (Line(points={{21,60},{14,60},{14,85},{18,85}}, color={0,0,127}));
    connect(earth2Yy04.pin_n, ground.pin) annotation (Line(points={{41,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, yy06.plug1) annotation (Line(points={{-79,0},{-66,0},{-66,-30},{-52,-30}}, color={0,0,127}));
    connect(yy06.plug2, loadYy06.plug_p) annotation (Line(points={{-29,-30},{-56,-30},{-56,-60},{-52,-60}}, color={0,0,127}));
    connect(loadYy06.plug_n, starLYy06.plug_p) annotation (Line(points={{-29,-60},{-56,-60},{-56,-85},{-52,-85}}, color={0,0,127}));
    connect(starLYy06.pin_n, ground.pin) annotation (Line(points={{-29,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yy06.starpoint1, earth1Yy06.pin_p) annotation (Line(points={{-29,-30},{-46,-30},{-46,-5},{-42,-5}}, color={0,0,127}));
    connect(earth1Yy06.pin_n, ground.pin) annotation (Line(points={{-19,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yy06.starpoint2, earth2Yy06.pin_p) annotation (Line(points={{-29,-30},{-36,-30},{-36,-5},{-32,-5}}, color={0,0,127}));
    connect(earth2Yy06.pin_n, ground.pin) annotation (Line(points={{-9,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, yy08.plug1) annotation (Line(points={{-79,0},{-53,0},{-53,-30},{-27,-30}}, color={0,0,127}));
    connect(yy08.plug2, loadYy08.plug_p) annotation (Line(points={{-4,-30},{-31,-30},{-31,-60},{-27,-60}}, color={0,0,127}));
    connect(loadYy08.plug_n, starLYy08.plug_p) annotation (Line(points={{-4,-60},{-31,-60},{-31,-85},{-27,-85}}, color={0,0,127}));
    connect(starLYy08.pin_n, ground.pin) annotation (Line(points={{-4,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yy08.starpoint1, earth1Yy08.pin_p) annotation (Line(points={{-4,-30},{-21,-30},{-21,-5},{-17,-5}}, color={0,0,127}));
    connect(earth1Yy08.pin_n, ground.pin) annotation (Line(points={{6,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yy08.starpoint2, earth2Yy08.pin_p) annotation (Line(points={{-4,-30},{-11,-30},{-11,-5},{-7,-5}}, color={0,0,127}));
    connect(earth2Yy08.pin_n, ground.pin) annotation (Line(points={{16,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, yy10.plug1) annotation (Line(points={{-79,0},{-40,0},{-40,-30},{-2,-30}}, color={0,0,127}));
    connect(yy10.plug2, loadYy10.plug_p) annotation (Line(points={{21,-30},{-6,-30},{-6,-60},{-2,-60}}, color={0,0,127}));
    connect(loadYy10.plug_n, starLYy10.plug_p) annotation (Line(points={{21,-60},{-6,-60},{-6,-85},{-2,-85}}, color={0,0,127}));
    connect(starLYy10.pin_n, ground.pin) annotation (Line(points={{21,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yy10.starpoint1, earth1Yy10.pin_p) annotation (Line(points={{21,-30},{4,-30},{4,-5},{8,-5}}, color={0,0,127}));
    connect(earth1Yy10.pin_n, ground.pin) annotation (Line(points={{31,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yy10.starpoint2, earth2Yy10.pin_p) annotation (Line(points={{21,-30},{14,-30},{14,-5},{18,-5}}, color={0,0,127}));
    connect(earth2Yy10.pin_n, ground.pin) annotation (Line(points={{41,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
    annotation (experiment(StopTime=0.1),
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
      annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starS(m=3)
      annotation (Placement(transformation(extent={{-100,-50},{-80,-30}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Ground ground
      annotation (Placement(transformation(extent={{-100,-90},{-80,-70}})));
    parameter Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData data(C1="Y", C2="z")
      annotation (Placement(transformation(extent={{-100,70},{-80,90}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yz.Yz01 yz01(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-50,50},{-30,70}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYz01(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-50,20},{-30,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYz01(m=3)
      annotation (Placement(transformation(extent={{-50,-5},{-30,15}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yz01(R_ref=1e6)
      annotation (Placement(transformation(extent={{-40,75},{-20,95}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Yz01(R_ref=1e6)
      annotation (Placement(transformation(extent={{-30,75},{-10,95}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yz.Yz03 yz03(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-25,50},{-5,70}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYz03(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-25,20},{-5,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYz03(m=3)
      annotation (Placement(transformation(extent={{-25,-5},{-5,15}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yz03(R_ref=1e6)
      annotation (Placement(transformation(extent={{-15,75},{5,95}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Yz03(R_ref=1e6)
      annotation (Placement(transformation(extent={{-5,75},{15,95}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yz.Yz05 yz05(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{0,50},{20,70}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYz05(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{0,20},{20,40}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYz05(m=3)
      annotation (Placement(transformation(extent={{0,-5},{20,15}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yz05(R_ref=1e6)
      annotation (Placement(transformation(extent={{10,75},{30,95}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Yz05(R_ref=1e6)
      annotation (Placement(transformation(extent={{20,75},{40,95}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yz.Yz07 yz07(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-50,-40},{-30,-20}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYz07(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-50,-70},{-30,-50}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYz07(m=3)
      annotation (Placement(transformation(extent={{-50,-95},{-30,-75}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yz07(R_ref=1e6)
      annotation (Placement(transformation(extent={{-40,-15},{-20,5}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Yz07(R_ref=1e6)
      annotation (Placement(transformation(extent={{-30,-15},{-10,5}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yz.Yz09 yz09(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{-25,-40},{-5,-20}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYz09(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{-25,-70},{-5,-50}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYz09(m=3)
      annotation (Placement(transformation(extent={{-25,-95},{-5,-75}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yz09(R_ref=1e6)
      annotation (Placement(transformation(extent={{-15,-15},{5,5}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Yz09(R_ref=1e6)
      annotation (Placement(transformation(extent={{-5,-15},{15,5}})));
    Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yz.Yz11 yz11(n=data.n, R1=data.R1, L1sigma=data.L1sigma, R2=data.R2, L2sigma=data.L2sigma, T1Ref=data.T1Ref, alpha20_1=data.alpha20_1, T2Ref=data.T2Ref, alpha20_2=data.alpha20_2, T1Operational=293.15, T2Operational=293.15)
      annotation (Placement(transformation(extent={{0,-40},{20,-20}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Resistor loadYz11(m=3, R_ref=fill(1/3, 3))
      annotation (Placement(transformation(extent={{0,-70},{20,-50}})));
    Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starLYz11(m=3)
      annotation (Placement(transformation(extent={{0,-95},{20,-75}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth1Yz11(R_ref=1e6)
      annotation (Placement(transformation(extent={{10,-15},{30,5}})));
    Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Resistor earth2Yz11(R_ref=1e6)
      annotation (Placement(transformation(extent={{20,-15},{40,5}})));
  equation
    connect(source.plug_n, starS.plug_p) annotation (Line(points={{-79,0},{-106,0},{-106,-40},{-102,-40}}, color={0,0,127}));
    connect(starS.pin_n, ground.pin) annotation (Line(points={{-79,-40},{-106,-40},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, yz01.plug1) annotation (Line(points={{-79,0},{-66,0},{-66,60},{-52,60}}, color={0,0,127}));
    connect(yz01.plug2, loadYz01.plug_p) annotation (Line(points={{-29,60},{-56,60},{-56,30},{-52,30}}, color={0,0,127}));
    connect(loadYz01.plug_n, starLYz01.plug_p) annotation (Line(points={{-29,30},{-56,30},{-56,5},{-52,5}}, color={0,0,127}));
    connect(starLYz01.pin_n, ground.pin) annotation (Line(points={{-29,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yz01.starpoint1, earth1Yz01.pin_p) annotation (Line(points={{-29,60},{-46,60},{-46,85},{-42,85}}, color={0,0,127}));
    connect(earth1Yz01.pin_n, ground.pin) annotation (Line(points={{-19,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yz01.starpoint2, earth2Yz01.pin_p) annotation (Line(points={{-29,60},{-36,60},{-36,85},{-32,85}}, color={0,0,127}));
    connect(earth2Yz01.pin_n, ground.pin) annotation (Line(points={{-9,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, yz03.plug1) annotation (Line(points={{-79,0},{-53,0},{-53,60},{-27,60}}, color={0,0,127}));
    connect(yz03.plug2, loadYz03.plug_p) annotation (Line(points={{-4,60},{-31,60},{-31,30},{-27,30}}, color={0,0,127}));
    connect(loadYz03.plug_n, starLYz03.plug_p) annotation (Line(points={{-4,30},{-31,30},{-31,5},{-27,5}}, color={0,0,127}));
    connect(starLYz03.pin_n, ground.pin) annotation (Line(points={{-4,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yz03.starpoint1, earth1Yz03.pin_p) annotation (Line(points={{-4,60},{-21,60},{-21,85},{-17,85}}, color={0,0,127}));
    connect(earth1Yz03.pin_n, ground.pin) annotation (Line(points={{6,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yz03.starpoint2, earth2Yz03.pin_p) annotation (Line(points={{-4,60},{-11,60},{-11,85},{-7,85}}, color={0,0,127}));
    connect(earth2Yz03.pin_n, ground.pin) annotation (Line(points={{16,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, yz05.plug1) annotation (Line(points={{-79,0},{-40,0},{-40,60},{-2,60}}, color={0,0,127}));
    connect(yz05.plug2, loadYz05.plug_p) annotation (Line(points={{21,60},{-6,60},{-6,30},{-2,30}}, color={0,0,127}));
    connect(loadYz05.plug_n, starLYz05.plug_p) annotation (Line(points={{21,30},{-6,30},{-6,5},{-2,5}}, color={0,0,127}));
    connect(starLYz05.pin_n, ground.pin) annotation (Line(points={{21,5},{-106,5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yz05.starpoint1, earth1Yz05.pin_p) annotation (Line(points={{21,60},{4,60},{4,85},{8,85}}, color={0,0,127}));
    connect(earth1Yz05.pin_n, ground.pin) annotation (Line(points={{31,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yz05.starpoint2, earth2Yz05.pin_p) annotation (Line(points={{21,60},{14,60},{14,85},{18,85}}, color={0,0,127}));
    connect(earth2Yz05.pin_n, ground.pin) annotation (Line(points={{41,85},{-106,85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, yz07.plug1) annotation (Line(points={{-79,0},{-66,0},{-66,-30},{-52,-30}}, color={0,0,127}));
    connect(yz07.plug2, loadYz07.plug_p) annotation (Line(points={{-29,-30},{-56,-30},{-56,-60},{-52,-60}}, color={0,0,127}));
    connect(loadYz07.plug_n, starLYz07.plug_p) annotation (Line(points={{-29,-60},{-56,-60},{-56,-85},{-52,-85}}, color={0,0,127}));
    connect(starLYz07.pin_n, ground.pin) annotation (Line(points={{-29,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yz07.starpoint1, earth1Yz07.pin_p) annotation (Line(points={{-29,-30},{-46,-30},{-46,-5},{-42,-5}}, color={0,0,127}));
    connect(earth1Yz07.pin_n, ground.pin) annotation (Line(points={{-19,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yz07.starpoint2, earth2Yz07.pin_p) annotation (Line(points={{-29,-30},{-36,-30},{-36,-5},{-32,-5}}, color={0,0,127}));
    connect(earth2Yz07.pin_n, ground.pin) annotation (Line(points={{-9,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, yz09.plug1) annotation (Line(points={{-79,0},{-53,0},{-53,-30},{-27,-30}}, color={0,0,127}));
    connect(yz09.plug2, loadYz09.plug_p) annotation (Line(points={{-4,-30},{-31,-30},{-31,-60},{-27,-60}}, color={0,0,127}));
    connect(loadYz09.plug_n, starLYz09.plug_p) annotation (Line(points={{-4,-60},{-31,-60},{-31,-85},{-27,-85}}, color={0,0,127}));
    connect(starLYz09.pin_n, ground.pin) annotation (Line(points={{-4,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yz09.starpoint1, earth1Yz09.pin_p) annotation (Line(points={{-4,-30},{-21,-30},{-21,-5},{-17,-5}}, color={0,0,127}));
    connect(earth1Yz09.pin_n, ground.pin) annotation (Line(points={{6,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yz09.starpoint2, earth2Yz09.pin_p) annotation (Line(points={{-4,-30},{-11,-30},{-11,-5},{-7,-5}}, color={0,0,127}));
    connect(earth2Yz09.pin_n, ground.pin) annotation (Line(points={{16,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(source.plug_p, yz11.plug1) annotation (Line(points={{-79,0},{-40,0},{-40,-30},{-2,-30}}, color={0,0,127}));
    connect(yz11.plug2, loadYz11.plug_p) annotation (Line(points={{21,-30},{-6,-30},{-6,-60},{-2,-60}}, color={0,0,127}));
    connect(loadYz11.plug_n, starLYz11.plug_p) annotation (Line(points={{21,-60},{-6,-60},{-6,-85},{-2,-85}}, color={0,0,127}));
    connect(starLYz11.pin_n, ground.pin) annotation (Line(points={{21,-85},{-106,-85},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yz11.starpoint1, earth1Yz11.pin_p) annotation (Line(points={{21,-30},{4,-30},{4,-5},{8,-5}}, color={0,0,127}));
    connect(earth1Yz11.pin_n, ground.pin) annotation (Line(points={{31,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
    connect(yz11.starpoint2, earth2Yz11.pin_p) annotation (Line(points={{21,-30},{14,-30},{14,-5},{18,-5}}, color={0,0,127}));
    connect(earth2Yz11.pin_n, ground.pin) annotation (Line(points={{41,-5},{-106,-5},{-106,-80},{-102,-80}}, color={0,0,127}));
    annotation (experiment(StopTime=0.1),
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
