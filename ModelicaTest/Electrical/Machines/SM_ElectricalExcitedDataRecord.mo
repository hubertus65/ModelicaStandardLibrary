within ModelicaTest.Electrical.Machines;
model SM_ElectricalExcitedDataRecord "Test of Modelica.Electrical.Machines.Utilities.ParameterRecords.SM_ElectricalExcitedData"
  extends Modelica.Icons.Example;

  parameter Modelica.Electrical.Machines.Utilities.ParameterRecords.SM_ElectricalExcitedData smeeData
    annotation (Placement(transformation(extent={{-100,70},{-80,90}})));
  Modelica.Electrical.Machines.BasicMachines.SynchronousMachines.SM_ElectricalExcited smee(fsNominal=smeeData.fsNominal, TsRef=smeeData.TsRef, Rs=smeeData.Rs, Lssigma=smeeData.Lssigma, Lmd=smeeData.Lmd, Lmq=smeeData.Lmq, useDamperCage=smeeData.useDamperCage, Lrsigmad=smeeData.Lrsigmad, Lrsigmaq=smeeData.Lrsigmaq, Rrd=smeeData.Rrd, Rrq=smeeData.Rrq, TrRef=smeeData.TrRef, VsNominal=smeeData.VsNominal, IeOpenCircuit=smeeData.IeOpenCircuit, Re=smeeData.Re, TeRef=smeeData.TeRef, sigmae=smeeData.sigmae, alpha20s=smeeData.alpha20s, alpha20r=smeeData.alpha20r, alpha20e=smeeData.alpha20e, TsOperational=293.15, TrOperational=293.15, TeOperational=293.15, p=smeeData.p, Jr=smeeData.Jr, Js=smeeData.Js, Lszero=smeeData.Lszero, brushParameters=smeeData.brushParameters, statorCoreParameters=smeeData.statorCoreParameters, strayLoadParameters=smeeData.strayLoadParameters, frictionParameters=smeeData.frictionParameters, ir(each fixed=true), phiMechanical(fixed=true, start=0))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Sources.ConstantSpeed speed(w_fixed=2*Modelica.Constants.pi*smeeData.fsNominal/smee.p)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=180, origin={50,0})));
  Modelica.Electrical.Machines.Utilities.TerminalBox terminalBox(terminalConnection="Y")
    annotation (Placement(transformation(extent={{-10,20},{10,40}})));
  Modelica.Electrical.Polyphase.Basic.Resistor load(m=3, R=fill(10, 3))
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={0,70})));
  Modelica.Electrical.Polyphase.Basic.Star starL(m=3)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={40,70})));
  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{50,30},{70,50}})));
  Modelica.Electrical.Analog.Sources.ConstantVoltage ve(V=smeeData.Re*smeeData.IeOpenCircuit)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=270, origin={-40,-10})));
  Modelica.Electrical.Analog.Basic.Ground groundE
    annotation (Placement(transformation(extent={{-50,-60},{-30,-40}})));
equation
  connect(smee.flange, speed.flange) annotation (Line(points={{10,0},{40,0}}, color={0,0,0}));
  connect(terminalBox.plug_sp, smee.plug_sp) annotation (Line(points={{6,24},{6,10}}, color={0,0,255}));
  connect(terminalBox.plug_sn, smee.plug_sn) annotation (Line(points={{-6,24},{-6,10}}, color={0,0,255}));
  connect(terminalBox.plugSupply, load.plug_p) annotation (Line(points={{0,26},{0,60}}, color={0,0,255}));
  connect(load.plug_n, starL.plug_p) annotation (Line(points={{0,80},{0,84},{40,84},{40,80}}, color={0,0,255}));
  connect(starL.pin_n, ground.p) annotation (Line(points={{40,60},{40,54},{60,54},{60,50}}, color={0,0,255}));
  connect(ve.p, smee.pin_ep) annotation (Line(points={{-40,0},{-40,6},{-10,6}}, color={0,0,255}));
  connect(ve.n, smee.pin_en) annotation (Line(points={{-40,-20},{-40,-24},{-14,-24},{-14,-6},{-10,-6}}, color={0,0,255}));
  connect(ve.n, groundE.p) annotation (Line(points={{-40,-20},{-40,-40}}, color={0,0,255}));
  annotation (experiment(StopTime=1),
    Documentation(info="<html>
<p>
An electrically excited synchronous machine, parameterized by an
<a href=\"modelica://Modelica.Electrical.Machines.Utilities.ParameterRecords.SM_ElectricalExcitedData\">SM_ElectricalExcitedData</a>
record with default values, is driven at synchronous speed with constant excitation voltage and
feeds a resistive load (open circuit start). The record is otherwise not used in Modelica.Electrical.Machines.
</p>
</html>"));
end SM_ElectricalExcitedDataRecord;
