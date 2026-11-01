within ModelicaTest.Electrical;
package Spice3 "Test models for Modelica.Electrical.Spice3"
  extends Modelica.Icons.ExamplesPackage;

  model Spice3SourcesBasicAndPoly "Test of the sources, basic elements and polynomial controlled sources of Modelica.Electrical.Spice3"
    extends Modelica.Icons.Example;

    Modelica.Electrical.Spice3.Basic.Ground ground
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={40,-300})));
    Modelica.Electrical.Spice3.Sources.V_constant v_constant(V=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-60,100})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_v_constant(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-20,100})));
    Modelica.Electrical.Spice3.Sources.V_sin v_sin(VO=0.5, VA=1, FREQ=50)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-60,60})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_v_sin(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-20,60})));
    Modelica.Electrical.Spice3.Sources.V_exp v_exp(V1=0, V2=1, TD1=0.002, TAU1=0.003, TD2=0.01, TAU2=0.004)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-60,30})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_v_exp(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-20,30})));
    Modelica.Electrical.Spice3.Sources.V_pulse v_pulse(V1=0, V2=1, TD=0.001, TR=0.001, TF=0.001, PW=0.005, PER=0.01)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-60,0})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_v_pulse(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-20,0})));
    Modelica.Electrical.Spice3.Sources.V_pwl v_pwl(table=[0, 0; 0.005, 1; 0.01, 0.5; 0.02, 1])
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-60,-40})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_v_pwl(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-20,-40})));
    Modelica.Electrical.Spice3.Sources.V_sffm v_sffm(VO=0, VA=1, FC=200, MDI=2, FS=50)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-60,-80})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_v_sffm(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-20,-80})));
    Modelica.Electrical.Spice3.Sources.I_constant i_constant(I=2e-3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={10,100})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_i_constant(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={40,100})));
    Modelica.Electrical.Spice3.Sources.I_sin i_sin(IO=0, IA=1e-3, FREQ=50)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={10,60})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_i_sin(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={40,60})));
    Modelica.Electrical.Spice3.Sources.I_exp i_exp(I1=0, I2=1e-3, TD1=0.002, TAU1=0.003, TD2=0.01, TAU2=0.004)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={10,30})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_i_exp(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={40,30})));
    Modelica.Electrical.Spice3.Sources.I_pulse i_pulse(I1=0, I2=1e-3, TD=0.001, TR=0.001, TF=0.001, PW=0.005, PER=0.01)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={10,0})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_i_pulse(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={40,0})));
    Modelica.Electrical.Spice3.Sources.I_pwl i_pwl(table=[0, 0; 0.005, 1e-3; 0.01, 5e-4; 0.02, 1e-3])
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={10,-40})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_i_pwl(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={40,-40})));
    Modelica.Electrical.Spice3.Sources.I_sffm i_sffm(IO=0, IA=1e-3, FC=200, MDI=2, FS=50)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={10,-80})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_i_sffm(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={40,-80})));
    Modelica.Electrical.Spice3.Basic.E_VCV e_vcv(gain=2)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={110,100})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_e(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={140,100})));
    Modelica.Electrical.Spice3.Basic.G_VCC g_vcc(transConductance=1e-3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={110,60})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_g(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={140,60})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_h(R=100)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={80,30})));
    Modelica.Electrical.Spice3.Basic.H_CCV h_ccv(transResistance=50)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={110,30})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_hl(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={140,30})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_f(R=100)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={80,0})));
    Modelica.Electrical.Spice3.Basic.F_CCC f_ccc(gain=3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={110,0})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_fl(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={140,0})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_L1(R=10)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={80,-40})));
    Modelica.Electrical.Spice3.Basic.L_Inductor L1(L=1e-3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={110,-40})));
    Modelica.Electrical.Spice3.Basic.L_Inductor L2(L=4e-3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={110,-80})));
    Modelica.Electrical.Spice3.Basic.K_CoupledInductors k12(k=0.9)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={140,-50})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_L2(R=100)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={140,-80})));
    Modelica.Electrical.Spice3.Basic.C_Capacitor C1(C=1e-6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={110,-120})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_C1(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={140,-120})));
    Modelica.Electrical.Spice3.Additionals.E_VCV_POLY e_poly(N=1, coeff={0, 1, 0.5})
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={110,-150})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_epoly(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={140,-150})));
    Modelica.Electrical.Spice3.Additionals.G_VCC_POLY g_poly(N=1, coeff={0, 1e-3, 1e-3})
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={110,-180})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_gpoly(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={140,-180})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_hp(R=100)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={80,-220})));
    Modelica.Electrical.Spice3.Additionals.H_CCV_POLY h_poly(N=1, coeff={0, 50, 10})
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={110,-220})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_hpoly(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={140,-220})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_fp(R=100)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={80,-260})));
    Modelica.Electrical.Spice3.Additionals.F_CCC_POLY f_poly(N=1, coeff={0, 3, 1})
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={110,-260})));
    Modelica.Electrical.Spice3.Basic.R_Resistor R_fpoly(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={140,-260})));
  equation
    connect(v_constant.p, R_v_constant.p) annotation (Line(points={{-60,110},{-60,114},{-20,114},{-20,110}}, color={0,0,255}));
    connect(R_v_constant.n, v_constant.n) annotation (Line(points={{-20,90},{-20,86},{-60,86},{-60,90}}, color={0,0,255}));
    connect(v_constant.n, ground.p) annotation (Line(points={{-60,90},{-60,86},{52,86},{52,-134},{40,-134},{40,-290}}, color={0,0,255}));
    connect(v_sin.p, R_v_sin.p) annotation (Line(points={{-50,60},{-40,60},{-40,72},{-6,72},{-6,60},{-10,60}}, color={0,0,255}));
    connect(R_v_sin.n, v_sin.n) annotation (Line(points={{-30,60},{-38,60},{-38,48},{-74,48},{-74,60},{-70,60}}, color={0,0,255}));
    connect(v_sin.n, ground.p) annotation (Line(points={{-70,60},{-74,60},{-74,48},{10,48},{10,46},{52,46},{52,-134},{40,-134},{40,-290}}, color={0,0,255}));
    connect(v_exp.p, R_v_exp.p) annotation (Line(points={{-60,40},{-60,44},{-20,44},{-20,40}}, color={0,0,255}));
    connect(R_v_exp.n, v_exp.n) annotation (Line(points={{-20,20},{-20,16},{-60,16},{-60,20}}, color={0,0,255}));
    connect(v_exp.n, ground.p) annotation (Line(points={{-60,20},{-60,16},{52,16},{52,-134},{40,-134},{40,-290}}, color={0,0,255}));
    connect(v_pulse.p, R_v_pulse.p) annotation (Line(points={{-60,10},{-60,14},{-20,14},{-20,10}}, color={0,0,255}));
    connect(R_v_pulse.n, v_pulse.n) annotation (Line(points={{-20,-10},{-20,-14},{-60,-14},{-60,-10}}, color={0,0,255}));
    connect(v_pulse.n, ground.p) annotation (Line(points={{-60,-10},{-60,-14},{-8,-14},{-8,-54},{52,-54},{52,-134},{40,-134},{40,-290}}, color={0,0,255}));
    connect(v_pwl.p, R_v_pwl.p) annotation (Line(points={{-60,-30},{-60,-26},{-20,-26},{-20,-30}}, color={0,0,255}));
    connect(R_v_pwl.n, v_pwl.n) annotation (Line(points={{-20,-50},{-20,-54},{-60,-54},{-60,-50}}, color={0,0,255}));
    connect(v_pwl.n, ground.p) annotation (Line(points={{-60,-50},{-60,-54},{52,-54},{52,-134},{40,-134},{40,-290}}, color={0,0,255}));
    connect(v_sffm.p, R_v_sffm.p) annotation (Line(points={{-60,-70},{-60,-66},{-20,-66},{-20,-70}}, color={0,0,255}));
    connect(R_v_sffm.n, v_sffm.n) annotation (Line(points={{-20,-90},{-20,-94},{-60,-94},{-60,-90}}, color={0,0,255}));
    connect(v_sffm.n, ground.p) annotation (Line(points={{-60,-90},{-60,-94},{40,-94},{40,-290}}, color={0,0,255}));
    connect(i_constant.p, R_i_constant.p) annotation (Line(points={{10,110},{10,114},{40,114},{40,110}}, color={0,0,255}));
    connect(R_i_constant.n, i_constant.n) annotation (Line(points={{40,90},{40,86},{10,86},{10,90}}, color={0,0,255}));
    connect(i_constant.n, ground.p) annotation (Line(points={{10,90},{10,86},{52,86},{52,-134},{40,-134},{40,-290}}, color={0,0,255}));
    connect(i_sin.p, R_i_sin.p) annotation (Line(points={{10,70},{10,74},{40,74},{40,70}}, color={0,0,255}));
    connect(R_i_sin.n, i_sin.n) annotation (Line(points={{40,50},{40,46},{10,46},{10,50}}, color={0,0,255}));
    connect(i_sin.n, ground.p) annotation (Line(points={{10,50},{10,46},{52,46},{52,-134},{40,-134},{40,-290}}, color={0,0,255}));
    connect(i_exp.p, R_i_exp.p) annotation (Line(points={{10,40},{10,44},{40,44},{40,40}}, color={0,0,255}));
    connect(R_i_exp.n, i_exp.n) annotation (Line(points={{40,20},{40,16},{10,16},{10,20}}, color={0,0,255}));
    connect(i_exp.n, ground.p) annotation (Line(points={{10,20},{10,16},{52,16},{52,-134},{40,-134},{40,-290}}, color={0,0,255}));
    connect(i_pulse.p, R_i_pulse.p) annotation (Line(points={{10,10},{10,14},{40,14},{40,10}}, color={0,0,255}));
    connect(R_i_pulse.n, i_pulse.n) annotation (Line(points={{40,-10},{40,-14},{10,-14},{10,-10}}, color={0,0,255}));
    connect(i_pulse.n, ground.p) annotation (Line(points={{10,-10},{10,-14},{52,-14},{52,-134},{40,-134},{40,-290}}, color={0,0,255}));
    connect(i_pwl.p, R_i_pwl.p) annotation (Line(points={{10,-30},{10,-26},{40,-26},{40,-30}}, color={0,0,255}));
    connect(R_i_pwl.n, i_pwl.n) annotation (Line(points={{40,-50},{40,-54},{10,-54},{10,-50}}, color={0,0,255}));
    connect(i_pwl.n, ground.p) annotation (Line(points={{10,-50},{10,-54},{52,-54},{52,-134},{40,-134},{40,-290}}, color={0,0,255}));
    connect(i_sffm.p, R_i_sffm.p) annotation (Line(points={{10,-70},{10,-66},{40,-66},{40,-70}}, color={0,0,255}));
    connect(R_i_sffm.n, i_sffm.n) annotation (Line(points={{40,-90},{40,-94},{10,-94},{10,-90}}, color={0,0,255}));
    connect(i_sffm.n, ground.p) annotation (Line(points={{10,-90},{10,-94},{40,-94},{40,-290}}, color={0,0,255}));
    connect(v_sin.p, e_vcv.p1) annotation (Line(points={{-50,60},{-40,60},{-40,72},{8,72},{8,76},{96,76},{96,105},{100,105}}, color={0,0,255}));
    connect(e_vcv.n1, ground.p) annotation (Line(points={{100,95},{96,95},{96,96},{52,96},{52,-134},{40,-134},{40,-290}}, color={0,0,255}));
    connect(e_vcv.p2, R_e.p) annotation (Line(points={{120,105},{124,105},{124,104},{126,104},{126,100},{130,100}}, color={0,0,255}));
    connect(R_e.n, e_vcv.n2) annotation (Line(points={{150,100},{154,100},{154,88},{124,88},{124,95},{120,95}}, color={0,0,255}));
    connect(e_vcv.n2, ground.p) annotation (Line(points={{120,95},{124,95},{124,74},{52,74},{52,-134},{40,-134},{40,-290}}, color={0,0,255}));
    connect(v_sin.p, g_vcc.p1) annotation (Line(points={{-50,60},{-40,60},{-40,72},{8,72},{8,76},{66,76},{66,64},{96,64},{96,65},{100,65}}, color={0,0,255}));
    connect(g_vcc.n1, ground.p) annotation (Line(points={{100,55},{96,55},{96,56},{52,56},{52,-134},{40,-134},{40,-290}}, color={0,0,255}));
    connect(g_vcc.p2, R_g.p) annotation (Line(points={{120,65},{124,65},{124,64},{126,64},{126,60},{130,60}}, color={0,0,255}));
    connect(R_g.n, g_vcc.n2) annotation (Line(points={{150,60},{154,60},{154,48},{124,48},{124,55},{120,55}}, color={0,0,255}));
    connect(g_vcc.n2, ground.p) annotation (Line(points={{120,55},{124,55},{124,48},{52,48},{52,-134},{40,-134},{40,-290}}, color={0,0,255}));
    connect(v_sin.p, R_h.p) annotation (Line(points={{-50,60},{-40,60},{-40,72},{8,72},{8,76},{66,76},{66,30},{70,30}}, color={0,0,255}));
    connect(R_h.n, h_ccv.p1) annotation (Line(points={{90,30},{96,30},{96,35},{100,35}}, color={0,0,255}));
    connect(h_ccv.n1, ground.p) annotation (Line(points={{100,25},{96,25},{96,24},{94,24},{94,-4},{96,-4},{96,-60},{90,-60},{90,-92},{52,-92},{52,-134},{40,-134},{40,-290}}, color={0,0,255}));
    connect(h_ccv.p2, R_hl.p) annotation (Line(points={{120,35},{124,35},{124,36},{126,36},{126,30},{130,30}}, color={0,0,255}));
    connect(R_hl.n, h_ccv.n2) annotation (Line(points={{150,30},{154,30},{154,18},{124,18},{124,25},{120,25}}, color={0,0,255}));
    connect(h_ccv.n2, ground.p) annotation (Line(points={{120,25},{124,25},{124,18},{94,18},{94,-4},{96,-4},{96,-60},{90,-60},{90,-92},{52,-92},{52,-134},{40,-134},{40,-290}}, color={0,0,255}));
    connect(v_sin.p, R_f.p) annotation (Line(points={{-50,60},{-40,60},{-40,72},{8,72},{8,76},{66,76},{66,0},{70,0}}, color={0,0,255}));
    connect(R_f.n, f_ccc.p1) annotation (Line(points={{90,0},{96,0},{96,5},{100,5}}, color={0,0,255}));
    connect(f_ccc.n1, ground.p) annotation (Line(points={{100,-5},{96,-5},{96,-60},{90,-60},{90,-92},{52,-92},{52,-134},{40,-134},{40,-290}}, color={0,0,255}));
    connect(f_ccc.p2, R_fl.p) annotation (Line(points={{120,5},{124,5},{124,4},{126,4},{126,0},{130,0}}, color={0,0,255}));
    connect(R_fl.n, f_ccc.n2) annotation (Line(points={{150,0},{154,0},{154,-12},{124,-12},{124,-5},{120,-5}}, color={0,0,255}));
    connect(f_ccc.n2, ground.p) annotation (Line(points={{120,-5},{124,-5},{124,-12},{96,-12},{96,-60},{90,-60},{90,-92},{52,-92},{52,-134},{40,-134},{40,-290}}, color={0,0,255}));
    connect(v_sin.p, R_L1.p) annotation (Line(points={{-50,60},{-40,60},{-40,72},{8,72},{8,76},{66,76},{66,-40},{70,-40}}, color={0,0,255}));
    connect(R_L1.n, L1.p) annotation (Line(points={{90,-40},{100,-40}}, color={0,0,255}));
    connect(L1.n, ground.p) annotation (Line(points={{120,-40},{124,-40},{124,-60},{90,-60},{90,-92},{52,-92},{52,-134},{40,-134},{40,-290}}, color={0,0,255}));
    connect(L2.p, R_L2.p) annotation (Line(points={{100,-80},{96,-80},{96,-68},{126,-68},{126,-80},{130,-80}}, color={0,0,255}));
    connect(R_L2.n, L2.n) annotation (Line(points={{150,-80},{154,-80},{154,-92},{124,-92},{124,-80},{120,-80}}, color={0,0,255}));
    connect(L2.n, ground.p) annotation (Line(points={{120,-80},{124,-80},{124,-92},{52,-92},{52,-134},{40,-134},{40,-290}}, color={0,0,255}));
    connect(L1.ICP, k12.inductiveCouplePin1) annotation (Line(points={{110,-31.6},{122,-31.6},{122,-32},{140,-32},{140,-40}}, color={170,85,255}));
    connect(L2.ICP, k12.inductiveCouplePin2) annotation (Line(points={{110,-71.6},{122,-71.6},{122,-72},{128,-72},{128,-64},{140,-64},{140,-60}}, color={170,85,255}));
    connect(v_pulse.p, C1.p) annotation (Line(points={{-60,10},{-60,14},{-2,14},{-2,-20},{60,-20},{60,-120},{100,-120}}, color={0,0,255}));
    connect(C1.n, R_C1.p) annotation (Line(points={{120,-120},{128,-120},{128,-106},{140,-106},{140,-110}}, color={0,0,255}));
    connect(R_C1.n, ground.p) annotation (Line(points={{140,-130},{140,-134},{40,-134},{40,-290}}, color={0,0,255}));
    connect(v_sin.p, e_poly.pc[1]) annotation (Line(points={{-50,60},{-40,60},{-40,72},{8,72},{8,76},{66,76},{66,-138},{102,-138},{102,-146}}, color={0,0,255}));
    connect(e_poly.pc[2], ground.p) annotation (Line(points={{102,-154},{102,-168},{98,-168},{98,-200},{60,-200},{60,-286},{40,-286},{40,-290}}, color={0,0,255}));
    connect(e_poly.p, R_epoly.p) annotation (Line(points={{120,-145},{124,-145},{124,-144},{126,-144},{126,-150},{130,-150}}, color={0,0,255}));
    connect(R_epoly.n, e_poly.n) annotation (Line(points={{150,-150},{154,-150},{154,-162},{124,-162},{124,-155},{120,-155}}, color={0,0,255}));
    connect(e_poly.n, ground.p) annotation (Line(points={{120,-155},{124,-155},{124,-162},{102,-162},{102,-168},{98,-168},{98,-200},{60,-200},{60,-286},{40,-286},{40,-290}}, color={0,0,255}));
    connect(v_sin.p, g_poly.pc[1]) annotation (Line(points={{-50,60},{-40,60},{-40,72},{8,72},{8,76},{66,76},{66,-166},{102,-166},{102,-176}}, color={0,0,255}));
    connect(g_poly.pc[2], ground.p) annotation (Line(points={{102,-184},{102,-200},{60,-200},{60,-286},{40,-286},{40,-290}}, color={0,0,255}));
    connect(g_poly.p, R_gpoly.p) annotation (Line(points={{120,-175},{124,-175},{124,-176},{126,-176},{126,-180},{130,-180}}, color={0,0,255}));
    connect(R_gpoly.n, g_poly.n) annotation (Line(points={{150,-180},{154,-180},{154,-192},{124,-192},{124,-185},{120,-185}}, color={0,0,255}));
    connect(g_poly.n, ground.p) annotation (Line(points={{120,-185},{124,-185},{124,-192},{102,-192},{102,-200},{60,-200},{60,-286},{40,-286},{40,-290}}, color={0,0,255}));
    connect(v_sin.p, R_hp.p) annotation (Line(points={{-50,60},{-40,60},{-40,72},{8,72},{8,76},{66,76},{66,-220},{70,-220}}, color={0,0,255}));
    connect(R_hp.n, h_poly.pc[1]) annotation (Line(points={{90,-220},{98,-220},{98,-216},{102,-216}}, color={0,0,255}));
    connect(h_poly.pc[2], ground.p) annotation (Line(points={{102,-224},{102,-240},{60,-240},{60,-286},{40,-286},{40,-290}}, color={0,0,255}));
    connect(h_poly.p, R_hpoly.p) annotation (Line(points={{120,-215},{124,-215},{124,-216},{126,-216},{126,-220},{130,-220}}, color={0,0,255}));
    connect(R_hpoly.n, h_poly.n) annotation (Line(points={{150,-220},{154,-220},{154,-232},{124,-232},{124,-225},{120,-225}}, color={0,0,255}));
    connect(h_poly.n, ground.p) annotation (Line(points={{120,-225},{124,-225},{124,-232},{102,-232},{102,-240},{60,-240},{60,-286},{40,-286},{40,-290}}, color={0,0,255}));
    connect(v_sin.p, R_fp.p) annotation (Line(points={{-50,60},{-40,60},{-40,72},{8,72},{8,76},{66,76},{66,-260},{70,-260}}, color={0,0,255}));
    connect(R_fp.n, f_poly.pc[1]) annotation (Line(points={{90,-260},{98,-260},{98,-256},{102,-256}}, color={0,0,255}));
    connect(f_poly.pc[2], ground.p) annotation (Line(points={{102,-264},{98,-264},{98,-286},{40,-286},{40,-290}}, color={0,0,255}));
    connect(f_poly.p, R_fpoly.p) annotation (Line(points={{120,-255},{124,-255},{124,-256},{126,-256},{126,-260},{130,-260}}, color={0,0,255}));
    connect(R_fpoly.n, f_poly.n) annotation (Line(points={{150,-260},{154,-260},{154,-272},{124,-272},{124,-265},{120,-265}}, color={0,0,255}));
    connect(f_poly.n, ground.p) annotation (Line(points={{120,-265},{124,-265},{124,-272},{98,-272},{98,-286},{40,-286},{40,-290}}, color={0,0,255}));
    annotation (Diagram(coordinateSystem(extent={{-100,-320},{160,120}})),
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
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={0,-210})));
    Modelica.Electrical.Spice3.Sources.V_constant vdd(V=5)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-90,70})));
    Modelica.Electrical.Spice3.Sources.V_pulse vin(V1=0, V2=5, TD=1e-4, TR=1e-4, TF=1e-4, PW=4e-4, PER=1e-3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-90,10})));
    Modelica.Electrical.Spice3.Semiconductors.M_PMOS2 mp2(modelcard(VTO=-1, KP=2e-5), W=40e-6, L=2e-6)
      annotation (Placement(transformation(extent={{-50,80},{-30,100}})));
    Modelica.Electrical.Spice3.Semiconductors.M_NMOS2 mn2(modelcard(VTO=1, KP=5e-5), W=20e-6, L=2e-6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,50})));
    Modelica.Electrical.Spice3.Basic.C_Capacitor cl(C=1e-12)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-10,60})));
    Modelica.Electrical.Spice3.Semiconductors.Q_PNPBJT qp
      annotation (Placement(transformation(extent={{20,80},{40,100}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor rc(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={60,70})));
    Modelica.Electrical.Spice3.Basic.R_Resistor rb(R=1e5)
      annotation (Placement(transformation(extent={{-10,90},{10,110}})));
    Modelica.Electrical.Spice3.Semiconductors.J_PJFJFET jp
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,20})));
    Modelica.Electrical.Spice3.Basic.R_Resistor rjp(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={60,10})));
    Modelica.Electrical.Spice3.Semiconductors.J_NJFJFET jn
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={30,-10})));
    Modelica.Electrical.Spice3.Basic.R_Resistor rjn(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={60,-20})));
    Modelica.Electrical.Spice3.Semiconductors.D_DIODE d1
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,-50})));
    Modelica.Electrical.Spice3.Basic.R_Resistor rd(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-10,-50})));
    Modelica.Electrical.Spice3.Semiconductors.R_Resistor rs(modelcard(RSH=50), W=1e-6, L=20e-6)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-40,-90})));
    Modelica.Electrical.Spice3.Semiconductors.C_Capacitor cs(modelcard(CJ=1e-4, CJSW=1e-10), W=1e-5, L=1e-5)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-10,-90})));
  equation
    connect(vdd.n, ground.p) annotation (Line(points={{-100,70},{-104,70},{-104,-196},{0,-196},{0,-200}}, color={0,0,255}));
    connect(vin.n, ground.p) annotation (Line(points={{-100,10},{-104,10},{-104,-196},{0,-196},{0,-200}}, color={0,0,255}));
    connect(vdd.p, mp2.S) annotation (Line(points={{-80,70},{-40,70},{-40,80}}, color={0,0,255}));
    connect(vdd.p, mp2.B) annotation (Line(points={{-80,70},{-26,70},{-26,90},{-30,90}}, color={0,0,255}));
    connect(mp2.D, mn2.D) annotation (Line(points={{-40,100},{-40,104},{-28,104},{-28,64},{-40,64},{-40,60}}, color={0,0,255}));
    connect(mn2.S, ground.p) annotation (Line(points={{-40,40},{-40,20},{10,20},{10,-50},{4,-50},{4,-196},{0,-196},{0,-200}}, color={0,0,255}));
    connect(mn2.B, ground.p) annotation (Line(points={{-30,50},{-26,50},{-26,20},{10,20},{10,-50},{4,-50},{4,-196},{0,-196},{0,-200}}, color={0,0,255}));
    connect(vin.p, mp2.G) annotation (Line(points={{-80,10},{-54,10},{-54,89.9},{-50,89.9}}, color={0,0,255}));
    connect(vin.p, mn2.G) annotation (Line(points={{-80,10},{-54,10},{-54,49.9},{-50,49.9}}, color={0,0,255}));
    connect(mp2.D, cl.p) annotation (Line(points={{-40,100},{-40,104},{-28,104},{-28,60},{-20,60}}, color={0,0,255}));
    connect(cl.n, ground.p) annotation (Line(points={{0,60},{10,60},{10,-50},{4,-50},{4,-196},{0,-196},{0,-200}}, color={0,0,255}));
    connect(ground.p, qp.C) annotation (Line(points={{0,-200},{0,-196},{4,-196},{4,-50},{10,-50},{10,60},{18,60},{18,104},{33,104},{33,100}}, color={0,0,255}));
    connect(vin.p, rb.p) annotation (Line(points={{-80,10},{-54,10},{-54,106},{-14,106},{-14,100},{-10,100}}, color={0,0,255}));
    connect(rb.n, qp.B) annotation (Line(points={{10,100},{16,100},{16,90},{20.4,90}}, color={0,0,255}));
    connect(qp.E, rc.p) annotation (Line(points={{33,80},{33,76},{32,76},{32,58},{74,58},{74,70},{70,70}}, color={0,0,255}));
    connect(rc.n, vdd.p) annotation (Line(points={{50,70},{10,70},{10,72},{-26,72},{-26,70},{-80,70}}, color={0,0,255}));
    connect(vdd.p, jp.D) annotation (Line(points={{-80,70},{-26,70},{-26,72},{10,72},{10,70},{30,70},{30,30}}, color={0,0,255}));
    connect(ground.p, jp.G) annotation (Line(points={{0,-200},{0,-196},{4,-196},{4,-50},{10,-50},{10,20},{16,20},{16,19.9},{20,19.9}}, color={0,0,255}));
    connect(jp.S, rjp.p) annotation (Line(points={{30,10},{30,6},{48,6},{48,24},{60,24},{60,20}}, color={0,0,255}));
    connect(rjp.n, ground.p) annotation (Line(points={{60,0},{60,-4},{46,-4},{46,-50},{4,-50},{4,-196},{0,-196},{0,-200}}, color={0,0,255}));
    connect(vdd.p, jn.D) annotation (Line(points={{-80,70},{-26,70},{-26,72},{10,72},{10,70},{30,70},{30,32},{18,32},{18,4},{30,4},{30,0}}, color={0,0,255}));
    connect(vin.p, jn.G) annotation (Line(points={{-80,10},{-54,10},{-54,-10},{16,-10},{16,-10.1},{20,-10.1}}, color={0,0,255}));
    connect(jn.S, rjn.p) annotation (Line(points={{30,-20},{30,-24},{48,-24},{48,-6},{60,-6},{60,-10}}, color={0,0,255}));
    connect(rjn.n, ground.p) annotation (Line(points={{60,-30},{60,-50},{4,-50},{4,-196},{0,-196},{0,-200}}, color={0,0,255}));
    connect(vin.p, d1.p) annotation (Line(points={{-80,10},{-54,10},{-54,-50},{-50,-50}}, color={0,0,255}));
    connect(d1.n, rd.p) annotation (Line(points={{-30,-50},{-20,-50}}, color={0,0,255}));
    connect(rd.n, ground.p) annotation (Line(points={{0,-50},{4,-50},{4,-196},{0,-196},{0,-200}}, color={0,0,255}));
    connect(vin.p, rs.p) annotation (Line(points={{-80,10},{-54,10},{-54,-90},{-50,-90}}, color={0,0,255}));
    connect(rs.n, cs.p) annotation (Line(points={{-30,-90},{-20,-90}}, color={0,0,255}));
    connect(cs.n, ground.p) annotation (Line(points={{0,-90},{4,-90},{4,-196},{0,-196},{0,-200}}, color={0,0,255}));
    annotation (Diagram(coordinateSystem(extent={{-120,-220},{100,120}})),
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
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-90,60})));
    Modelica.Electrical.Spice3.Sources.V_pulse vin(V1=0, V2=5, TD=1e-4, TR=1e-4, TF=1e-4, PW=4e-4, PER=1e-3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={-90,0})));
    Modelica.Electrical.Spice3.Semiconductors.M_PMOS2 mp(modelcard=mcP, W=40e-6, L=2e-6)
      annotation (Placement(transformation(extent={{-50,60},{-30,80}})));
    Modelica.Electrical.Spice3.Semiconductors.M_NMOS2 mn(modelcard=mcN, W=20e-6, L=2e-6)
      annotation (Placement(transformation(extent={{-50,30},{-30,50}})));
    Modelica.Electrical.Spice3.Basic.C_Capacitor cl(C=1e-12)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, origin={-10,60})));
    Modelica.Electrical.Spice3.Semiconductors.Q_NPNBJT qn(modelcard=mcBJT)
      annotation (Placement(transformation(extent={{20,50},{40,70}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor re(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={60,50})));
    Modelica.Electrical.Spice3.Semiconductors.J_NJFJFET jn(modelcard=mcJFET)
      annotation (Placement(transformation(extent={{20,0},{40,20}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor rj(R=1e3)
      annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={60,0})));
    Modelica.Electrical.Spice3.Semiconductors.D_DIODE d(modelcarddiode=mcDiode)
      annotation (Placement(transformation(extent={{-50,-50},{-30,-30}})));
    Modelica.Electrical.Spice3.Basic.R_Resistor rd(R=1e3)
      annotation (Placement(transformation(extent={{-20,-50},{0,-30}})));
    Modelica.Electrical.Spice3.Semiconductors.R_Resistor rs(modelcard=mcR, W=1e-6, L=20e-6)
      annotation (Placement(transformation(extent={{-50,-90},{-30,-70}})));
    Modelica.Electrical.Spice3.Semiconductors.C_Capacitor cs(modelcard=mcC, W=1e-5, L=1e-5)
      annotation (Placement(transformation(extent={{-20,-90},{0,-70}})));
  equation
    connect(vdd.n, ground.p) annotation (Line(points={{-90,50},{-90,26},{4,26},{4,-106},{0,-106},{0,-110}}, color={0,0,255}));
    connect(vin.n, ground.p) annotation (Line(points={{-100,0},{-104,0},{-104,-106},{0,-106},{0,-110}}, color={0,0,255}));
    connect(vdd.p, mp.S) annotation (Line(points={{-90,70},{-90,74},{-52,74},{-52,56},{-40,56},{-40,60}}, color={0,0,255}));
    connect(vdd.p, mp.B) annotation (Line(points={{-90,70},{-90,74},{-52,74},{-52,86},{-26,86},{-26,70},{-30,70}}, color={0,0,255}));
    connect(mp.D, mn.D) annotation (Line(points={{-40,80},{-40,84},{-28,84},{-28,54},{-40,54},{-40,50}}, color={0,0,255}));
    connect(mn.S, ground.p) annotation (Line(points={{-40,30},{-40,26},{4,26},{4,-106},{0,-106},{0,-110}}, color={0,0,255}));
    connect(mn.B, ground.p) annotation (Line(points={{-30,40},{-20,40},{-20,26},{4,26},{4,-106},{0,-106},{0,-110}}, color={0,0,255}));
    connect(vin.p, mp.G) annotation (Line(points={{-80,0},{-54,0},{-54,69.9},{-50,69.9}}, color={0,0,255}));
    connect(vin.p, mn.G) annotation (Line(points={{-80,0},{-54,0},{-54,39.9},{-50,39.9}}, color={0,0,255}));
    connect(mp.D, cl.p) annotation (Line(points={{-40,80},{-40,84},{-28,84},{-28,60},{-20,60}}, color={0,0,255}));
    connect(cl.n, ground.p) annotation (Line(points={{0,60},{4,60},{4,-106},{0,-106},{0,-110}}, color={0,0,255}));
    connect(vdd.p, qn.C) annotation (Line(points={{-90,70},{-90,74},{-52,74},{-52,86},{-26,86},{-26,74},{33,74},{33,70}}, color={0,0,255}));
    connect(vin.p, qn.B) annotation (Line(points={{-80,0},{-54,0},{-54,10},{16,10},{16,60},{20.4,60}}, color={0,0,255}));
    connect(qn.E, re.p) annotation (Line(points={{33,50},{33,46},{48,46},{48,64},{60,64},{60,60}}, color={0,0,255}));
    connect(re.n, ground.p) annotation (Line(points={{60,40},{60,20},{46,20},{46,-40},{4,-40},{4,-106},{0,-106},{0,-110}}, color={0,0,255}));
    connect(vdd.p, jn.D) annotation (Line(points={{-90,70},{-90,74},{-52,74},{-52,86},{-26,86},{-26,74},{18,74},{18,24},{30,24},{30,20}}, color={0,0,255}));
    connect(vin.p, jn.G) annotation (Line(points={{-80,0},{-54,0},{-54,10},{16,10},{16,9.9},{20,9.9}}, color={0,0,255}));
    connect(jn.S, rj.p) annotation (Line(points={{30,0},{30,-4},{48,-4},{48,14},{60,14},{60,10}}, color={0,0,255}));
    connect(rj.n, ground.p) annotation (Line(points={{60,-10},{60,-40},{4,-40},{4,-106},{0,-106},{0,-110}}, color={0,0,255}));
    connect(vin.p, d.p) annotation (Line(points={{-80,0},{-54,0},{-54,-40},{-50,-40}}, color={0,0,255}));
    connect(d.n, rd.p) annotation (Line(points={{-29,-40},{-22,-40}}, color={0,0,255}));
    connect(rd.n, ground.p) annotation (Line(points={{0,-40},{4,-40},{4,-106},{0,-106},{0,-110}}, color={0,0,255}));
    connect(vin.p, rs.p) annotation (Line(points={{-80,0},{-54,0},{-54,-80},{-50,-80}}, color={0,0,255}));
    connect(rs.n, cs.p) annotation (Line(points={{-29,-80},{-22,-80}}, color={0,0,255}));
    connect(cs.n, ground.p) annotation (Line(points={{0,-80},{4,-80},{4,-106},{0,-106},{0,-110}}, color={0,0,255}));
    annotation (Diagram(coordinateSystem(extent={{-120,-140},{100,140}})),
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
