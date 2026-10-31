within ModelicaTest.Electrical.Machines;
model DCCompoundPowerBalance "Test of Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCCE"
  extends Modelica.Electrical.Machines.Examples.DCMachines.DCEE_Start;
  output Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCCE pbCC(
    powerArmature=dcee.powerBalance.powerArmature,
    powerMechanical=dcee.powerBalance.powerMechanical,
    powerInertiaStator=dcee.powerBalance.powerInertiaStator,
    powerInertiaRotor=dcee.powerBalance.powerInertiaRotor,
    lossPowerArmature=dcee.powerBalance.lossPowerArmature,
    lossPowerCore=dcee.powerBalance.lossPowerCore,
    lossPowerStrayLoad=dcee.powerBalance.lossPowerStrayLoad,
    lossPowerFriction=dcee.powerBalance.lossPowerFriction,
    lossPowerBrush=dcee.powerBalance.lossPowerBrush,
    powerShuntExcitation=dcee.powerBalance.powerExcitation,
    powerSeriesExcitation=0,
    lossPowerShuntExcitation=dcee.powerBalance.lossPowerExcitation,
    lossPowerSeriesExcitation=0) "Power balance of the DCEE machine as a compound machine without series winding";
  Real lossError=pbCC.lossPowerTotal - dcee.powerBalance.lossPowerTotal
    "Must be zero: both records sum the same losses";
  annotation (experiment(StopTime=2.0, Interval=1E-4, Tolerance=1E-6), Documentation(info="<html>
<p>
The MSL has the power balance record
<a href=\"modelica://Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCCE\">PowerBalanceDCCE</a>
of a DC machine with compound excitation, but no such machine. This test fills it from the power balance of
the electrically excited DC machine of
<a href=\"modelica://Modelica.Electrical.Machines.Examples.DCMachines.DCEE_Start\">DCEE_Start</a>: its
excitation as the shunt excitation, no series excitation. The record's total loss must then equal the one of the
DCEE machine (<code>lossError</code> = 0).
</p>
</html>"));
end DCCompoundPowerBalance;
