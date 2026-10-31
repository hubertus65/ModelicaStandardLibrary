within ModelicaTest.Magnetic.QuasiStatic.FundamentalWave;
model IMS_StartLowLoadHighResistance = Modelica.Magnetic.QuasiStatic.FundamentalWave.Examples.BasicMachines.InductionMachines.IMS_Start (
    T_Load=120,
    RStart=0.3,
    tRheostat=0.8)
  "Variant of IMS_Start: lower load torque, higher starting resistance, earlier shortening of the rheostat"
  annotation (experiment(StopTime=1.5, Interval=1e-4, Tolerance=1e-6));
