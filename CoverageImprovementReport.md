# Test coverage after branch `coverage-improvement`

Second report on the coverage of library `Modelica` by `ModelicaTest`, after the new test models of branch
`coverage-improvement`. The baseline is [TestCoverageReport.md](TestCoverageReport.md), with the same scope,
definitions and analysis tool (static reference analysis; see *Method* there).

The work had two rounds. The first round added 129 test models, one commit per sub-library, and reached
97.3 %. The completion round closed the remaining gaps except the partial classes: it extended the analysis
so that it sees classes the tests already run, and added 21 test models in one commit for the classes used
only by MSL examples and for the orphans.

## 1. Summary

| | Before | After round 1 | **After completion** |
|---|---:|---:|---:|
| Analyzed (non-partial) classes | 3560 | 3560 | 3560 |
| Directly used by `ModelicaTest` | 782 (22.0 %) | 1598 (44.9 %) | 1626 (45.7 %) |
| Directly or indirectly used by `ModelicaTest` | 2432 (68.3 %) | 3464 (97.3 %) | **3548 (99.7 %)** |
| Not used by `ModelicaTest` | 1128 (31.7 %) | 96 (2.7 %) | **12 (0.3 %)** |
| … thereof neither tested nor used in any MSL example | 615 (17.3 %) | 71 (2.0 %) | **12 (0.3 %)** |
| Partial classes covered via `ModelicaTest` (of 344) | 259 (75.3 %) | 316 (91.9 %) | 317 (92.2 %) |
| Partial classes not covered at all | 32 | 26 | 26 |

The first two columns use the original analysis, the last one the extended analysis (section 4.1). Of the
84 additional classes in the last step, 41 come from the new completion tests (96 → 55 with the original
analysis) and 43 from the analysis (55 → 12): the 42 classes of section 4.1 and the default
`PartialStraightPipe.FlowModel`, now resolved as an inherited local class.

