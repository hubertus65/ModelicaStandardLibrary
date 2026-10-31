within ModelicaTest.Electrical.Analog;
model AnalogOpAmpLimited "Test of Modelica.Electrical.Analog.Ideal.OpAmpLimited"
  extends Modelica.Icons.Example;

  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-10,-70},{10,-50}})));
  Modelica.Electrical.Analog.Sources.SineVoltage sine(V=1, f=50)
    annotation (Placement(transformation(extent={{-70,-10},{-50,10}})));
  Modelica.Electrical.Analog.Ideal.OpAmpLimited opAmpLimited(V0=1e4, Vps=3, Vns=-3)
    annotation (Placement(transformation(extent={{-10,10},{10,30}})));
  Modelica.Electrical.Analog.Ideal.OpAmpLimited opAmpFirstOrder(V0=1e4, Vps=3, Vns=-3, useFirstOrder=true, Tau=1e-3)
    annotation (Placement(transformation(extent={{-10,-30},{10,-10}})));
equation
  connect(sine.n, ground.p) annotation (Line(points={{-49,0},{-30,0},{-30,-60},{-12,-60}}, color={0,0,127}));
  connect(sine.p, opAmpLimited.in_p) annotation (Line(points={{-49,0},{-30,0},{-30,20},{-12,20}}, color={0,0,127}));
  connect(opAmpLimited.in_n, ground.p) annotation (Line(points={{11,20},{-16,20},{-16,-60},{-12,-60}}, color={0,0,127}));
  connect(sine.p, opAmpFirstOrder.in_p) annotation (Line(points={{-49,0},{-30,0},{-30,-20},{-12,-20}}, color={0,0,127}));
  connect(opAmpFirstOrder.in_n, ground.p) annotation (Line(points={{11,-20},{-16,-20},{-16,-60},{-12,-60}}, color={0,0,127}));
  annotation (experiment(StopTime=0),
    Documentation(info="<html>
<p>
<a href=\"modelica://Modelica.Electrical.Analog.Ideal.OpAmpLimited\">OpAmpLimited</a> as comparator
of a 1 V, 50 Hz sine, once without and once with first order dynamics; the output is limited
to &plusmn;3 V. OpAmpLimited is new in MSL 4.2.
</p>
</html>"));
end AnalogOpAmpLimited;
