within ModelicaTest;
package Media "Test models for Modelica.Media"
  extends Modelica.Icons.ExamplesPackage;
  package TestAllProperties
    extends Modelica.Icons.ExamplesPackage;
    model PartialMediumFunctions

      replaceable package Medium = Modelica.Media.Interfaces.PartialMedium
        "Medium model";
      parameter Real eps_h_is=1e-10;
      Medium.ThermodynamicState state=Medium.setState_pTX(
              Medium.reference_p,
              Medium.reference_T,
              Medium.reference_X);
      Medium.DynamicViscosity eta=Medium.dynamicViscosity(state);
      Medium.ThermalConductivity lambda=Medium.thermalConductivity(state);
      Medium.PrandtlNumber Pr=Medium.prandtlNumber(state);
      Medium.AbsolutePressure p=Medium.pressure(state);
      Medium.Temperature T=Medium.temperature(state);
      Medium.Density d=Medium.density(state);
      Medium.SpecificEnthalpy h=Medium.specificEnthalpy(state);
      Medium.SpecificEnergy u=Medium.specificInternalEnergy(state);
      Medium.SpecificEntropy s=Medium.specificEntropy(state);
      Medium.SpecificEnergy g=Medium.specificGibbsEnergy(state);
      Medium.SpecificEnergy f=Medium.specificHelmholtzEnergy(state);
      Medium.SpecificHeatCapacity cp=Medium.specificHeatCapacityCp(state);
      Medium.SpecificHeatCapacity cp2=Medium.heatCapacity_cp(state);
      Medium.SpecificHeatCapacity cv=Medium.specificHeatCapacityCv(state);
      Medium.SpecificHeatCapacity cv2=Medium.heatCapacity_cv(state);
      Medium.SpecificEnthalpy h_is=Medium.isentropicEnthalpy(2*Medium.reference_p,
          state);
      Medium.VelocityOfSound a=Medium.velocityOfSound(state);
      Medium.IsobaricExpansionCoefficient beta=
          Medium.isobaricExpansionCoefficient(state);
      Medium.IsobaricExpansionCoefficient beta2=Medium.beta(state);
      SI.IsothermalCompressibility kappa=Medium.isothermalCompressibility(state);
      SI.IsothermalCompressibility kappa2=Medium.kappa(state);
      Medium.DerDensityByPressure ddpT=Medium.density_derp_T(state);
      Medium.DerDensityByTemperature ddTp=Medium.density_derT_p(state);
      Medium.Density dddX[Medium.nX]=Medium.density_derX(state);
      Medium.MolarMass MM=Medium.molarMass(state);
      Medium.SpecificEnthalpy h2=Medium.specificEnthalpy_pTX(
              Medium.reference_p,
              Medium.reference_T,
              Medium.reference_X);
      Medium.Density d2=Medium.density_pTX(
              Medium.reference_p,
              Medium.reference_T,
              Medium.reference_X);
      Medium.ThermodynamicState state2=Medium.setState_phX(
              Medium.reference_p,
              h,
              Medium.reference_X);
      Medium.ThermodynamicState state3=Medium.setState_psX(
              Medium.reference_p,
              s,
              Medium.reference_X);
      Medium.ThermodynamicState state4=if Medium.singleState then state else
          Medium.setState_dTX(
              d,
              T,
              Medium.reference_X);
      Medium.ThermodynamicState state5=Medium.setSmoothState(
              0.1,
              state,
              state2,
              0.001);
      Medium.BaseProperties medium(
        preferredMediumStates=true,
        p(start=Medium.reference_p),
        T(start=Medium.reference_T),
        X(start=Medium.reference_X));
      Real err_T=abs(medium.T - T);
      Real err_d=abs(medium.d - d);
      Real err_u=abs(medium.u - u);

      // check isentropicEnthalpy
      Medium.ThermodynamicState state_h_is=Medium.setState_phX(
              2*Medium.reference_p,
              h_is,
              Medium.reference_X);
      Medium.SpecificEntropy s_is=Medium.specificEntropy(state_h_is);
      Real err_h_is=abs(s - s_is);
      constant Real eps=1e-10;
      constant Real t_min = 1e-6;
    equation
      medium.p = p;
      medium.h = h;
      medium.Xi = Medium.reference_X[1:Medium.nXi];

      // When iterating at the initial time the asserts below could be violated.
      // To avoid an error, the check is only performed shortly after initialization.
      if time >= t_min then
        assert(err_T <= eps, "Error: abs(medium.T - T) > eps " + "(err_T = "
           + String(err_T) + ", eps = " + String(eps) + ")");
      end if;

      if time >= t_min then
        assert(err_d <= eps, "Error: abs(medium.d - d) > eps " + "(err_d = " +
          String(err_d) + ", eps = " + String(eps) + ")");
      end if;

      if time >= t_min then
        assert(err_u <= eps, "Error: abs(medium.u - u) > eps " + "(err_u = " +
          String(err_u) + ", eps = " + String(eps) + ")");
      end if;

      if time >= t_min then
        assert(err_h_is <= eps_h_is,
          "Error: entropy not constant for isentropicEnthalpy " + "(err_h_is = "
           + String(err_h_is) + ", eps = " + String(eps_h_is) + ")");
      end if;
    end PartialMediumFunctions;

    model DryAirNasa
      extends Modelica.Icons.Example;
      extends PartialMediumFunctions(redeclare package Medium =
            Modelica.Media.Air.DryAirNasa, eps_h_is=0.1);
      annotation (experiment(StopTime=0.1));
    end DryAirNasa;

    model LinearColdWater
      extends Modelica.Icons.Example;
      extends PartialMediumFunctions(redeclare package Medium =
            Modelica.Media.CompressibleLiquids.LinearColdWater);
      annotation (experiment(StopTime=0.1));
    end LinearColdWater;

    model LinearWater_pT_Ambient
      extends Modelica.Icons.Example;
      extends PartialMediumFunctions(redeclare package Medium =
            Modelica.Media.CompressibleLiquids.LinearWater_pT_Ambient);
      annotation (experiment(StopTime=0.1));
    end LinearWater_pT_Ambient;

    model CO2
      extends Modelica.Icons.Example;
      extends PartialMediumFunctions(redeclare package Medium =
            Modelica.Media.IdealGases.SingleGases.CO2, eps_h_is=0.2);
      annotation (experiment(StopTime=0.1));
    end CO2;

    model FlueGasSixComponents
      "A copy of PartialMediumFunctions, but isentropicEnthalpy gets the additional argument exact=true"

      extends Modelica.Icons.Example;
      package Medium =
          Modelica.Media.IdealGases.MixtureGases.FlueGasSixComponents
        "Medium model";
      parameter Real eps_h_is=1e-10;
      Medium.ThermodynamicState state=Medium.setState_pTX(
              Medium.reference_p,
              Medium.reference_T,
              Medium.reference_X);
      Medium.DynamicViscosity eta=Medium.dynamicViscosity(state);
      Medium.ThermalConductivity lambda=Medium.thermalConductivity(state);
      Medium.PrandtlNumber Pr=Medium.prandtlNumber(state);
      Medium.AbsolutePressure p=Medium.pressure(state);
      Medium.Temperature T=Medium.temperature(state);
      Medium.Density d=Medium.density(state);
      Medium.SpecificEnthalpy h=Medium.specificEnthalpy(state);
      Medium.SpecificEnergy u=Medium.specificInternalEnergy(state);
      Medium.SpecificEntropy s=Medium.specificEntropy(state);
      Medium.SpecificEnergy g=Medium.specificGibbsEnergy(state);
      Medium.SpecificEnergy f=Medium.specificHelmholtzEnergy(state);
      Medium.SpecificHeatCapacity cp=Medium.specificHeatCapacityCp(state);
      Medium.SpecificHeatCapacity cp2=Medium.heatCapacity_cp(state);
      Medium.SpecificHeatCapacity cv=Medium.specificHeatCapacityCv(state);
      Medium.SpecificHeatCapacity cv2=Medium.heatCapacity_cv(state);
      Medium.SpecificEnthalpy h_is=Medium.isentropicEnthalpy(
              2*Medium.reference_p,
              state,
              exact=true);
      Medium.VelocityOfSound a=Medium.velocityOfSound(state);
      Medium.IsobaricExpansionCoefficient beta=
          Medium.isobaricExpansionCoefficient(state);
      Medium.IsobaricExpansionCoefficient beta2=Medium.beta(state);
      SI.IsothermalCompressibility kappa=Medium.isothermalCompressibility(state);
      SI.IsothermalCompressibility kappa2=Medium.kappa(state);
      Medium.DerDensityByPressure ddpT=Medium.density_derp_T(state);
      Medium.DerDensityByTemperature ddTp=Medium.density_derT_p(state);
      Medium.Density dddX[Medium.nX]=Medium.density_derX(state);
      Medium.MolarMass MM=Medium.molarMass(state);
      Medium.SpecificEnthalpy h2=Medium.specificEnthalpy_pTX(
              Medium.reference_p,
              Medium.reference_T,
              Medium.reference_X);
      Medium.Density d2=Medium.density_pTX(
              Medium.reference_p,
              Medium.reference_T,
              Medium.reference_X);
      Medium.ThermodynamicState state2=Medium.setState_phX(
              Medium.reference_p,
              h,
              Medium.reference_X);
      Medium.ThermodynamicState state3=Medium.setState_psX(
              Medium.reference_p,
              s,
              Medium.reference_X);
      Medium.ThermodynamicState state4=if Medium.singleState then state else
          Medium.setState_dTX(
              d,
              T,
              Medium.reference_X);
      Medium.ThermodynamicState state5=Medium.setSmoothState(
              0.1,
              state,
              state2,
              0.001);
      Medium.BaseProperties medium(
        preferredMediumStates=true,
        p(start=Medium.reference_p),
        T(start=Medium.reference_T),
        X(start=Medium.reference_X));
      Real err_T=abs(medium.T - T);
      Real err_d=abs(medium.d - d);
      Real err_u=abs(medium.u - u);

      // check isentropicEnthalpy
      Medium.ThermodynamicState state_h_is=Medium.setState_phX(
              2*Medium.reference_p,
              h_is,
              Medium.reference_X);
      Medium.SpecificEntropy s_is=Medium.specificEntropy(state_h_is);
      Real err_h_is=abs(s - s_is);
      constant Real eps=1e-9;
      constant Real t_min = 1e-6;
    equation
      medium.p = p;
      medium.h = h;
      medium.Xi = Medium.reference_X[1:Medium.nXi];

      // When iterating at the initial time the asserts below could be violated.
      // To avoid an error, the check is only performed shortly after initialization.
      if time >= t_min then
        assert(err_T <= eps, "Error: abs(medium.T - T) > eps " + "(err_T = "
           + String(err_T) + ", eps = " + String(eps) + ")");
      end if;

      if time >= t_min then
        assert(err_d <= eps, "Error: abs(medium.d - d) > eps " + "(err_d = " +
          String(err_d) + ", eps = " + String(eps) + ")");
      end if;

      if time >= t_min then
        assert(err_u <= eps, "Error: abs(medium.u - u) > eps " + "(err_u = " +
          String(err_u) + ", eps = " + String(eps) + ")");
      end if;

      if time >= t_min then
      assert(err_h_is <= eps_h_is,
        "Error: entropy not constant for isentropicEnthalpy " + "(err_h_is = "
         + String(err_h_is) + ", eps = " + String(eps_h_is) + ")");
      end if;
      annotation (experiment(StopTime=1.01));
    end FlueGasSixComponents;

    model ConstantPropertyLiquidWater
      extends Modelica.Icons.Example;
      extends PartialMediumFunctions(redeclare package Medium =
            Modelica.Media.Water.ConstantPropertyLiquidWater);
      annotation (experiment(StopTime=0.1));
    end ConstantPropertyLiquidWater;

    model SimpleAir
      extends Modelica.Icons.Example;
      extends PartialMediumFunctions(redeclare package Medium =
            Modelica.Media.Air.SimpleAir);
      annotation (experiment(StopTime=0.1));
    end SimpleAir;

    model MoistAir
      extends Modelica.Icons.Example;
      extends PartialMediumFunctions(redeclare package Medium =
            Modelica.Media.Air.MoistAir);
      annotation (experiment(StopTime=0.1));
    end MoistAir;

    package IncompleteMedia
      "Media that do not yet support the full PartialMedium interface"
      extends Modelica.Icons.ExamplesPackage;

      model PartialMediumFunctionsForIncompressible

        replaceable package Medium = Modelica.Media.Interfaces.PartialMedium
          "Medium model";
        parameter Real eps_h_is=1e-10;
        Medium.ThermodynamicState state=Medium.setState_pTX(
                Medium.reference_p,
                Medium.reference_T,
                Medium.reference_X);
        Medium.DynamicViscosity eta=Medium.dynamicViscosity(state);
        Medium.ThermalConductivity lambda=Medium.thermalConductivity(state);
        Medium.PrandtlNumber Pr=Medium.prandtlNumber(state);
        Medium.AbsolutePressure p=Medium.pressure(state);
        Medium.Temperature T=Medium.temperature(state);
        Medium.Density d=Medium.density(state);
        Medium.SpecificEnthalpy h=Medium.specificEnthalpy(state);
        Medium.SpecificEnergy u=Medium.specificInternalEnergy(state);
        Medium.SpecificEntropy s=Medium.specificEntropy(state);
        //Medium.SpecificEnergy g=Medium.specificGibbsEnergy(state);
        //Medium.SpecificEnergy f=Medium.specificHelmholtzEnergy(state);
        Medium.SpecificHeatCapacity cp=Medium.specificHeatCapacityCp(state);
        Medium.SpecificHeatCapacity cp2=Medium.heatCapacity_cp(state);
        Medium.SpecificHeatCapacity cv=Medium.specificHeatCapacityCv(state);
        Medium.SpecificHeatCapacity cv2=Medium.heatCapacity_cv(state);
        //Medium.SpecificEnthalpy h_is=Medium.isentropicEnthalpy(2*Medium.reference_p,state);
        //Medium.VelocityOfSound a=Medium.velocityOfSound(state);
        //Medium.IsobaricExpansionCoefficient beta=Medium.isobaricExpansionCoefficient(state);
        //Medium.IsobaricExpansionCoefficient beta2=Medium.beta(state);
        //SI.IsothermalCompressibility kappa=Medium.isothermalCompressibility(state);
        //SI.IsothermalCompressibility kappa2=Medium.kappa(state);
        //Medium.DerDensityByPressure ddpT=Medium.density_derp_T(state);
        //Medium.DerDensityByTemperature ddTp=Medium.density_derT_p(state);
        //Medium.Density dddX[Medium.nX]=Medium.density_derX(state);
        //Medium.MolarMass MM=Medium.molarMass(state);
        Medium.SpecificEnthalpy h2=Medium.specificEnthalpy_pTX(
                Medium.reference_p,
                Medium.reference_T,
                Medium.reference_X);
        Medium.Density d2=Medium.density_pTX(
                Medium.reference_p,
                Medium.reference_T,
                Medium.reference_X);
        Medium.ThermodynamicState state2=Medium.setState_phX(
                Medium.reference_p,
                h,
                Medium.reference_X);
        Medium.ThermodynamicState state3=Medium.setState_psX(
                Medium.reference_p,
                s,
                Medium.reference_X);
        Medium.ThermodynamicState state4=if Medium.singleState then state else
            Medium.setState_dTX(
                d,
                T,
                Medium.reference_X);
        Medium.ThermodynamicState state5=Medium.setSmoothState(
                0.1,
                state,
                state2,
                0.001);
        Medium.BaseProperties medium(
          preferredMediumStates=true,
          p(start=Medium.reference_p),
          T(start=Medium.reference_T),
          X(start=Medium.reference_X));
        Real err_T=abs(medium.T - T);
        Real err_d=abs(medium.d - d);
        Real err_u=abs(medium.u - u);

        // check isentropicEnthalpy
        /*
  Medium.ThermodynamicState state_h_is=Medium.setState_phX(
          2*Medium.reference_p,
          h_is,
          Medium.reference_X);
  Medium.SpecificEntropy s_is=Medium.specificEntropy(state_h_is);
  Real err_h_is=abs(s - s_is);
  */
        constant Real eps=1e-10;
      equation
        medium.p = p;
        medium.h = h;
        medium.Xi = Medium.reference_X[1:Medium.nXi];

        // When iterating at the initial time the asserts below could be violated.
        // To avoid an error, the check is only performed at the end of the simulation.
        when terminal() then
          assert(err_T <= eps, "Error: abs(medium.T - T) > eps\n" + "(err_T = "
             + String(err_T) + ", eps = " + String(eps) + ")");
        end when;

        when terminal() then
          assert(err_d <= eps, "Error: abs(medium.d - d) > eps" + "(err_d = " +
            String(err_d) + ", eps = " + String(eps) + ")");
        end when;

        when terminal() then
          assert(err_u <= eps, "Error: abs(medium.u - u) > eps" + "(err_u = " +
            String(err_u) + ", eps = " + String(eps) + ")");
        end when;

        // when terminal() then
        /*
  assert(err_h_is <= eps_h_is,
    "Error: entropy not constant for isentropicEnthalpy" + "(err_h_is = "
     + String(err_h_is) + ", eps = " + String(eps_h_is) + ")");
  */
        // end when;
      end PartialMediumFunctionsForIncompressible;

      model PartialMediumFunctionsForTwoPhase

        replaceable package Medium = Modelica.Media.Interfaces.PartialMedium
          "Medium model";
        parameter Real eps_h_is=1e-10;
        parameter Real eps=1e-10;
        Medium.ThermodynamicState state=Medium.setState_pTX(
                Medium.reference_p,
                Medium.reference_T,
                Medium.reference_X);
        Medium.DynamicViscosity eta=Medium.dynamicViscosity(state);
        Medium.ThermalConductivity lambda=Medium.thermalConductivity(state);
        Medium.PrandtlNumber Pr=Medium.prandtlNumber(state);
        Medium.AbsolutePressure p=Medium.pressure(state);
        Medium.Temperature T=Medium.temperature(state);
        Medium.Density d=Medium.density(state);
        Medium.SpecificEnthalpy h=Medium.specificEnthalpy(state);
        Medium.SpecificEnergy u=Medium.specificInternalEnergy(state);
        Medium.SpecificEntropy s=Medium.specificEntropy(state);
        Medium.SpecificEnergy g=Medium.specificGibbsEnergy(state);
        Medium.SpecificEnergy f=Medium.specificHelmholtzEnergy(state);
        Medium.SpecificHeatCapacity cp=Medium.specificHeatCapacityCp(state);
        Medium.SpecificHeatCapacity cp2=Medium.heatCapacity_cp(state);
        Medium.SpecificHeatCapacity cv=Medium.specificHeatCapacityCv(state);
        Medium.SpecificHeatCapacity cv2=Medium.heatCapacity_cv(state);
        Medium.SpecificEnthalpy h_is=Medium.isentropicEnthalpy(2*Medium.reference_p,
            state);
        Medium.VelocityOfSound a=Medium.velocityOfSound(state);
        Medium.IsobaricExpansionCoefficient beta=
            Medium.isobaricExpansionCoefficient(state);
        Medium.IsobaricExpansionCoefficient beta2=Medium.beta(state);
        SI.IsothermalCompressibility kappa=Medium.isothermalCompressibility(state);
        SI.IsothermalCompressibility kappa2=Medium.kappa(state);
        //Medium.DerDensityByPressure ddpT=Medium.density_derp_T(state);
        //Medium.DerDensityByTemperature ddTp=Medium.density_derT_p(state);
        //Medium.Density dddX[Medium.nX]=Medium.density_derX(state);
        Medium.MolarMass MM=Medium.molarMass(state);
        Medium.SpecificEnthalpy h2=Medium.specificEnthalpy_pTX(
                Medium.reference_p,
                Medium.reference_T,
                Medium.reference_X);
        Medium.Density d2=Medium.density_pTX(
                Medium.reference_p,
                Medium.reference_T,
                Medium.reference_X);
        Medium.ThermodynamicState state2=Medium.setState_phX(
                Medium.reference_p,
                h,
                Medium.reference_X);
        Medium.ThermodynamicState state3=Medium.setState_psX(
                Medium.reference_p,
                s,
                Medium.reference_X);
        Medium.ThermodynamicState state4=if Medium.singleState then state else
            Medium.setState_dTX(
                d,
                T,
                Medium.reference_X);
        Medium.ThermodynamicState state5=Medium.setSmoothState(
                0.1,
                state,
                state2,
                0.001);
        Medium.BaseProperties medium(
          preferredMediumStates=true,
          p(start=Medium.reference_p),
          T(start=Medium.reference_T),
          X(start=Medium.reference_X));
        Real err_T=abs(medium.T - T)/medium.T;
        Real err_d=abs(medium.d - d)/medium.d;
        Real err_u=abs(medium.u - u)/medium.u;

        // check isentropicEnthalpy
        Medium.ThermodynamicState state_h_is=Medium.setState_phX(
                2*Medium.reference_p,
                h_is,
                Medium.reference_X);
        Medium.SpecificEntropy s_is=Medium.specificEntropy(state_h_is);
        Real err_h_is=abs(s - s_is)/s;

      equation
        medium.p = p;
        medium.h = h;
        medium.Xi = Medium.reference_X[1:Medium.nXi];

        // When iterating at the initial time the asserts below could be violated.
        // To avoid an error, the check is only performed at the end of the simulation.
        when terminal() then
          assert(err_T <= eps, "Error: abs(medium.T - T)/medium.T > eps\n" + "(err_T = "
             + String(err_T) + ", eps = " + String(eps) + ")");
        end when;

        when terminal() then
          assert(err_d <= eps, "Error: abs(medium.d - d)/medium.d > eps" + "(err_d = " +
            String(err_d) + ", eps = " + String(eps) + ")");
        end when;

        when terminal() then
          assert(err_u <= eps, "Error: abs(medium.u - u)/medium.u > eps" + "(err_u = " +
            String(err_u) + ", eps = " + String(eps) + ")");
        end when;

        when terminal() then
          assert(err_h_is <= eps_h_is,
          "Error: entropy not constant for isentropicEnthalpy" + "(err_h_is = |s-s_is|/s = "
           + String(err_h_is) + ", eps = " + String(eps_h_is) + ", s = " + String(s)
           + ")");
        end when;
      end PartialMediumFunctionsForTwoPhase;

      model PartialMediumFunctionsForRealCondensingGases

        replaceable package Medium = Modelica.Media.Interfaces.PartialMedium
          "Medium model";
        parameter Real eps_h_is=1e-10;
        parameter Real eps=1e-10;
        Medium.ThermodynamicState state=Medium.setState_pTX(
                Medium.reference_p,
                Medium.reference_T,
                Medium.reference_X);
        Medium.DynamicViscosity eta=Medium.dynamicViscosity(state);
        Medium.ThermalConductivity lambda=Medium.thermalConductivity(state);
        Medium.PrandtlNumber Pr=Medium.prandtlNumber(state);
        Medium.AbsolutePressure p=Medium.pressure(state);
        Medium.Temperature T=Medium.temperature(state);
        Medium.Density d=Medium.density(state);
        Medium.SpecificEnthalpy h=Medium.specificEnthalpy(state);
        Medium.SpecificEnergy u=Medium.specificInternalEnergy(state);
        Medium.SpecificEntropy s=Medium.specificEntropy(state);
        Medium.SpecificEnergy g=Medium.specificGibbsEnergy(state);
        Medium.SpecificEnergy f=Medium.specificHelmholtzEnergy(state);
        Medium.SpecificHeatCapacity cp=Medium.specificHeatCapacityCp(state);
        Medium.SpecificHeatCapacity cp2=Medium.heatCapacity_cp(state);
        Medium.SpecificHeatCapacity cv=Medium.specificHeatCapacityCv(state);
        Medium.SpecificHeatCapacity cv2=Medium.heatCapacity_cv(state);
        Medium.SpecificEnthalpy h_is=Medium.isentropicEnthalpy(2*Medium.reference_p,state);
        Medium.VelocityOfSound a=Medium.velocityOfSound(state);
        //Medium.IsobaricExpansionCoefficient beta=Medium.isobaricExpansionCoefficient(state);
        //Medium.IsobaricExpansionCoefficient beta2=Medium.beta(state);
        //SI.IsothermalCompressibility kappa=Medium.isothermalCompressibility(state);
        //SI.IsothermalCompressibility kappa2=Medium.kappa(state);
        //Medium.DerDensityByPressure ddpT=Medium.density_derp_T(state);
        //Medium.DerDensityByTemperature ddTp=Medium.density_derT_p(state);
        //Medium.Density dddX[Medium.nX]=Medium.density_derX(state);
        Medium.MolarMass MM=Medium.molarMass(state);
        Medium.SpecificEnthalpy h2=Medium.specificEnthalpy_pTX(
                Medium.reference_p,
                Medium.reference_T,
                Medium.reference_X);
        Medium.Density d2=Medium.density_pTX(
                Medium.reference_p,
                Medium.reference_T,
                Medium.reference_X);
        Medium.ThermodynamicState state2=Medium.setState_phX(
                Medium.reference_p,
                h,
                Medium.reference_X);
        Medium.ThermodynamicState state3=Medium.setState_psX(
                Medium.reference_p,
                s,
                Medium.reference_X);
        Medium.ThermodynamicState state4=if Medium.singleState then state else
            Medium.setState_dTX(
                d,
                T,
                Medium.reference_X);
        Medium.ThermodynamicState state5=Medium.setSmoothState(
                0.1,
                state,
                state2,
                0.001);
        Medium.BaseProperties medium(
          preferredMediumStates=true,
          p(start=Medium.reference_p),
          T(start=Medium.reference_T),
          X(start=Medium.reference_X));
        Real err_T=abs(medium.T - T)/medium.T;
        Real err_d=abs(medium.d - d)/medium.d;
        Real err_u=abs(medium.u - u)/medium.u;

        // check isentropicEnthalpy
        Medium.ThermodynamicState state_h_is=Medium.setState_phX(
                2*Medium.reference_p,
                h_is,
                Medium.reference_X);
        Medium.SpecificEntropy s_is=Medium.specificEntropy(state_h_is);
        Real err_h_is=abs(s - s_is)/s;
      equation
        medium.p = p;
        medium.h = h;
        medium.Xi = Medium.reference_X[1:Medium.nXi];

        // When iterating at the initial time the asserts below could be violated.
        // To avoid an error, the check is only performed at the end of the simulation.
        when terminal() then
          assert(err_T <= eps, "Error: abs(medium.T - T)/medium.T > eps\n" + "(err_T = "
             + String(err_T) + ", eps = " + String(eps) + ")");
        end when;

        when terminal() then
          assert(err_d <= eps, "Error: abs(medium.d - d)/medium.d > eps" + "(err_d = " +
            String(err_d) + ", eps = " + String(eps) + ")");
        end when;

        when terminal() then
          assert(err_u <= eps, "Error: abs(medium.u - u)/medium.u > eps" + "(err_u = " +
            String(err_u) + ", eps = " + String(eps) + ")");
        end when;

        when terminal() then
          assert(err_h_is <= eps_h_is,
          "Error: entropy not constant for isentropicEnthalpy" + "(err_h_is = |s-s_is|/s = "
           + String(err_h_is) + ", eps = " + String(eps_h_is) + ", s = " + String(s)
           + ")");
        end when;
      end PartialMediumFunctionsForRealCondensingGases;

      model Glycol47
        extends Modelica.Icons.Example;
        extends PartialMediumFunctionsForIncompressible(
                                                    redeclare package Medium =
              Modelica.Media.Incompressible.Examples.Glycol47);
        annotation (experiment(StopTime=0.1));
      end Glycol47;

      model Essotherm650
        extends Modelica.Icons.Example;
        extends PartialMediumFunctionsForIncompressible(
                                                    redeclare package Medium =
              Modelica.Media.Incompressible.Examples.Essotherm650);
        annotation (experiment(StopTime=0.1));
      end Essotherm650;

      model WaterIF97_pT
        extends Modelica.Icons.Example;
        extends PartialMediumFunctionsForTwoPhase(redeclare package Medium =
              Modelica.Media.Water.WaterIF97_pT, eps_h_is=0.001);
        annotation (experiment(StopTime=0.1));
      end WaterIF97_pT;

      model WaterIF97_ph
        extends Modelica.Icons.Example;
        extends PartialMediumFunctionsForTwoPhase(redeclare package Medium =
              Modelica.Media.Water.WaterIF97_ph, eps_h_is=0.001, eps=0.001);
        annotation (experiment(StopTime=0.1));
      end WaterIF97_ph;

      model ReferenceAir_ph
        extends Modelica.Icons.Example;
        extends PartialMediumFunctionsForTwoPhase(redeclare package Medium =
              Modelica.Media.Air.ReferenceAir.Air_ph);
        annotation (experiment(StopTime=0.1));
      end ReferenceAir_ph;

      model ReferenceAir_pT
        extends Modelica.Icons.Example;
        extends PartialMediumFunctionsForTwoPhase(redeclare package Medium =
              Modelica.Media.Air.ReferenceAir.Air_pT);
        annotation (experiment(StopTime=0.1));
      end ReferenceAir_pT;

      model ReferenceAir_dT
        extends Modelica.Icons.Example;
        extends PartialMediumFunctionsForTwoPhase(redeclare package Medium =
              Modelica.Media.Air.ReferenceAir.Air_dT);
        annotation (experiment(StopTime=0.1));
      end ReferenceAir_dT;

      model ReferenceMoistAir
        extends Modelica.Icons.Example;
        extends PartialMediumFunctionsForRealCondensingGases(redeclare package
            Medium =
              Modelica.Media.Air.ReferenceMoistAir);
        annotation (experiment(StopTime=0.1));
      end ReferenceMoistAir;
    end IncompleteMedia;
  end TestAllProperties;

  package TestOnly "Examples for testing purposes "
    extends Modelica.Icons.ExamplesPackage;
    model MixIdealGasAir "Ideal gas air medium model"
      extends Modelica.Icons.Example;
      package Medium = Modelica.Media.IdealGases.MixtureGases.CombustionAir
        "Medium model";
      Medium.BaseProperties medium(
        T(start=200.0,fixed=true),
        X(start={0.2,0.8}),
        p(start=1.0e5,fixed=true));
      Medium.BaseProperties medium2(
        T(start=300.0,fixed=true),
        X(start={0.2,0.8},each fixed=true),
        p(start=2.0e5,fixed=true));
      Medium.SpecificHeatCapacity cp=Medium.specificHeatCapacityCp(medium.state);
      Medium.SpecificHeatCapacity cv=Medium.specificHeatCapacityCv(medium.state);
      Medium.IsentropicExponent gamma=Medium.isentropicExponent(medium.state);
      Medium.SpecificEntropy s=Medium.specificEntropy(medium.state);
      Medium.SpecificEntropy s2=Medium.specificEntropy(medium2.state);
      Medium.VelocityOfSound a=Medium.velocityOfSound(medium.state);
      Medium.DynamicViscosity eta=Medium.dynamicViscosity(medium.state);
      Medium.ThermalConductivity lambda=Medium.thermalConductivity(medium.state);
      Real beta=Medium.isobaricExpansionCoefficient(medium.state);
      Real gamma2=Medium.isothermalCompressibility(medium2.state);
      Medium.SpecificEnthalpy h_is=Medium.isentropicEnthalpyApproximation(2.0e5,
          medium.state);
      Medium.MassFraction Xi[Medium.nXi] = Medium.massFraction(medium.state);
    equation
      der(medium.p) = 1000.0;
      der(medium.T) = 1000;
      medium.X = {0.2,0.8};
      der(medium2.p) = 1.0e3;
      der(medium2.T) = 0.0;
      der(medium2.X) = {0.0,0.0};
      //  s2 = s;
      annotation (Documentation(info="<html>
<p>An example for using ideal gas properties and how to compute isentropic enthalpy changes.
The function that is implemented is approximate, but usually very good: the second medium record medium2
is given to compare the approximation.
</p>
</html>"),experiment(StopTime=1));
    end MixIdealGasAir;

    model FlueGas "Ideal gas flue gas  model"
      extends Modelica.Icons.Example;
      package Medium =
          Modelica.Media.IdealGases.MixtureGases.FlueGasLambdaOnePlus
        "Medium model";
      Medium.ThermodynamicState state(
        T(start=200.0,fixed=true),
        X(start={0.2,0.3,0.4,0.1}),
        p(start=1.0e5,fixed=true));
      Medium.BaseProperties medium2(
        T(start=300.0,fixed=true),
        X(start={0.2,0.1,0.3,0.4},each fixed=true),
        p(start=2.0e5,fixed=true));
      Medium.SpecificHeatCapacity cp=Medium.specificHeatCapacityCp(state);
      Medium.SpecificHeatCapacity cv=Medium.specificHeatCapacityCv(state);
      Medium.IsentropicExponent gamma=Medium.isentropicExponent(state);
      Medium.SpecificEntropy s=Medium.specificEntropy(state);
      Medium.SpecificEntropy s2=Medium.specificEntropy(medium2.state);
      Medium.VelocityOfSound a=Medium.velocityOfSound(state);
      Real beta=Medium.isobaricExpansionCoefficient(state);
      Real gamma2=Medium.isothermalCompressibility(medium2.state);
      Medium.SpecificEnthalpy h_is=Medium.isentropicEnthalpyApproximation(2.0e5,
          medium2.state);
      parameter Medium.MolarMass[4] MMx=Medium.data.MM
        "Molar masses of flue gas";
      Medium.MolarMass MM=1/sum(state.X[j]/MMx[j] for j in 1:4) "molar mass";
      Real[4] dddX=Medium.density_derX(medium2.state);
    equation
      der(state.p) = 1000.0;
      der(state.T) = 1000;
      state.X = {0.2,0.2,0.4,0.2};
      der(medium2.p) = 1.0e3;
      der(medium2.T) = 0.0;
      der(medium2.X[1:Medium.nX]) = {0.0,0.0,0.0,0.0};
      annotation (Documentation(info="<html>
<p>An example for using ideal gas properties and how to compute isentropic enthalpy changes.
The function that is implemented is approximate, but usually very good: the second medium record medium2
is given to compare the approximation.
</p>
</html>"),experiment(StopTime=1));
    end FlueGas;

    package N2AsMix "Mixture gas IdealGas.SingleMedia.N2 medium model"
      extends Modelica.Media.IdealGases.Common.MixtureGasNasa(
        mediumName="Nitrogen",
        data={Modelica.Media.IdealGases.Common.SingleGasesData.N2},
        fluidConstants={Modelica.Media.IdealGases.Common.FluidData.N2},
        substanceNames={"Nitrogen"},
        reference_X={1.0});
      annotation (Documentation(info="<html>

</html>"));
    end N2AsMix;

    model IdealGasN2 "Test IdealGas.SingleMedia.N2 medium model"
      extends Modelica.Icons.Example;

      parameter SI.Volume V=1 "Size of fixed volume";
      parameter Medium.MassFlowRate m_flow_ext=0.01
        "Mass flow rate into volume";
      parameter Medium.EnthalpyFlowRate H_flow_ext=5000
        "Enthalpy flow rate into volume";

      package Medium = Modelica.Media.IdealGases.SingleGases.N2 "Medium model";
      // initType=Medium.Choices.Init.SteadyState,

      Medium.BaseProperties medium(
        preferredMediumStates=true,
        p(start=1.e5, fixed=true),
        T(start=300, fixed=true));

      Real m(quantity=Medium.mediumName, start=1.0);
      SI.InternalEnergy U;

      Medium.SpecificHeatCapacity cp=Medium.specificHeatCapacityCp(medium.state);
      Medium.SpecificHeatCapacity cv=Medium.specificHeatCapacityCv(medium.state);
      Medium.IsentropicExponent gamma=Medium.isentropicExponent(medium.state);
      Medium.SpecificEntropy s=Medium.specificEntropy(medium.state);
      Medium.VelocityOfSound a=Medium.velocityOfSound(medium.state);
      Medium.MassFraction Xi[Medium.nXi] = Medium.massFraction(medium.state);

    equation

      m = medium.d*V;
      U = m*medium.u;

      // Mass balance
      der(m) = m_flow_ext;

      // Energy balance
      der(U) = H_flow_ext;
      annotation (Documentation(info="<html>

</html>"),experiment(StopTime=1));
    end IdealGasN2;

    //   package TestMedia "Test interfaces of media"
    //     extends Modelica.Icons.Package;
    //     model TemplateMedium "Test Interfaces.TemplateMedium"
    //       extends Modelica.Icons.Example;
    //       package Medium = Interfaces.TemplateMedium "Medium model";
    //       Medium.ThermodynamicState state;
    //
    //       Medium.DynamicViscosity eta=Medium.dynamicViscosity(state);
    //       Medium.ThermalConductivity lambda=Medium.thermalConductivity(state);
    //       Medium.SpecificEntropy s=Medium.specificEntropy(state);
    //       Medium.SpecificHeatCapacity cp=Medium.specificHeatCapacityCp(state);
    //       Medium.SpecificHeatCapacity cv=Medium.specificHeatCapacityCv(state);
    //       Medium.IsentropicExponent gamma=Medium.isentropicExponent(state);
    //       Medium.VelocityOfSound a=Medium.velocityOfSound(state);
    //     equation
    //       state.p = 1.0e5;
    //       state.T = 300 + time/1000;
    //       annotation (Documentation(info="<html>
    //
    // </html>"),
    //          experiment(StopTime=1.01));
    //     end TemplateMedium;
    //
    //     annotation (Documentation(info="<html>
    //
    // </html>"));
    //   end TestMedia;

    model IdealGasN2Mix "Test mixture gas IdealGas.SingleMedia.N2 medium model"
      extends Modelica.Icons.Example;

      parameter SI.Volume V=1 "Size of volume";
      parameter Medium.MassFlowRate m_flow_ext=0.01
        "Mass flow rate flowing into volume";
      parameter Medium.EnthalpyFlowRate H_flow_ext=5000
        "Enthalpy flow rate flowing into volume";

      package Medium = N2AsMix "Medium model";
      // initType=Medium.Choices.Init.SteadyState,

      Medium.BaseProperties medium(
        preferredMediumStates=true,
        p(start=1.e5, fixed=true),
        T(start=300, fixed=true));

      Real m(quantity=Medium.mediumName, start=1.0);
      SI.InternalEnergy U;

      Medium.SpecificHeatCapacity cp=Medium.specificHeatCapacityCp(medium.state);
      Medium.SpecificHeatCapacity cv=Medium.specificHeatCapacityCv(medium.state);
      Medium.IsentropicExponent gamma=Medium.isentropicExponent(medium.state);
      Medium.SpecificEntropy s=Medium.specificEntropy(medium.state);
      Medium.VelocityOfSound a=Medium.velocityOfSound(medium.state);
    equation

      m = medium.d*V;
      U = m*medium.u;
      medium.X = {1.0};
      // Mass balance
      der(m) = m_flow_ext;

      // Energy balance
      der(U) = H_flow_ext;
      annotation (Documentation(info="<html>

</html>"),experiment(StopTime=1));
    end IdealGasN2Mix;

    model DryAirNasa
      "Test dynamic viscosity and thermal conductivity of Dry Air"
      extends Modelica.Icons.Example;
      package Medium = Modelica.Media.Air.DryAirNasa "Medium model";
      parameter Medium.Temperature Tmin=200;
      parameter Medium.Temperature Tmax=3000;
      // 373;
      Medium.ThermodynamicState state;
      Medium.Temperature T;
      Medium.DynamicViscosity eta;
      Medium.ThermalConductivity lambda;
      Real eta_der(unit="Pa");
      Real lambda_der(unit="W/(m.K.s)");

      package Medium2 = Modelica.Media.IdealGases.SingleGases.N2 "Medium model";
      Medium2.ThermodynamicState state2;
      Medium2.DynamicViscosity eta2;
      Medium2.ThermalConductivity lambda2;
      Real eta2_der(unit="Pa");
      Real lambda2_der(unit="W/(m.K.s)");

    protected
      constant Real unitConv(unit="1/s") = 1.0;
    equation
      T = Tmin + min(time*unitConv, 1)*(Tmax - Tmin);
      state = Medium.setState_pTX(Medium.reference_p, T);
      eta = Medium.dynamicViscosity(state);
      lambda = Medium.thermalConductivity(state);
      eta_der = der(eta);
      lambda_der = der(lambda);

      state2 = Medium2.setState_pTX(
            Medium.reference_p,
            T,
            Medium2.reference_X);
      eta2 = Medium2.dynamicViscosity(state2);
      lambda2 = Medium2.thermalConductivity(state2);
      eta2_der = der(eta2);
      lambda2_der = der(lambda2);

      annotation (experiment(StopTime=1.01));
    end DryAirNasa;

    model MoistAir "Test Moist Air"
      extends Modelica.Icons.Example;
      package Medium = Modelica.Media.Air.MoistAir "Medium model";
      SI.Temperature T = 273.15 + 100;
      parameter SI.AbsolutePressure p0 = 2e5 "p at time 0";
      parameter SI.PressureSlope pRate = -1.5e5 "p's rate of change";
      SI.AbsolutePressure p = p0 + pRate*time;
      Medium.MassFraction X[Medium.nX] = {0.05,0.95};
      Medium.ThermodynamicState state = Medium.setState_pTX(p,T,X);
      SI.SpecificEntropy s = Medium.specificEntropy(state);
      SI.SpecificInternalEnergy u = Medium.specificInternalEnergy(state);
      SI.Temperature Tsat = Medium.saturationTemperature(p);
      Medium.MassFraction Xi[Medium.nXi] = Medium.massFraction(state);
      annotation (experiment(StopTime=1));
    end MoistAir;

    model R134a_setState_pTX "Test setState_pTX() of R134a at constant room temperature"
      extends Modelica.Icons.Example;
      replaceable package Medium = Modelica.Media.R134a.R134a_ph "Medium model";
      SI.Temperature T = 273.15 + 25;
      parameter SI.AbsolutePressure p0 = 10e5 "p at time 0";
      parameter SI.PressureSlope pRate = 20e5 "p's rate of change";
      SI.AbsolutePressure p = p0 + pRate*time;
      Medium.ThermodynamicState state = Medium.setState_pTX(p, T);
      SI.SpecificEnthalpy h = Medium.specificEnthalpy(state);
      SI.Density rho = Medium.density(state);
      SI.DynamicViscosity mu = Medium.dynamicViscosity(state);
      SI.SpecificHeatCapacity cp = Medium.specificHeatCapacityCp(state);
      SI.ThermalConductivity k = Medium.thermalConductivity(state);
      annotation (experiment(StopTime=1));
    end R134a_setState_pTX;

    model R134a_setState_pTX_high_T "Test setState_pTX() of R134a at constant high temperature"
      extends R134a_setState_pTX(T=400);
      annotation (experiment(StopTime=1));
    end R134a_setState_pTX_high_T;

    model R134a_setState_phX "Test setState_phX() of R134a"
      extends Modelica.Icons.Example;
      replaceable package Medium = Modelica.Media.R134a.R134a_ph "Medium model";
      SI.SpecificEnthalpy h = Medium.h_default;
      parameter SI.AbsolutePressure p0 = 10e5 "p at time 0";
      parameter SI.PressureSlope pRate = 20e5 "p's rate of change";
      SI.AbsolutePressure p = p0 + pRate*time;
      Medium.ThermodynamicState state = Medium.setState_phX(p, h);
      SI.Temperature T= Medium.temperature(state);
      SI.Density rho = Medium.density(state);
      SI.DynamicViscosity mu = Medium.dynamicViscosity(state);
      SI.SpecificHeatCapacity cp = Medium.specificHeatCapacityCp(state);
      SI.ThermalConductivity k = Medium.thermalConductivity(state);
      annotation (experiment(StopTime=1));
    end R134a_setState_phX;

    model R134a_pTX_phX_all "Tests the R134a_ph.setState_pTX and setState_phX functions for consistency over the entire valid range of p and T"
      extends Modelica.Icons.Example;
      package Medium = Modelica.Media.R134a.R134a_ph;
      parameter Medium.AbsolutePressure pmin = 0.0042e5;
      parameter Medium.AbsolutePressure pmax = 700e5;
      parameter Modelica.Units.SI.PerUnit p_increase = 2;
      parameter Medium.Temperature Tmin = 190;
      parameter Medium.Temperature Tmax = 450;

      Medium.ThermodynamicState state = Medium.setState_pTX(p,T);
      Medium.Temperature Tsat = Medium.saturationTemperature(p);
      Medium.AbsolutePressure p;
      Medium.Temperature T;
      Medium.Density d = Medium.density(state);
      Medium.SpecificEnthalpy h = Medium.specificEnthalpy(state);
      Medium.ThermalConductivity k = Medium.thermalConductivity(state);

      Medium.ThermodynamicState state_check = Medium.setState_phX(p,h);
      Medium.Temperature T_check = Medium.temperature(state_check);
      Medium.Density d_check = Medium.density(state_check);

      Modelica.Units.SI.PerUnit dT;
    initial equation
      p = pmin;
      T = Tmin;
      dT = 100*45;
    equation
      der(T) = dT;
      when abs(T - Tsat) < 2 then
        // skip region close to Tsat
        reinit(T, Tsat+4*sign(dT));
      end when;
      when {T > Tmax, T < Tmin} then
        dT = -pre(dT);
        p = pre(p)*p_increase;
      end when;
      assert(0.7e5 < h and h < 6e5, "Specific enthalpy h out of bounds");
      assert(d > 0 and d < 1600, "Density out of bounds");
      assert(abs(T - T_check)/T < 1e-3 and abs(d - d_check)/d < 1e-2, "Convergence error");
    annotation(
        experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-06, Interval = 0.0001));
    end R134a_pTX_phX_all;

    model WaterIF97_dewEnthalpy "Test dewEnthalpy of WaterIF97"
      extends Modelica.Icons.Example;
      replaceable package Medium = Modelica.Media.Water.StandardWater "Medium model";
      SI.Temperature T = 273.15 + 25;
      parameter SI.AbsolutePressure p0 = 10e5 "p at time 0";
      parameter SI.PressureSlope pRate = 20e5 "p's rate of change";
      SI.AbsolutePressure p = p0 + pRate*time;
      Medium.ThermodynamicState state = Medium.setState_pTX(p, T);
      SI.SpecificEnthalpy h_dew = Medium.dewEnthalpy(Medium.SaturationProperties(Tsat=Medium.saturationTemperature(state.p), psat=Medium.pressure(state)));
      annotation (experiment(StopTime=1));
    end WaterIF97_dewEnthalpy;
  annotation (Documentation(info="<html>

</html>"));
  end TestOnly;

  package TestsWithFluid
    "Library to test that all media models simulate and fulfill the expected structural properties"

    extends Modelica.Icons.ExamplesPackage;

    package Components
      "Functions, connectors and models needed for the media model tests"

      extends Modelica.Icons.Package;

      partial model PartialTestModel "Basic test model to test a medium"

        replaceable package Medium = Modelica.Media.Interfaces.PartialMedium
          "Medium model" annotation (choicesAllMatching=true);
        parameter SI.AbsolutePressure p_start=Medium.p_default
          "Initial value of pressure";
        parameter SI.Temperature T_start=Medium.T_default
          "Initial value of temperature";
        parameter SI.SpecificEnthalpy h_start=Medium.h_default
          "Initial value of specific enthalpy";
        parameter Real X_start[Medium.nX]=Medium.X_default
          "Initial value of mass fractions";

        /*
  parameter SI.AbsolutePressure p_start = 1.0e5 "Initial value of pressure";
  parameter SI.Temperature T_start = 300 "Initial value of temperature";
  parameter SI.Density h_start = 1 "Initial value of specific enthalpy";
  parameter Real X_start[Medium.nX] = Medium.reference_X
    "Initial value of mass fractions";
*/
        Modelica.Fluid.Vessels.ClosedVolume volume(
          redeclare package Medium = Medium,
          p_start=p_start,
          T_start=T_start,
          h_start=h_start,
          X_start=X_start,
          V=0.1,
          nPorts=2,
          use_portsData=false) annotation (Placement(transformation(extent={{-40,
                  0},{-20,20}})));
        Modelica.Fluid.Sources.MassFlowSource_T fixedMassFlowRate(
          redeclare package Medium = Medium,
          m_flow=1,
          T=system.T_ambient,
          nPorts=1) annotation (Placement(transformation(extent={{-80,-2},{-60,18}})));
        Modelica.Fluid.Sources.FixedBoundary ambient(
          redeclare package Medium = Medium,
          nPorts=1,
          p=p_start,
          T=T_start) annotation (Placement(transformation(extent={{60,0},{40,20}})));
        Modelica.Fluid.Pipes.StaticPipe shortPipe(
          redeclare package Medium = Medium,
          length=1,
          redeclare model FlowModel =
              Modelica.Fluid.Pipes.BaseClasses.FlowModels.NominalLaminarFlow (
                dp_nominal=1000000, m_flow_nominal=1.0),
          diameter=0.05) annotation (Placement(transformation(extent={{0,0},{20,
                  20}})));
        inner Modelica.Fluid.System system(energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyStateInitial)
          annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
      equation
        connect(fixedMassFlowRate.ports[1], volume.ports[1]) annotation (Line(
            points={{-60,8},{-46,8},{-46,0},{-32,0}}, color={0,127,255}));
        connect(volume.ports[2], shortPipe.port_a) annotation (Line(
            points={{-28,0},{-16,0},{-16,10},{0,10}}, color={0,127,255}));
        connect(shortPipe.port_b, ambient.ports[1]) annotation (Line(
            points={{20,10},{40,10}}, color={0,127,255}));
        annotation (Documentation(info="<html>

</html>"));
      end PartialTestModel;

      partial model PartialTestModel2
        "Slightly larger test model to test a medium"

        replaceable package Medium = Modelica.Media.Interfaces.PartialMedium
          "Medium model" annotation (choicesAllMatching=true);
        parameter SI.AbsolutePressure p_start=1.0e5
          "Initial value of pressure";
        parameter SI.Temperature T_start=300
          "Initial value of temperature";
        parameter SI.SpecificEnthalpy h_start=1
          "Initial value of specific enthalpy";
        parameter Real X_start[Medium.nX]=Medium.reference_X
          "Initial value of mass fractions";
        Modelica.Fluid.Vessels.ClosedVolume volume(
          redeclare package Medium = Medium,
          p_start=p_start,
          T_start=T_start,
          h_start=h_start,
          X_start=X_start,
          V=0.1,
          nPorts=2,
          use_portsData=false) annotation (Placement(transformation(extent={{-60,
                  20},{-40,40}})));
        Modelica.Fluid.Sources.MassFlowSource_T fixedMassFlowRate(
          redeclare package Medium = Medium,
          m_flow=1,
          T=system.T_ambient,
          nPorts=1) annotation (Placement(transformation(extent={{-100,0},{-80,
                  20}})));
        Modelica.Fluid.Sources.FixedBoundary ambient(
          redeclare package Medium = Medium,
          p=p_start,
          T=T_start,
          nPorts=1) annotation (Placement(transformation(extent={{60,0},{40,20}})));
        Modelica.Fluid.Pipes.StaticPipe shortPipe(
          redeclare package Medium = Medium,
          length=1,
          redeclare model FlowModel =
              Modelica.Fluid.Pipes.BaseClasses.FlowModels.NominalLaminarFlow (
                dp_nominal=1000000000, m_flow_nominal=1.0),
          diameter=0.05) annotation (Placement(transformation(extent={{-42,0},{
                  -22,20}})));
        inner Modelica.Fluid.System system(energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyStateInitial)
          annotation (Placement(transformation(extent={{-100,78},{-80,98}})));
        Modelica.Fluid.Pipes.StaticPipe shortPipe1(
          redeclare package Medium = Medium,
          length=1,
          redeclare model FlowModel =
              Modelica.Fluid.Pipes.BaseClasses.FlowModels.NominalLaminarFlow (
                dp_nominal=1000000000, m_flow_nominal=1.0),
          diameter=0.05) annotation (Placement(transformation(extent={{0,0},{20,
                  20}})));
        Modelica.Fluid.Vessels.ClosedVolume volume1(
          redeclare package Medium = Medium,
          p_start=p_start,
          T_start=T_start,
          h_start=h_start,
          X_start=X_start,
          V=0.1,
          nPorts=2,
          use_portsData=false) annotation (Placement(transformation(extent={{-18,
                  20},{2,40}})));
      equation
        connect(fixedMassFlowRate.ports[1], volume.ports[1]) annotation (Line(
            points={{-80,10},{-50,10},{-50,20},{-52,20}}, color={0,127,255}));
        connect(volume.ports[2], shortPipe.port_a) annotation (Line(
            points={{-48,20},{-50,20},{-50,10},{-42,10}}, color={0,127,255}));
        connect(shortPipe1.port_a, volume1.ports[1]) annotation (Line(
            points={{0,10},{-8,10},{-8,20},{-10,20}}, color={0,127,255}));
        connect(shortPipe.port_b, volume1.ports[2]) annotation (Line(
            points={{-22,10},{-8,10},{-8,20},{-6,20}}, color={0,127,255}));
        connect(shortPipe1.port_b, ambient.ports[1]) annotation (Line(
            points={{20,10},{40,10}}, color={0,127,255}));
        annotation (Documentation(info="<html>

</html>"));
      end PartialTestModel2;
      annotation (Documentation(info="<html>

</html>"));
    end Components;

    package MediaTestModels "Test models to test all media"
      extends Modelica.Icons.ExamplesPackage;
      package Air "Test models of library Modelica.Media.Air"
        extends Modelica.Icons.ExamplesPackage;
        model SimpleAir "Test Modelica.Media.Air.SimpleAir"
          extends Modelica.Icons.Example;
          extends ModelicaTest.Media.TestsWithFluid.Components.PartialTestModel(
              redeclare package Medium = Modelica.Media.Air.SimpleAir);
          annotation (Documentation(info="<html>

</html>"), experiment(StopTime=1.01));
        end SimpleAir;

        model DryAirNasa "Test Modelica.Media.Air.DryAirNasa"
          extends Modelica.Icons.Example;
          extends ModelicaTest.Media.TestsWithFluid.Components.PartialTestModel(
              redeclare package Medium = Modelica.Media.Air.DryAirNasa);
          annotation (Documentation(info="<html>

</html>"), experiment(StopTime=1.01));
        end DryAirNasa;

        model MoistAir "Test Modelica.Media.Air.MoistAir"
          extends Modelica.Icons.Example;
          extends ModelicaTest.Media.TestsWithFluid.Components.PartialTestModel(
              redeclare package Medium = Modelica.Media.Air.MoistAir);
          annotation (Documentation(info="<html>

</html>"), experiment(StopTime=1.01));
        end MoistAir;
        annotation (Documentation(info="<html>

</html>"));
      end Air;

      package IdealGases "Test models of library Modelica.Media.IdealGases"
        extends Modelica.Icons.ExamplesPackage;

        model Air "Test single gas Modelica.Media.IdealGases.SingleGases.Air"
          extends Modelica.Icons.Example;
          extends ModelicaTest.Media.TestsWithFluid.Components.PartialTestModel(
              redeclare package Medium = Modelica.Media.Air.DryAirNasa);
          annotation (Documentation(info="<html>

</html>"), experiment(StopTime=1.01));
        end Air;

        model Nitrogen
          "Test single gas Modelica.Media.IdealGases.SingleGases.N2"
          extends Modelica.Icons.Example;
          extends ModelicaTest.Media.TestsWithFluid.Components.PartialTestModel(
              redeclare package Medium =
                Modelica.Media.IdealGases.SingleGases.N2);
          annotation (Documentation(info="<html>

</html>"), experiment(StopTime=1.01));
        end Nitrogen;

        model SimpleNaturalGas
          "Test mixture gas Modelica.Media.IdealGases.MixtureGases.SimpleNaturalGas"
          extends Modelica.Icons.Example;
          extends ModelicaTest.Media.TestsWithFluid.Components.PartialTestModel(
              redeclare package Medium =
                Modelica.Media.IdealGases.MixtureGases.SimpleNaturalGas);
          annotation (Documentation(info="<html>

</html>"), experiment(StopTime=1.01));
        end SimpleNaturalGas;

        model SimpleNaturalGasFixedComposition
          "Test mixture gas Modelica.Media.IdealGases.MixtureGases.SimpleNaturalGas"
          extends Modelica.Icons.Example;
          extends ModelicaTest.Media.TestsWithFluid.Components.PartialTestModel(
              redeclare package Medium =
                Modelica.Media.IdealGases.MixtureGases.SimpleNaturalGasFixedComposition);
          annotation (experiment(StopTime=1.01));
        end SimpleNaturalGasFixedComposition;
      end IdealGases;

      package Incompressible
        "Test models of library Modelica.Media.Incompressible"
        extends Modelica.Icons.ExamplesPackage;
        model Glycol47 "Test Modelica.Media.Incompressible.Examples.Glycol47"
          extends Modelica.Icons.Example;
          extends ModelicaTest.Media.TestsWithFluid.Components.PartialTestModel(
              redeclare package Medium =
                Modelica.Media.Incompressible.Examples.Glycol47 (final
                  singleState=true, final enthalpyOfT=true));
          annotation (Documentation(info="<html>

</html>"), experiment(StopTime=1.01));
        end Glycol47;

        model Essotherm650
          "Test Modelica.Media.Incompressible.Examples.Essotherm650"
          extends Modelica.Icons.Example;
          extends ModelicaTest.Media.TestsWithFluid.Components.PartialTestModel(
              redeclare package Medium =
                Modelica.Media.Incompressible.Examples.Essotherm650);
          annotation (Documentation(info="<html>

</html>"), experiment(StopTime=1.01));
        end Essotherm650;
        annotation (Documentation(info="<html>

</html>"));
      end Incompressible;

      package Water "Test models of library Modelica.Media.Water"
        extends Modelica.Icons.ExamplesPackage;
        model ConstantPropertyLiquidWater
          "Test Modelica.Media.Water.ConstantPropertyLiquidWater"
          extends Modelica.Icons.Example;
          extends ModelicaTest.Media.TestsWithFluid.Components.PartialTestModel(
              redeclare package Medium =
                Modelica.Media.Water.ConstantPropertyLiquidWater);
          annotation (Documentation(info="<html>

</html>"), experiment(StopTime=1.01));
        end ConstantPropertyLiquidWater;

        model IdealSteam "Test Modelica.Media.Water.IdealSteam"
          extends Modelica.Icons.Example;
          extends ModelicaTest.Media.TestsWithFluid.Components.PartialTestModel(
              redeclare package Medium = Modelica.Media.Water.IdealSteam);
          annotation (Documentation(info="<html>

</html>"), experiment(StopTime=1.01));
        end IdealSteam;

        model WaterIF97OnePhase_ph
          "Test Modelica.Media.Water.WaterIF97OnePhase_ph"
          extends Modelica.Icons.Example;
          extends ModelicaTest.Media.TestsWithFluid.Components.PartialTestModel(
            redeclare package Medium =
                Modelica.Media.Water.WaterIF97OnePhase_ph,
            system(energyDynamics=Modelica.Fluid.Types.Dynamics.DynamicFreeInitial),
            volume(medium(h(fixed=true), p(fixed=true))));

          annotation (Documentation(info="<html>

</html>"), experiment(StopTime=1.01));
        end WaterIF97OnePhase_ph;

        model WaterIF97_pT "Test Modelica.Media.Water.WaterIF97_pT"
          extends Modelica.Icons.Example;
          extends ModelicaTest.Media.TestsWithFluid.Components.PartialTestModel(
            redeclare package Medium = Modelica.Media.Water.WaterIF97_pT,
            system(energyDynamics=Modelica.Fluid.Types.Dynamics.DynamicFreeInitial),
            volume(medium(T(fixed=true), p(fixed=true))));

          annotation (Documentation(info="<html>

</html>"), experiment(StopTime=1.01));
        end WaterIF97_pT;

        model WaterIF97_ph "Test Modelica.Media.Water.WaterIF97_ph"
          extends Modelica.Icons.Example;
          extends ModelicaTest.Media.TestsWithFluid.Components.PartialTestModel(
            redeclare package Medium = Modelica.Media.Water.WaterIF97_ph,
            system(energyDynamics=Modelica.Fluid.Types.Dynamics.DynamicFreeInitial),
            volume(medium(h(fixed=true), p(fixed=true))));

          annotation (Documentation(info="<html>

</html>"), experiment(StopTime=1.01));
        end WaterIF97_ph;
        /*
        model WaterIF97_dT "Test Modelica.Media.Water.WaterIF97_dT"
          extends Modelica.Media.Examples.Utilities.PartialTestModel(
             redeclare package Medium = Modelica.Media.Water.WaterIF97_dT,
              ambient(use_p_ambient=false, d_ambient=996.557));
        end WaterIF97_dT;
*/
        annotation (Documentation(info="<html>

</html>"));
      end Water;

      package LinearFluid
        "Test models of library Modelica.Media.CompressibleLiquids"
        extends Modelica.Icons.ExamplesPackage;
        model LinearColdWater
          "Test linear cold water"
          extends Modelica.Icons.Example;
          extends ModelicaTest.Media.TestsWithFluid.Components.PartialTestModel(
              redeclare package Medium =
                Modelica.Media.CompressibleLiquids.LinearColdWater);
          annotation (Documentation(info="<html>

</html>"), experiment(StopTime=1.01));
        end LinearColdWater;

        model LinearWater_pT
          "Test liquid linear water"
          extends Modelica.Icons.Example;
          extends ModelicaTest.Media.TestsWithFluid.Components.PartialTestModel(
              redeclare package Medium =
                Modelica.Media.CompressibleLiquids.LinearWater_pT_Ambient);
          annotation (Documentation(info="<html>

</html>"), experiment(StopTime=1.01));
        end LinearWater_pT;
        annotation (Documentation(info="<html>

</html>"));
      end LinearFluid;
      annotation (Documentation(info="<html>

</html>"));
    end MediaTestModels;
    annotation (Documentation(info="<html>

</html>"));
  end TestsWithFluid;

  model MediaCommonFunctions "Test of property conversion functions and records of Modelica.Media.Common"
    extends Modelica.Icons.Example;
    import SI = Modelica.Units.SI;
    import Modelica.Media.Common;
    import IF97 = Modelica.Media.Water.IF97_Utilities.BaseIF97;
    package Ice = Modelica.Media.Air.ReferenceMoistAir.Utilities.Ice09_Utilities "Ice equation of state";

    SI.Pressure p=1e5 + 9e5*time "Pressure ramp from 1 bar to 10 bar";
    SI.Temperature T=300 + 50*time "Temperature of compressed liquid water";

    // Bridgman's tables from the region 1 Gibbs function, checked against IF97_Utilities
    Common.GibbsDerivs g=IF97.Basic.g1(p, T) "Gibbs function derivatives of liquid water";
    SI.SpecificVolume v "Specific volume";
    SI.Pressure p_g "Pressure from Bridgman's tables";
    SI.Temperature T_g "Temperature from Bridgman's tables";
    SI.SpecificEntropy s "Specific entropy";
    SI.SpecificHeatCapacity cp "Specific heat capacity at constant pressure";
    Common.IsobaricVolumeExpansionCoefficient alpha "Isobaric volume expansion coefficient";
    Common.IsothermalCompressibility gamma "Isothermal compressibility";
    Real vError=v*Modelica.Media.Water.IF97_Utilities.rho_pT(p, T) - 1 "Must be zero";
    Real cpError=cp/Modelica.Media.Water.IF97_Utilities.cp_pT(p, T) - 1 "Must be zero";

    // Bridgman's tables from the region 3 Helmholtz function (near-critical water)
    Common.HelmholtzDerivs f=IF97.Basic.f3(400 + 100*time, 660) "Helmholtz function derivatives in region 3";
    SI.SpecificVolume v3 "Specific volume in region 3";
    SI.Pressure p3 "Pressure in region 3";
    SI.Temperature T3 "Temperature in region 3";
    SI.SpecificEntropy s3 "Specific entropy in region 3";
    SI.SpecificHeatCapacity cp3 "Specific heat capacity in region 3";
    Common.IsobaricVolumeExpansionCoefficient alpha3 "Isobaric volume expansion coefficient in region 3";
    Common.IsothermalCompressibility gamma3 "Isothermal compressibility in region 3";

    // phase boundary properties: Common and ThermoFluidSpecial versions must agree
    Common.PhaseBoundaryProperties boundary=Common.gibbsToBoundaryProps(g) "Common.gibbsToBoundaryProps";
    Common.PhaseBoundaryProperties boundarySpecial=Common.ThermoFluidSpecial.gibbsToBoundaryProps(g)
      "ThermoFluidSpecial.gibbsToBoundaryProps";
    Real boundaryDiff=abs(boundary.d - boundarySpecial.d) + abs(boundary.h - boundarySpecial.h)
      + abs(boundary.cv - boundarySpecial.cv) "Must be zero";

    // two-phase mixture at saturation
    SI.Temperature Tsat=IF97.Basic.tsat(p) "Saturation temperature";
    Common.PhaseBoundaryProperties liq=Common.gibbsToBoundaryProps(IF97.Basic.g1(p, Tsat)) "Saturated liquid";
    Common.PhaseBoundaryProperties vap=Common.gibbsToBoundaryProps(IF97.Basic.g2(p, Tsat)) "Saturated vapour";
    SI.MassFraction x=0.5 "Vapour mass fraction";
    SI.SpecificHeatCapacity cv2ph "Isochoric specific heat capacity of the two-phase mixture";
    Real dpT(unit="Pa/K") "Slope of the vapour pressure curve (Clausius-Clapeyron)";
    Real dpTRelDiff=dpT*IF97.Basic.dtsatofp(p) - 1
      "Relative difference to the IF97 saturation line (small, not zero)";
    Common.SaturationProperties sat=Common.SaturationProperties(
      T=Tsat, d=1/(x/vap.d + (1 - x)/liq.d), p=p, u=liq.u + x*(vap.u - liq.u),
      h=liq.h + x*(vap.h - liq.h), s=liq.s + x*(vap.s - liq.s), cp=liq.cp, cv=cv2ph,
      R_s=IF97.data.RH2O, kappa=1.3, dpT=dpT, x=x, liq=liq, vap=vap) "Two-phase state";
    Common.ThermoFluidSpecial.ThermoProperties_ph pro_ph=Common.ThermoFluidSpecial.TwoPhaseToProps_ph(sat)
      "Properties for (p, h) states";
    Common.ThermoFluidSpecial.ThermoProperties_dT pro_dT=Common.ThermoFluidSpecial.TwoPhaseToProps_dT(sat)
      "Properties for (d, T) states";

    // Newton derivatives from the Gibbs function of ice
    Common.GibbsDerivs2 gIce=Ice.Basic.Gibbs(p, 250 + 20*time) "Gibbs function derivatives of ice";
    Common.NewtonDerivatives_ph nderivs_ph=Common.Gibbs2_ph(gIce) "Derivatives for (p, h) iterations";
    Common.NewtonDerivatives_dT nderivs_dT=Common.Gibbs2_dT(gIce) "Derivatives for (d, T) iterations";
    Common.NewtonDerivatives_ps nderivs_ps=Common.Gibbs2_ps(gIce) "Derivatives for (p, s) iterations";

    // records without a producing function in the library
    Common.SaturationBoundaryProperties satBoundary=Common.SaturationBoundaryProperties(
      T=Tsat, dl=IF97.Regions.rhol_p(p), dv=IF97.Regions.rhov_p(p), hl=IF97.Regions.hl_p(p),
      hv=IF97.Regions.hv_p(p), dTp=IF97.Basic.dtsatofp(p), ddldp=IF97.Regions.drhol_dp(p),
      ddvdp=IF97.Regions.drhov_dp(p), dhldp=IF97.Regions.dhl_dp(p), dhvdp=IF97.Regions.dhv_dp(p), x=x)
      "Saturation boundary properties";
    Common.TwoPhaseTransportProps twoPhaseTransport=Common.TwoPhaseTransportProps(
      d_vap=vap.d, d_liq=liq.d,
      eta_vap=IF97.Transport.visc_dTp(vap.d, Tsat, p, phase=1),
      eta_liq=IF97.Transport.visc_dTp(liq.d, Tsat, p, phase=1),
      lam_vap=IF97.Transport.cond_dTp(vap.d, Tsat, p, phase=1),
      lam_liq=IF97.Transport.cond_dTp(liq.d, Tsat, p, phase=1),
      cp_vap=vap.cp, cp_liq=liq.cp, x=x) "Transport properties of the two-phase mixture";
    Common.ThermoFluidSpecial.TransportProps transport=Common.ThermoFluidSpecial.TransportProps(
      eta=IF97.Transport.visc_dTp(1/v, T, p), lam=IF97.Transport.cond_dTp(1/v, T, p))
      "Transport properties of the compressed liquid";
    Common.ThermoFluidSpecial.FixedIGProperties igProps(
      nspecies=2,
      MM={Modelica.Media.IdealGases.Common.SingleGasesData.N2.MM, Modelica.Media.IdealGases.Common.SingleGasesData.O2.MM},
      invMM={1/Modelica.Media.IdealGases.Common.SingleGasesData.N2.MM, 1/Modelica.Media.IdealGases.Common.SingleGasesData.O2.MM},
      R_s={Modelica.Media.IdealGases.Common.SingleGasesData.N2.R_s, Modelica.Media.IdealGases.Common.SingleGasesData.O2.R_s},
      Hf={Modelica.Media.IdealGases.Common.SingleGasesData.N2.Hf, Modelica.Media.IdealGases.Common.SingleGasesData.O2.Hf},
      H0={Modelica.Media.IdealGases.Common.SingleGasesData.N2.H0, Modelica.Media.IdealGases.Common.SingleGasesData.O2.H0})
      "Fixed ideal gas properties of N2 and O2";
  equation
    (v, p_g, T_g, s, cp, alpha, gamma) = Common.gibbsToBridgmansTables(g);
    (v3, p3, T3, s3, cp3, alpha3, gamma3) = Common.helmholtzToBridgmansTables(f);
    (cv2ph, dpT) = Common.cvdpT2Phase(liq, vap, x, Tsat, p);
    annotation (experiment(StopTime=1.0), Documentation(info="<html>
<p>
Exercises the property conversion functions of
<a href=\"modelica://Modelica.Media.Common\">Modelica.Media.Common</a>
with inputs from the IF97 water functions and the ice equation of state of
ReferenceMoistAir, while pressure and temperature ramp.
</p>
<ul>
<li>gibbsToBridgmansTables (liquid, region 1): <code>vError</code> and <code>cpError</code>
    compare with IF97_Utilities.rho_pT and cp_pT and must be zero.</li>
<li>helmholtzToBridgmansTables: near-critical water (region 3).</li>
<li>gibbsToBoundaryProps and ThermoFluidSpecial.gibbsToBoundaryProps must agree
    (<code>boundaryDiff</code> = 0).</li>
<li>cvdpT2Phase: the Clausius-Clapeyron slope <code>dpT</code> must agree with the slope of
    the IF97 saturation line up to the IF97 consistency error (<code>dpTRelDiff</code>).</li>
<li>ThermoFluidSpecial.TwoPhaseToProps_ph/_dT: a 50 % two-phase state.</li>
<li>Gibbs2_ph, Gibbs2_dT, Gibbs2_ps: derivatives of the ice Gibbs function.</li>
<li>The records SaturationBoundaryProperties, TwoPhaseTransportProps,
    ThermoFluidSpecial.TransportProps and ThermoFluidSpecial.FixedIGProperties are not
    produced by any function of the library. They are filled here with consistent data.</li>
</ul>
</html>"));
  end MediaCommonFunctions;
end Media;
