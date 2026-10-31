within ModelicaTest.Electrical;
package Spice3 "Test models for Modelica.Electrical.Spice3"
  extends Modelica.Icons.ExamplesPackage;

  model Spice3SourcesBasicAndPoly "Test of the sources, basic elements and polynomial controlled sources of Modelica.Electrical.Spice3"
    extends Modelica.Icons.Example;

    Modelica.Electrical.Spice3.Basic.Ground ground
      annotation (Placement(transformation(extent={{-10,-210},{10,-190}})));
    Modelica.Electrical.Spice3.Sources.V_constant v_constant(V=2)
      annotation (Placement(transformation(extent={{-70,90},{-50,110}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_v_constant(R=1e3)
      annotation (Placement(transformation(extent={{-55,90},{-35,110}})));
    Modelica.Electrical.Spice3.Sources.V_sin v_sin(VO=0.5, VA=1, FREQ=50)
      annotation (Placement(transformation(extent={{-70,65},{-50,85}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_v_sin(R=1e3)
      annotation (Placement(transformation(extent={{-55,65},{-35,85}})));
    Modelica.Electrical.Spice3.Sources.V_exp v_exp(V1=0, V2=1, TD1=0.002, TAU1=0.003, TD2=0.01, TAU2=0.004)
      annotation (Placement(transformation(extent={{-70,40},{-50,60}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_v_exp(R=1e3)
      annotation (Placement(transformation(extent={{-55,40},{-35,60}})));
    Modelica.Electrical.Spice3.Sources.V_pulse v_pulse(V1=0, V2=1, TD=0.001, TR=0.001, TF=0.001, PW=0.005, PER=0.01)
      annotation (Placement(transformation(extent={{-70,15},{-50,35}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_v_pulse(R=1e3)
      annotation (Placement(transformation(extent={{-55,15},{-35,35}})));
    Modelica.Electrical.Spice3.Sources.V_pwl v_pwl(table=[0, 0; 0.005, 1; 0.01, 0.5; 0.02, 1])
      annotation (Placement(transformation(extent={{-70,-10},{-50,10}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_v_pwl(R=1e3)
      annotation (Placement(transformation(extent={{-55,-10},{-35,10}})));
    Modelica.Electrical.Spice3.Sources.V_sffm v_sffm(VO=0, VA=1, FC=200, MDI=2, FS=50)
      annotation (Placement(transformation(extent={{-70,-35},{-50,-15}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_v_sffm(R=1e3)
      annotation (Placement(transformation(extent={{-55,-35},{-35,-15}})));
    Modelica.Electrical.Spice3.Sources.I_constant i_constant(I=2e-3)
      annotation (Placement(transformation(extent={{-20,90},{0,110}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_i_constant(R=1e3)
      annotation (Placement(transformation(extent={{-5,90},{15,110}})));
    Modelica.Electrical.Spice3.Sources.I_sin i_sin(IO=0, IA=1e-3, FREQ=50)
      annotation (Placement(transformation(extent={{-20,65},{0,85}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_i_sin(R=1e3)
      annotation (Placement(transformation(extent={{-5,65},{15,85}})));
    Modelica.Electrical.Spice3.Sources.I_exp i_exp(I1=0, I2=1e-3, TD1=0.002, TAU1=0.003, TD2=0.01, TAU2=0.004)
      annotation (Placement(transformation(extent={{-20,40},{0,60}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_i_exp(R=1e3)
      annotation (Placement(transformation(extent={{-5,40},{15,60}})));
    Modelica.Electrical.Spice3.Sources.I_pulse i_pulse(I1=0, I2=1e-3, TD=0.001, TR=0.001, TF=0.001, PW=0.005, PER=0.01)
      annotation (Placement(transformation(extent={{-20,15},{0,35}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_i_pulse(R=1e3)
      annotation (Placement(transformation(extent={{-5,15},{15,35}})));
    Modelica.Electrical.Spice3.Sources.I_pwl i_pwl(table=[0, 0; 0.005, 1e-3; 0.01, 5e-4; 0.02, 1e-3])
      annotation (Placement(transformation(extent={{-20,-10},{0,10}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_i_pwl(R=1e3)
      annotation (Placement(transformation(extent={{-5,-10},{15,10}})));
    Modelica.Electrical.Spice3.Sources.I_sffm i_sffm(IO=0, IA=1e-3, FC=200, MDI=2, FS=50)
      annotation (Placement(transformation(extent={{-20,-35},{0,-15}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_i_sffm(R=1e3)
      annotation (Placement(transformation(extent={{-5,-35},{15,-15}})));
    Modelica.Electrical.Spice3.Basic.E_VCV e_vcv(gain=2)
      annotation (Placement(transformation(extent={{50,90},{70,110}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_e(R=1e3)
      annotation (Placement(transformation(extent={{75,90},{95,110}})));
    Modelica.Electrical.Spice3.Basic.G_VCC g_vcc(transConductance=1e-3)
      annotation (Placement(transformation(extent={{50,65},{70,85}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_g(R=1e3)
      annotation (Placement(transformation(extent={{75,65},{95,85}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_h(R=100)
      annotation (Placement(transformation(extent={{30,40},{50,60}})));
    Modelica.Electrical.Spice3.Basic.H_CCV h_ccv(transResistance=50)
      annotation (Placement(transformation(extent={{50,40},{70,60}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_hl(R=1e3)
      annotation (Placement(transformation(extent={{75,40},{95,60}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_f(R=100)
      annotation (Placement(transformation(extent={{30,15},{50,35}})));
    Modelica.Electrical.Spice3.Basic.F_CCC f_ccc(gain=3)
      annotation (Placement(transformation(extent={{50,15},{70,35}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_fl(R=1e3)
      annotation (Placement(transformation(extent={{75,15},{95,35}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_L1(R=10)
      annotation (Placement(transformation(extent={{30,-10},{50,10}})));
    Modelica.Electrical.Spice3.Basic.L_Inductor L1(L=1e-3)
      annotation (Placement(transformation(extent={{50,-10},{70,10}})));
    Modelica.Electrical.Spice3.Basic.L_Inductor L2(L=4e-3)
      annotation (Placement(transformation(extent={{50,-35},{70,-15}})));
    Modelica.Electrical.Spice3.Basic.K_CoupledInductors k12(k=0.9)
      annotation (Placement(transformation(extent={{70,-20},{90,0}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_L2(R=100)
      annotation (Placement(transformation(extent={{75,-35},{95,-15}})));
    Modelica.Electrical.Spice3.Basic.C_Capacitor C1(C=1e-6)
      annotation (Placement(transformation(extent={{50,-60},{70,-40}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_C1(R=1e3)
      annotation (Placement(transformation(extent={{75,-60},{95,-40}})));
    Modelica.Electrical.Spice3.Additionals.E_VCV_POLY e_poly(N=1, coeff={0, 1, 0.5})
      annotation (Placement(transformation(extent={{50,-90},{70,-70}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_epoly(R=1e3)
      annotation (Placement(transformation(extent={{75,-90},{95,-70}})));
    Modelica.Electrical.Spice3.Additionals.G_VCC_POLY g_poly(N=1, coeff={0, 1e-3, 1e-3})
      annotation (Placement(transformation(extent={{50,-115},{70,-95}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_gpoly(R=1e3)
      annotation (Placement(transformation(extent={{75,-115},{95,-95}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_hp(R=100)
      annotation (Placement(transformation(extent={{30,-140},{50,-120}})));
    Modelica.Electrical.Spice3.Additionals.H_CCV_POLY h_poly(N=1, coeff={0, 50, 10})
      annotation (Placement(transformation(extent={{50,-140},{70,-120}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_hpoly(R=1e3)
      annotation (Placement(transformation(extent={{75,-140},{95,-120}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_fp(R=100)
      annotation (Placement(transformation(extent={{30,-165},{50,-145}})));
    Modelica.Electrical.Spice3.Additionals.F_CCC_POLY f_poly(N=1, coeff={0, 3, 1})
      annotation (Placement(transformation(extent={{50,-165},{70,-145}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_fpoly(R=1e3)
      annotation (Placement(transformation(extent={{75,-165},{95,-145}})));
  equation
    connect(v_constant.p, R_v_constant.p) annotation (Line(points={{-49,100},{-57,100}}, color={0,0,127}));
    connect(R_v_constant.n, v_constant.n) annotation (Line(points={{-34,100},{-72,100}}, color={0,0,127}));
    connect(v_constant.n, ground.p) annotation (Line(points={{-49,100},{-30,100},{-30,-200},{-12,-200}}, color={0,0,127}));
    connect(v_sin.p, R_v_sin.p) annotation (Line(points={{-49,75},{-57,75}}, color={0,0,127}));
    connect(R_v_sin.n, v_sin.n) annotation (Line(points={{-34,75},{-72,75}}, color={0,0,127}));
    connect(v_sin.n, ground.p) annotation (Line(points={{-49,75},{-30,75},{-30,-200},{-12,-200}}, color={0,0,127}));
    connect(v_exp.p, R_v_exp.p) annotation (Line(points={{-49,50},{-57,50}}, color={0,0,127}));
    connect(R_v_exp.n, v_exp.n) annotation (Line(points={{-34,50},{-72,50}}, color={0,0,127}));
    connect(v_exp.n, ground.p) annotation (Line(points={{-49,50},{-30,50},{-30,-200},{-12,-200}}, color={0,0,127}));
    connect(v_pulse.p, R_v_pulse.p) annotation (Line(points={{-49,25},{-57,25}}, color={0,0,127}));
    connect(R_v_pulse.n, v_pulse.n) annotation (Line(points={{-34,25},{-72,25}}, color={0,0,127}));
    connect(v_pulse.n, ground.p) annotation (Line(points={{-49,25},{-30,25},{-30,-200},{-12,-200}}, color={0,0,127}));
    connect(v_pwl.p, R_v_pwl.p) annotation (Line(points={{-49,0},{-57,0}}, color={0,0,127}));
    connect(R_v_pwl.n, v_pwl.n) annotation (Line(points={{-34,0},{-72,0}}, color={0,0,127}));
    connect(v_pwl.n, ground.p) annotation (Line(points={{-49,0},{-30,0},{-30,-200},{-12,-200}}, color={0,0,127}));
    connect(v_sffm.p, R_v_sffm.p) annotation (Line(points={{-49,-25},{-57,-25}}, color={0,0,127}));
    connect(R_v_sffm.n, v_sffm.n) annotation (Line(points={{-34,-25},{-72,-25}}, color={0,0,127}));
    connect(v_sffm.n, ground.p) annotation (Line(points={{-49,-25},{-30,-25},{-30,-200},{-12,-200}}, color={0,0,127}));
    connect(i_constant.p, R_i_constant.p) annotation (Line(points={{1,100},{-7,100}}, color={0,0,127}));
    connect(R_i_constant.n, i_constant.n) annotation (Line(points={{16,100},{-22,100}}, color={0,0,127}));
    connect(i_constant.n, ground.p) annotation (Line(points={{1,100},{-16,100},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(i_sin.p, R_i_sin.p) annotation (Line(points={{1,75},{-7,75}}, color={0,0,127}));
    connect(R_i_sin.n, i_sin.n) annotation (Line(points={{16,75},{-22,75}}, color={0,0,127}));
    connect(i_sin.n, ground.p) annotation (Line(points={{1,75},{-16,75},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(i_exp.p, R_i_exp.p) annotation (Line(points={{1,50},{-7,50}}, color={0,0,127}));
    connect(R_i_exp.n, i_exp.n) annotation (Line(points={{16,50},{-22,50}}, color={0,0,127}));
    connect(i_exp.n, ground.p) annotation (Line(points={{1,50},{-16,50},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(i_pulse.p, R_i_pulse.p) annotation (Line(points={{1,25},{-7,25}}, color={0,0,127}));
    connect(R_i_pulse.n, i_pulse.n) annotation (Line(points={{16,25},{-22,25}}, color={0,0,127}));
    connect(i_pulse.n, ground.p) annotation (Line(points={{1,25},{-16,25},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(i_pwl.p, R_i_pwl.p) annotation (Line(points={{1,0},{-7,0}}, color={0,0,127}));
    connect(R_i_pwl.n, i_pwl.n) annotation (Line(points={{16,0},{-22,0}}, color={0,0,127}));
    connect(i_pwl.n, ground.p) annotation (Line(points={{1,0},{-16,0},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(i_sffm.p, R_i_sffm.p) annotation (Line(points={{1,-25},{-7,-25}}, color={0,0,127}));
    connect(R_i_sffm.n, i_sffm.n) annotation (Line(points={{16,-25},{-22,-25}}, color={0,0,127}));
    connect(i_sffm.n, ground.p) annotation (Line(points={{1,-25},{-16,-25},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(v_sin.p, e_vcv.p1) annotation (Line(points={{-49,75},{0,75},{0,100},{48,100}}, color={0,0,127}));
    connect(e_vcv.n1, ground.p) annotation (Line(points={{71,100},{-16,100},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(e_vcv.p2, R_e.p) annotation (Line(points={{71,100},{73,100}}, color={0,0,127}));
    connect(R_e.n, e_vcv.n2) annotation (Line(points={{96,100},{48,100}}, color={0,0,127}));
    connect(e_vcv.n2, ground.p) annotation (Line(points={{71,100},{-16,100},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(v_sin.p, g_vcc.p1) annotation (Line(points={{-49,75},{48,75}}, color={0,0,127}));
    connect(g_vcc.n1, ground.p) annotation (Line(points={{71,75},{-16,75},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(g_vcc.p2, R_g.p) annotation (Line(points={{71,75},{73,75}}, color={0,0,127}));
    connect(R_g.n, g_vcc.n2) annotation (Line(points={{96,75},{48,75}}, color={0,0,127}));
    connect(g_vcc.n2, ground.p) annotation (Line(points={{71,75},{-16,75},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(v_sin.p, R_h.p) annotation (Line(points={{-49,75},{-10,75},{-10,50},{28,50}}, color={0,0,127}));
    connect(R_h.n, h_ccv.p1) annotation (Line(points={{51,50},{48,50}}, color={0,0,127}));
    connect(h_ccv.n1, ground.p) annotation (Line(points={{71,50},{-16,50},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(h_ccv.p2, R_hl.p) annotation (Line(points={{71,50},{73,50}}, color={0,0,127}));
    connect(R_hl.n, h_ccv.n2) annotation (Line(points={{96,50},{48,50}}, color={0,0,127}));
    connect(h_ccv.n2, ground.p) annotation (Line(points={{71,50},{-16,50},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(v_sin.p, R_f.p) annotation (Line(points={{-49,75},{-10,75},{-10,25},{28,25}}, color={0,0,127}));
    connect(R_f.n, f_ccc.p1) annotation (Line(points={{51,25},{48,25}}, color={0,0,127}));
    connect(f_ccc.n1, ground.p) annotation (Line(points={{71,25},{-16,25},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(f_ccc.p2, R_fl.p) annotation (Line(points={{71,25},{73,25}}, color={0,0,127}));
    connect(R_fl.n, f_ccc.n2) annotation (Line(points={{96,25},{48,25}}, color={0,0,127}));
    connect(f_ccc.n2, ground.p) annotation (Line(points={{71,25},{-16,25},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(v_sin.p, R_L1.p) annotation (Line(points={{-49,75},{-10,75},{-10,0},{28,0}}, color={0,0,127}));
    connect(R_L1.n, L1.p) annotation (Line(points={{51,0},{48,0}}, color={0,0,127}));
    connect(L1.n, ground.p) annotation (Line(points={{71,0},{-16,0},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(L2.p, R_L2.p) annotation (Line(points={{71,-25},{73,-25}}, color={0,0,127}));
    connect(R_L2.n, L2.n) annotation (Line(points={{96,-25},{48,-25}}, color={0,0,127}));
    connect(L2.n, ground.p) annotation (Line(points={{71,-25},{-16,-25},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(L1.ICP, k12.inductiveCouplePin1) annotation (Line(points={{71,0},{64,0},{64,-10},{68,-10}}, color={0,0,127}));
    connect(L2.ICP, k12.inductiveCouplePin2) annotation (Line(points={{71,-25},{64,-25},{64,-10},{68,-10}}, color={0,0,127}));
    connect(v_pulse.p, C1.p) annotation (Line(points={{-49,25},{0,25},{0,-50},{48,-50}}, color={0,0,127}));
    connect(C1.n, R_C1.p) annotation (Line(points={{71,-50},{73,-50}}, color={0,0,127}));
    connect(R_C1.n, ground.p) annotation (Line(points={{96,-50},{-16,-50},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(v_sin.p, e_poly.pc[1]) annotation (Line(points={{-49,75},{0,75},{0,-80},{48,-80}}, color={0,0,127}));
    connect(e_poly.pc[2], ground.p) annotation (Line(points={{71,-80},{-16,-80},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(e_poly.p, R_epoly.p) annotation (Line(points={{71,-80},{73,-80}}, color={0,0,127}));
    connect(R_epoly.n, e_poly.n) annotation (Line(points={{96,-80},{48,-80}}, color={0,0,127}));
    connect(e_poly.n, ground.p) annotation (Line(points={{71,-80},{-16,-80},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(v_sin.p, g_poly.pc[1]) annotation (Line(points={{-49,75},{0,75},{0,-105},{48,-105}}, color={0,0,127}));
    connect(g_poly.pc[2], ground.p) annotation (Line(points={{71,-105},{-16,-105},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(g_poly.p, R_gpoly.p) annotation (Line(points={{71,-105},{73,-105}}, color={0,0,127}));
    connect(R_gpoly.n, g_poly.n) annotation (Line(points={{96,-105},{48,-105}}, color={0,0,127}));
    connect(g_poly.n, ground.p) annotation (Line(points={{71,-105},{-16,-105},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(v_sin.p, R_hp.p) annotation (Line(points={{-49,75},{-10,75},{-10,-130},{28,-130}}, color={0,0,127}));
    connect(R_hp.n, h_poly.pc[1]) annotation (Line(points={{51,-130},{48,-130}}, color={0,0,127}));
    connect(h_poly.pc[2], ground.p) annotation (Line(points={{71,-130},{-16,-130},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(h_poly.p, R_hpoly.p) annotation (Line(points={{71,-130},{73,-130}}, color={0,0,127}));
    connect(R_hpoly.n, h_poly.n) annotation (Line(points={{96,-130},{48,-130}}, color={0,0,127}));
    connect(h_poly.n, ground.p) annotation (Line(points={{71,-130},{-16,-130},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(v_sin.p, R_fp.p) annotation (Line(points={{-49,75},{-10,75},{-10,-155},{28,-155}}, color={0,0,127}));
    connect(R_fp.n, f_poly.pc[1]) annotation (Line(points={{51,-155},{48,-155}}, color={0,0,127}));
    connect(f_poly.pc[2], ground.p) annotation (Line(points={{71,-155},{-16,-155},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(f_poly.p, R_fpoly.p) annotation (Line(points={{71,-155},{73,-155}}, color={0,0,127}));
    connect(R_fpoly.n, f_poly.n) annotation (Line(points={{96,-155},{48,-155}}, color={0,0,127}));
    connect(f_poly.n, ground.p) annotation (Line(points={{71,-155},{-16,-155},{-16,-200},{-12,-200}}, color={0,0,127}));
    annotation (Diagram(coordinateSystem(extent={{-100,-220},{100,120}})),
      experiment(StopTime=0),
      Documentation(info="<html>
<p>
All independent sources of
<a href=\"modelica://Modelica.Electrical.Spice3.Sources\">Modelica.Electrical.Spice3.Sources</a>
(constant, sin, exp, pulse, pwl, sffm; voltage and current) drive 1 k&Omega; resistors. The linear
controlled sources E_VCV, G_VCC, H_CCV and F_CCC, the coupled inductors L_Inductor/K_CoupledInductors,
C_Capacitor and the polynomial controlled sources E_VCV_POLY, G_VCC_POLY, H_CCV_POLY and F_CCC_POLY of
<a href=\"modelica://Modelica.Electrical.Spice3.Additionals\">Spice3.Additionals</a> are driven by the
sinusoidal source.
</p>
</html>"));
  end Spice3SourcesBasicAndPoly;

  model Spice3Semiconductors "Test of the MOSFET level 2, BJT, JFET, diode and semiconductor resistor/capacitor models of Modelica.Electrical.Spice3"
    extends Modelica.Icons.Example;

    Modelica.Electrical.Spice3.Basic.Ground ground
      annotation (Placement(transformation(extent={{-10,-210},{10,-190}})));
    Modelica.Electrical.Spice3.Sources.V_constant vdd(V=5)
      annotation (Placement(transformation(extent={{-100,70},{-80,90}})));
    Modelica.Electrical.Spice3.Sources.V_pulse vin(V1=0, V2=5, TD=1e-4, TR=1e-4, TF=1e-4, PW=4e-4, PER=1e-3)
      annotation (Placement(transformation(extent={{-100,10},{-80,30}})));
    Modelica.Electrical.Spice3.Semiconductors.M_PMOS2 mp2(modelcard(VTO=-1, KP=2e-5), W=40e-6, L=2e-6)
      annotation (Placement(transformation(extent={{-50,80},{-30,100}})));
    Modelica.Electrical.Spice3.Semiconductors.M_NMOS2 mn2(modelcard(VTO=1, KP=5e-5), W=20e-6, L=2e-6)
      annotation (Placement(transformation(extent={{-50,50},{-30,70}})));
    Modelica.Electrical.Spice3.Basic.C_Capacitor cl(C=1e-12)
      annotation (Placement(transformation(extent={{-20,65},{0,85}})));
    Modelica.Electrical.Spice3.Semiconductors.Q_PNPBJT qp
      annotation (Placement(transformation(extent={{20,80},{40,100}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor rc(R=1e3)
      annotation (Placement(transformation(extent={{50,70},{70,90}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor rb(R=1e5)
      annotation (Placement(transformation(extent={{-10,90},{10,110}})));
    Modelica.Electrical.Spice3.Semiconductors.J_PJFJFET jp
      annotation (Placement(transformation(extent={{20,20},{40,40}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor rjp(R=1e3)
      annotation (Placement(transformation(extent={{50,10},{70,30}})));
    Modelica.Electrical.Spice3.Semiconductors.J_NJFJFET jn
      annotation (Placement(transformation(extent={{20,-10},{40,10}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor rjn(R=1e3)
      annotation (Placement(transformation(extent={{50,-20},{70,0}})));
    Modelica.Electrical.Spice3.Semiconductors.D_DIODE d1
      annotation (Placement(transformation(extent={{-50,-50},{-30,-30}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor rd(R=1e3)
      annotation (Placement(transformation(extent={{-20,-50},{0,-30}})));
    Modelica.Electrical.Spice3.Semiconductors.R_Resistor rs(modelcard(RSH=50), W=1e-6, L=20e-6)
      annotation (Placement(transformation(extent={{-50,-90},{-30,-70}})));
    Modelica.Electrical.Spice3.Semiconductors.C_Capacitor cs(modelcard(CJ=1e-4, CJSW=1e-10), W=1e-5, L=1e-5)
      annotation (Placement(transformation(extent={{-20,-90},{0,-70}})));
  equation
    connect(vdd.n, ground.p) annotation (Line(points={{-79,80},{-46,80},{-46,-200},{-12,-200}}, color={0,0,127}));
    connect(vin.n, ground.p) annotation (Line(points={{-79,20},{-46,20},{-46,-200},{-12,-200}}, color={0,0,127}));
    connect(vdd.p, mp2.S) annotation (Line(points={{-79,80},{-66,80},{-66,90},{-52,90}}, color={0,0,127}));
    connect(vdd.p, mp2.B) annotation (Line(points={{-79,80},{-66,80},{-66,90},{-52,90}}, color={0,0,127}));
    connect(mp2.D, mn2.D) annotation (Line(points={{-29,90},{-56,90},{-56,60},{-52,60}}, color={0,0,127}));
    connect(mn2.S, ground.p) annotation (Line(points={{-29,60},{-20,60},{-20,-200},{-12,-200}}, color={0,0,127}));
    connect(mn2.B, ground.p) annotation (Line(points={{-29,60},{-20,60},{-20,-200},{-12,-200}}, color={0,0,127}));
    connect(vin.p, mp2.G) annotation (Line(points={{-79,20},{-66,20},{-66,90},{-52,90}}, color={0,0,127}));
    connect(vin.p, mn2.G) annotation (Line(points={{-79,20},{-66,20},{-66,60},{-52,60}}, color={0,0,127}));
    connect(mp2.D, cl.p) annotation (Line(points={{-29,90},{-26,90},{-26,75},{-22,75}}, color={0,0,127}));
    connect(cl.n, ground.p) annotation (Line(points={{1,75},{-16,75},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(ground.p, qp.C) annotation (Line(points={{11,-200},{14,-200},{14,90},{18,90}}, color={0,0,127}));
    connect(vin.p, rb.p) annotation (Line(points={{-79,20},{-46,20},{-46,100},{-12,100}}, color={0,0,127}));
    connect(rb.n, qp.B) annotation (Line(points={{11,100},{14,100},{14,90},{18,90}}, color={0,0,127}));
    connect(qp.E, rc.p) annotation (Line(points={{41,90},{44,90},{44,80},{48,80}}, color={0,0,127}));
    connect(rc.n, vdd.p) annotation (Line(points={{71,80},{-102,80}}, color={0,0,127}));
    connect(vdd.p, jp.D) annotation (Line(points={{-79,80},{-30,80},{-30,30},{18,30}}, color={0,0,127}));
    connect(ground.p, jp.G) annotation (Line(points={{11,-200},{14,-200},{14,30},{18,30}}, color={0,0,127}));
    connect(jp.S, rjp.p) annotation (Line(points={{41,30},{44,30},{44,20},{48,20}}, color={0,0,127}));
    connect(rjp.n, ground.p) annotation (Line(points={{71,20},{-16,20},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(vdd.p, jn.D) annotation (Line(points={{-79,80},{-30,80},{-30,0},{18,0}}, color={0,0,127}));
    connect(vin.p, jn.G) annotation (Line(points={{-79,20},{-30,20},{-30,0},{18,0}}, color={0,0,127}));
    connect(jn.S, rjn.p) annotation (Line(points={{41,0},{44,0},{44,-10},{48,-10}}, color={0,0,127}));
    connect(rjn.n, ground.p) annotation (Line(points={{71,-10},{-16,-10},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(vin.p, d1.p) annotation (Line(points={{-79,20},{-66,20},{-66,-40},{-52,-40}}, color={0,0,127}));
    connect(d1.n, rd.p) annotation (Line(points={{-29,-40},{-22,-40}}, color={0,0,127}));
    connect(rd.n, ground.p) annotation (Line(points={{1,-40},{-16,-40},{-16,-200},{-12,-200}}, color={0,0,127}));
    connect(vin.p, rs.p) annotation (Line(points={{-79,20},{-66,20},{-66,-80},{-52,-80}}, color={0,0,127}));
    connect(rs.n, cs.p) annotation (Line(points={{-29,-80},{-22,-80}}, color={0,0,127}));
    connect(cs.n, ground.p) annotation (Line(points={{1,-80},{-16,-80},{-16,-200},{-12,-200}}, color={0,0,127}));
    annotation (Diagram(coordinateSystem(extent={{-100,-220},{100,120}})),
      experiment(StopTime=0),
      Documentation(info="<html>
<p>
Circuits with the semiconductor models of
<a href=\"modelica://Modelica.Electrical.Spice3.Semiconductors\">Modelica.Electrical.Spice3.Semiconductors</a>
and their model cards: a CMOS inverter with the level 2 MOSFETs M_PMOS2/M_NMOS2, a common emitter
stage with Q_PNPBJT, source followers with J_PJFJFET and J_NJFJFET, a diode D_DIODE, and the
semiconductor R_Resistor and C_Capacitor with ModelcardRESISTOR and ModelcardCAPACITOR.
These models use most functions and records of Spice3.Internal.
</p>
</html>"));
  end Spice3Semiconductors;

  model FourInverters_4V = Modelica.Electrical.Spice3.Examples.FourInverters(v(V2=4))
    "Variant of FourInverters with a supply voltage of 4 V"
    annotation (experiment(StopTime=5), Documentation(info="<html>
<p>
Variant of <a href=\"modelica://Modelica.Electrical.Spice3.Examples.FourInverters\">FourInverters</a> (M_PMOS and M_NMOS with ModelcardMOS) with a supply
voltage of 4 V instead of 5 V.
</p>
</html>"));

  model Spice3Modelcards "Test of the model card records of Modelica.Electrical.Spice3.Semiconductors"
    extends Modelica.Icons.Example;

    Modelica.Electrical.Spice3.Basic.Ground ground
      annotation (Placement(transformation(extent={{-10,-130},{10,-110}})));
    parameter Modelica.Electrical.Spice3.Semiconductors.ModelcardMOS2 mcP(VTO=-1, KP=2e-5)
      annotation (Placement(transformation(extent={{-100,110},{-80,130}})));
    parameter Modelica.Electrical.Spice3.Semiconductors.ModelcardMOS2 mcN(VTO=1, KP=5e-5)
      annotation (Placement(transformation(extent={{-70,110},{-50,130}})));
    parameter Modelica.Electrical.Spice3.Semiconductors.ModelcardBJT mcBJT(BF=100, IS=1e-16)
      annotation (Placement(transformation(extent={{-40,110},{-20,130}})));
    parameter Modelica.Electrical.Spice3.Semiconductors.ModelcardJFET mcJFET(VTO=-2, BETA=1e-4)
      annotation (Placement(transformation(extent={{-10,110},{10,130}})));
    parameter Modelica.Electrical.Spice3.Semiconductors.ModelcardDIODE mcDiode(IS=1e-14, N=1.5)
      annotation (Placement(transformation(extent={{20,110},{40,130}})));
    parameter Modelica.Electrical.Spice3.Semiconductors.ModelcardRESISTOR mcR(RSH=50)
      annotation (Placement(transformation(extent={{50,110},{70,130}})));
    parameter Modelica.Electrical.Spice3.Semiconductors.ModelcardCAPACITOR mcC(CJ=1e-4, CJSW=1e-10)
      annotation (Placement(transformation(extent={{80,110},{100,130}})));
    Modelica.Electrical.Spice3.Sources.V_constant vdd(V=5)
      annotation (Placement(transformation(extent={{-100,50},{-80,70}})));
    Modelica.Electrical.Spice3.Sources.V_pulse vin(V1=0, V2=5, TD=1e-4, TR=1e-4, TF=1e-4, PW=4e-4, PER=1e-3)
      annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
    Modelica.Electrical.Spice3.Semiconductors.M_PMOS2 mp(modelcard=mcP, W=40e-6, L=2e-6)
      annotation (Placement(transformation(extent={{-50,60},{-30,80}})));
    Modelica.Electrical.Spice3.Semiconductors.M_NMOS2 mn(modelcard=mcN, W=20e-6, L=2e-6)
      annotation (Placement(transformation(extent={{-50,30},{-30,50}})));
    Modelica.Electrical.Spice3.Basic.C_Capacitor cl(C=1e-12)
      annotation (Placement(transformation(extent={{-20,45},{0,65}})));
    Modelica.Electrical.Spice3.Semiconductors.Q_NPNBJT qn(modelcard=mcBJT)
      annotation (Placement(transformation(extent={{20,50},{40,70}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor re(R=1e3)
      annotation (Placement(transformation(extent={{50,40},{70,60}})));
    Modelica.Electrical.Spice3.Semiconductors.J_NJFJFET jn(modelcard=mcJFET)
      annotation (Placement(transformation(extent={{20,0},{40,20}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor rj(R=1e3)
      annotation (Placement(transformation(extent={{50,-10},{70,10}})));
    Modelica.Electrical.Spice3.Semiconductors.D_DIODE d(modelcarddiode=mcDiode)
      annotation (Placement(transformation(extent={{-50,-50},{-30,-30}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor rd(R=1e3)
      annotation (Placement(transformation(extent={{-20,-50},{0,-30}})));
    Modelica.Electrical.Spice3.Semiconductors.R_Resistor rs(modelcard=mcR, W=1e-6, L=20e-6)
      annotation (Placement(transformation(extent={{-50,-90},{-30,-70}})));
    Modelica.Electrical.Spice3.Semiconductors.C_Capacitor cs(modelcard=mcC, W=1e-5, L=1e-5)
      annotation (Placement(transformation(extent={{-20,-90},{0,-70}})));
  equation
    connect(vdd.n, ground.p) annotation (Line(points={{-79,60},{-46,60},{-46,-120},{-12,-120}}, color={0,0,127}));
    connect(vin.n, ground.p) annotation (Line(points={{-79,0},{-46,0},{-46,-120},{-12,-120}}, color={0,0,127}));
    connect(vdd.p, mp.S) annotation (Line(points={{-79,60},{-66,60},{-66,70},{-52,70}}, color={0,0,127}));
    connect(vdd.p, mp.B) annotation (Line(points={{-79,60},{-66,60},{-66,70},{-52,70}}, color={0,0,127}));
    connect(mp.D, mn.D) annotation (Line(points={{-29,70},{-56,70},{-56,40},{-52,40}}, color={0,0,127}));
    connect(mn.S, ground.p) annotation (Line(points={{-29,40},{-20,40},{-20,-120},{-12,-120}}, color={0,0,127}));
    connect(mn.B, ground.p) annotation (Line(points={{-29,40},{-20,40},{-20,-120},{-12,-120}}, color={0,0,127}));
    connect(vin.p, mp.G) annotation (Line(points={{-79,0},{-66,0},{-66,70},{-52,70}}, color={0,0,127}));
    connect(vin.p, mn.G) annotation (Line(points={{-79,0},{-66,0},{-66,40},{-52,40}}, color={0,0,127}));
    connect(mp.D, cl.p) annotation (Line(points={{-29,70},{-26,70},{-26,55},{-22,55}}, color={0,0,127}));
    connect(cl.n, ground.p) annotation (Line(points={{1,55},{-16,55},{-16,-120},{-12,-120}}, color={0,0,127}));
    connect(vdd.p, qn.C) annotation (Line(points={{-79,60},{18,60}}, color={0,0,127}));
    connect(vin.p, qn.B) annotation (Line(points={{-79,0},{-30,0},{-30,60},{18,60}}, color={0,0,127}));
    connect(qn.E, re.p) annotation (Line(points={{41,60},{44,60},{44,50},{48,50}}, color={0,0,127}));
    connect(re.n, ground.p) annotation (Line(points={{71,50},{-16,50},{-16,-120},{-12,-120}}, color={0,0,127}));
    connect(vdd.p, jn.D) annotation (Line(points={{-79,60},{-30,60},{-30,10},{18,10}}, color={0,0,127}));
    connect(vin.p, jn.G) annotation (Line(points={{-79,0},{-30,0},{-30,10},{18,10}}, color={0,0,127}));
    connect(jn.S, rj.p) annotation (Line(points={{41,10},{44,10},{44,0},{48,0}}, color={0,0,127}));
    connect(rj.n, ground.p) annotation (Line(points={{71,0},{-16,0},{-16,-120},{-12,-120}}, color={0,0,127}));
    connect(vin.p, d.p) annotation (Line(points={{-79,0},{-66,0},{-66,-40},{-52,-40}}, color={0,0,127}));
    connect(d.n, rd.p) annotation (Line(points={{-29,-40},{-22,-40}}, color={0,0,127}));
    connect(rd.n, ground.p) annotation (Line(points={{1,-40},{-16,-40},{-16,-120},{-12,-120}}, color={0,0,127}));
    connect(vin.p, rs.p) annotation (Line(points={{-79,0},{-66,0},{-66,-80},{-52,-80}}, color={0,0,127}));
    connect(rs.n, cs.p) annotation (Line(points={{-29,-80},{-22,-80}}, color={0,0,127}));
    connect(cs.n, ground.p) annotation (Line(points={{1,-80},{-16,-80},{-16,-120},{-12,-120}}, color={0,0,127}));
    annotation (Diagram(coordinateSystem(extent={{-100,-140},{100,140}})),
      experiment(StopTime=0),
      Documentation(info="<html>
<p>
The semiconductor models of Spice3 parameterized by model card records declared at the top level, as
recommended in the Spice3 users guide: ModelcardMOS2 for a CMOS inverter with M_PMOS2/M_NMOS2,
ModelcardBJT for an emitter follower with Q_NPNBJT, ModelcardJFET for a source follower with J_NJFJFET,
ModelcardDIODE for a diode, and ModelcardRESISTOR/ModelcardCAPACITOR for the semiconductor R_Resistor and
C_Capacitor.
</p>
</html>"));
  end Spice3Modelcards;

model Spice3InternalRecordsAndFunctions
  "Test of internal records and functions of Modelica.Electrical.Spice3 that no Spice3 model uses"
  extends Modelica.Icons.Example;
  import Modelica.Electrical.Spice3.Internal;
  parameter Internal.ModelcardDIODE mcDiode "Diode technology parameters (defaults)";
  parameter Internal.SpiceConstants con "Spice constants";
  parameter Internal.Diode.DiodeModelLineParams pDiode=Internal.Diode.diodeRenameParameters(mcDiode, con)
    "Diode model line parameters";
  parameter Internal.Diode.DiodeModelLineVariables vDiode=Internal.Diode.diodeModelLineInitEquations(pDiode)
    "Diode model line variables";
  parameter Internal.Diode.DiodeParams dpDiode=Internal.Diode.diodeRenameParametersDev(300.15, 2, 0, false, false)
    "Diode device parameters";
  parameter Internal.Diode.DiodeVariables v0=Internal.Diode.diodeInitEquations(pDiode)
    "Diode variables after initialization";
  parameter Internal.Diode.DiodeVariables v1=Internal.Diode.diodeCalcAdditionalValues(v0, pDiode, dpDiode, {0.1, 0.2})
    "Diode variables after the additional calculations (a pass-through)";
  parameter Internal.ModelcardMOS2 mcMos "MOS level 2 technology parameters (defaults)";
  parameter Internal.Mosfet.Mosfet dev=Internal.Mos2.mos2RenameParametersDev(mcMos, 1, 1e-5, 2e-6, 0, 0, 0, 0, 1, 1, 0, 0, 27)
    "MOSFET device parameters for W = 10 um, L = 2 um";
  parameter Internal.Mosfet.MosfetModelLine ml=Internal.Mosfet.mosfetModelLineInitEquations(dev)
    "MOSFET model line";
  parameter Integer nPins=Internal.Mosfet.getNumberOfElectricalPins() "Number of MOSFET pins";
  parameter Internal.Mos2.Mos2ModelLineVariables m2=Internal.Mos2.Mos2ModelLineVariables(
    m_oxideCapFactor=1, m_vt0=2, m_phi=3, m_gamma=4, m_transconductance=5, m_bulkCapFactor=6,
    m_substrateDoping=7, m_xd=8) "MOS level 2 model line variables";
  parameter Internal.SpiceRoot.SpiceRoot root=Internal.SpiceRoot.SpiceRoot(
    m_pCurrentValues=fill(0.5, 6), m_pResJacobi=fill(1, 36), m_pCapJacobi=fill(2, 36))
    "Currents and Jacobians of the Spice root record";
  Real rootSum=sum(root.m_pCurrentValues) + sum(root.m_pResJacobi) + sum(root.m_pCapJacobi) "= 111";
  Real passThroughError=v1.m_pBvIsGiven - v0.m_pBvIsGiven
    "0 if diodeCalcAdditionalValues passes its input through";
  annotation (experiment(StopTime=1), Documentation(info="<html>
<p>
Internal records and functions of
<a href=\"modelica://Modelica.Electrical.Spice3.Internal\">Spice3.Internal</a> that no Spice3 model uses
(leftovers of the model-line implementation): Diode.DiodeModelLineVariables and
diodeModelLineInitEquations, Diode.diodeCalcAdditionalValues (a pass-through), Mos2.mos2RenameParametersDev,
Mosfet.MosfetModelLine and mosfetModelLineInitEquations, Mosfet.getNumberOfElectricalPins (4),
Mos2.Mos2ModelLineVariables and SpiceRoot.SpiceRoot (rootSum = 111). They are evaluated with the default technology
parameters, the way the Spice3 models evaluate their own internal records.
</p>
</html>"));
end Spice3InternalRecordsAndFunctions;
end Spice3;
