within ModelicaTest;
package Units "Test models for Modelica.Units"
  extends Modelica.Icons.ExamplesPackage;

  model ComplexUnitsAndConversions
    "Test of the complex SI types of Modelica.Units.SI and of unit conversion functions"
    extends Modelica.Icons.Example;
    import SI = Modelica.Units.SI;
    import Modelica.Units.Conversions;

    // Complex SI quantities, built from a phasor that rotates once per second
    SI.ComplexVoltage v=Complex(230*cos(2*Modelica.Constants.pi*time), 230*sin(2*Modelica.Constants.pi*time))
      "Voltage phasor";
    SI.ComplexCurrent i=Complex(10, -5) "Current phasor";
    SI.ComplexPower power=v*Modelica.ComplexMath.conj(i) "Complex apparent power";
    SI.ComplexPotentialDifference potentialDifference=v "Potential difference";
    SI.ComplexCurrentSlope currentSlope=Complex(0, 2*Modelica.Constants.pi)*i "Current slope";
    SI.ComplexVoltageSlope voltageSlope=Complex(0, 2*Modelica.Constants.pi)*v "Voltage slope";
    SI.ComplexCurrentDensity currentDensity=i/1e-6 "Current density in a 1 mm2 conductor";
    SI.ComplexElectricFieldStrength electricFieldStrength=v/2 "Field strength over 2 m";
    SI.ComplexElectricFluxDensity electricFluxDensity=Modelica.Constants.epsilon_0*electricFieldStrength
      "Electric flux density";
    SI.ComplexElectricFlux electricFlux=electricFluxDensity*0.01 "Electric flux through 0.01 m2";
    SI.ComplexMagnetomotiveForce magnetomotiveForce=100*i "Magnetomotive force of 100 turns";
    SI.ComplexMagneticFieldStrength magneticFieldStrength=magnetomotiveForce/0.5
      "Field strength along 0.5 m";
    SI.ComplexMagneticFluxDensity magneticFluxDensity=Modelica.Constants.mu_0*magneticFieldStrength
      "Magnetic flux density";
    SI.ComplexReluctance reluctance=Complex(1e6, 2e5) "Reluctance";
    SI.ComplexImpedancePerUnitLength impedancePerLength=(v/i)/1000 "Impedance per length of a 1 km line";
    SI.ComplexAdmittancePerUnitLength admittancePerLength=(i/v)/1000 "Admittance per length of a 1 km line";
    SI.ComplexPerUnit perUnit=v/Complex(230, 0) "Voltage in per unit of 230 V";

    // Conversion functions, forward and back
    Real charge_Ah=Conversions.to_Ah(3600*(1 + time)) "Charge in Ah";
    SI.ElectricCharge chargeBack=Conversions.from_Ah(charge_Ah) "Charge converted back";
    Real energy_Wh=Conversions.to_Wh(3600*(2 + time)) "Energy in Wh";
    SI.Energy energyBack=Conversions.from_Wh(energy_Wh) "Energy converted back";
    Real f_Hz=Conversions.to_Hz(2*Modelica.Constants.pi*(50 + time)) "Frequency in Hz";
    SI.AngularVelocity wBack=Conversions.from_Hz(f_Hz) "Angular velocity converted back";
    Real area_cm2=Conversions.to_cm2(1e-4*(1 + 2*time)) "Area in cm2";
    SI.Area areaBack=Conversions.from_cm2(area_cm2) "Area converted back";
    annotation (experiment(StopTime=1.0), Documentation(info="<html>
<p>
Declares a variable of each complex SI type of
<a href=\"modelica://Modelica.Units.SI\">Modelica.Units.SI</a> that is not used elsewhere,
with physically related binding equations, and evaluates the unit conversions
to_Ah/from_Ah, to_Wh/from_Wh, to_Hz/from_Hz and to_cm2/from_cm2 of
<a href=\"modelica://Modelica.Units.Conversions\">Modelica.Units.Conversions</a>
forward and back. Expected values at t = 1 s: charge_Ah = 2, energy_Wh = 3,
f_Hz = 51, area_cm2 = 3.
</p>
</html>"));
  end ComplexUnitsAndConversions;
end Units;
