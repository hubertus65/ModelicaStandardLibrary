# Test coverage after branch `coverage-improvement`

Second report on the coverage of library `Modelica` by `ModelicaTest`, after the new test models of branch
`coverage-improvement`. The baseline is [TestCoverageReport.md](TestCoverageReport.md), with the same scope,
definitions and analysis tool (static reference analysis; see *Method* there).

## 1. Summary

| | Before | After |
|---|---:|---:|
| Analyzed (non-partial) classes | 3560 | 3560 |
| Directly used by `ModelicaTest` | 782 (22.0 %) | 1598 (44.9 %) |
| Directly or indirectly used by `ModelicaTest` | 2432 (68.3 %) | **3464 (97.3 %)** |
| Not used by `ModelicaTest` | 1128 (31.7 %) | **96 (2.7 %)** |
| … thereof neither tested nor used in any MSL example | 615 (17.3 %) | **71 (2.0 %)** |
| Partial classes covered via `ModelicaTest` (of 344) | 259 (75.3 %) | 316 (91.9 %) |
| Partial classes not covered at all | 32 | 26 |

None of the 71 classes that are still neither tested nor used in an example needs a new test.
[Section 4](#4-remaining-gaps) sorts them by reason: some are already run by the new tests without the static
analysis seeing it, some are excluded deliberately, and the rest are orphans that no MSL class uses.

## 2. Coverage by sub-library

| Sub-library | Classes | Used by ModelicaTest before | after | Still not used | … thereof not in examples |
|---|---:|---:|---:|---:|---:|
| `Modelica.Blocks` | 294 | 193 (65.6 %) | 276 (93.9 %) | 18 | 18 |
| `Modelica.Clocked` | 88 | 0 (0.0 %) | 87 (98.9 %) | 1 | 0 |
| `Modelica.ComplexBlocks` | 38 | 6 (15.8 %) | 38 (100.0 %) | 0 | 0 |
| `Modelica.ComplexMath` | 30 | 21 (70.0 %) | 30 (100.0 %) | 0 | 0 |
| `Modelica.Electrical` | 765 | 281 (36.7 %) | 750 (98.0 %) | 15 | 13 |
| `Modelica.Fluid` | 336 | 306 (91.1 %) | 326 (97.0 %) | 10 | 10 |
| `Modelica.Magnetic` | 213 | 126 (59.2 %) | 210 (98.6 %) | 3 | 1 |
| `Modelica.Math` | 187 | 134 (71.7 %) | 184 (98.4 %) | 3 | 3 |
| `Modelica.Mechanics` | 336 | 232 (69.0 %) | 312 (92.9 %) | 24 | 11 |
| `Modelica.Media` | 1049 | 1023 (97.5 %) | 1037 (98.9 %) | 12 | 12 |
| `Modelica.StateGraph` | 25 | 0 (0.0 %) | 25 (100.0 %) | 0 | 0 |
| `Modelica.Thermal` | 64 | 15 (23.4 %) | 57 (89.1 %) | 7 | 0 |
| `Modelica.Units` | 58 | 35 (60.3 %) | 58 (100.0 %) | 0 | 0 |
| `Modelica.Utilities` | 77 | 60 (77.9 %) | 74 (96.1 %) | 3 | 3 |

By class kind, coverage is now 96.7 % for functions, 97.6 % for models, 99.7 % for blocks, 96.5 % for records and
97.0 % for connectors.

## 3. New test models

One commit per sub-library. Each test model has its comparison signals in
`ModelicaTest/Resources/Reference/ModelicaTest/<Package>/<Model>/comparisonSignals.txt`. Each sub-library has a
ModCheck case list, baselines and an HTML report in `ReviewResults/<SubLibrary>/` (see
[ReviewResults/README.md](ReviewResults/README.md)). The baselines are preliminary. They were simulated with
Modelon Impact (MSL 4.1.0, CVode, rtol 1e-6) and checked against a second run at 100 x rtol. `Clocked` used
OpenModelica 1.27.1 with the MSL of this repository.

| Sub-library | Commit | Test models (ModCheck cases) | thereof on OpenModelica | Disabled | Checks passed |
|---|---|---:|---:|---:|---|
| Blocks | 53588f97d | 14 | 0 | 0 | 108/108 |
| ComplexBlocks | 1db057b7f + follow-up | 5 | 2 | 0 | 57/57 + 20/20 |
| ComplexMath | b36010bae | 1 | 0 | 0 | 18/18 |
| StateGraph | 8bfce1560 | 2 | 0 | 0 | 14/14 |
| Utilities | 06a629f75 | 2 | 0 | 0 | 2/2 |
| Units | 1e03a2119 | 1 | 0 | 0 | 14/14 |
| Thermal | 192b69aac | 4 | 0 | 0 | 60/60 |
| Math | 1f73ec962 + follow-up | 7 | 1 | 2 | 14/14 + 1/1 |
| Media | 87fb9c70d | 1 | 0 | 0 | 20/20 |
| Fluid | ab530da30 | 7 | 0 | 0 | 40/40 |
| Clocked | 38c9e4e4a + follow-up | 6 | 6 | 0 | 73/73 |
| Magnetic | 18248f5f8 | 7 | 0 | 0 | 116/116 |
| Mechanics | 9c2e90316 + follow-up | 8 | 1 | 1 | 49/49 + 1/1 |
| Electrical | ce660cbb4 | 64 | 2 | 0 | 422/422 + 6/6 |
| **Total** | | **129** | **12** | **3** | |

Cases that Impact cannot run are on OpenModelica 1.27.1 with the MSL of this repository. There are three
reasons:

- All of `Clocked` runs there, because Impact's MSL has no Clocked library.
- Two cases use classes that are new in MSL 4.2.
- Four cases use MSL 4.1.0 code that OCT fails on. This branch fixes that code; see section 5.

ModCheck runs one source per case list, so these cases are in a second list per sub-library,
`ReviewResults/<SubLibrary>/OpenModelica/`, with its own baselines and report.

The tests follow the patterns and layouts of the existing `ModelicaTest` models of each sub-library. Most are
small circuits or systems that exercise several untested classes at once, with results that can be checked
by hand: analytic values, conservation laws, identities between equivalent circuits. Where an MSL example
already used a class in a way ModelicaTest lacked, the test is a short-class variant of that example with a
different parameterization, e.g. `model DiodeBridge2Pulse_60Hz = Modelica.Electrical.PowerConverters.Examples....(f=60)`.

**Check tolerance caps.** ModCheck checks each baseline (rtol 1e-6) against a second run at 100 x rtol. In
15 cases that run deviates for numerical reasons rather than model errors, so the check rtol is capped by
`max_rtol`. Each case list states the reason next to the cap:

- `Blocks.Statistics` and 10 Electrical cases are capped at **1e-5**. These are integrated phases of
  variable-frequency sources, switching instants of BJT/PWM circuits, nonlinear Spice3 stages and a microvolt
  op-amp input. All of them converge at 1e-5.
- The two Electrical CC/CV battery variants are capped at **1e-5**. At 1e-4 the SOC overshoots and trips the MSL
  assert "Battery overcharged!".
- `SuperCapDischargeCharge_400A` and `Rectifier_230V` are capped at **1e-6**. Their MSL comparison signals are
  ill-conditioned: one is the small final residual of an energy integral that swings to -5.4e5, the other is
  the mean of a nearly-zero current. They pass only at the reference tolerance.

In `DiodeCenterTapmPulse_5Phase`, the instantaneous `resistor.i` jumps by about 54 A at commutation events.
ModCheck's funnel comparison reports a deviation there (0.22) even when the check run is identical to the
baseline point by point. The test therefore compares the mean and RMS values only, as the MSL example does.
This looks like a ModCheck limitation with event discontinuities.

Only three cases are disabled. Each tests an MSL bug and fails by design until the bug is fixed (section 5).
Every case that failed because of a tool problem was reworked until it runs, either with a different but
equivalent test formulation or with an MSL fix (section 6).

## 4. Remaining gaps

The 96 classes still not used by `ModelicaTest`, by reason (42 + 12 + 17 + 25):

### 4.1 Run by the new tests, but invisible to the static analysis (42)

- **Derivative functions** that are referenced only from `derivative` or `inverse` annotations. The tests use
  `der()` of the calling expressions (or flow reversal), so a tool that differentiates symbolically calls
  them. The reference analysis does not follow annotations:
  - `Blocks.Tables.Internal.getDer*` (9) and `Blocks.Interfaces.Adaptors.Functions.state*der*` (3)
  - `Fluid.Utilities.regRoot_der`, `Fluid.Dissipation.Utilities.Functions.General.SmoothPower_der` and
    `Stepsmoother_der`
  - `Fluid.Fittings.BaseClasses.{CurvedBend, EdgedBend, ThickEdgedOrifice, VolumeFlowRate}.pressureLoss`
    (`inverse` annotations)
  - `Math.Polynomials.*_der` (3)
  - `Mechanics.MultiBody.Frames.Internal.*_der` and `maxWithoutEvent_d/_dd` (5)
  - `Mechanics.{Rotational, Translational}.Sources.Move.position_der/_der2` and
    `AngleToTorqueAdaptor.Move_w.position_der` (5)
- **Implicitly called functions:**
  - the external-object `constructor`/`destructor` of `Blocks.Types.ExternalCombiTable1D/2D/TimeTable` (6)
  - `Electrical.QuasiStatic.Types.Reference.equalityConstraint`, which is called by the tool for
    overdetermined connectors
  - `Mechanics.MultiBody.World.gravityAcceleration` (replaceable function, called through `world`)
  - `Electrical.Digital.Interfaces.MemoryBase.getMemory/address` (local functions called by unqualified name)

### 4.2 Deliberately not tested (12)

- `Media.Interfaces.TemplateMedium.*` (9): a copy template with placeholder values, not a medium.
- `Utilities.System.command` and `System.exit`: shell access and process termination have no place in a
  regression test.
- `Utilities.Internal.PartialModelicaServices.Animation.PartialSurface.surfaceCharacteristic`: a placeholder
  that `ModelicaServices` replaces.

### 4.3 Not used anywhere in the MSL (orphans, 17)

These classes are not referenced by any MSL class. They can be tested only by declaring them in a test model,
which adds little. They are better reviewed for removal or for wiring into the library:

- `Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCCE`. Together with `ThermalAmbientDCCE` and
  `ThermalPortDCCE` (now covered by the test `BrushRampedRheostatAndThermalAmbientDCCE`), it belongs to a DC
  compound-excited machine that the library does not contain.
- `Electrical.Spice3.Internal`: `Diode.DiodeModelLineVariables`, `diodeCalcAdditionalValues`,
  `diodeModelLineInitEquations`, `Mos2.Mos2ModelLineVariables`, `mos2RenameParametersDev`,
  `Mosfet.MosfetModelLine`, `getNumberOfElectricalPins`, `mosfetModelLineInitEquations`,
  `SpiceRoot.SpiceRoot`. These are leftover helpers of the Spice3 model-line implementation that nothing calls.
- `Media.Common.BridgmansTables`, `ThermoFluidSpecial.ThermoBaseVars`, `ThermoFluidSpecial.ThermoProperties`
- `Fluid.Interfaces.FluidPorts_a`, `Fluid.Interfaces.HeatPorts_b`, and the default
  `Fluid.Pipes.BaseClasses.PartialStraightPipe.FlowModel`, which every pipe redeclares
- `Magnetic.QuasiStatic.FluxTubes.Interfaces.MagneticPort`: unused because `QuasiStatic.FluxTubes.Interfaces`
  `PositiveMagneticPort`/`NegativeMagneticPort` extend `QuasiStatic.FundamentalWave.Interfaces.MagneticPort`
  instead (the two connectors are identical). This is probably a copy-paste slip (section 5).

Unused before this work and now covered by a test, but still not used by any MSL class:
`Electrical.Machines.Losses.InductionMachines.Brush`, `Electrical.Polyphase.Basic.RampedRheostat`,
`Electrical.Machines.Utilities.ParameterRecords.SM_ElectricalExcitedData`.

### 4.4 Used only by MSL examples (25)

Classes such as `MultiBody.Joints.Constraints.*`, `RollingWheel(Set)`, `Translational.Sensors.PositionSensor`
and `FluidHeatFlow.Components.Cylinder` are reachable from `Modelica.*.Examples` only. The MSL regression tests
run them already, so no ModelicaTest test was added.

### 4.5 Partial classes

26 of 344 partial classes are not covered. 25 have no subclass anywhere in the repository; they are interfaces
offered to users (e.g. `Blocks.Interfaces.MVcontrol`, `MultiBody.Interfaces.PartialForce`,
`Translational.Interfaces.PartialTwoFlangesAndSupport`). The remaining one,
`Utilities.Internal.PartialModelicaServices.System.exitBase`, is the base of `System.exit` (4.2).

## 5. MSL issues found by the new tests

### 5.1 Fixed: pull requests to modelica/ModelicaStandardLibrary

Each fix keeps the results of the tool that already worked: bit-identical, or within 4.3e-13 for #4846. Each
makes the code work in the tool that failed. All are also cherry-picked onto this branch.

| PR | Class | Problem |
|---|---|---|
| [#4845](https://github.com/modelica/ModelicaStandardLibrary/pull/4845) | `Electrical.QuasiStatic.Polyphase.Blocks.FromSymmetricalComponents` | `arg_u[m](displayUnit="deg")`, `arg_y[m](...)` lack `each`; OpenModelica rejects the block |
| [#4846](https://github.com/modelica/ModelicaStandardLibrary/pull/4846) | `Electrical.QuasiStatic.Polyphase.Basic.MutualInductor` | `sum` over time-varying Complex crashes OCT (StackOverflowError); now real-valued scalar products |
| [#4847](https://github.com/modelica/ModelicaStandardLibrary/pull/4847) | `ComplexBlocks.ComplexMath.Feedback/Gain/Division/Add3`, `Sources.ComplexStep` | inline Complex if-expressions in the output equation; OCT generates C code that does not compile. Now intermediate variables, as `Add`/`Product` already do |
| [#4848](https://github.com/modelica/ModelicaStandardLibrary/pull/4848) | `Mechanics.MultiBody.Frames.smallRotation`, `TransformationMatrices.smallRotation` | if-expression with branches of different sizes and a non-parameter condition (not allowed by the specification); OCT rejects it. Now an if-statement |
| [#4849](https://github.com/modelica/ModelicaStandardLibrary/pull/4849) | `Clocked.IntegerSignals/BooleanSignals...AssignClockToSquareWaveHold` | the "dummy condition" with identical branches can be simplified away; OpenModelica then uses the default 1 s clock. Now the clocked when-equation of the Real version |
| [#4850](https://github.com/modelica/ModelicaStandardLibrary/pull/4850) | `ComplexBlocks.Routing.Extractor` | record assignment in a when-equation; OpenModelica cannot generate code. Now field-wise assignment |
| [#4851](https://github.com/modelica/ModelicaStandardLibrary/pull/4851) | `Math.Nonlinear.quadratureNewtonCotes` (new in 4.2) | function argument called in an array constructor; OpenModelica generates C code that does not compile, so the MSL example `MovingIntegral` does not build. Now a for-loop |

### 5.2 Open

| Class | Problem | Test (disabled until fixed) |
|---|---|---|
| `Mechanics.MultiBody.Frames.from_T_inv` | returns `R.w = -w` instead of `-T*w`; correct only when `w` is parallel to the rotation axis | `Mechanics.MultiBody.FramesFromTinv` |
| `Math.Matrices.LAPACK.dhgeqz` | declares `Real Q[1, 1] = fill(0, 1, n)`, inconsistent for n > 1 | `Math.LAPACKdhgeqz` |
| `ModelicaFFT_kiss_fftr` (C, used by `Math.FastFourierTransform.realFFT` and `Blocks.Math.RealFFT`) | divides DFT magnitudes by N/2+1 instead of N/2: amplitudes too small by the factor N/(N+2) | `Math.RealFFTAmplitudes` |
| `Magnetic.QuasiStatic.FluxTubes.Interfaces.Positive/NegativeMagneticPort` | extend the FundamentalWave magnetic port instead of the FluxTubes one (identical content, no functional impact) | – |
| `Magnetic.QuasiStatic.FluxTubes.Basic.LeakageWithCoefficient` | no start value for the iteration variable `G_m`; initialization fails from `G_m = 0` | test sets `G_m(start=1e-7)` |

## 6. Tool problems and how the tests work around them

### 6.1 Compilers

| Tool | Problem | Resolution |
|---|---|---|
| OCT (Impact) | crash on a `sum` over time-varying Complex | MSL fix #4846; test on OpenModelica until Impact ships it |
| OCT (Impact) | C code with the Modelica record constructor `ComplexOutput(...)` for inline Complex if-expressions in connector equations | MSL fix #4847; tests on OpenModelica until Impact ships it |
| OCT (Impact) | rejects if-expressions with branches of different sizes (correct per the specification) | MSL fix #4848; test on OpenModelica until Impact ships it |
| OCT (Impact) | compilation never finishes for two QS reference roots on one ground (a modeling error it should report) | test fixed: one ground per QS system |
| OCT (Impact) | does not accept a bare function name as a functional argument (`f(integrand, ...)`); `function integrand()` works | tests use the `function name()` form |
| OpenModelica 1.27.1 | no code generation for a record assignment in a when-equation | MSL fix #4850 |
| OpenModelica 1.27.1 | broken C code for a function argument called in an array constructor | MSL fix #4851 |
| OpenModelica 1.27.1 | default clock after simplifying a dummy if-expression | MSL fix #4849 |
| OpenModelica 1.27.1 | broken C code for `sum({...})` over Complex (array-constructor form) | not used by the MSL; noted only |

Two failures reported earlier no longer reproduce in a minimal model or in the original test:
- OCT could not evaluate `ex.C2 > -1e40` for a *parameter* Spice3 `ModelcardBJT`.
- Structural SMEE parameters bound from `SM_ElectricalExcitedData` failed.

Both tests now use the natural form again: a parameter modelcard, and all SMEE parameters bound from the
record.

Minimal reproducers of the OCT failures are on the fork `hubertus65/ModelicaStandardLibrary`, branch
`impact-failures`, package `ImpactFailures`, one pull request per failure: #1 Complex sum, #2 Complex
if-expression, #3 if-expression sizes, #4 QS shared-ground hang.

### 6.2 Test infrastructure

| Component | Observation |
|---|---|
| Impact server | A compilation that never finishes keeps its worker busy after the experiment is cancelled or deleted. The following cases stay PENDING and run into the 300 s timeout, until the stuck experiment is deleted. |
| Impact server | Under load ("container memory unavailable"), an experiment can come back without cases. ModCheck then crashes with `IndexError` in `backends/impact.py` (`exp.get_cases()[0]`) instead of retrying. |
| ModCheck | A per-case `source:` is documented, but each run uses one source; hence the separate OpenModelica case lists. |
| ModCheck | The funnel comparison reports a deviation at an instantaneous jump (duplicate time points), even for identical data. |
| ModCheck | If the workspace lacks a case's model, the run "cleans up" by removing that case from the case list. With a workspace holding another sub-library, that wiped three reports; they were restored and regenerated. |
| Dymola 2026x (local) | The license is size-limited: models translate but stop at "too complex for the current license", so Dymola served as a translation check only. |

### A modeling pitfall found while debugging

The first version of the test `Electrical.QuasiStatic.Polyphase.ReferenceSourceAndSensors` connected two
independent quasi-static systems to one ground: a `ReferenceVoltageSource` with a gamma input (50 Hz) and a
`CurrentSource` with its own `gamma(fixed=true)` (60 Hz). That joins two reference roots in one overdetermined
connection graph, which is a modeling error. OpenModelica and Dymola accept it silently: OpenModelica breaks a
connect edge, and Dymola translates it without a message. OCT never finished compiling, and the stuck
compilations stalled the Impact server's compile queue. With one ground per quasi-static system, the test
compiles and simulates in seconds on Impact. Independent quasi-static systems need separate grounds.

## 7. Next steps

1. Review and merge PRs #4845-#4851. Fix the open MSL issues of 5.2 and enable their tests.
2. Decide on the orphans in 4.3: remove them, wire them into the library, or keep them as documented public API.
3. Once Impact ships an MSL with #4846-#4848, move the OpenModelica cases back to Impact. Run the whole set
   with a second tool (a Dymola license without the size limit, or OpenModelica) before moving the baselines
   from `ReviewResults` into the reference-results repository.
4. Optionally, teach the coverage analysis to follow `derivative`/`inverse` annotations and external-object
   constructors, which would remove the 42 false positives of 4.1.