The 12 classes still not used are excluded on purpose ([section 4.2](#42-deliberately-not-tested-12)). Every
other non-partial class of the MSL is now used by `ModelicaTest`.

## 2. Coverage by sub-library

| Sub-library | Classes | Used by ModelicaTest before | after round 1 | after completion | Still not used |
|---|---:|---:|---:|---:|---:|
| `Modelica.Blocks` | 294 | 193 (65.6 %) | 276 (93.9 %) | 294 (100.0 %) | 0 |
| `Modelica.Clocked` | 88 | 0 (0.0 %) | 87 (98.9 %) | 88 (100.0 %) | 0 |
| `Modelica.ComplexBlocks` | 38 | 6 (15.8 %) | 38 (100.0 %) | 38 (100.0 %) | 0 |
| `Modelica.ComplexMath` | 30 | 21 (70.0 %) | 30 (100.0 %) | 30 (100.0 %) | 0 |
| `Modelica.Electrical` | 765 | 281 (36.7 %) | 750 (98.0 %) | 765 (100.0 %) | 0 |
| `Modelica.Fluid` | 336 | 306 (91.1 %) | 326 (97.0 %) | 336 (100.0 %) | 0 |
| `Modelica.Magnetic` | 213 | 126 (59.2 %) | 210 (98.6 %) | 213 (100.0 %) | 0 |
| `Modelica.Math` | 187 | 134 (71.7 %) | 184 (98.4 %) | 187 (100.0 %) | 0 |
| `Modelica.Mechanics` | 336 | 232 (69.0 %) | 312 (92.9 %) | 336 (100.0 %) | 0 |
| `Modelica.Media` | 1049 | 1023 (97.5 %) | 1037 (98.9 %) | 1040 (99.1 %) | 9 |
| `Modelica.StateGraph` | 25 | 0 (0.0 %) | 25 (100.0 %) | 25 (100.0 %) | 0 |
| `Modelica.Thermal` | 64 | 15 (23.4 %) | 57 (89.1 %) | 64 (100.0 %) | 0 |
| `Modelica.Units` | 58 | 35 (60.3 %) | 58 (100.0 %) | 58 (100.0 %) | 0 |
| `Modelica.Utilities` | 77 | 60 (77.9 %) | 74 (96.1 %) | 74 (96.1 %) | 3 |

By class kind, coverage is now 99.4 % for functions, 99.9 % for models, 99.7 % for records and 100 % for
blocks, connectors and operator records. Round 1 had reached 96.7 %, 97.6 %, 96.5 %, 99.7 % and 97.0 %.

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
| Completion (all sub-libraries) | one commit | 21 | 2 | 0 | 87/87 + 7/7 |
| **Total** | | **150** | **14** | **3** | |

Cases that Impact cannot run are on OpenModelica 1.27.1 with the MSL of this repository. There are four
reasons:

- All of `Clocked` runs there, including the completion variant `UniformNoiseXorshift64star_Clock10ms`,
  because Impact's MSL has no Clocked library.
- Two cases use classes that are new in MSL 4.2.
- Four cases use MSL 4.1.0 code that OCT fails on. This branch fixes that code; see section 5.
- `MultiBody.UniversalConstraint_StiffSpring`: OCT lets the orientation behind `Joints.Constraints.Universal`
  drift, already in the unmodified MSL example (section 6.1). There is no workaround in the model.

The completion commit holds the 21 tests of section 4: 16 short-class variants of MSL examples and 5 direct
tests of orphans. Its case lists, baselines and CSV exports are in `ReviewResults/Completion/` and
`ReviewResults/Completion/OpenModelica/`. The ModCheck HTML reports of its checking runs were generated in
`ReviewResults/Completion/HtmlReports/` and `ReviewResults/Completion/OpenModelica/HtmlReports/`, but are
not committed for now.

ModCheck runs one source per case list, so these cases are in a second list per sub-library,
`ReviewResults/<SubLibrary>/OpenModelica/`, with its own baselines and report.

The tests follow the patterns and layouts of the existing `ModelicaTest` models of each sub-library. Most are
small circuits or systems that exercise several untested classes at once, with results that can be checked
by hand: analytic values, conservation laws, identities between equivalent circuits. Where an MSL example
already used a class in a way ModelicaTest lacked, the test is a short-class variant of that example with a
different parameterization, e.g. `model DiodeBridge2Pulse_60Hz = Modelica.Electrical.PowerConverters.Examples....(f=60)`.

**Check tolerance caps.** ModCheck checks each baseline (rtol 1e-6) against a second run at 100 x rtol. In
21 cases that run deviates for numerical reasons rather than model errors, so the check rtol is capped by
`max_rtol`. Each case list states the reason next to the cap:

- `Blocks.Statistics` and 10 Electrical cases are capped at **1e-5**. These are integrated phases of
  variable-frequency sources, switching instants of BJT/PWM circuits, nonlinear Spice3 stages and a microvolt
  op-amp input. All of them converge at 1e-5.
- The two Electrical CC/CV battery variants are capped at **1e-5**. At 1e-4 the SOC overshoots and trips the MSL
  assert "Battery overcharged!".
- `SuperCapDischargeCharge_400A` and `Rectifier_230V` are capped at **1e-6**. Their MSL comparison signals are
  ill-conditioned: one is the small final residual of an energy integral that swings to -5.4e5, the other is
  the mean of a nearly-zero current. They pass only at the reference tolerance.
- Five completion cases are capped at **1e-5**: `RollingWheel_FastSpin` (path drift of the contact point),
  `TestCylinder_Mass2` and `HeatTransferGenerationOfFMUs_3Hz` (oscillation and adaptor coupling),
  `LinearInductor_R10` (coil-current transient), and on OpenModelica `UniversalConstraint_StiffSpring`
  (angular velocity over 10 s).
- `GenerationOfFMUs_3Hz` is capped at **1e-6**. `mass3b.v` deviates by 1.4e-3 at rtol 1e-4 and 1e-5 alike,
  while rtol 1e-6, 1e-8 and 1e-10 agree to 2e-5, so the baseline is converged and only looser tolerances
  fail.

In `DiodeCenterTapmPulse_5Phase`, the instantaneous `resistor.i` jumps by about 54 A at commutation events.
ModCheck's funnel comparison reports a deviation there (0.22) even when the check run is identical to the
baseline point by point. The test therefore compares the mean and RMS values only, as the MSL example does.
The cause is in the funnel library: exactly repeated time points next to other close time points give a
nonzero error on identical data ([lbl-srg/funnel#107](https://github.com/lbl-srg/funnel/issues/107)). The
ModCheck branch of section 6.2 works around it.

Only three cases are disabled. Each tests an MSL bug and fails by design until the bug is fixed (section 5).
Every case that failed because of a tool problem was reworked until it runs, either with a different but
equivalent test formulation or with an MSL fix (section 6).

## 4. Gaps after round 1 and how the completion round closed them

After round 1, 96 classes were not used by `ModelicaTest` (42 + 12 + 17 + 25). Only the 12 of section 4.2
remain.

### 4.1 Run by the round-1 tests, but invisible to the original analysis (42): analysis extended

These classes were already run by the tests; the analysis did not see it. It now follows `derivative` and
`inverse` annotations, implicit calls of external-object constructors/destructors and of
`equalityConstraint`, local classes inherited from base classes, and calls through components (for example
`world.gravityAcceleration`). All 42 are now counted, plus the default `PartialStraightPipe.FlowModel` of
section 4.3.

- **Derivative functions** that are referenced only from `derivative` or `inverse` annotations. The tests use
  `der()` of the calling expressions (or flow reversal), so a tool that differentiates symbolically calls
  them:
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

### 4.3 Not used anywhere in the MSL (orphans, 17): five direct tests

These classes are not referenced by any MSL class. Five direct tests now declare them, each with a check
value that must hold exactly:

| Test | Classes | Check |
|---|---|---|
| `Electrical.Spice3.Spice3InternalRecordsAndFunctions` | the 9 Spice3 helpers, evaluated from default model cards | `rootSum` = 111, `passThroughError` = 0, 4 MOSFET pins |
| `Electrical.Machines.DCCompoundPowerBalance` | `PowerBalanceDCCE`, filled from the power balance of a DCEE machine | `lossError` = 0 |
| `Media.ThermoFluidSpecialRecords` | `BridgmansTables`, `ThermoBaseVars`, `ThermoProperties`, filled from IF97 water | `bridgmanCheck` = 0 |
| `Fluid.TestUtilities.VectorizedPortsFluidAndHeat` | `FluidPorts_a`, `HeatPorts_b` as junctions | 60 W at 320 K through the heat junction, as computed by hand |
| `Magnetic.QuasiStatic.FluxTubes.MagneticPortBase` | `QuasiStatic.FluxTubes.Interfaces.MagneticPort` | potential and flux probes |

The default `Fluid.Pipes.BaseClasses.PartialStraightPipe.FlowModel` is counted by the extended analysis.
The test of the ThermoFluidSpecial records found a bug in them (#4852, section 5). Writing the tests also
found two tool problems (section 6.1).

The orphans are still worth a review, for removal or for wiring into the library:

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

### 4.4 Used only by MSL examples (25): 16 example variants

Classes such as `MultiBody.Joints.Constraints.*`, `RollingWheel(Set)`, `Translational.Sensors.PositionSensor`
and `FluidHeatFlow.Components.Cylinder` were reachable from `Modelica.*.Examples` only. They are now covered
by short-class variants of those examples with a different parameterization, as in round 1:

| Sub-library | Variants |
|---|---|
| MultiBody | `Revolute/Spherical/Universal/PrismaticConstraint_StiffSpring` (spring c = 40 N/m), `RollingWheel_FastSpin`, `RollingWheelSetDriving_HigherTorque` |
| Translational | `Sensors_20N`, `GenerationOfFMUs_3Hz` |
| Thermal | `PumpAndValve_20W`, `TwoTanks_Level07`, `TestCylinder_Mass2`, `HeatTransferGenerationOfFMUs_3Hz` |
| Magnetic | `SMPM_OpenCircuit_HalfSpeed`, `LinearInductor_R10`, `SolenoidComparisonQuasiStatic_10V` |
| Clocked | `UniformNoiseXorshift64star_Clock10ms` |

### 4.5 Partial classes (not part of the completion round)

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
| [#4852](https://github.com/modelica/ModelicaStandardLibrary/pull/4852) | `Media.Common.ThermoFluidSpecial.ThermoBaseVars`, `ThermoProperties` | 24 array declarations with scalar `min`/`max`/`nominal` lack `each`; OpenModelica rejects both records. `dZ`/`rZ` also had `nominal=0`, which OCT rejects in a copy of the record; now 1 |

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
| OCT (Impact) | wrong values without a message: a record constructor call negates a field when another field defaults to its negation (`Real a=1; Real b=-a;` gives `a = -1`, even for `R(a=5)`). Hits `Media.Common.BridgmansTables` (`dTp=1`, `dpT=-dTp`) | test declares the record with a modifier instead of the constructor |
| OCT (Impact) | wrong values without a message: the orientation of the body behind `Joints.Constraints.Universal` drifts and depends on the tolerance, already in the unmodified MSL example `Constraints.UniversalConstraint` | test on OpenModelica |
| OpenModelica 1.27.1 | accepts `==` on Real operands in an equation; the specification allows it only in functions, and OCT rejects it correctly | test fixed: compares the difference with 0 |
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
if-expression, #3 if-expression sizes, #4 QS shared-ground hang, #5 negated record default, #6 universal
constraint orientation drift.

### 6.2 Test infrastructure

| Component | Observation | Fixed in ModCheck branch |
|---|---|---|
| Impact server | A compilation that never finishes keeps its worker busy after the experiment is cancelled or deleted. The following cases stay PENDING and run into the 300 s timeout, until the stuck experiment is deleted. | a timed-out experiment that is still RUNNING 30 s after the cancel is deleted |
| Impact server | Under load ("container memory unavailable"), an experiment can come back without cases. ModCheck then crashes with `IndexError` in `backends/impact.py` (`exp.get_cases()[0]`) instead of retrying. | retried once, then a clear error |
| ModCheck | A per-case `source:` is documented, but each run uses one source; hence the separate OpenModelica case lists. | each case runs on its source; one session per source |
| ModCheck | The funnel comparison reports a deviation at an instantaneous jump (duplicate time points), even for identical data. Cause in the funnel library: [lbl-srg/funnel#107](https://github.com/lbl-srg/funnel/issues/107). | samples that repeat both time and value are dropped before the comparison |
| ModCheck | If the workspace lacks a case's model, the run "cleans up" by removing that case from the case list. With a workspace holding another sub-library, that wiped three reports; they were restored and regenerated. | a run in which every model is missing stops before pruning; the cleanup handles indented case lists |
| Dymola 2026x (local) | The license is size-limited: models translate but stop at "too complex for the current license", so Dymola served as a translation check only. | – |

The ModCheck fixes are on branch `fix-coverage-run-findings` of
[MBILLC/ModCheck](https://github.com/MBILLC/ModCheck), with an acceptance script
(`run_findings_acceptance.py`, 21 checks). The round-1 runs predate the branch; the completion runs used it,
with the same separate OpenModelica case lists.

### A modeling pitfall found while debugging

The first version of the test `Electrical.QuasiStatic.Polyphase.ReferenceSourceAndSensors` connected two
independent quasi-static systems to one ground: a `ReferenceVoltageSource` with a gamma input (50 Hz) and a
`CurrentSource` with its own `gamma(fixed=true)` (60 Hz). That joins two reference roots in one overdetermined
connection graph, which is a modeling error. OpenModelica and Dymola accept it silently: OpenModelica breaks a
connect edge, and Dymola translates it without a message. OCT never finished compiling, and the stuck
compilations stalled the Impact server's compile queue. With one ground per quasi-static system, the test
compiles and simulates in seconds on Impact. Independent quasi-static systems need separate grounds.

## 7. Next steps

1. Review and merge PRs #4845-#4852. Fix the open MSL issues of 5.2 and enable their tests.
2. Decide on the orphans in 4.3: remove them, wire them into the library, or keep them as documented public API.
3. Once Impact ships an MSL with #4846-#4848 and OCT fixes the failures of fork PRs #5-#6, move the
   OpenModelica cases back to Impact. Run the whole set with a second tool (a Dymola license without the size
   limit, or OpenModelica) before moving the baselines from `ReviewResults` into the reference-results
   repository.
4. Merge the ModCheck branch `fix-coverage-run-findings`; then the separate OpenModelica case lists can be
   folded back into one list per sub-library.
5. Cover the 26 partial classes of 4.5 with test models that extend them, if those interfaces are meant to stay.
