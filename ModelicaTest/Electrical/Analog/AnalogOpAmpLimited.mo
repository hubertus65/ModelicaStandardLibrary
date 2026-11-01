within ModelicaTest.Electrical.Analog;
model AnalogOpAmpLimited "Test of Modelica.Electrical.Analog.Ideal.OpAmpLimited"
  extends Modelica.Icons.Example;

  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-10,-70},{10,-50}})));
  Modelica.Electrical.Analog.Sources.SineVoltage sine(V=1, f=50)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-60,0})));
  Modelica.Electrical.Analog.Ideal.OpAmpLimited opAmpLimited(V0=1e4, Vps=3, Vns=-3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={0,20})));
  Modelica.Electrical.Analog.Ideal.OpAmpLimited opAmpFirstOrder(V0=1e4, Vps=3, Vns=-3, useFirstOrder=true, Tau=1e-3)
    annotation (Placement(transformation(extent={{-10,-30},{10,-10}})));
equation
  connect(sine.n, ground.p) annotation (Line(points={{-60,-10},{-60,-30},{-14,-30},{-14,-46},{0,-46},{0,-50}}, color={0,0,255}));
  connect(sine.p, opAmpLimited.in_p) annotation (Line(points={{-60,10},{-60,14},{-12,14},{-12,6},{6,6},{6,10}}, color={0,0,255}));
  connect(opAmpLimited.in_n, ground.p) annotation (Line(points={{-6,10},{-6,-8},{-12,-8},{-12,-46},{0,-46},{0,-50}}, color={0,0,255}));
  connect(sine.p, opAmpFirstOrder.in_p) annotation (Line(points={{-60,10},{-60,14},{-16,14},{-16,-26},{-10,-26}}, color={0,0,255}));
  connect(opAmpFirstOrder.in_n, ground.p) annotation (Line(points={{-10,-14},{-14,-14},{-14,-46},{0,-46},{0,-50}}, color={0,0,255}));
  annotation (experiment(StopTime=0),
    Documentation(info="<html>
<p>
<a href=\"modelica://Modelica.Electrical.Analog.Ideal.OpAmpLimited\">OpAmpLimited</a> as comparator
of a 1 V, 50 Hz sine, once without and once with first order dynamics; the output is limited
to &plusmn;3 V. OpAmpLimited is new in MSL 4.2.
</p>
</html>"));
end AnalogOpAmpLimited;
