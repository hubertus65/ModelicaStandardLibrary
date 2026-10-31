within ModelicaTest.Magnetic.QuasiStatic.FundamentalWave;
model SMR_CurrentSourceLowLoad = Modelica.Magnetic.QuasiStatic.FundamentalWave.Examples.BasicMachines.SynchronousMachines.SMR_CurrentSource (
    TLoad=120,
    tStep=1.0)
  "Variant of SMR_CurrentSource: lower load torque, earlier load step"
  annotation (experiment(StopTime=2.0, Interval=1e-4, Tolerance=1e-6));
