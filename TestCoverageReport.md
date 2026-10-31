# Test coverage of the Modelica Standard Library by `ModelicaTest`

Static reference analysis: which classes of library `Modelica` are used – directly or indirectly – by the test models in `ModelicaTest` (and `ModelicaTestOverdetermined`).

## Scope

Analyzed **classes**: all models, blocks, functions, connectors, records and classes in `Modelica` (long and short definitions), **excluding** packages, types, operators, `Modelica.Icons`, `UsersGuide`, the documentation-only classes in `Fluid.Dissipation.Utilities.SharedDocumentation` and everything in `Examples` packages (those are test cases themselves).

**Partial classes** cannot be instantiated or simulated on their own; they are tested only through the non-partial classes that extend them. They are therefore excluded from sections 1–5 and analyzed separately in [section 6](#6-partial-classes) (344 partial classes).

A class counts as
- **directly tested** if a class in `ModelicaTest` references it by name (component type, `extends`, function call, redeclaration, …);
- **indirectly tested** if it is reachable from a test model via the reference graph (e.g. a base class of a tested model, a sub-component, a function called in an equation);
- **exercised by MSL examples** if it is reachable from a model in any `Modelica.*.Examples` package (these are also part of the MSL regression testing).

## 1. Summary

| | Classes | Share |
|---|---:|---:|
| Analyzed classes | 3560 | |
| Directly used by `ModelicaTest` | 782 | 22.0 % |
| Directly or indirectly used by `ModelicaTest` | 2432 | 68.3 % |
| **Not used by `ModelicaTest`** | **1128** | **31.7 %** |
| … but exercised by `Modelica.*.Examples` | 513 | |
| **Neither tested nor used in any example** | **615** | **17.3 %** |
| Used by `Modelica.*.Examples` (for comparison) | 2459 | 69.1 % |

## 2. Coverage by sub-library

| Sub-library | Classes | Used by ModelicaTest | Not used by ModelicaTest | … thereof also not in examples |
|---|---:|---:|---:|---:|
| `Modelica.Blocks` | 294 | 193 (65.6 %) | 101 (34.4 %) | 50 |
| `Modelica.Clocked` | 88 | 0 (0.0 %) | 88 (100.0 %) | 10 |
| `Modelica.ComplexBlocks` | 38 | 6 (15.8 %) | 32 (84.2 %) | 24 |
| `Modelica.ComplexMath` | 30 | 21 (70.0 %) | 9 (30.0 %) | 8 |
| `Modelica.Electrical` | 765 | 281 (36.7 %) | 484 (63.3 %) | 218 |
| `Modelica.Fluid` | 336 | 306 (91.1 %) | 30 (8.9 %) | 29 |
| `Modelica.Magnetic` | 213 | 126 (59.2 %) | 87 (40.8 %) | 57 |
| `Modelica.Math` | 187 | 134 (71.7 %) | 53 (28.3 %) | 47 |
| `Modelica.Mechanics` | 336 | 232 (69.0 %) | 104 (31.0 %) | 81 |
| `Modelica.Media` | 1049 | 1023 (97.5 %) | 26 (2.5 %) | 26 |
| `Modelica.StateGraph` | 25 | 0 (0.0 %) | 25 (100.0 %) | 1 |
| `Modelica.Thermal` | 64 | 15 (23.4 %) | 49 (76.6 %) | 30 |
| `Modelica.Units` | 58 | 35 (60.3 %) | 23 (39.7 %) | 20 |
| `Modelica.Utilities` | 77 | 60 (77.9 %) | 17 (22.1 %) | 14 |

## 3. Coverage by class kind

| Kind | Classes | Used by ModelicaTest | Neither tests nor examples |
|---|---:|---:|---:|
| function | 1737 | 1452 (83.6 %) | 215 |
| model | 993 | 545 (54.9 %) | 232 |
| block | 385 | 164 (42.6 %) | 78 |
| record | 317 | 191 (60.3 %) | 73 |
| connector | 99 | 69 (69.7 %) | 5 |
| operator record | 23 | 8 (34.8 %) | 12 |
| class | 3 | 3 (100.0 %) | 0 |
| expandable connector | 3 | 0 (0.0 %) | 0 |

## 4. Packages with the most untested classes

Classes neither reached from `ModelicaTest` nor from any MSL example, grouped by 3rd hierarchy level.

| Package | Untested (no test, no example) |
|---|---:|
| `Modelica.Mechanics.MultiBody` | 63 |
| `Modelica.Electrical.Spice3` | 56 |
| `Modelica.Electrical.Machines` | 48 |
| `Modelica.Electrical.QuasiStatic` | 46 |
| `Modelica.Math.Matrices` | 36 |
| `Modelica.Magnetic.FluxTubes` | 33 |
| `Modelica.Electrical.Analog` | 31 |
| `Modelica.Electrical.Digital` | 22 |
| `Modelica.ComplexBlocks.ComplexMath` | 18 |
| `Modelica.Blocks.Math` | 17 |
| `Modelica.Media.Common` | 17 |
| `Modelica.Thermal.HeatTransfer` | 17 |
| `Modelica.Electrical.Polyphase` | 15 |
| `Modelica.Mechanics.Translational` | 14 |
| `Modelica.Magnetic.FundamentalWave` | 13 |
| `Modelica.Thermal.FluidHeatFlow` | 13 |
| `Modelica.Units.SI` | 12 |
| `Modelica.Blocks.Routing` | 12 |
| `Modelica.Magnetic.QuasiStatic` | 11 |
| `Modelica.Fluid.Dissipation` | 10 |
| `Modelica.Utilities.Files` | 10 |
| `Modelica.Blocks.Tables` | 9 |
| `Modelica.Media.Interfaces` | 9 |
| `Modelica.Units.Conversions` | 8 |
| `Modelica.Blocks.Types` | 6 |

## 5. List of untested classes

### 5.1 Neither used by `ModelicaTest` nor by any MSL example (615)

These classes are not exercised by any regression test. Grouped by sub-library.

<details><summary><code>Modelica.Blocks</code> (50)</summary>

- `Modelica.Blocks.Interfaces.Adaptors.Functions.state1der1` (function) — `Modelica/Blocks/Interfaces.mo:1656`
- `Modelica.Blocks.Interfaces.Adaptors.Functions.state2der1` (function) — `Modelica/Blocks/Interfaces.mo:1680`
- `Modelica.Blocks.Interfaces.Adaptors.Functions.state2der2` (function) — `Modelica/Blocks/Interfaces.mo:1693`
- `Modelica.Blocks.Math.Acos` (block) — `Modelica/Blocks/Math.mo:1367`
- `Modelica.Blocks.Math.Atan2` (block) — `Modelica/Blocks/Math.mo:1463`
- `Modelica.Blocks.Math.BooleanChange` (block) — `Modelica/Blocks/Math.mo:3288`
- `Modelica.Blocks.Math.BooleanToInteger` (block) — `Modelica/Blocks/Math.mo:2045`
- `Modelica.Blocks.Math.BooleanToReal` (block) — `Modelica/Blocks/Math.mo:2006`
- `Modelica.Blocks.Math.Cos` (block) — `Modelica/Blocks/Math.mo:1221`
- `Modelica.Blocks.Math.Cosh` (block) — `Modelica/Blocks/Math.mo:1571`
- `Modelica.Blocks.Math.Edge` (block) — `Modelica/Blocks/Math.mo:3269`
- `Modelica.Blocks.Math.Exp` (block) — `Modelica/Blocks/Math.mo:1665`
- `Modelica.Blocks.Math.IntegerChange` (block) — `Modelica/Blocks/Math.mo:3308`
- `Modelica.Blocks.Math.IntegerToBoolean` (block) — `Modelica/Blocks/Math.mo:2125`
- `Modelica.Blocks.Math.IntegerToReal` (block) — `Modelica/Blocks/Math.mo:1970`
- `Modelica.Blocks.Math.Log` (block) — `Modelica/Blocks/Math.mo:1797`
- `Modelica.Blocks.Math.Min` (block) — `Modelica/Blocks/Math.mo:3198`
- `Modelica.Blocks.Math.Sinh` (block) — `Modelica/Blocks/Math.mo:1524`
- `Modelica.Blocks.Math.Tan` (block) — `Modelica/Blocks/Math.mo:1269`
- `Modelica.Blocks.Math.Tanh` (block) — `Modelica/Blocks/Math.mo:1619`
- `Modelica.Blocks.Nonlinear.FixedDelay` (block) — `Modelica/Blocks/Nonlinear.mo:296`
- `Modelica.Blocks.Nonlinear.VariableDelay` (block) — `Modelica/Blocks/Nonlinear.mo:529`
- `Modelica.Blocks.Routing.DeMultiplex2` (block) — `Modelica/Blocks/Routing.mo:627`
- `Modelica.Blocks.Routing.DeMultiplex3` (block) — `Modelica/Blocks/Routing.mo:664`
- `Modelica.Blocks.Routing.DeMultiplex4` (block) — `Modelica/Blocks/Routing.mo:705`
- `Modelica.Blocks.Routing.DeMultiplex5` (block) — `Modelica/Blocks/Routing.mo:751`
- `Modelica.Blocks.Routing.DeMultiplex6` (block) — `Modelica/Blocks/Routing.mo:802`
- `Modelica.Blocks.Routing.ExtractSignal` (block) — `Modelica/Blocks/Routing.mo:90`
- `Modelica.Blocks.Routing.Extractor` (block) — `Modelica/Blocks/Routing.mo:212`
- `Modelica.Blocks.Routing.IntegerPassThrough` (model) — `Modelica/Blocks/Routing.mo:871`
- `Modelica.Blocks.Routing.IntegerReplicator` (block) — `Modelica/Blocks/Routing.mo:28`
- `Modelica.Blocks.Routing.Multiplex4` (block) — `Modelica/Blocks/Routing.mo:435`
- `Modelica.Blocks.Routing.Multiplex5` (block) — `Modelica/Blocks/Routing.mo:481`
- `Modelica.Blocks.Routing.Multiplex6` (block) — `Modelica/Blocks/Routing.mo:532`
- `Modelica.Blocks.Sources.IntegerExpression` (block) — `Modelica/Blocks/Sources.mo:43`
- `Modelica.Blocks.Tables.Internal.getDer2Table1DValue` (function) — `Modelica/Blocks/Tables.mo:1207`
- `Modelica.Blocks.Tables.Internal.getDer2Table2DValue` (function) — `Modelica/Blocks/Tables.mo:1299`
- `Modelica.Blocks.Tables.Internal.getDer2TimeTableValue` (function) — `Modelica/Blocks/Tables.mo:1105`
- `Modelica.Blocks.Tables.Internal.getDerTable1DValue` (function) — `Modelica/Blocks/Tables.mo:1182`
- `Modelica.Blocks.Tables.Internal.getDerTable1DValueNoDer` (function) — `Modelica/Blocks/Tables.mo:1195`
- `Modelica.Blocks.Tables.Internal.getDerTable2DValue` (function) — `Modelica/Blocks/Tables.mo:1272`
- `Modelica.Blocks.Tables.Internal.getDerTable2DValueNoDer` (function) — `Modelica/Blocks/Tables.mo:1286`
- `Modelica.Blocks.Tables.Internal.getDerTimeTableValue` (function) — `Modelica/Blocks/Tables.mo:1073`
- `Modelica.Blocks.Tables.Internal.getDerTimeTableValueNoDer` (function) — `Modelica/Blocks/Tables.mo:1091`
- `Modelica.Blocks.Types.ExternalCombiTable1D.constructor` (function) — `Modelica/Blocks/Types.mo:151`
- `Modelica.Blocks.Types.ExternalCombiTable1D.destructor` (function) — `Modelica/Blocks/Types.mo:178`
- `Modelica.Blocks.Types.ExternalCombiTable2D.constructor` (function) — `Modelica/Blocks/Types.mo:191`
- `Modelica.Blocks.Types.ExternalCombiTable2D.destructor` (function) — `Modelica/Blocks/Types.mo:215`
- `Modelica.Blocks.Types.ExternalCombiTimeTable.constructor` (function) — `Modelica/Blocks/Types.mo:105`
- `Modelica.Blocks.Types.ExternalCombiTimeTable.destructor` (function) — `Modelica/Blocks/Types.mo:138`

</details>

<details><summary><code>Modelica.Clocked</code> (10)</summary>

- `Modelica.Clocked.BooleanSignals.NonPeriodic.BooleanChange` (block) — `Modelica/Clocked/BooleanSignals/NonPeriodic/BooleanChange.mo:2`
- `Modelica.Clocked.BooleanSignals.NonPeriodic.FractionalDelay` (block) — `Modelica/Clocked/BooleanSignals/NonPeriodic/FractionalDelay.mo:2`
- `Modelica.Clocked.BooleanSignals.Sampler.Utilities.AssignClockToSquareWaveHold` (block) — `Modelica/Clocked/BooleanSignals/Sampler/Utilities/AssignClockToSquareWaveHold.mo:2`
- `Modelica.Clocked.BooleanSignals.Sampler.Utilities.AssignClockToTriggerHold` (block) — `Modelica/Clocked/BooleanSignals/Sampler/Utilities/AssignClockToTriggerHold.mo:2`
- `Modelica.Clocked.IntegerSignals.NonPeriodic.FractionalDelay` (block) — `Modelica/Clocked/IntegerSignals/NonPeriodic/FractionalDelay.mo:2`
- `Modelica.Clocked.IntegerSignals.Sampler.Utilities.AssignClockToSquareWaveHold` (block) — `Modelica/Clocked/IntegerSignals/Sampler/Utilities/AssignClockToSquareWaveHold.mo:2`
- `Modelica.Clocked.IntegerSignals.Sampler.Utilities.AssignClockToTriggerHold` (block) — `Modelica/Clocked/IntegerSignals/Sampler/Utilities/AssignClockToTriggerHold.mo:2`
- `Modelica.Clocked.RealSignals.Periodic.MovingAverage` (block) — `Modelica/Clocked/RealSignals/Periodic/MovingAverage.mo:2`
- `Modelica.Clocked.RealSignals.Periodic.StateSpace` (block) — `Modelica/Clocked/RealSignals/Periodic/StateSpace.mo:2`
- `Modelica.Clocked.RealSignals.Periodic.TransferFunction` (block) — `Modelica/Clocked/RealSignals/Periodic/TransferFunction.mo:2`

</details>

<details><summary><code>Modelica.ComplexBlocks</code> (24)</summary>

- `Modelica.ComplexBlocks.ComplexMath.Acos` (block) — `Modelica/ComplexBlocks/ComplexMath/Acos.mo:2`
- `Modelica.ComplexBlocks.ComplexMath.Add` (block) — `Modelica/ComplexBlocks/ComplexMath/Add.mo:2`
- `Modelica.ComplexBlocks.ComplexMath.Add3` (block) — `Modelica/ComplexBlocks/ComplexMath/Add3.mo:2`
- `Modelica.ComplexBlocks.ComplexMath.Asin` (block) — `Modelica/ComplexBlocks/ComplexMath/Asin.mo:2`
- `Modelica.ComplexBlocks.ComplexMath.Atan` (block) — `Modelica/ComplexBlocks/ComplexMath/Atan.mo:2`
- `Modelica.ComplexBlocks.ComplexMath.Conj` (block) — `Modelica/ComplexBlocks/ComplexMath/Conj.mo:2`
- `Modelica.ComplexBlocks.ComplexMath.Cos` (block) — `Modelica/ComplexBlocks/ComplexMath/Cos.mo:2`
- `Modelica.ComplexBlocks.ComplexMath.Cosh` (block) — `Modelica/ComplexBlocks/ComplexMath/Cosh.mo:2`
- `Modelica.ComplexBlocks.ComplexMath.Exp` (block) — `Modelica/ComplexBlocks/ComplexMath/Exp.mo:2`
- `Modelica.ComplexBlocks.ComplexMath.Feedback` (block) — `Modelica/ComplexBlocks/ComplexMath/Feedback.mo:2`
- `Modelica.ComplexBlocks.ComplexMath.Gain` (block) — `Modelica/ComplexBlocks/ComplexMath/Gain.mo:2`
- `Modelica.ComplexBlocks.ComplexMath.Log` (block) — `Modelica/ComplexBlocks/ComplexMath/Log.mo:2`
- `Modelica.ComplexBlocks.ComplexMath.Product` (block) — `Modelica/ComplexBlocks/ComplexMath/Product.mo:2`
- `Modelica.ComplexBlocks.ComplexMath.Sin` (block) — `Modelica/ComplexBlocks/ComplexMath/Sin.mo:2`
- `Modelica.ComplexBlocks.ComplexMath.Sinh` (block) — `Modelica/ComplexBlocks/ComplexMath/Sinh.mo:2`
- `Modelica.ComplexBlocks.ComplexMath.Sqrt` (block) — `Modelica/ComplexBlocks/ComplexMath/Sqrt.mo:2`
- `Modelica.ComplexBlocks.ComplexMath.Tan` (block) — `Modelica/ComplexBlocks/ComplexMath/Tan.mo:2`
- `Modelica.ComplexBlocks.ComplexMath.Tanh` (block) — `Modelica/ComplexBlocks/ComplexMath/Tanh.mo:2`
- `Modelica.ComplexBlocks.Routing.ComplexPassThrough` (model) — `Modelica/ComplexBlocks/Routing/ComplexPassThrough.mo:2`
- `Modelica.ComplexBlocks.Routing.ExtractSignal` (block) — `Modelica/ComplexBlocks/Routing/ExtractSignal.mo:2`
- `Modelica.ComplexBlocks.Routing.Extractor` (block) — `Modelica/ComplexBlocks/Routing/Extractor.mo:2`
- `Modelica.ComplexBlocks.Routing.Replicator` (block) — `Modelica/ComplexBlocks/Routing/Replicator.mo:2`
- `Modelica.ComplexBlocks.Sources.ComplexExpression` (block) — `Modelica/ComplexBlocks/Sources/ComplexExpression.mo:2`
- `Modelica.ComplexBlocks.Sources.ComplexStep` (block) — `Modelica/ComplexBlocks/Sources/ComplexStep.mo:2`

</details>

<details><summary><code>Modelica.ComplexMath</code> (8)</summary>

- `Modelica.ComplexMath.Vectors.length` (function) — `Modelica/ComplexMath.mo:87`
- `Modelica.ComplexMath.Vectors.norm` (function) — `Modelica/ComplexMath.mo:10`
- `Modelica.ComplexMath.Vectors.normalize` (function) — `Modelica/ComplexMath.mo:125`
- `Modelica.ComplexMath.Vectors.reverse` (function) — `Modelica/ComplexMath.mo:181`
- `Modelica.ComplexMath.Vectors.sort` (function) — `Modelica/ComplexMath.mo:204`
- `Modelica.ComplexMath.max` (function) — `Modelica/ComplexMath.mo:569`
- `Modelica.ComplexMath.min` (function) — `Modelica/ComplexMath.mo:598`
- `Modelica.ComplexMath.product` (function) — `Modelica/ComplexMath.mo:638`

</details>

<details><summary><code>Modelica.Electrical</code> (218)</summary>

- `Modelica.Electrical.Analog.Basic.CCC` (model) — `Modelica/Electrical/Analog/Basic/CCC.mo:2`
- `Modelica.Electrical.Analog.Basic.CCV` (model) — `Modelica/Electrical/Analog/Basic/CCV.mo:2`
- `Modelica.Electrical.Analog.Basic.M_Transformer` (model) — `Modelica/Electrical/Analog/Basic/M_Transformer.mo:2`
- `Modelica.Electrical.Analog.Basic.OpAmp` (model) — `Modelica/Electrical/Analog/Basic/OpAmp.mo:2`
- `Modelica.Electrical.Analog.Basic.VCC` (model) — `Modelica/Electrical/Analog/Basic/VCC.mo:2`
- `Modelica.Electrical.Analog.Basic.VCV` (model) — `Modelica/Electrical/Analog/Basic/VCV.mo:2`
- `Modelica.Electrical.Analog.Basic.VariableCapacitor` (model) — `Modelica/Electrical/Analog/Basic/VariableCapacitor.mo:2`
- `Modelica.Electrical.Analog.Basic.VariableInductor` (model) — `Modelica/Electrical/Analog/Basic/VariableInductor.mo:2`
- `Modelica.Electrical.Analog.Ideal.ControlledIdealIntermediateSwitch` (model) — `Modelica/Electrical/Analog/Ideal/ControlledIdealIntermediateSwitch.mo:2`
- `Modelica.Electrical.Analog.Ideal.ControlledIdealOpeningSwitch` (model) — `Modelica/Electrical/Analog/Ideal/ControlledIdealOpeningSwitch.mo:2`
- `Modelica.Electrical.Analog.Ideal.ControlledOpenerWithArc` (model) — `Modelica/Electrical/Analog/Ideal/ControlledOpenerWithArc.mo:2`
- `Modelica.Electrical.Analog.Ideal.IdealIntermediateSwitch` (model) — `Modelica/Electrical/Analog/Ideal/IdealIntermediateSwitch.mo:2`
- `Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimited` (model) — `Modelica/Electrical/Analog/Ideal/IdealizedOpAmpLimited.mo:2`
- `Modelica.Electrical.Analog.Lines.M_OLine` (model) — `Modelica/Electrical/Analog/Lines/M_OLine.mo:2`
- `Modelica.Electrical.Analog.Lines.M_OLine.segment` (model) — `Modelica/Electrical/Analog/Lines/M_OLine.mo:47`
- `Modelica.Electrical.Analog.Lines.M_OLine.segment_last` (model) — `Modelica/Electrical/Analog/Lines/M_OLine.mo:162`
- `Modelica.Electrical.Analog.Lines.TLine1` (model) — `Modelica/Electrical/Analog/Lines/TLine1.mo:2`
- `Modelica.Electrical.Analog.Lines.TLine2` (model) — `Modelica/Electrical/Analog/Lines/TLine2.mo:2`
- `Modelica.Electrical.Analog.Lines.TLine3` (model) — `Modelica/Electrical/Analog/Lines/TLine3.mo:2`
- `Modelica.Electrical.Analog.Lines.ULine` (model) — `Modelica/Electrical/Analog/Lines/ULine.mo:2`
- `Modelica.Electrical.Analog.Semiconductors.Diode2` (model) — `Modelica/Electrical/Analog/Semiconductors/Diode2.mo:2`
- `Modelica.Electrical.Analog.Sources.CosineCurrent` (model) — `Modelica/Electrical/Analog/Sources/CosineCurrent.mo:2`
- `Modelica.Electrical.Analog.Sources.ExpSineCurrent` (model) — `Modelica/Electrical/Analog/Sources/ExpSineCurrent.mo:2`
- `Modelica.Electrical.Analog.Sources.ExponentialsCurrent` (model) — `Modelica/Electrical/Analog/Sources/ExponentialsCurrent.mo:2`
- `Modelica.Electrical.Analog.Sources.ExponentialsVoltage` (model) — `Modelica/Electrical/Analog/Sources/ExponentialsVoltage.mo:2`
- `Modelica.Electrical.Analog.Sources.PulseVoltage` (model) — `Modelica/Electrical/Analog/Sources/PulseVoltage.mo:2`
- `Modelica.Electrical.Analog.Sources.SawToothCurrent` (model) — `Modelica/Electrical/Analog/Sources/SawToothCurrent.mo:2`
- `Modelica.Electrical.Analog.Sources.SawToothVoltage` (model) — `Modelica/Electrical/Analog/Sources/SawToothVoltage.mo:2`
- `Modelica.Electrical.Analog.Sources.StepCurrent` (model) — `Modelica/Electrical/Analog/Sources/StepCurrent.mo:2`
- `Modelica.Electrical.Analog.Sources.TableCurrent` (model) — `Modelica/Electrical/Analog/Sources/TableCurrent.mo:2`
- `Modelica.Electrical.Analog.Sources.TableVoltage` (model) — `Modelica/Electrical/Analog/Sources/TableVoltage.mo:2`
- `Modelica.Electrical.Digital.Basic.Nand` (model) — `Modelica/Electrical/Digital.mo:2964`
- `Modelica.Electrical.Digital.Basic.Xnor` (model) — `Modelica/Electrical/Digital.mo:3131`
- `Modelica.Electrical.Digital.Converters.BooleanToLogic` (block) — `Modelica/Electrical/Digital.mo:4141`
- `Modelica.Electrical.Digital.Converters.LogicToBoolean` (block) — `Modelica/Electrical/Digital.mo:4195`
- `Modelica.Electrical.Digital.Converters.LogicToUX01` (block) — `Modelica/Electrical/Digital.mo:4071`
- `Modelica.Electrical.Digital.Converters.LogicToX01` (block) — `Modelica/Electrical/Digital.mo:3931`
- `Modelica.Electrical.Digital.Converters.LogicToX01Z` (block) — `Modelica/Electrical/Digital.mo:4001`
- `Modelica.Electrical.Digital.Converters.RealToLogic` (block) — `Modelica/Electrical/Digital.mo:4256`
- `Modelica.Electrical.Digital.Delay.InertialDelay` (block) — `Modelica/Electrical/Digital.mo:2679`
- `Modelica.Electrical.Digital.Gates.BufGate` (model) — `Modelica/Electrical/Digital.mo:3521`
- `Modelica.Electrical.Digital.Gates.InvGate` (model) — `Modelica/Electrical/Digital.mo:3176`
- `Modelica.Electrical.Digital.Gates.NandGate` (model) — `Modelica/Electrical/Digital.mo:3271`
- `Modelica.Electrical.Digital.Gates.NorGate` (model) — `Modelica/Electrical/Digital.mo:3372`
- `Modelica.Electrical.Digital.Gates.OrGate` (model) — `Modelica/Electrical/Digital.mo:3324`
- `Modelica.Electrical.Digital.Gates.XnorGate` (model) — `Modelica/Electrical/Digital.mo:3473`
- `Modelica.Electrical.Digital.Interfaces.MemoryBase.address` (function) — `Modelica/Electrical/Digital.mo:2362`
- `Modelica.Electrical.Digital.Interfaces.MemoryBase.getMemory` (function) — `Modelica/Electrical/Digital.mo:2331`
- `Modelica.Electrical.Digital.Memories.DLATROM` (model) — `Modelica/Electrical/Digital.mo:6912`
- `Modelica.Electrical.Digital.Tristates.BUF3SL` (model) — `Modelica/Electrical/Digital.mo:6508`
- `Modelica.Electrical.Digital.Tristates.INV3SL` (model) — `Modelica/Electrical/Digital.mo:6671`
- `Modelica.Electrical.Digital.Tristates.PRXFERGATE` (model) — `Modelica/Electrical/Digital.mo:6347`
- `Modelica.Electrical.Digital.Tristates.PXFERGATE` (model) — `Modelica/Electrical/Digital.mo:6266`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Dd.Dd02` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Dd/Dd02.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Dd.Dd04` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Dd/Dd04.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Dd.Dd06` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Dd/Dd06.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Dd.Dd08` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Dd/Dd08.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Dd.Dd10` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Dd/Dd10.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Dy.Dy03` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Dy/Dy03.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Dy.Dy05` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Dy/Dy05.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Dy.Dy07` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Dy/Dy07.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Dy.Dy09` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Dy/Dy09.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Dy.Dy11` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Dy/Dy11.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Dz.Dz00` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Dz/Dz00.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Dz.Dz02` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Dz/Dz02.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Dz.Dz04` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Dz/Dz04.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Dz.Dz06` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Dz/Dz06.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Dz.Dz08` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Dz/Dz08.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Dz.Dz10` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Dz/Dz10.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd01` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Yd/Yd01.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd03` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Yd/Yd03.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd05` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Yd/Yd05.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd07` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Yd/Yd07.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd09` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Yd/Yd09.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Yd.Yd11` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Yd/Yd11.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Yy.Yy02` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Yy/Yy02.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Yy.Yy04` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Yy/Yy04.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Yy.Yy06` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Yy/Yy06.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Yy.Yy08` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Yy/Yy08.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Yy.Yy10` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Yy/Yy10.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Yz.Yz01` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Yz/Yz01.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Yz.Yz03` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Yz/Yz03.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Yz.Yz05` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Yz/Yz05.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Yz.Yz07` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Yz/Yz07.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Yz.Yz09` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Yz/Yz09.mo:2`
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Yz.Yz11` (model) — `Modelica/Electrical/Machines/BasicMachines/Transformers/Yz/Yz11.mo:2`
- `Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCCE` (record) — `Modelica/Electrical/Machines/Interfaces/DCMachines/PowerBalanceDCCE.mo:2`
- `Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCCE` (connector) — `Modelica/Electrical/Machines/Interfaces/DCMachines/ThermalPortDCCE.mo:2`
- `Modelica.Electrical.Machines.Losses.InductionMachines.Brush` (model) — `Modelica/Electrical/Machines/Losses/InductionMachines/Brush.mo:2`
- `Modelica.Electrical.Machines.SpacePhasors.Blocks.FromPolar` (block) — `Modelica/Electrical/Machines/SpacePhasors/Blocks/FromPolar.mo:2`
- `Modelica.Electrical.Machines.SpacePhasors.Blocks.QuasiRMS` (block) — `Modelica/Electrical/Machines/SpacePhasors/Blocks/QuasiRMS.mo:2`
- `Modelica.Electrical.Machines.SpacePhasors.Components.Rotator` (model) — `Modelica/Electrical/Machines/SpacePhasors/Components/Rotator.mo:2`
- `Modelica.Electrical.Machines.SpacePhasors.Functions.FromPolar` (function) — `Modelica/Electrical/Machines/SpacePhasors/Functions/FromPolar.mo:2`
- `Modelica.Electrical.Machines.SpacePhasors.Functions.FromSpacePhasor` (function) — `Modelica/Electrical/Machines/SpacePhasors/Functions/FromSpacePhasor.mo:2`
- `Modelica.Electrical.Machines.SpacePhasors.Functions.Rotator` (function) — `Modelica/Electrical/Machines/SpacePhasors/Functions/Rotator.mo:2`
- `Modelica.Electrical.Machines.SpacePhasors.Functions.ToPolar` (function) — `Modelica/Electrical/Machines/SpacePhasors/Functions/ToPolar.mo:2`
- `Modelica.Electrical.Machines.SpacePhasors.Functions.quasiRMS` (function) — `Modelica/Electrical/Machines/SpacePhasors/Functions/quasiRMS.mo:2`
- `Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCCE` (model) — `Modelica/Electrical/Machines/Thermal/DCMachines/ThermalAmbientDCCE.mo:2`
- `Modelica.Electrical.Machines.Utilities.ParameterRecords.SM_ElectricalExcitedData` (record) — `Modelica/Electrical/Machines/Utilities/ParameterRecords/SM_ElectricalExcitedData.mo:2`
- `Modelica.Electrical.Machines.Utilities.ParameterRecords.TransformerData` (record) — `Modelica/Electrical/Machines/Utilities/ParameterRecords/TransformerData.mo:2`
- `Modelica.Electrical.Machines.Utilities.RampedRheostat` (model) — `Modelica/Electrical/Machines/Utilities/RampedRheostat.mo:2`
- `Modelica.Electrical.Polyphase.Basic.Capacitor` (model) — `Modelica/Electrical/Polyphase/Basic/Capacitor.mo:2`
- `Modelica.Electrical.Polyphase.Basic.MutualInductor` (model) — `Modelica/Electrical/Polyphase/Basic/MutualInductor.mo:2`
- `Modelica.Electrical.Polyphase.Basic.SaturatingInductor` (model) — `Modelica/Electrical/Polyphase/Basic/SaturatingInductor.mo:2`
- `Modelica.Electrical.Polyphase.Basic.Transformer` (model) — `Modelica/Electrical/Polyphase/Basic/Transformer.mo:2`
- `Modelica.Electrical.Polyphase.Basic.VariableCapacitor` (model) — `Modelica/Electrical/Polyphase/Basic/VariableCapacitor.mo:2`
- `Modelica.Electrical.Polyphase.Basic.VariableConductor` (model) — `Modelica/Electrical/Polyphase/Basic/VariableConductor.mo:2`
- `Modelica.Electrical.Polyphase.Basic.VariableInductor` (model) — `Modelica/Electrical/Polyphase/Basic/VariableInductor.mo:2`
- `Modelica.Electrical.Polyphase.Basic.VariableResistor` (model) — `Modelica/Electrical/Polyphase/Basic/VariableResistor.mo:2`
- `Modelica.Electrical.Polyphase.Functions.symmetricBackTransformationMatrix` (function) — `Modelica/Electrical/Polyphase/Functions/symmetricBackTransformationMatrix.mo:2`
- `Modelica.Electrical.Polyphase.Ideal.IdealIntermediateSwitch` (model) — `Modelica/Electrical/Polyphase/Ideal/IdealIntermediateSwitch.mo:2`
- `Modelica.Electrical.Polyphase.Ideal.Idle` (model) — `Modelica/Electrical/Polyphase/Ideal/Idle.mo:2`
- `Modelica.Electrical.Polyphase.Sources.ConstantCurrent` (model) — `Modelica/Electrical/Polyphase/Sources/ConstantCurrent.mo:2`
- `Modelica.Electrical.Polyphase.Sources.ConstantVoltage` (model) — `Modelica/Electrical/Polyphase/Sources/ConstantVoltage.mo:2`
- `Modelica.Electrical.Polyphase.Sources.CosineCurrent` (model) — `Modelica/Electrical/Polyphase/Sources/CosineCurrent.mo:2`
- `Modelica.Electrical.Polyphase.Sources.SineCurrent` (model) — `Modelica/Electrical/Polyphase/Sources/SineCurrent.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dd.Dd00` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Dd/Dd00.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dd.Dd02` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Dd/Dd02.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dd.Dd04` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Dd/Dd04.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dd.Dd06` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Dd/Dd06.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dd.Dd08` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Dd/Dd08.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dd.Dd10` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Dd/Dd10.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dy.Dy01` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Dy/Dy01.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dy.Dy03` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Dy/Dy03.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dy.Dy05` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Dy/Dy05.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dy.Dy07` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Dy/Dy07.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dy.Dy09` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Dy/Dy09.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dy.Dy11` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Dy/Dy11.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dz.Dz00` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Dz/Dz00.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dz.Dz02` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Dz/Dz02.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dz.Dz04` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Dz/Dz04.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dz.Dz06` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Dz/Dz06.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dz.Dz08` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Dz/Dz08.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Dz.Dz10` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Dz/Dz10.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yd.Yd03` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Yd/Yd03.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yd.Yd05` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Yd/Yd05.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yd.Yd07` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Yd/Yd07.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yd.Yd09` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Yd/Yd09.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yd.Yd11` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Yd/Yd11.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yy.Yy02` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Yy/Yy02.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yy.Yy04` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Yy/Yy04.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yy.Yy06` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Yy/Yy06.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yy.Yy08` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Yy/Yy08.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yy.Yy10` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Yy/Yy10.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yz.Yz01` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Yz/Yz01.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yz.Yz03` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Yz/Yz03.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yz.Yz05` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Yz/Yz05.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yz.Yz07` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Yz/Yz07.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yz.Yz09` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Yz/Yz09.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yz.Yz11` (model) — `Modelica/Electrical/QuasiStatic/Machines/BasicMachines/Transformers/Yz/Yz11.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.SpacePhasors.Blocks.FromSpacePhasor` (block) — `Modelica/Electrical/QuasiStatic/Machines/SpacePhasors/Blocks/FromSpacePhasor.mo:2`
- `Modelica.Electrical.QuasiStatic.Machines.SpacePhasors.Blocks.ToSpacePhasor` (block) — `Modelica/Electrical/QuasiStatic/Machines/SpacePhasors/Blocks/ToSpacePhasor.mo:2`
- `Modelica.Electrical.QuasiStatic.Polyphase.Basic.MultiStarResistance` (model) — `Modelica/Electrical/QuasiStatic/Polyphase/Basic/MultiStarResistance.mo:2`
- `Modelica.Electrical.QuasiStatic.Polyphase.Basic.MutualInductor` (model) — `Modelica/Electrical/QuasiStatic/Polyphase/Basic/MutualInductor.mo:2`
- `Modelica.Electrical.QuasiStatic.Polyphase.Blocks.FromSpacePhasor` (block) — `Modelica/Electrical/QuasiStatic/Polyphase/Blocks/FromSpacePhasor.mo:2`
- `Modelica.Electrical.QuasiStatic.Polyphase.Blocks.FromSymmetricalComponents` (block) — `Modelica/Electrical/QuasiStatic/Polyphase/Blocks/FromSymmetricalComponents.mo:2`
- `Modelica.Electrical.QuasiStatic.Polyphase.Sensors.FrequencySensor` (model) — `Modelica/Electrical/QuasiStatic/Polyphase/Sensors/FrequencySensor.mo:2`
- `Modelica.Electrical.QuasiStatic.Polyphase.Sources.CurrentSource` (model) — `Modelica/Electrical/QuasiStatic/Polyphase/Sources/CurrentSource.mo:2`
- `Modelica.Electrical.QuasiStatic.Polyphase.Sources.ReferenceVoltageSource` (model) — `Modelica/Electrical/QuasiStatic/Polyphase/Sources/ReferenceVoltageSource.mo:2`
- `Modelica.Electrical.QuasiStatic.SinglePhase.Sensors.FrequencySensor` (model) — `Modelica/Electrical/QuasiStatic/SinglePhase/Sensors/FrequencySensor.mo:2`
- `Modelica.Electrical.QuasiStatic.SinglePhase.Sensors.ReferenceSensor` (model) — `Modelica/Electrical/QuasiStatic/SinglePhase/Sensors/ReferenceSensor.mo:2`
- `Modelica.Electrical.QuasiStatic.Types.Reference.equalityConstraint` (function) — `Modelica/Electrical/QuasiStatic/Types/Reference.mo:4`
- `Modelica.Electrical.Spice3.Additionals.E_VCV_POLY` (model) — `Modelica/Electrical/Spice3.mo:3868`
- `Modelica.Electrical.Spice3.Additionals.F_CCC_POLY` (model) — `Modelica/Electrical/Spice3.mo:4195`
- `Modelica.Electrical.Spice3.Additionals.G_VCC_POLY` (model) — `Modelica/Electrical/Spice3.mo:3973`
- `Modelica.Electrical.Spice3.Additionals.H_CCV_POLY` (model) — `Modelica/Electrical/Spice3.mo:4076`
- `Modelica.Electrical.Spice3.Additionals.poly` (function) — `Modelica/Electrical/Spice3.mo:3761`
- `Modelica.Electrical.Spice3.Basic.E_VCV` (model) — `Modelica/Electrical/Spice3.mo:2450`
- `Modelica.Electrical.Spice3.Basic.F_CCC` (model) — `Modelica/Electrical/Spice3.mo:2632`
- `Modelica.Electrical.Spice3.Basic.G_VCC` (model) — `Modelica/Electrical/Spice3.mo:2509`
- `Modelica.Electrical.Spice3.Basic.H_CCV` (model) — `Modelica/Electrical/Spice3.mo:2568`
- `Modelica.Electrical.Spice3.Internal.C_SEMI` (model) — `Modelica/Electrical/Spice3.mo:5407`
- `Modelica.Electrical.Spice3.Internal.Csemiconductor.Capacitor` (record) — `Modelica/Electrical/Spice3.mo:10411`
- `Modelica.Electrical.Spice3.Internal.Csemiconductor.CapacitorModelLineParams` (record) — `Modelica/Electrical/Spice3.mo:10423`
- `Modelica.Electrical.Spice3.Internal.Csemiconductor.capacitorInitEquations` (function) — `Modelica/Electrical/Spice3.mo:10434`
- `Modelica.Electrical.Spice3.Internal.Csemiconductor.capacitorRenameParameters` (function) — `Modelica/Electrical/Spice3.mo:10458`
- `Modelica.Electrical.Spice3.Internal.Csemiconductor.capacitorRenameParametersDev` (function) — `Modelica/Electrical/Spice3.mo:10474`
- `Modelica.Electrical.Spice3.Internal.Diode.DiodeModelLineVariables` (record) — `Modelica/Electrical/Spice3.mo:8660`
- `Modelica.Electrical.Spice3.Internal.Diode.diodeCalcAdditionalValues` (function) — `Modelica/Electrical/Spice3.mo:8899`
- `Modelica.Electrical.Spice3.Internal.Diode.diodeModelLineInitEquations` (function) — `Modelica/Electrical/Spice3.mo:8721`
- `Modelica.Electrical.Spice3.Internal.Functions.capDepGeom` (function) — `Modelica/Electrical/Spice3.mo:6088`
- `Modelica.Electrical.Spice3.Internal.MOS2` (model) — `Modelica/Electrical/Spice3.mo:4644`
- `Modelica.Electrical.Spice3.Internal.ModelcardC` (record) — `Modelica/Electrical/Spice3.mo:5486`
- `Modelica.Electrical.Spice3.Internal.ModelcardMOS2` (record) — `Modelica/Electrical/Spice3.mo:4844`
- `Modelica.Electrical.Spice3.Internal.Mos.mos2CalcCalcTempDependenciesRevised` (function) — `Modelica/Electrical/Spice3.mo:7179`
- `Modelica.Electrical.Spice3.Internal.Mos.mos2CalcInitEquationsRevised` (function) — `Modelica/Electrical/Spice3.mo:7143`
- `Modelica.Electrical.Spice3.Internal.Mos.mos2CalcNoBypassCodeRevised` (function) — `Modelica/Electrical/Spice3.mo:7310`
- `Modelica.Electrical.Spice3.Internal.Mos2.Mos2Calc` (record) — `Modelica/Electrical/Spice3.mo:7873`
- `Modelica.Electrical.Spice3.Internal.Mos2.Mos2ModelLineParams` (record) — `Modelica/Electrical/Spice3.mo:7835`
- `Modelica.Electrical.Spice3.Internal.Mos2.Mos2ModelLineVariables` (record) — `Modelica/Electrical/Spice3.mo:7860`
- `Modelica.Electrical.Spice3.Internal.Mos2.drainCurRevised` (function) — `Modelica/Electrical/Spice3.mo:7955`
- `Modelica.Electrical.Spice3.Internal.Mos2.mos2ModelLineParamsInitEquationsRevised` (function) — `Modelica/Electrical/Spice3.mo:7881`
- `Modelica.Electrical.Spice3.Internal.Mos2.mos2RenameParametersDev` (function) — `Modelica/Electrical/Spice3.mo:8570`
- `Modelica.Electrical.Spice3.Internal.Mos2.mos2RenameParametersRevised` (function) — `Modelica/Electrical/Spice3.mo:8502`
- `Modelica.Electrical.Spice3.Internal.Mosfet.MosfetModelLine` (record) — `Modelica/Electrical/Spice3.mo:6340`
- `Modelica.Electrical.Spice3.Internal.Mosfet.getNumberOfElectricalPins` (function) — `Modelica/Electrical/Spice3.mo:6423`
- `Modelica.Electrical.Spice3.Internal.Mosfet.mosfetInitEquations` (function) — `Modelica/Electrical/Spice3.mo:6387`
- `Modelica.Electrical.Spice3.Internal.Mosfet.mosfetModelLineInitEquations` (function) — `Modelica/Electrical/Spice3.mo:6408`
- `Modelica.Electrical.Spice3.Internal.Mosfet.mosfetRenameParametersDev` (function) — `Modelica/Electrical/Spice3.mo:6434`
- `Modelica.Electrical.Spice3.Internal.SpiceRoot.SpiceRoot` (record) — `Modelica/Electrical/Spice3.mo:6190`
- `Modelica.Electrical.Spice3.Semiconductors.C_Capacitor` (model) — `Modelica/Electrical/Spice3.mo:2954`
- `Modelica.Electrical.Spice3.Semiconductors.J_PJFJFET` (model) — `Modelica/Electrical/Spice3.mo:2857`
- `Modelica.Electrical.Spice3.Semiconductors.M_NMOS2` (model) — `Modelica/Electrical/Spice3.mo:2765`
- `Modelica.Electrical.Spice3.Semiconductors.M_PMOS2` (model) — `Modelica/Electrical/Spice3.mo:2782`
- `Modelica.Electrical.Spice3.Semiconductors.ModelcardCAPACITOR` (record) — `Modelica/Electrical/Spice3.mo:2968`
- `Modelica.Electrical.Spice3.Semiconductors.ModelcardJFET` (record) — `Modelica/Electrical/Spice3.mo:2900`
- `Modelica.Electrical.Spice3.Semiconductors.ModelcardMOS2` (record) — `Modelica/Electrical/Spice3.mo:2799`
- `Modelica.Electrical.Spice3.Semiconductors.ModelcardRESISTOR` (record) — `Modelica/Electrical/Spice3.mo:2944`
- `Modelica.Electrical.Spice3.Semiconductors.Q_PNPBJT` (model) — `Modelica/Electrical/Spice3.mo:2828`
- `Modelica.Electrical.Spice3.Sources.I_constant` (model) — `Modelica/Electrical/Spice3.mo:3373`
- `Modelica.Electrical.Spice3.Sources.I_exp` (model) — `Modelica/Electrical/Spice3.mo:3456`
- `Modelica.Electrical.Spice3.Sources.I_pulse` (model) — `Modelica/Electrical/Spice3.mo:3507`
- `Modelica.Electrical.Spice3.Sources.I_pwl` (model) — `Modelica/Electrical/Spice3.mo:3636`
- `Modelica.Electrical.Spice3.Sources.I_sffm` (model) — `Modelica/Electrical/Spice3.mo:3701`
- `Modelica.Electrical.Spice3.Sources.I_sin` (model) — `Modelica/Electrical/Spice3.mo:3404`
- `Modelica.Electrical.Spice3.Sources.V_exp` (model) — `Modelica/Electrical/Spice3.mo:3073`
- `Modelica.Electrical.Spice3.Sources.V_pwl` (model) — `Modelica/Electrical/Spice3.mo:3261`
- `Modelica.Electrical.Spice3.Sources.V_sffm` (model) — `Modelica/Electrical/Spice3.mo:3326`

</details>

<details><summary><code>Modelica.Fluid</code> (29)</summary>

- `Modelica.Fluid.Dissipation.Utilities.Functions.General.LambertW` (function) — `Modelica/Fluid/Dissipation.mo:10892`
- `Modelica.Fluid.Dissipation.Utilities.Functions.General.LambertWIter` (function) — `Modelica/Fluid/Dissipation.mo:10938`
- `Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower_der` (function) — `Modelica/Fluid/Dissipation.mo:11097`
- `Modelica.Fluid.Dissipation.Utilities.Functions.General.Stepsmoother_der` (function) — `Modelica/Fluid/Dissipation.mo:11181`
- `Modelica.Fluid.Dissipation.Utilities.Records.General.IdealGas` (record) — `Modelica/Fluid/Dissipation.mo:12595`
- `Modelica.Fluid.Dissipation.Utilities.Records.General.NominalPressureLossLawDensity` (record) — `Modelica/Fluid/Dissipation.mo:12618`
- `Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow` (record) — `Modelica/Fluid/Dissipation.mo:12662`
- `Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.Diffuser` (record) — `Modelica/Fluid/Dissipation.mo:12946`
- `Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.PressureLossInput` (record) — `Modelica/Fluid/Dissipation.mo:12895`
- `Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.Tjunction` (record) — `Modelica/Fluid/Dissipation.mo:12918`
- `Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend.pressureLoss` (function) — `Modelica/Fluid/Fittings.mo:2146`
- `Modelica.Fluid.Fittings.BaseClasses.Bends.EdgedBend.pressureLoss` (function) — `Modelica/Fluid/Fittings.mo:2273`
- `Modelica.Fluid.Fittings.BaseClasses.GenericResistances.VolumeFlowRate.pressureLoss` (function) — `Modelica/Fluid/Fittings.mo:2664`
- `Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices.general` (function) — `Modelica/Fluid/Fittings.mo:2554`
- `Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices.rectangular` (function) — `Modelica/Fluid/Fittings.mo:2518`
- `Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.pressureLoss` (function) — `Modelica/Fluid/Fittings.mo:2408`
- `Modelica.Fluid.Interfaces.FluidPorts_a` (connector) — `Modelica/Fluid/Interfaces.mo:77`
- `Modelica.Fluid.Interfaces.HeatPorts_b` (connector) — `Modelica/Fluid/Interfaces.mo:410`
- `Modelica.Fluid.Pipes.BaseClasses.PartialStraightPipe.FlowModel` (model) — `Modelica/Fluid/Pipes.mo:251`
- `Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction.massFlowRate_dp` (function) — `Modelica/Fluid/Pipes.mo:1903`
- `Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction.massFlowRate_dp_staticHead` (function) — `Modelica/Fluid/Pipes.mo:1924`
- `Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction.pressureLoss_m_flow` (function) — `Modelica/Fluid/Pipes.mo:1914`
- `Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction.pressureLoss_m_flow_staticHead` (function) — `Modelica/Fluid/Pipes.mo:1935`
- `Modelica.Fluid.Sensors.MassFractions` (model) — `Modelica/Fluid/Sensors.mo:395`
- `Modelica.Fluid.Sensors.MassFractionsTwoPort` (model) — `Modelica/Fluid/Sensors.mo:445`
- `Modelica.Fluid.Sensors.RelativeTemperature` (model) — `Modelica/Fluid/Sensors.mo:695`
- `Modelica.Fluid.Utilities.cubicHermite` (function) — `Modelica/Fluid/Utilities.mo:787`
- `Modelica.Fluid.Utilities.regRoot_der` (function) — `Modelica/Fluid/Utilities.mo:82`
- `Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.ConstantHeatTransfer` (model) — `Modelica/Fluid/Vessels.mo:513`

</details>

<details><summary><code>Modelica.Magnetic</code> (57)</summary>

- `Modelica.Magnetic.FluxTubes.Material.HardMagnetic.HardFerrite` (record) — `Modelica/Magnetic/FluxTubes/Material/HardMagnetic/HardFerrite.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.HardMagnetic.PlasticHardFerrite` (record) — `Modelica/Magnetic/FluxTubes/Material/HardMagnetic/PlasticHardFerrite.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.HardMagnetic.PlasticSmCo` (record) — `Modelica/Magnetic/FluxTubes/Material/HardMagnetic/PlasticSmCo.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.HardMagnetic.Sm2Co17` (record) — `Modelica/Magnetic/FluxTubes/Material/HardMagnetic/Sm2Co17.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.HardMagnetic.SmCo5` (record) — `Modelica/Magnetic/FluxTubes/Material/HardMagnetic/SmCo5.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.HysteresisEverettParameter.M270_50A` (record) — `Modelica/Magnetic/FluxTubes/Material/HysteresisEverettParameter/M270_50A.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.HysteresisEverettParameter.M400_50A` (record) — `Modelica/Magnetic/FluxTubes/Material/HysteresisEverettParameter/M400_50A.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.HysteresisEverettParameter.M400_50AP` (record) — `Modelica/Magnetic/FluxTubes/Material/HysteresisEverettParameter/M400_50AP.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.HysteresisEverettParameter.M800_65A` (record) — `Modelica/Magnetic/FluxTubes/Material/HysteresisEverettParameter/M800_65A.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.HysteresisEverettParameter.Vacodur50` (record) — `Modelica/Magnetic/FluxTubes/Material/HysteresisEverettParameter/Vacodur50.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.HysteresisEverettParameter.Vacoflux17` (record) — `Modelica/Magnetic/FluxTubes/Material/HysteresisEverettParameter/Vacoflux17.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.HysteresisTableData.M270_50A` (record) — `Modelica/Magnetic/FluxTubes/Material/HysteresisTableData/M270_50A.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.HysteresisTableData.M400_50A` (record) — `Modelica/Magnetic/FluxTubes/Material/HysteresisTableData/M400_50A.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.HysteresisTableData.M400_50AP` (record) — `Modelica/Magnetic/FluxTubes/Material/HysteresisTableData/M400_50AP.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.HysteresisTableData.M800_65A` (record) — `Modelica/Magnetic/FluxTubes/Material/HysteresisTableData/M800_65A.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.HysteresisTableData.Vacodur50` (record) — `Modelica/Magnetic/FluxTubes/Material/HysteresisTableData/Vacodur50.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.HysteresisTableData.Vacoflux17` (record) — `Modelica/Magnetic/FluxTubes/Material/HysteresisTableData/Vacoflux17.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.HysteresisTableData.Vacoflux48` (record) — `Modelica/Magnetic/FluxTubes/Material/HysteresisTableData/Vacoflux48.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.CobaltIron.Vacoflux50` (record) — `Modelica/Magnetic/FluxTubes/Material/SoftMagnetic/CobaltIron/Vacoflux50.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet.M530_50A` (record) — `Modelica/Magnetic/FluxTubes/Material/SoftMagnetic/ElectricSheet/M530_50A.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet.M700_100A` (record) — `Modelica/Magnetic/FluxTubes/Material/SoftMagnetic/ElectricSheet/M700_100A.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet.M940_100A` (record) — `Modelica/Magnetic/FluxTubes/Material/SoftMagnetic/ElectricSheet/M940_100A.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.NickelIron.MuMetall` (record) — `Modelica/Magnetic/FluxTubes/Material/SoftMagnetic/NickelIron/MuMetall.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.NickelIron.Permenorm3601K3` (record) — `Modelica/Magnetic/FluxTubes/Material/SoftMagnetic/NickelIron/Permenorm3601K3.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.PureIron.RFe80` (record) — `Modelica/Magnetic/FluxTubes/Material/SoftMagnetic/PureIron/RFe80.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.PureIron.VacoferS2` (record) — `Modelica/Magnetic/FluxTubes/Material/SoftMagnetic/PureIron/VacoferS2.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.AISI_1008` (record) — `Modelica/Magnetic/FluxTubes/Material/SoftMagnetic/Steel/AISI_1008.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.AISI_12L14` (record) — `Modelica/Magnetic/FluxTubes/Material/SoftMagnetic/Steel/AISI_12L14.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.DC01` (record) — `Modelica/Magnetic/FluxTubes/Material/SoftMagnetic/Steel/DC01.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.DC03` (record) — `Modelica/Magnetic/FluxTubes/Material/SoftMagnetic/Steel/DC03.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMn28K` (record) — `Modelica/Magnetic/FluxTubes/Material/SoftMagnetic/Steel/Steel_9SMn28K.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.X6Cr17` (record) — `Modelica/Magnetic/FluxTubes/Material/SoftMagnetic/Steel/X6Cr17.mo:2`
- `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.mu_rApprox` (function) — `Modelica/Magnetic/FluxTubes/Material/SoftMagnetic/mu_rApprox.mo:2`
- `Modelica.Magnetic.FundamentalWave.Components.Crossing` (model) — `Modelica/Magnetic/FundamentalWave/Components/Crossing.mo:2`
- `Modelica.Magnetic.FundamentalWave.Components.Idle` (model) — `Modelica/Magnetic/FundamentalWave/Components/Idle.mo:2`
- `Modelica.Magnetic.FundamentalWave.Interfaces.NegativePortInterface` (model) — `Modelica/Magnetic/FundamentalWave/Interfaces/NegativePortInterface.mo:2`
- `Modelica.Magnetic.FundamentalWave.Interfaces.PositivePortInterface` (model) — `Modelica/Magnetic/FundamentalWave/Interfaces/PositivePortInterface.mo:2`
- `Modelica.Magnetic.FundamentalWave.Interfaces.StateSelector` (model) — `Modelica/Magnetic/FundamentalWave/Interfaces/StateSelector.mo:2`
- `Modelica.Magnetic.FundamentalWave.Sensors.MagneticFluxSensor` (model) — `Modelica/Magnetic/FundamentalWave/Sensors/MagneticFluxSensor.mo:2`
- `Modelica.Magnetic.FundamentalWave.Sensors.MagneticPotentialDifferenceSensor` (model) — `Modelica/Magnetic/FundamentalWave/Sensors/MagneticPotentialDifferenceSensor.mo:2`
- `Modelica.Magnetic.FundamentalWave.Sensors.MagneticPotentialSensor` (model) — `Modelica/Magnetic/FundamentalWave/Sensors/MagneticPotentialSensor.mo:2`
- `Modelica.Magnetic.FundamentalWave.Sources.ConstantFlux` (model) — `Modelica/Magnetic/FundamentalWave/Sources/ConstantFlux.mo:2`
- `Modelica.Magnetic.FundamentalWave.Sources.SignalFlux` (model) — `Modelica/Magnetic/FundamentalWave/Sources/SignalFlux.mo:2`
- `Modelica.Magnetic.FundamentalWave.Sources.SignalMagneticPotentialDifference` (model) — `Modelica/Magnetic/FundamentalWave/Sources/SignalMagneticPotentialDifference.mo:2`
- `Modelica.Magnetic.FundamentalWave.Types.SalientCurrent` (record) — `Modelica/Magnetic/FundamentalWave/Types/SalientCurrent.mo:2`
- `Modelica.Magnetic.FundamentalWave.Types.SalientVoltage` (record) — `Modelica/Magnetic/FundamentalWave/Types/SalientVoltage.mo:2`
- `Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.ConstantPermeance` (model) — `Modelica/Magnetic/QuasiStatic/FluxTubes/Basic/ConstantPermeance.mo:2`
- `Modelica.Magnetic.QuasiStatic.FluxTubes.Interfaces.MagneticPort` (connector) — `Modelica/Magnetic/QuasiStatic/FluxTubes/Interfaces/MagneticPort.mo:2`
- `Modelica.Magnetic.QuasiStatic.FundamentalWave.Components.Crossing` (model) — `Modelica/Magnetic/QuasiStatic/FundamentalWave/Components/Crossing.mo:2`
- `Modelica.Magnetic.QuasiStatic.FundamentalWave.Components.Idle` (model) — `Modelica/Magnetic/QuasiStatic/FundamentalWave/Components/Idle.mo:2`
- `Modelica.Magnetic.QuasiStatic.FundamentalWave.Sensors.MagneticFluxSensor` (model) — `Modelica/Magnetic/QuasiStatic/FundamentalWave/Sensors/MagneticFluxSensor.mo:2`
- `Modelica.Magnetic.QuasiStatic.FundamentalWave.Sensors.MagneticPotentialDifferenceSensor` (model) — `Modelica/Magnetic/QuasiStatic/FundamentalWave/Sensors/MagneticPotentialDifferenceSensor.mo:2`
- `Modelica.Magnetic.QuasiStatic.FundamentalWave.Sensors.MagneticPotentialSensor` (model) — `Modelica/Magnetic/QuasiStatic/FundamentalWave/Sensors/MagneticPotentialSensor.mo:2`
- `Modelica.Magnetic.QuasiStatic.FundamentalWave.Sources.ConstantFlux` (model) — `Modelica/Magnetic/QuasiStatic/FundamentalWave/Sources/ConstantFlux.mo:2`
- `Modelica.Magnetic.QuasiStatic.FundamentalWave.Sources.ConstantMagneticPotentialDifference` (model) — `Modelica/Magnetic/QuasiStatic/FundamentalWave/Sources/ConstantMagneticPotentialDifference.mo:2`
- `Modelica.Magnetic.QuasiStatic.FundamentalWave.Sources.SignalFlux` (model) — `Modelica/Magnetic/QuasiStatic/FundamentalWave/Sources/SignalFlux.mo:2`
- `Modelica.Magnetic.QuasiStatic.FundamentalWave.Sources.SignalMagneticPotentialDifference` (model) — `Modelica/Magnetic/QuasiStatic/FundamentalWave/Sources/SignalMagneticPotentialDifference.mo:2`

</details>

<details><summary><code>Modelica.Math</code> (47)</summary>

- `Modelica.Math.FastFourierTransform.Internal.prime235Factorization` (function) — `Modelica/Math/FastFourierTransform.mo:719`
- `Modelica.Math.FastFourierTransform.realFFTinfo` (function) — `Modelica/Math/FastFourierTransform.mo:200`
- `Modelica.Math.Matrices.LAPACK.dgbsv` (function) — `Modelica/Math/package.mo:4862`
- `Modelica.Math.Matrices.LAPACK.dgbsv_vec` (function) — `Modelica/Math/package.mo:4974`
- `Modelica.Math.Matrices.LAPACK.dgeev` (function) — `Modelica/Math/package.mo:5239`
- `Modelica.Math.Matrices.LAPACK.dgeev_eigenValues` (function) — `Modelica/Math/package.mo:5374`
- `Modelica.Math.Matrices.LAPACK.dgeevx` (function) — `Modelica/Math/package.mo:5513`
- `Modelica.Math.Matrices.LAPACK.dgels_vec` (function) — `Modelica/Math/package.mo:5864`
- `Modelica.Math.Matrices.LAPACK.dgeqp3` (function) — `Modelica/Math/package.mo:6300`
- `Modelica.Math.Matrices.LAPACK.dgeqrf` (function) — `Modelica/Math/package.mo:6402`
- `Modelica.Math.Matrices.LAPACK.dgesdd` (function) — `Modelica/Math/package.mo:6493`
- `Modelica.Math.Matrices.LAPACK.dgesvd_sigma` (function) — `Modelica/Math/package.mo:6914`
- `Modelica.Math.Matrices.LAPACK.dgetrs_vec` (function) — `Modelica/Math/package.mo:7557`
- `Modelica.Math.Matrices.LAPACK.dggev` (function) — `Modelica/Math/package.mo:7634`
- `Modelica.Math.Matrices.LAPACK.dggevx` (function) — `Modelica/Math/package.mo:7802`
- `Modelica.Math.Matrices.LAPACK.dgtsv` (function) — `Modelica/Math/package.mo:8236`
- `Modelica.Math.Matrices.LAPACK.dgtsv_vec` (function) — `Modelica/Math/package.mo:8323`
- `Modelica.Math.Matrices.LAPACK.dhgeqz` (function) — `Modelica/Math/package.mo:8356`
- `Modelica.Math.Matrices.LAPACK.dorgqr` (function) — `Modelica/Math/package.mo:8944`
- `Modelica.Math.Matrices.LAPACK.dormhr` (function) — `Modelica/Math/package.mo:9031`
- `Modelica.Math.Matrices.LAPACK.dormqr` (function) — `Modelica/Math/package.mo:9159`
- `Modelica.Math.Matrices.LAPACK.dtrevc` (function) — `Modelica/Math/package.mo:9348`
- `Modelica.Math.Matrices.LAPACK.dtrsm` (function) — `Modelica/Math/package.mo:9774`
- `Modelica.Math.Matrices.LU_solve` (function) — `Modelica/Math/package.mo:1493`
- `Modelica.Math.Matrices.QR` (function) — `Modelica/Math/package.mo:1873`
- `Modelica.Math.Matrices.det` (function) — `Modelica/Math/package.mo:2557`
- `Modelica.Math.Matrices.eigenValueMatrix` (function) — `Modelica/Math/package.mo:1751`
- `Modelica.Math.Matrices.eigenValues` (function) — `Modelica/Math/package.mo:1674`
- `Modelica.Math.Matrices.exp` (function) — `Modelica/Math/package.mo:3062`
- `Modelica.Math.Matrices.exp.columnNorm` (function) — `Modelica/Math/package.mo:3087`
- `Modelica.Math.Matrices.flipLeftRight` (function) — `Modelica/Math/package.mo:4766`
- `Modelica.Math.Matrices.flipUpDown` (function) — `Modelica/Math/package.mo:4812`
- `Modelica.Math.Matrices.integralExp` (function) — `Modelica/Math/package.mo:3207`
- `Modelica.Math.Matrices.integralExp.columnNorm` (function) — `Modelica/Math/package.mo:3233`
- `Modelica.Math.Matrices.integralExpT` (function) — `Modelica/Math/package.mo:3385`
- `Modelica.Math.Matrices.sort` (function) — `Modelica/Math/package.mo:4621`
- `Modelica.Math.Matrices.sort.greater` (function) — `Modelica/Math/package.mo:4643`
- `Modelica.Math.Matrices.sort.less` (function) — `Modelica/Math/package.mo:4666`
- `Modelica.Math.Polynomials.derivativeValue_der` (function) — `Modelica/Math/Polynomials.mo:224`
- `Modelica.Math.Polynomials.evaluateWithRange_der` (function) — `Modelica/Math/Polynomials.mo:181`
- `Modelica.Math.Polynomials.integralValue_der` (function) — `Modelica/Math/Polynomials.mo:210`
- `Modelica.Math.Polynomials.secondDerivativeValue` (function) — `Modelica/Math/Polynomials.mo:80`
- `Modelica.Math.Vectors.find` (function) — `Modelica/Math/package.mo:445`
- `Modelica.Math.Vectors.isEqual` (function) — `Modelica/Math/package.mo:80`
- `Modelica.Math.Vectors.reverse` (function) — `Modelica/Math/package.mo:341`
- `Modelica.Math.Vectors.sort` (function) — `Modelica/Math/package.mo:365`
- `Modelica.Math.acosh` (function) — `Modelica/Math/package.mo:11504`

</details>

<details><summary><code>Modelica.Mechanics</code> (81)</summary>

- `Modelica.Mechanics.MultiBody.Forces.Internal.standardGravityAcceleration` (function) — `Modelica/Mechanics/MultiBody/Forces/Internal/standardGravityAcceleration.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.Internal.maxWithoutEvent_d` (function) — `Modelica/Mechanics/MultiBody/Frames/Internal/maxWithoutEvent_d.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.Internal.maxWithoutEvent_dd` (function) — `Modelica/Mechanics/MultiBody/Frames/Internal/maxWithoutEvent_dd.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.Internal.resolve1_der` (function) — `Modelica/Mechanics/MultiBody/Frames/Internal/resolve1_der.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.Internal.resolve2_der` (function) — `Modelica/Mechanics/MultiBody/Frames/Internal/resolve2_der.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.Internal.resolveRelative_der` (function) — `Modelica/Mechanics/MultiBody/Frames/Internal/resolveRelative_der.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.Quaternions.absoluteRotation` (function) — `Modelica/Mechanics/MultiBody/Frames/Quaternions/absoluteRotation.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.Quaternions.angularVelocity1` (function) — `Modelica/Mechanics/MultiBody/Frames/Quaternions/angularVelocity1.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.Quaternions.from_T_inv` (function) — `Modelica/Mechanics/MultiBody/Frames/Quaternions/from_T_inv.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.Quaternions.inverseRotation` (function) — `Modelica/Mechanics/MultiBody/Frames/Quaternions/inverseRotation.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.Quaternions.multipleResolve1` (function) — `Modelica/Mechanics/MultiBody/Frames/Quaternions/multipleResolve1.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.Quaternions.multipleResolve2` (function) — `Modelica/Mechanics/MultiBody/Frames/Quaternions/multipleResolve2.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.Quaternions.planarRotation` (function) — `Modelica/Mechanics/MultiBody/Frames/Quaternions/planarRotation.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.Quaternions.relativeRotation` (function) — `Modelica/Mechanics/MultiBody/Frames/Quaternions/relativeRotation.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.Quaternions.resolve1` (function) — `Modelica/Mechanics/MultiBody/Frames/Quaternions/resolve1.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.Quaternions.resolve2` (function) — `Modelica/Mechanics/MultiBody/Frames/Quaternions/resolve2.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.Quaternions.smallRotation` (function) — `Modelica/Mechanics/MultiBody/Frames/Quaternions/smallRotation.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.Quaternions.to_T` (function) — `Modelica/Mechanics/MultiBody/Frames/Quaternions/to_T.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.Quaternions.to_T_inv` (function) — `Modelica/Mechanics/MultiBody/Frames/Quaternions/to_T_inv.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation.equalityConstraint` (function) — `Modelica/Mechanics/MultiBody/Frames/TransformationMatrices/Orientation.mo:7`
- `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.angularVelocity1` (function) — `Modelica/Mechanics/MultiBody/Frames/TransformationMatrices/angularVelocity1.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.angularVelocity2` (function) — `Modelica/Mechanics/MultiBody/Frames/TransformationMatrices/angularVelocity2.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.axesRotations` (function) — `Modelica/Mechanics/MultiBody/Frames/TransformationMatrices/axesRotations.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.axesRotationsAngles` (function) — `Modelica/Mechanics/MultiBody/Frames/TransformationMatrices/axesRotationsAngles.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.from_Q` (function) — `Modelica/Mechanics/MultiBody/Frames/TransformationMatrices/from_Q.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.from_T` (function) — `Modelica/Mechanics/MultiBody/Frames/TransformationMatrices/from_T.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.from_T_inv` (function) — `Modelica/Mechanics/MultiBody/Frames/TransformationMatrices/from_T_inv.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.from_nxz` (function) — `Modelica/Mechanics/MultiBody/Frames/TransformationMatrices/from_nxz.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.inverseRotation` (function) — `Modelica/Mechanics/MultiBody/Frames/TransformationMatrices/inverseRotation.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.multipleResolve1` (function) — `Modelica/Mechanics/MultiBody/Frames/TransformationMatrices/multipleResolve1.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.multipleResolve2` (function) — `Modelica/Mechanics/MultiBody/Frames/TransformationMatrices/multipleResolve2.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.nullRotation` (function) — `Modelica/Mechanics/MultiBody/Frames/TransformationMatrices/nullRotation.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.orientationConstraint` (function) — `Modelica/Mechanics/MultiBody/Frames/TransformationMatrices/orientationConstraint.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.planarRotationAngle` (function) — `Modelica/Mechanics/MultiBody/Frames/TransformationMatrices/planarRotationAngle.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.relativeRotation` (function) — `Modelica/Mechanics/MultiBody/Frames/TransformationMatrices/relativeRotation.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.resolveDyade1` (function) — `Modelica/Mechanics/MultiBody/Frames/TransformationMatrices/resolveDyade1.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.resolveDyade2` (function) — `Modelica/Mechanics/MultiBody/Frames/TransformationMatrices/resolveDyade2.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.smallRotation` (function) — `Modelica/Mechanics/MultiBody/Frames/TransformationMatrices/smallRotation.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.to_Q` (function) — `Modelica/Mechanics/MultiBody/Frames/TransformationMatrices/to_Q.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.to_T` (function) — `Modelica/Mechanics/MultiBody/Frames/TransformationMatrices/to_T.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.to_T_inv` (function) — `Modelica/Mechanics/MultiBody/Frames/TransformationMatrices/to_T_inv.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.to_exy` (function) — `Modelica/Mechanics/MultiBody/Frames/TransformationMatrices/to_exy.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.to_vector` (function) — `Modelica/Mechanics/MultiBody/Frames/TransformationMatrices/to_vector.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.axisRotation` (function) — `Modelica/Mechanics/MultiBody/Frames/axisRotation.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.from_T2` (function) — `Modelica/Mechanics/MultiBody/Frames/from_T2.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.from_T_inv` (function) — `Modelica/Mechanics/MultiBody/Frames/from_T_inv.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.from_nxz` (function) — `Modelica/Mechanics/MultiBody/Frames/from_nxz.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.orientationConstraint` (function) — `Modelica/Mechanics/MultiBody/Frames/orientationConstraint.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.resolveDyade2` (function) — `Modelica/Mechanics/MultiBody/Frames/resolveDyade2.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.smallRotation` (function) — `Modelica/Mechanics/MultiBody/Frames/smallRotation.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.to_T` (function) — `Modelica/Mechanics/MultiBody/Frames/to_T.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.to_T_inv` (function) — `Modelica/Mechanics/MultiBody/Frames/to_T_inv.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.to_exy` (function) — `Modelica/Mechanics/MultiBody/Frames/to_exy.mo:2`
- `Modelica.Mechanics.MultiBody.Frames.to_vector` (function) — `Modelica/Mechanics/MultiBody/Frames/to_vector.mo:2`
- `Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearing` (connector) — `Modelica/Mechanics/MultiBody/Interfaces/FlangeWithBearing.mo:2`
- `Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearingAdaptor` (model) — `Modelica/Mechanics/MultiBody/Interfaces/FlangeWithBearingAdaptor.mo:2`
- `Modelica.Mechanics.MultiBody.Sensors.Power` (model) — `Modelica/Mechanics/MultiBody/Sensors/Power.mo:2`
- `Modelica.Mechanics.MultiBody.Sensors.RelativeVelocity` (model) — `Modelica/Mechanics/MultiBody/Sensors/RelativeVelocity.mo:2`
- `Modelica.Mechanics.MultiBody.Visualizers.Advanced.Arrow` (model) — `Modelica/Mechanics/MultiBody/Visualizers/Advanced/Arrow.mo:2`
- `Modelica.Mechanics.MultiBody.Visualizers.Advanced.DoubleArrow` (model) — `Modelica/Mechanics/MultiBody/Visualizers/Advanced/DoubleArrow.mo:2`
- `Modelica.Mechanics.MultiBody.Visualizers.FixedShape2` (model) — `Modelica/Mechanics/MultiBody/Visualizers/FixedShape2.mo:2`
- `Modelica.Mechanics.MultiBody.Visualizers.Internal.FixedLines` (model) — `Modelica/Mechanics/MultiBody/Visualizers/Internal/FixedLines.mo:2`
- `Modelica.Mechanics.MultiBody.World.gravityAcceleration` (function) — `Modelica/Mechanics/MultiBody/package.mo:147`
- `Modelica.Mechanics.Rotational.Components.AngleToTorqueAdaptor.Move_w.position_der` (function) — `Modelica/Mechanics/Rotational/Components/AngleToTorqueAdaptor.mo:118`
- `Modelica.Mechanics.Rotational.Components.Disc` (model) — `Modelica/Mechanics/Rotational/Components/Disc.mo:2`
- `Modelica.Mechanics.Rotational.Sources.Move.position_der` (function) — `Modelica/Mechanics/Rotational/Sources/Move.mo:25`
- `Modelica.Mechanics.Rotational.Sources.Move.position_der2` (function) — `Modelica/Mechanics/Rotational/Sources/Move.mo:40`
- `Modelica.Mechanics.Translational.Components.InitializeFlange` (model) — `Modelica/Mechanics/Translational/Components/InitializeFlange.mo:2`
- `Modelica.Mechanics.Translational.Components.InitializeFlange.Set_a_start` (model) — `Modelica/Mechanics/Translational/Components/InitializeFlange.mo:65`
- `Modelica.Mechanics.Translational.Components.InitializeFlange.Set_flange_f` (model) — `Modelica/Mechanics/Translational/Components/InitializeFlange.mo:83`
- `Modelica.Mechanics.Translational.Components.InitializeFlange.Set_s_start` (model) — `Modelica/Mechanics/Translational/Components/InitializeFlange.mo:33`
- `Modelica.Mechanics.Translational.Components.InitializeFlange.Set_v_start` (model) — `Modelica/Mechanics/Translational/Components/InitializeFlange.mo:49`
- `Modelica.Mechanics.Translational.Sensors.PowerSensor` (model) — `Modelica/Mechanics/Translational/Sensors/PowerSensor.mo:2`
- `Modelica.Mechanics.Translational.Sensors.RelAccSensor` (model) — `Modelica/Mechanics/Translational/Sensors/RelAccSensor.mo:2`
- `Modelica.Mechanics.Translational.Sensors.RelPositionSensor` (model) — `Modelica/Mechanics/Translational/Sensors/RelPositionSensor.mo:2`
- `Modelica.Mechanics.Translational.Sensors.RelSpeedSensor` (model) — `Modelica/Mechanics/Translational/Sensors/RelSpeedSensor.mo:2`
- `Modelica.Mechanics.Translational.Sources.ConstantSpeed` (model) — `Modelica/Mechanics/Translational/Sources/ConstantSpeed.mo:2`
- `Modelica.Mechanics.Translational.Sources.Force2` (model) — `Modelica/Mechanics/Translational/Sources/Force2.mo:2`
- `Modelica.Mechanics.Translational.Sources.ForceStep` (model) — `Modelica/Mechanics/Translational/Sources/ForceStep.mo:2`
- `Modelica.Mechanics.Translational.Sources.Move.position_der` (function) — `Modelica/Mechanics/Translational/Sources/Move.mo:22`
- `Modelica.Mechanics.Translational.Sources.Move.position_der2` (function) — `Modelica/Mechanics/Translational/Sources/Move.mo:37`

</details>

<details><summary><code>Modelica.Media</code> (26)</summary>

- `Modelica.Media.Common.BridgmansTables` (record) — `Modelica/Media/package.mo:7857`
- `Modelica.Media.Common.Gibbs2_dT` (function) — `Modelica/Media/package.mo:8438`
- `Modelica.Media.Common.Gibbs2_ph` (function) — `Modelica/Media/package.mo:8419`
- `Modelica.Media.Common.Gibbs2_ps` (function) — `Modelica/Media/package.mo:8451`
- `Modelica.Media.Common.NewtonDerivatives_dT` (record) — `Modelica/Media/package.mo:8054`
- `Modelica.Media.Common.SaturationBoundaryProperties` (record) — `Modelica/Media/package.mo:7690`
- `Modelica.Media.Common.ThermoFluidSpecial.FixedIGProperties` (record) — `Modelica/Media/package.mo:6973`
- `Modelica.Media.Common.ThermoFluidSpecial.ThermoBaseVars` (record) — `Modelica/Media/package.mo:6983`
- `Modelica.Media.Common.ThermoFluidSpecial.ThermoProperties` (record) — `Modelica/Media/package.mo:7076`
- `Modelica.Media.Common.ThermoFluidSpecial.TransportProps` (record) — `Modelica/Media/package.mo:7372`
- `Modelica.Media.Common.ThermoFluidSpecial.TwoPhaseToProps_dT` (function) — `Modelica/Media/package.mo:7646`
- `Modelica.Media.Common.ThermoFluidSpecial.TwoPhaseToProps_ph` (function) — `Modelica/Media/package.mo:7616`
- `Modelica.Media.Common.ThermoFluidSpecial.gibbsToBoundaryProps` (function) — `Modelica/Media/package.mo:7410`
- `Modelica.Media.Common.TwoPhaseTransportProps` (record) — `Modelica/Media/package.mo:7781`
- `Modelica.Media.Common.cvdpT2Phase` (function) — `Modelica/Media/package.mo:8195`
- `Modelica.Media.Common.gibbsToBridgmansTables` (function) — `Modelica/Media/package.mo:8061`
- `Modelica.Media.Common.helmholtzToBridgmansTables` (function) — `Modelica/Media/package.mo:8090`
- `Modelica.Media.Interfaces.TemplateMedium.BaseProperties` (model) — `Modelica/Media/package.mo:3842`
- `Modelica.Media.Interfaces.TemplateMedium.ThermodynamicState` (record) — `Modelica/Media/package.mo:3862`
- `Modelica.Media.Interfaces.TemplateMedium.dynamicViscosity` (function) — `Modelica/Media/package.mo:3872`
- `Modelica.Media.Interfaces.TemplateMedium.isentropicExponent` (function) — `Modelica/Media/package.mo:3915`
- `Modelica.Media.Interfaces.TemplateMedium.specificEntropy` (function) — `Modelica/Media/package.mo:3889`
- `Modelica.Media.Interfaces.TemplateMedium.specificHeatCapacityCp` (function) — `Modelica/Media/package.mo:3897`
- `Modelica.Media.Interfaces.TemplateMedium.specificHeatCapacityCv` (function) — `Modelica/Media/package.mo:3906`
- `Modelica.Media.Interfaces.TemplateMedium.thermalConductivity` (function) — `Modelica/Media/package.mo:3880`
- `Modelica.Media.Interfaces.TemplateMedium.velocityOfSound` (function) — `Modelica/Media/package.mo:3924`

</details>

<details><summary><code>Modelica.StateGraph</code> (1)</summary>

- `Modelica.StateGraph.InitialStepWithSignal` (block) — `Modelica/StateGraph.mo:2089`

</details>

<details><summary><code>Modelica.Thermal</code> (30)</summary>

- `Modelica.Thermal.FluidHeatFlow.Media.Air_30degC` (record) — `Modelica/Thermal/FluidHeatFlow/Media/Air_30degC.mo:2`
- `Modelica.Thermal.FluidHeatFlow.Media.Air_70degC` (record) — `Modelica/Thermal/FluidHeatFlow/Media/Air_70degC.mo:2`
- `Modelica.Thermal.FluidHeatFlow.Media.Gylcol20_20degC` (record) — `Modelica/Thermal/FluidHeatFlow/Media/Gylcol20_20degC.mo:2`
- `Modelica.Thermal.FluidHeatFlow.Media.Gylcol50_20degC` (record) — `Modelica/Thermal/FluidHeatFlow/Media/Gylcol50_20degC.mo:2`
- `Modelica.Thermal.FluidHeatFlow.Media.MineralOil` (record) — `Modelica/Thermal/FluidHeatFlow/Media/MineralOil.mo:2`
- `Modelica.Thermal.FluidHeatFlow.Media.Water_10degC` (record) — `Modelica/Thermal/FluidHeatFlow/Media/Water_10degC.mo:2`
- `Modelica.Thermal.FluidHeatFlow.Media.Water_90degC` (record) — `Modelica/Thermal/FluidHeatFlow/Media/Water_90degC.mo:2`
- `Modelica.Thermal.FluidHeatFlow.Sensors.EnthalpyFlowSensor` (model) — `Modelica/Thermal/FluidHeatFlow/Sensors/EnthalpyFlowSensor.mo:2`
- `Modelica.Thermal.FluidHeatFlow.Sensors.MassFlowSensor` (model) — `Modelica/Thermal/FluidHeatFlow/Sensors/MassFlowSensor.mo:2`
- `Modelica.Thermal.FluidHeatFlow.Sensors.RelPressureSensor` (model) — `Modelica/Thermal/FluidHeatFlow/Sensors/RelPressureSensor.mo:2`
- `Modelica.Thermal.FluidHeatFlow.Sensors.RelTemperatureSensor` (model) — `Modelica/Thermal/FluidHeatFlow/Sensors/RelTemperatureSensor.mo:2`
- `Modelica.Thermal.FluidHeatFlow.Sensors.TemperatureSensor` (model) — `Modelica/Thermal/FluidHeatFlow/Sensors/TemperatureSensor.mo:2`
- `Modelica.Thermal.FluidHeatFlow.Sources.PressureIncrease` (model) — `Modelica/Thermal/FluidHeatFlow/Sources/PressureIncrease.mo:2`
- `Modelica.Thermal.HeatTransfer.Celsius.PrescribedTemperature` (model) — `Modelica/Thermal/HeatTransfer/Celsius/PrescribedTemperature.mo:2`
- `Modelica.Thermal.HeatTransfer.Celsius.ToKelvin` (model) — `Modelica/Thermal/HeatTransfer/Celsius/ToKelvin.mo:2`
- `Modelica.Thermal.HeatTransfer.Components.BodyRadiation` (model) — `Modelica/Thermal/HeatTransfer/Components/BodyRadiation.mo:2`
- `Modelica.Thermal.HeatTransfer.Components.ConvectiveResistor` (model) — `Modelica/Thermal/HeatTransfer/Components/ConvectiveResistor.mo:2`
- `Modelica.Thermal.HeatTransfer.Components.ThermalResistor` (model) — `Modelica/Thermal/HeatTransfer/Components/ThermalResistor.mo:2`
- `Modelica.Thermal.HeatTransfer.Fahrenheit.FixedTemperature` (model) — `Modelica/Thermal/HeatTransfer/Fahrenheit/FixedTemperature.mo:2`
- `Modelica.Thermal.HeatTransfer.Fahrenheit.FromKelvin` (model) — `Modelica/Thermal/HeatTransfer/Fahrenheit/FromKelvin.mo:2`
- `Modelica.Thermal.HeatTransfer.Fahrenheit.PrescribedTemperature` (model) — `Modelica/Thermal/HeatTransfer/Fahrenheit/PrescribedTemperature.mo:2`
- `Modelica.Thermal.HeatTransfer.Fahrenheit.TemperatureSensor` (model) — `Modelica/Thermal/HeatTransfer/Fahrenheit/TemperatureSensor.mo:2`
- `Modelica.Thermal.HeatTransfer.Fahrenheit.ToKelvin` (model) — `Modelica/Thermal/HeatTransfer/Fahrenheit/ToKelvin.mo:2`
- `Modelica.Thermal.HeatTransfer.Rankine.FixedTemperature` (model) — `Modelica/Thermal/HeatTransfer/Rankine/FixedTemperature.mo:2`
- `Modelica.Thermal.HeatTransfer.Rankine.FromKelvin` (model) — `Modelica/Thermal/HeatTransfer/Rankine/FromKelvin.mo:2`
- `Modelica.Thermal.HeatTransfer.Rankine.PrescribedTemperature` (model) — `Modelica/Thermal/HeatTransfer/Rankine/PrescribedTemperature.mo:2`
- `Modelica.Thermal.HeatTransfer.Rankine.TemperatureSensor` (model) — `Modelica/Thermal/HeatTransfer/Rankine/TemperatureSensor.mo:2`
- `Modelica.Thermal.HeatTransfer.Rankine.ToKelvin` (model) — `Modelica/Thermal/HeatTransfer/Rankine/ToKelvin.mo:2`
- `Modelica.Thermal.HeatTransfer.Sensors.ConditionalFixedHeatFlowSensor` (model) — `Modelica/Thermal/HeatTransfer/Sensors/ConditionalFixedHeatFlowSensor.mo:2`
- `Modelica.Thermal.HeatTransfer.Sensors.RelTemperatureSensor` (model) — `Modelica/Thermal/HeatTransfer/Sensors/RelTemperatureSensor.mo:2`

</details>

<details><summary><code>Modelica.Units</code> (20)</summary>

- `Modelica.Units.Conversions.from_Ah` (function) — `Modelica/Units.mo:1607`
- `Modelica.Units.Conversions.from_Hz` (function) — `Modelica/Units.mo:1747`
- `Modelica.Units.Conversions.from_Wh` (function) — `Modelica/Units.mo:1635`
- `Modelica.Units.Conversions.from_cm2` (function) — `Modelica/Units.mo:1790`
- `Modelica.Units.Conversions.to_Ah` (function) — `Modelica/Units.mo:1621`
- `Modelica.Units.Conversions.to_Hz` (function) — `Modelica/Units.mo:1762`
- `Modelica.Units.Conversions.to_Wh` (function) — `Modelica/Units.mo:1649`
- `Modelica.Units.Conversions.to_cm2` (function) — `Modelica/Units.mo:1776`
- `Modelica.Units.SI.ComplexAdmittancePerUnitLength` (operator record) — `Modelica/Units.mo:1182`
- `Modelica.Units.SI.ComplexCurrentDensity` (operator record) — `Modelica/Units.mo:1098`
- `Modelica.Units.SI.ComplexCurrentSlope` (operator record) — `Modelica/Units.mo:1094`
- `Modelica.Units.SI.ComplexElectricFieldStrength` (operator record) — `Modelica/Units.mo:1118`
- `Modelica.Units.SI.ComplexElectricFlux` (operator record) — `Modelica/Units.mo:1126`
- `Modelica.Units.SI.ComplexElectricFluxDensity` (operator record) — `Modelica/Units.mo:1122`
- `Modelica.Units.SI.ComplexImpedancePerUnitLength` (operator record) — `Modelica/Units.mo:1174`
- `Modelica.Units.SI.ComplexMagnetomotiveForce` (operator record) — `Modelica/Units.mo:1142`
- `Modelica.Units.SI.ComplexPerUnit` (operator record) — `Modelica/Units.mo:1190`
- `Modelica.Units.SI.ComplexPotentialDifference` (operator record) — `Modelica/Units.mo:1106`
- `Modelica.Units.SI.ComplexReluctance` (operator record) — `Modelica/Units.mo:1154`
- `Modelica.Units.SI.ComplexVoltageSlope` (operator record) — `Modelica/Units.mo:1114`

</details>

<details><summary><code>Modelica.Utilities</code> (14)</summary>

- `Modelica.Utilities.Files.assertNew` (function) — `Modelica/Utilities/Files.mo:534`
- `Modelica.Utilities.Files.copy` (function) — `Modelica/Utilities/Files.mo:133`
- `Modelica.Utilities.Files.copy.copyDirectory` (function) — `Modelica/Utilities/Files.mo:141`
- `Modelica.Utilities.Files.copy.copyDirectoryContents` (function) — `Modelica/Utilities/Files.mo:154`
- `Modelica.Utilities.Files.createDirectory` (function) — `Modelica/Utilities/Files.mo:396`
- `Modelica.Utilities.Files.createDirectory.assertCorrectIndex` (function) — `Modelica/Utilities/Files.mo:423`
- `Modelica.Utilities.Files.createDirectory.existDirectory` (function) — `Modelica/Utilities/Files.mo:403`
- `Modelica.Utilities.Files.exist` (function) — `Modelica/Utilities/Files.mo:514`
- `Modelica.Utilities.Files.move` (function) — `Modelica/Utilities/Files.mo:248`
- `Modelica.Utilities.Files.temporaryFileName` (function) — `Modelica/Utilities/Files.mo:657`
- `Modelica.Utilities.Internal.FileSystem.copyFile` (function) — `Modelica/Utilities/Internal.mo:194`
- `Modelica.Utilities.Internal.PartialModelicaServices.Animation.PartialSurface.surfaceCharacteristic` (function) — `Modelica/Utilities/Internal.mo:88`
- `Modelica.Utilities.System.command` (function) — `Modelica/Utilities/System.mo:174`
- `Modelica.Utilities.System.exit` (function) — `Modelica/Utilities/System.mo:184`

</details>

### 5.2 Not used by `ModelicaTest`, only exercised by MSL examples (513)

<details><summary><code>Modelica.Blocks</code> (51)</summary>

- `Modelica.Blocks.Interaction.Show.BooleanValue` (block)
- `Modelica.Blocks.Interaction.Show.IntegerValue` (block)
- `Modelica.Blocks.Interaction.Show.RealValue` (block)
- `Modelica.Blocks.Interfaces.BooleanVectorInput` (connector)
- `Modelica.Blocks.Interfaces.IntegerInput` (connector)
- `Modelica.Blocks.Interfaces.IntegerVectorInput` (connector)
- `Modelica.Blocks.Logical.TerminateSimulation` (block)
- `Modelica.Blocks.Math.ContinuousMean` (block)
- `Modelica.Blocks.Math.ContinuousSignalExtrema` (block)
- `Modelica.Blocks.Math.Division` (block)
- `Modelica.Blocks.Math.InverseBlockConstraints` (block)
- `Modelica.Blocks.Math.LinearDependency` (block)
- `Modelica.Blocks.Math.Log10` (block)
- `Modelica.Blocks.Math.MinMax` (block)
- `Modelica.Blocks.Math.MultiSum` (block)
- `Modelica.Blocks.Math.MultiSwitch` (block)
- `Modelica.Blocks.Math.Power` (block)
- `Modelica.Blocks.Math.Pythagoras` (block)
- `Modelica.Blocks.Math.RealFFT` (block)
- `Modelica.Blocks.Math.Sign` (block)
- `Modelica.Blocks.Math.SignalExtrema` (block)
- `Modelica.Blocks.Math.StandardDeviation` (block)
- `Modelica.Blocks.Math.TotalHarmonicDistortion` (block)
- `Modelica.Blocks.Math.Variance` (block)
- `Modelica.Blocks.MathBoolean.And` (block)
- `Modelica.Blocks.MathBoolean.ChangingEdge` (block)
- `Modelica.Blocks.MathBoolean.FallingEdge` (block)
- `Modelica.Blocks.MathBoolean.MultiSwitch` (block)
- `Modelica.Blocks.MathBoolean.Nand` (block)
- `Modelica.Blocks.MathBoolean.Nor` (block)
- `Modelica.Blocks.MathBoolean.Not` (block)
- `Modelica.Blocks.MathBoolean.Or` (block)
- `Modelica.Blocks.MathBoolean.RisingEdge` (block)
- `Modelica.Blocks.MathBoolean.Xor` (block)
- `Modelica.Blocks.MathInteger.MultiSwitch` (block)
- `Modelica.Blocks.MathInteger.Product` (block)
- `Modelica.Blocks.MathInteger.Sum` (block)
- `Modelica.Blocks.MathInteger.TriggeredAdd` (block)
- `Modelica.Blocks.Noise.BandLimitedWhiteNoise` (block)
- `Modelica.Blocks.Noise.GlobalSeed` (model)
- `Modelica.Blocks.Noise.NormalNoise` (block)
- `Modelica.Blocks.Noise.TruncatedNormalNoise` (block)
- `Modelica.Blocks.Noise.UniformNoise` (block)
- `Modelica.Blocks.Routing.BooleanPassThrough` (model)
- `Modelica.Blocks.Sources.CosineVariableFrequencyAndAmplitude` (block)
- `Modelica.Blocks.Sources.IntegerConstant` (block)
- `Modelica.Blocks.Sources.IntegerStep` (block)
- `Modelica.Blocks.Sources.RadioButtonSource` (block)
- `Modelica.Blocks.Sources.SampleTrigger` (block)
- `Modelica.Blocks.Sources.Sinc` (block)
- `Modelica.Blocks.Sources.SineVariableFrequencyAndAmplitude` (block)

</details>

<details><summary><code>Modelica.Clocked</code> (78)</summary>

- `Modelica.Clocked.BooleanSignals.NonPeriodic.ClockToBoolean` (block)
- `Modelica.Clocked.BooleanSignals.NonPeriodic.UnitDelay` (block)
- `Modelica.Clocked.BooleanSignals.Sampler.AssignClock` (block)
- `Modelica.Clocked.BooleanSignals.Sampler.AssignClockVectorized` (block)
- `Modelica.Clocked.BooleanSignals.Sampler.BackSample` (block)
- `Modelica.Clocked.BooleanSignals.Sampler.Hold` (block)
- `Modelica.Clocked.BooleanSignals.Sampler.Sample` (block)
- `Modelica.Clocked.BooleanSignals.Sampler.SampleClocked` (block)
- `Modelica.Clocked.BooleanSignals.Sampler.SampleVectorizedAndClocked` (block)
- `Modelica.Clocked.BooleanSignals.Sampler.ShiftSample` (block)
- `Modelica.Clocked.BooleanSignals.Sampler.SubSample` (block)
- `Modelica.Clocked.BooleanSignals.Sampler.SuperSample` (block)
- `Modelica.Clocked.BooleanSignals.Sampler.Utilities.UpSample` (block)
- `Modelica.Clocked.BooleanSignals.TickBasedSources.Pulse` (block)
- `Modelica.Clocked.BooleanSignals.TickBasedSources.Step` (block)
- `Modelica.Clocked.BooleanSignals.TimeBasedSources.Pulse` (block)
- `Modelica.Clocked.BooleanSignals.TimeBasedSources.Step` (block)
- `Modelica.Clocked.ClockSignals.Clocks.EventClock` (block)
- `Modelica.Clocked.ClockSignals.Clocks.Logical.ConjunctiveClock` (block)
- `Modelica.Clocked.ClockSignals.Clocks.Logical.DisjunctiveClock` (block)
- `Modelica.Clocked.ClockSignals.Clocks.PeriodicExactClock` (block)
- `Modelica.Clocked.ClockSignals.Clocks.PeriodicRealClock` (block)
- `Modelica.Clocked.ClockSignals.Clocks.Rotational.FixedRotationalClock` (model)
- `Modelica.Clocked.ClockSignals.Clocks.Rotational.RotationalClock` (block)
- `Modelica.Clocked.ClockSignals.Interfaces.ClockInput` (connector)
- `Modelica.Clocked.ClockSignals.Interfaces.ClockOutput` (connector)
- `Modelica.Clocked.ClockSignals.Interfaces.ClockVectorInput` (connector)
- `Modelica.Clocked.ClockSignals.Sampler.ShiftSample` (block)
- `Modelica.Clocked.ClockSignals.Sampler.SubSample` (block)
- `Modelica.Clocked.ClockSignals.Sampler.SuperSample` (block)
- `Modelica.Clocked.IntegerSignals.NonPeriodic.IntegerChange` (block)
- `Modelica.Clocked.IntegerSignals.NonPeriodic.UnitDelay` (block)
- `Modelica.Clocked.IntegerSignals.Sampler.AssignClock` (block)
- `Modelica.Clocked.IntegerSignals.Sampler.AssignClockVectorized` (block)
- `Modelica.Clocked.IntegerSignals.Sampler.BackSample` (block)
- `Modelica.Clocked.IntegerSignals.Sampler.Hold` (block)
- `Modelica.Clocked.IntegerSignals.Sampler.Sample` (block)
- `Modelica.Clocked.IntegerSignals.Sampler.SampleClocked` (block)
- `Modelica.Clocked.IntegerSignals.Sampler.SampleVectorizedAndClocked` (block)
- `Modelica.Clocked.IntegerSignals.Sampler.ShiftSample` (block)
- `Modelica.Clocked.IntegerSignals.Sampler.SubSample` (block)
- `Modelica.Clocked.IntegerSignals.Sampler.SuperSample` (block)
- `Modelica.Clocked.IntegerSignals.Sampler.Utilities.UpSample` (block)
- `Modelica.Clocked.IntegerSignals.TickBasedSources.Step` (block)
- `Modelica.Clocked.IntegerSignals.TimeBasedSources.Step` (block)
- `Modelica.Clocked.RealSignals.NonPeriodic.FractionalDelay` (block)
- `Modelica.Clocked.RealSignals.NonPeriodic.PI` (block)
- `Modelica.Clocked.RealSignals.NonPeriodic.UnitDelay` (block)
- `Modelica.Clocked.RealSignals.Periodic.FIRbyCoefficients` (block)
- `Modelica.Clocked.RealSignals.Periodic.PI` (block)
- `Modelica.Clocked.RealSignals.Sampler.AssignClock` (block)
- `Modelica.Clocked.RealSignals.Sampler.AssignClockVectorized` (block)
- `Modelica.Clocked.RealSignals.Sampler.BackSample` (block)
- `Modelica.Clocked.RealSignals.Sampler.Hold` (block)
- `Modelica.Clocked.RealSignals.Sampler.HoldWithDAeffects` (block)
- `Modelica.Clocked.RealSignals.Sampler.Sample` (block)
- `Modelica.Clocked.RealSignals.Sampler.SampleClocked` (block)
- `Modelica.Clocked.RealSignals.Sampler.SampleVectorizedAndClocked` (block)
- `Modelica.Clocked.RealSignals.Sampler.SampleWithADeffects` (block)
- `Modelica.Clocked.RealSignals.Sampler.ShiftSample` (block)
- `Modelica.Clocked.RealSignals.Sampler.SubSample` (block)
- `Modelica.Clocked.RealSignals.Sampler.SuperSample` (block)
- `Modelica.Clocked.RealSignals.Sampler.SuperSampleInterpolated` (block)
- `Modelica.Clocked.RealSignals.Sampler.Utilities.AssignClockToSquareWaveHold` (block)
- `Modelica.Clocked.RealSignals.Sampler.Utilities.AssignClockToTriggerHold` (block)
- `Modelica.Clocked.RealSignals.Sampler.Utilities.Internal.ComputationalDelay` (block)
- `Modelica.Clocked.RealSignals.Sampler.Utilities.Internal.Limiter` (block)
- `Modelica.Clocked.RealSignals.Sampler.Utilities.Internal.Quantization` (model)
- `Modelica.Clocked.RealSignals.Sampler.Utilities.Internal.UniformNoise` (block)
- `Modelica.Clocked.RealSignals.Sampler.Utilities.Internal.UniformNoiseXorshift64star` (block)
- `Modelica.Clocked.RealSignals.Sampler.Utilities.Internal.random` (function)
- `Modelica.Clocked.RealSignals.Sampler.Utilities.UpSample` (block)
- `Modelica.Clocked.RealSignals.TickBasedSources.Ramp` (block)
- `Modelica.Clocked.RealSignals.TickBasedSources.Sine` (block)
- `Modelica.Clocked.RealSignals.TickBasedSources.Step` (block)
- `Modelica.Clocked.RealSignals.TimeBasedSources.Ramp` (block)
- `Modelica.Clocked.RealSignals.TimeBasedSources.Sine` (block)
- `Modelica.Clocked.RealSignals.TimeBasedSources.Step` (block)

</details>

<details><summary><code>Modelica.ComplexBlocks</code> (8)</summary>

- `Modelica.ComplexBlocks.ComplexMath.Bode` (block)
- `Modelica.ComplexBlocks.ComplexMath.ComplexToPolar` (block)
- `Modelica.ComplexBlocks.ComplexMath.ComplexToReal` (block)
- `Modelica.ComplexBlocks.ComplexMath.Division` (block)
- `Modelica.ComplexBlocks.ComplexMath.PolarToComplex` (block)
- `Modelica.ComplexBlocks.ComplexMath.TransferFunction` (block)
- `Modelica.ComplexBlocks.ComplexMath.TransferFunction.powerOfJ` (function)
- `Modelica.ComplexBlocks.Sources.ComplexRotatingPhasor` (block)

</details>

<details><summary><code>Modelica.ComplexMath</code> (1)</summary>

- `Modelica.ComplexMath.sum` (function)

</details>

<details><summary><code>Modelica.Electrical</code> (266)</summary>

- `Modelica.Electrical.Analog.Basic.GeneralCurrentToVoltageAdaptor` (model)
- `Modelica.Electrical.Analog.Basic.GeneralVoltageToCurrentAdaptor` (model)
- `Modelica.Electrical.Analog.Basic.OpAmpDetailed` (model)
- `Modelica.Electrical.Analog.Basic.OpAmpDetailed.FCNiout_limit` (function)
- `Modelica.Electrical.Analog.Basic.OpAmpDetailed.FCNq_sum_limit` (function)
- `Modelica.Electrical.Analog.Basic.Potentiometer` (model)
- `Modelica.Electrical.Analog.Basic.TranslationalEMF` (model)
- `Modelica.Electrical.Analog.Basic.VariableConductor` (model)
- `Modelica.Electrical.Analog.Basic.VariableResistor` (model)
- `Modelica.Electrical.Analog.Ideal.AD_Converter` (model)
- `Modelica.Electrical.Analog.Ideal.ControlledCloserWithArc` (model)
- `Modelica.Electrical.Analog.Ideal.ControlledIdealClosingSwitch` (model)
- `Modelica.Electrical.Analog.Ideal.DA_Converter` (model)
- `Modelica.Electrical.Analog.Ideal.IdealOpAmp` (model)
- `Modelica.Electrical.Analog.Ideal.IdealOpAmp3Pin` (model)
- `Modelica.Electrical.Analog.Ideal.IdealOpAmpLimited` (model)
- `Modelica.Electrical.Analog.Ideal.IdealTransformer` (model)
- `Modelica.Electrical.Analog.Ideal.IdealTriac` (model)
- `Modelica.Electrical.Analog.Ideal.Idle` (model)
- `Modelica.Electrical.Analog.Ideal.OpAmpLimited` (model)
- `Modelica.Electrical.Analog.Lines.OLine` (model)
- `Modelica.Electrical.Analog.Lines.TLine` (model)
- `Modelica.Electrical.Analog.Semiconductors.Diode` (model)
- `Modelica.Electrical.Analog.Semiconductors.NMOS` (model)
- `Modelica.Electrical.Analog.Semiconductors.NPN` (model)
- `Modelica.Electrical.Analog.Semiconductors.PMOS` (model)
- `Modelica.Electrical.Analog.Semiconductors.PNP` (model)
- `Modelica.Electrical.Analog.Semiconductors.SimpleTriac` (model)
- `Modelica.Electrical.Analog.Semiconductors.Thyristor` (model)
- `Modelica.Electrical.Analog.Semiconductors.ZDiode` (model)
- `Modelica.Electrical.Analog.Semiconductors.exlin` (function)
- `Modelica.Electrical.Analog.Semiconductors.exlin2` (function)
- `Modelica.Electrical.Analog.Semiconductors.pow` (function)
- `Modelica.Electrical.Analog.Semiconductors.powlin` (function)
- `Modelica.Electrical.Analog.Sensors.PowerSensor` (model)
- `Modelica.Electrical.Analog.Sources.CosineCurrentVariableFrequencyAndAmplitude` (model)
- `Modelica.Electrical.Analog.Sources.CosineVoltage` (model)
- `Modelica.Electrical.Analog.Sources.CosineVoltageVariableFrequencyAndAmplitude` (model)
- `Modelica.Electrical.Analog.Sources.DCPowerSupply` (model)
- `Modelica.Electrical.Analog.Sources.ExpSineVoltage` (model)
- `Modelica.Electrical.Analog.Sources.LightningImpulse` (block)
- `Modelica.Electrical.Analog.Sources.LightningImpulseCurrent` (model)
- `Modelica.Electrical.Analog.Sources.LightningImpulseVoltage` (model)
- `Modelica.Electrical.Analog.Sources.PulseCurrent` (model)
- `Modelica.Electrical.Analog.Sources.SineCurrent` (model)
- `Modelica.Electrical.Analog.Sources.SineCurrentVariableFrequencyAndAmplitude` (model)
- `Modelica.Electrical.Analog.Sources.SineVoltageVariableFrequencyAndAmplitude` (model)
- `Modelica.Electrical.Analog.Sources.SupplyVoltage` (model)
- `Modelica.Electrical.Analog.Sources.TrapezoidCurrent` (model)
- `Modelica.Electrical.Analog.Sources.TrapezoidVoltage` (model)
- `Modelica.Electrical.Batteries.BaseClasses.BaseStackData` (record)
- `Modelica.Electrical.Batteries.BatteryStacks.CellRCStack` (model)
- `Modelica.Electrical.Batteries.BatteryStacks.CellStack` (model)
- `Modelica.Electrical.Batteries.BatteryStacks.SuperCap` (model)
- `Modelica.Electrical.Batteries.BatteryStacksWithSensors.Cell` (model)
- `Modelica.Electrical.Batteries.BatteryStacksWithSensors.CellRC` (model)
- `Modelica.Electrical.Batteries.BatteryStacksWithSensors.Stack` (model)
- `Modelica.Electrical.Batteries.BatteryStacksWithSensors.StackRC` (model)
- `Modelica.Electrical.Batteries.Interfaces.CellBus` (expandable connector)
- `Modelica.Electrical.Batteries.Interfaces.StackBus` (expandable connector)
- `Modelica.Electrical.Batteries.Interfaces.StackBusArrays` (expandable connector)
- `Modelica.Electrical.Batteries.ParameterRecords.CellData` (record)
- `Modelica.Electrical.Batteries.ParameterRecords.ExampleData` (record)
- `Modelica.Electrical.Batteries.ParameterRecords.StackData` (record)
- `Modelica.Electrical.Batteries.ParameterRecords.TransientData.CellData` (record)
- `Modelica.Electrical.Batteries.ParameterRecords.TransientData.ExampleData` (record)
- `Modelica.Electrical.Batteries.ParameterRecords.TransientData.RCData` (record)
- `Modelica.Electrical.Batteries.ParameterRecords.TransientData.StackData` (record)
- `Modelica.Electrical.Batteries.Utilities.BusTranscription` (block)
- `Modelica.Electrical.Batteries.Utilities.CCCVcharger` (model)
- `Modelica.Electrical.Batteries.Utilities.Impedance` (block)
- `Modelica.Electrical.Batteries.Utilities.PulseSeries` (block)
- `Modelica.Electrical.Digital.Basic.And` (model)
- `Modelica.Electrical.Digital.Basic.Nor` (model)
- `Modelica.Electrical.Digital.Basic.Not` (model)
- `Modelica.Electrical.Digital.Basic.Or` (model)
- `Modelica.Electrical.Digital.Basic.Xor` (model)
- `Modelica.Electrical.Digital.Converters.LogicToReal` (block)
- `Modelica.Electrical.Digital.Delay.InertialDelaySensitive` (model)
- `Modelica.Electrical.Digital.Delay.InertialDelaySensitiveVector` (model)
- `Modelica.Electrical.Digital.Delay.TransportDelay` (model)
- `Modelica.Electrical.Digital.Gates.AndGate` (model)
- `Modelica.Electrical.Digital.Gates.XorGate` (model)
- `Modelica.Electrical.Digital.Interfaces.DigitalInput` (connector)
- `Modelica.Electrical.Digital.Interfaces.DigitalOutput` (connector)
- `Modelica.Electrical.Digital.Interfaces.DigitalSignal` (connector)
- `Modelica.Electrical.Digital.Memories.DLATRAM` (model)
- `Modelica.Electrical.Digital.Multiplexers.MUX2x1` (model)
- `Modelica.Electrical.Digital.Registers.DFFR` (model)
- `Modelica.Electrical.Digital.Registers.DFFREG` (model)
- `Modelica.Electrical.Digital.Registers.DFFREGL` (model)
- `Modelica.Electrical.Digital.Registers.DFFREGSRH` (model)
- `Modelica.Electrical.Digital.Registers.DFFREGSRL` (model)
- `Modelica.Electrical.Digital.Registers.DFFSR` (model)
- `Modelica.Electrical.Digital.Registers.DLATR` (model)
- `Modelica.Electrical.Digital.Registers.DLATREG` (model)
- `Modelica.Electrical.Digital.Registers.DLATREGL` (model)
- `Modelica.Electrical.Digital.Registers.DLATREGSRH` (model)
- `Modelica.Electrical.Digital.Registers.DLATREGSRL` (model)
- `Modelica.Electrical.Digital.Registers.DLATSR` (model)
- `Modelica.Electrical.Digital.Sources.DigitalClock` (model)
- `Modelica.Electrical.Digital.Sources.Pulse` (model)
- `Modelica.Electrical.Digital.Sources.Set` (block)
- `Modelica.Electrical.Digital.Sources.Step` (block)
- `Modelica.Electrical.Digital.Sources.Table` (block)
- `Modelica.Electrical.Digital.Tristates.BUF3S` (model)
- `Modelica.Electrical.Digital.Tristates.INV3S` (model)
- `Modelica.Electrical.Digital.Tristates.NRXFERGATE` (model)
- `Modelica.Electrical.Digital.Tristates.NXFERGATE` (model)
- `Modelica.Electrical.Digital.Tristates.WiredX` (model)
- `Modelica.Electrical.Machines.BasicMachines.Components.CompoundDCExcitation` (model)
- `Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_ElectricalExcited` (model)
- `Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_SeriesExcited` (model)
- `Modelica.Electrical.Machines.BasicMachines.QuasiStaticDCMachines.DC_ElectricalExcited` (model)
- `Modelica.Electrical.Machines.BasicMachines.QuasiStaticDCMachines.DC_PermanentMagnet` (model)
- `Modelica.Electrical.Machines.BasicMachines.QuasiStaticDCMachines.DC_SeriesExcited` (model)
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Dd.Dd00` (model)
- `Modelica.Electrical.Machines.BasicMachines.Transformers.Dy.Dy01` (model)
- `Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCEE` (record)
- `Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCSE` (record)
- `Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCEE` (connector)
- `Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCSE` (connector)
- `Modelica.Electrical.Machines.Sensors.HallSensor` (model)
- `Modelica.Electrical.Machines.Sensors.SinCosResolver` (model)
- `Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCEE` (model)
- `Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCSE` (model)
- `Modelica.Electrical.Machines.Utilities.Coupling` (model)
- `Modelica.Electrical.Machines.Utilities.ParameterRecords.DcElectricalExcitedData` (record)
- `Modelica.Electrical.Machines.Utilities.ParameterRecords.DcSeriesExcitedData` (record)
- `Modelica.Electrical.Machines.Utilities.SinCosEvaluation` (block)
- `Modelica.Electrical.Polyphase.Basic.Conductor` (model)
- `Modelica.Electrical.Polyphase.Basic.PlugToPin_n` (model)
- `Modelica.Electrical.Polyphase.Basic.SplitToSubsystems` (model)
- `Modelica.Electrical.Polyphase.Ideal.IdealTransformer` (model)
- `Modelica.Electrical.Polyphase.Sensors.AronSensor` (model)
- `Modelica.Electrical.Polyphase.Sensors.ReactivePowerSensor` (model)
- `Modelica.Electrical.Polyphase.Sources.CosineVoltage` (model)
- `Modelica.Electrical.PowerConverters.ACDC.DiodeBridge2Pulse` (model)
- `Modelica.Electrical.PowerConverters.ACDC.DiodeCenterTap2Pulse` (model)
- `Modelica.Electrical.PowerConverters.ACDC.DiodeCenterTap2mPulse` (model)
- `Modelica.Electrical.PowerConverters.ACDC.DiodeCenterTapmPulse` (model)
- `Modelica.Electrical.PowerConverters.ACDC.HalfControlledBridge2Pulse` (model)
- `Modelica.Electrical.PowerConverters.DCDC.ChopperBuckBoost` (model)
- `Modelica.Electrical.PowerConverters.DCDC.ChopperStepDown` (model)
- `Modelica.Electrical.PowerConverters.DCDC.ChopperStepUp` (model)
- `Modelica.Electrical.PowerConverters.DCDC.Control.Voltage2DutyCycle` (block)
- `Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yd.Yd01` (model)
- `Modelica.Electrical.QuasiStatic.Polyphase.Blocks.SymmetricalComponents` (block)
- `Modelica.Electrical.QuasiStatic.Polyphase.Sensors.AronSensor` (model)
- `Modelica.Electrical.QuasiStatic.Polyphase.Sensors.PotentialSensor` (model)
- `Modelica.Electrical.QuasiStatic.Polyphase.Sensors.ReactivePowerSensor` (model)
- `Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Transformer` (model)
- `Modelica.Electrical.QuasiStatic.SinglePhase.Ideal.IdealTransformer` (model)
- `Modelica.Electrical.QuasiStatic.SinglePhase.Sensors.PotentialSensor` (model)
- `Modelica.Electrical.QuasiStatic.SinglePhase.Utilities.GraetzRectifier` (model)
- `Modelica.Electrical.QuasiStatic.SinglePhase.Utilities.IdealACDCConverter` (model)
- `Modelica.Electrical.Spice3.Basic.C_Capacitor` (model)
- `Modelica.Electrical.Spice3.Basic.Ground` (model)
- `Modelica.Electrical.Spice3.Basic.K_CoupledInductors` (model)
- `Modelica.Electrical.Spice3.Basic.L_Inductor` (model)
- `Modelica.Electrical.Spice3.Basic.R_Resistor` (model)
- `Modelica.Electrical.Spice3.Interfaces.InductiveCouplePinIn` (connector)
- `Modelica.Electrical.Spice3.Interfaces.InductiveCouplePinOut` (connector)
- `Modelica.Electrical.Spice3.Internal.BJT2` (model)
- `Modelica.Electrical.Spice3.Internal.Bjt.Bjt` (record)
- `Modelica.Electrical.Spice3.Internal.Bjt.BjtCalc` (record)
- `Modelica.Electrical.Spice3.Internal.Bjt.BjtModelLineParams` (record)
- `Modelica.Electrical.Spice3.Internal.Bjt.CurrentsCapacitances` (record)
- `Modelica.Electrical.Spice3.Internal.Bjt.bjtCalcTempDependencies` (function)
- `Modelica.Electrical.Spice3.Internal.Bjt.bjtInitEquations` (function)
- `Modelica.Electrical.Spice3.Internal.Bjt.bjtModelLineInitEquations` (function)
- `Modelica.Electrical.Spice3.Internal.Bjt.bjtNoBypassCode` (function)
- `Modelica.Electrical.Spice3.Internal.Bjt.bjtRenameParameters` (function)
- `Modelica.Electrical.Spice3.Internal.Bjt.bjtRenameParametersDev` (function)
- `Modelica.Electrical.Spice3.Internal.DIODE` (model)
- `Modelica.Electrical.Spice3.Internal.Diode.CurrentsCapacitances` (record)
- `Modelica.Electrical.Spice3.Internal.Diode.DiodeCalc` (record)
- `Modelica.Electrical.Spice3.Internal.Diode.DiodeModelLineParams` (record)
- `Modelica.Electrical.Spice3.Internal.Diode.DiodeParams` (record)
- `Modelica.Electrical.Spice3.Internal.Diode.DiodeVariables` (record)
- `Modelica.Electrical.Spice3.Internal.Diode.diodeCalcTempDependencies` (function)
- `Modelica.Electrical.Spice3.Internal.Diode.diodeInitEquations` (function)
- `Modelica.Electrical.Spice3.Internal.Diode.diodeNoBypassCode` (function)
- `Modelica.Electrical.Spice3.Internal.Diode.diodeRenameParameters` (function)
- `Modelica.Electrical.Spice3.Internal.Diode.diodeRenameParametersDev` (function)
- `Modelica.Electrical.Spice3.Internal.Diode.diodeRenameParametersDevTemp` (function)
- `Modelica.Electrical.Spice3.Internal.Fet.CurrrentsCapacitances` (record)
- `Modelica.Electrical.Spice3.Internal.Fet.Fet` (record)
- `Modelica.Electrical.Spice3.Internal.Fet.FetModelLine` (record)
- `Modelica.Electrical.Spice3.Internal.Fet.fetRenameParametersDev` (function)
- `Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTemp` (function)
- `Modelica.Electrical.Spice3.Internal.Functions.energyGapDepTemp_old` (function)
- `Modelica.Electrical.Spice3.Internal.Functions.junction2` (function)
- `Modelica.Electrical.Spice3.Internal.Functions.junction2SPICE3BJT` (function)
- `Modelica.Electrical.Spice3.Internal.Functions.junction2SPICE3MOSFETRevised` (function)
- `Modelica.Electrical.Spice3.Internal.Functions.junction3` (function)
- `Modelica.Electrical.Spice3.Internal.Functions.junctionCapCoeffs` (function)
- `Modelica.Electrical.Spice3.Internal.Functions.junctionCapRevised` (function)
- `Modelica.Electrical.Spice3.Internal.Functions.junctionCapTransTime` (function)
- `Modelica.Electrical.Spice3.Internal.Functions.junctionParamDepTempSPICE3` (function)
- `Modelica.Electrical.Spice3.Internal.Functions.junctionPotDepTemp` (function)
- `Modelica.Electrical.Spice3.Internal.Functions.junctionVCrit` (function)
- `Modelica.Electrical.Spice3.Internal.Functions.junctionVoltage23SPICE3` (function)
- `Modelica.Electrical.Spice3.Internal.Functions.resDepGeom` (function)
- `Modelica.Electrical.Spice3.Internal.Functions.resDepTemp` (function)
- `Modelica.Electrical.Spice3.Internal.Functions.saturationCurDepTempSPICE3` (function)
- `Modelica.Electrical.Spice3.Internal.Functions.saturationCurDepTempSPICE3JFET` (function)
- `Modelica.Electrical.Spice3.Internal.Functions.saturationCurDepTempSPICE3MOSFET` (function)
- `Modelica.Electrical.Spice3.Internal.JFET` (model)
- `Modelica.Electrical.Spice3.Internal.Jfet.JfetModelLine` (record)
- `Modelica.Electrical.Spice3.Internal.Jfet.calculateGateCap` (function)
- `Modelica.Electrical.Spice3.Internal.Jfet.drainCur` (function)
- `Modelica.Electrical.Spice3.Internal.Jfet.jfetCalcTempDependencies` (function)
- `Modelica.Electrical.Spice3.Internal.Jfet.jfetInitEquations` (function)
- `Modelica.Electrical.Spice3.Internal.Jfet.jfetModelLineInitEquations` (function)
- `Modelica.Electrical.Spice3.Internal.Jfet.jfetNoBypassCode` (function)
- `Modelica.Electrical.Spice3.Internal.Jfet.jfetRenameParameters` (function)
- `Modelica.Electrical.Spice3.Internal.MOS` (model)
- `Modelica.Electrical.Spice3.Internal.MaterialParameters` (record)
- `Modelica.Electrical.Spice3.Internal.Model.Model` (record)
- `Modelica.Electrical.Spice3.Internal.ModelcardBJT2` (record)
- `Modelica.Electrical.Spice3.Internal.ModelcardDIODE` (record)
- `Modelica.Electrical.Spice3.Internal.ModelcardJFET` (record)
- `Modelica.Electrical.Spice3.Internal.ModelcardMOS` (record)
- `Modelica.Electrical.Spice3.Internal.ModelcardR` (record)
- `Modelica.Electrical.Spice3.Internal.Mos.CurrrentsCapacitances` (record)
- `Modelica.Electrical.Spice3.Internal.Mos.DEVqmeyer` (record)
- `Modelica.Electrical.Spice3.Internal.Mos.MosCalc` (record)
- `Modelica.Electrical.Spice3.Internal.Mos.MosModelLineParams` (record)
- `Modelica.Electrical.Spice3.Internal.Mos.MosModelLineVariables` (record)
- `Modelica.Electrical.Spice3.Internal.Mos.mosCalcCalcTempDependencies` (function)
- `Modelica.Electrical.Spice3.Internal.Mos.mosCalcDEVqmeyer` (function)
- `Modelica.Electrical.Spice3.Internal.Mos.mosCalcInitEquations` (function)
- `Modelica.Electrical.Spice3.Internal.Mos.mosCalcNoBypassCode` (function)
- `Modelica.Electrical.Spice3.Internal.Mos1.Mos1Calc` (record)
- `Modelica.Electrical.Spice3.Internal.Mos1.Mos1ModelLineParams` (record)
- `Modelica.Electrical.Spice3.Internal.Mos1.drainCur` (function)
- `Modelica.Electrical.Spice3.Internal.Mos1.mos1ModelLineParamsInitEquations` (function)
- `Modelica.Electrical.Spice3.Internal.Mos1.mos1RenameParameters` (function)
- `Modelica.Electrical.Spice3.Internal.Mos1.mos1RenameParametersDev` (function)
- `Modelica.Electrical.Spice3.Internal.Mosfet.Mosfet` (record)
- `Modelica.Electrical.Spice3.Internal.Mosfet.MosfetCalc` (record)
- `Modelica.Electrical.Spice3.Internal.Mosfet.MosfetModelLineParams` (record)
- `Modelica.Electrical.Spice3.Internal.R_SEMI` (model)
- `Modelica.Electrical.Spice3.Internal.Rsemiconductor.ResistorModelLineParams` (record)
- `Modelica.Electrical.Spice3.Internal.Rsemiconductor.ResistorParams` (record)
- `Modelica.Electrical.Spice3.Internal.Rsemiconductor.ResistorVariables` (record)
- `Modelica.Electrical.Spice3.Internal.Rsemiconductor.resistorInitEquations` (function)
- `Modelica.Electrical.Spice3.Internal.Rsemiconductor.resistorRenameParameters` (function)
- `Modelica.Electrical.Spice3.Internal.Rsemiconductor.resistorRenameParametersDev` (function)
- `Modelica.Electrical.Spice3.Internal.SpiceConstants` (record)
- `Modelica.Electrical.Spice3.Internal.SpiceRoot.initJunctionVoltagesRevised` (function)
- `Modelica.Electrical.Spice3.Internal.SpiceRoot.limitJunctionVoltageRevised` (function)
- `Modelica.Electrical.Spice3.Internal.SpiceRoot.useInitialConditions` (function)
- `Modelica.Electrical.Spice3.Semiconductors.D_DIODE` (model)
- `Modelica.Electrical.Spice3.Semiconductors.J_NJFJFET` (model)
- `Modelica.Electrical.Spice3.Semiconductors.M_NMOS` (model)
- `Modelica.Electrical.Spice3.Semiconductors.M_PMOS` (model)
- `Modelica.Electrical.Spice3.Semiconductors.ModelcardBJT` (record)
- `Modelica.Electrical.Spice3.Semiconductors.ModelcardDIODE` (record)
- `Modelica.Electrical.Spice3.Semiconductors.ModelcardMOS` (record)
- `Modelica.Electrical.Spice3.Semiconductors.Q_NPNBJT` (model)
- `Modelica.Electrical.Spice3.Semiconductors.R_Resistor` (model)
- `Modelica.Electrical.Spice3.Sources.V_constant` (model)
- `Modelica.Electrical.Spice3.Sources.V_pulse` (model)
- `Modelica.Electrical.Spice3.Sources.V_sin` (model)

</details>

<details><summary><code>Modelica.Fluid</code> (1)</summary>

- `Modelica.Fluid.Valves.ValveDiscreteRamp` (model)

</details>

<details><summary><code>Modelica.Magnetic</code> (30)</summary>

- `Modelica.Magnetic.FluxTubes.Material.HardMagnetic.PlasticNdFeB` (record)
- `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet.M350_50A` (record)
- `Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.Steel.Steel_9SMnPb28` (record)
- `Modelica.Magnetic.FluxTubes.Shapes.FixedShape.HollowCylinderCircumferentialFlux` (model)
- `Modelica.Magnetic.FluxTubes.Shapes.FixedShape.Toroid` (model)
- `Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.ConstantReluctance` (model)
- `Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.Crossing` (model)
- `Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.EddyCurrent` (model)
- `Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.ElectroMagneticConverter` (model)
- `Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.Idle` (model)
- `Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.LeakageWithCoefficient` (model)
- `Modelica.Magnetic.QuasiStatic.FluxTubes.Basic.Short` (model)
- `Modelica.Magnetic.QuasiStatic.FluxTubes.Sensors.FrequencySensor` (model)
- `Modelica.Magnetic.QuasiStatic.FluxTubes.Sensors.MagneticPotentialDifferenceSensor` (model)
- `Modelica.Magnetic.QuasiStatic.FluxTubes.Sensors.MagneticPotentialSensor` (model)
- `Modelica.Magnetic.QuasiStatic.FluxTubes.Sensors.ReferenceSensor` (model)
- `Modelica.Magnetic.QuasiStatic.FluxTubes.Sensors.Transient.FundamentalWavePermabilitySensor` (model)
- `Modelica.Magnetic.QuasiStatic.FluxTubes.Sensors.Transient.Permeability` (model)
- `Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.FixedShape.Cuboid` (model)
- `Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.FixedShape.GenericFluxTube` (model)
- `Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.FixedShape.HollowCylinderAxialFlux` (model)
- `Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.FixedShape.HollowCylinderCircumferentialFlux` (model)
- `Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.FixedShape.HollowCylinderRadialFlux` (model)
- `Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.FixedShape.Toroid` (model)
- `Modelica.Magnetic.QuasiStatic.FluxTubes.Shapes.Leakage.QuarterCylinder` (model)
- `Modelica.Magnetic.QuasiStatic.FluxTubes.Sources.SignalMagneticFlux` (model)
- `Modelica.Magnetic.QuasiStatic.FluxTubes.Sources.SignalMagneticPotentialDifference` (model)
- `Modelica.Magnetic.QuasiStatic.FundamentalWave.BasicMachines.InductionMachines.IM_SlipRing` (model)
- `Modelica.Magnetic.QuasiStatic.FundamentalWave.BasicMachines.SynchronousMachines.SM_ReluctanceRotor` (model)
- `Modelica.Magnetic.QuasiStatic.FundamentalWave.Utilities.SwitchedRheostat` (model)

</details>

<details><summary><code>Modelica.Math</code> (6)</summary>

- `Modelica.Math.FastFourierTransform.Internal.rawRealFFT` (function)
- `Modelica.Math.FastFourierTransform.realFFT` (function)
- `Modelica.Math.FastFourierTransform.realFFTsamplePoints` (function)
- `Modelica.Math.FastFourierTransform.realFFTwriteToFile` (function)
- `Modelica.Math.Nonlinear.quadratureNewtonCotes` (function)
- `Modelica.Math.Random.Utilities.automaticGlobalSeed` (function)

</details>

<details><summary><code>Modelica.Mechanics</code> (23)</summary>

- `Modelica.Mechanics.MultiBody.Joints.Constraints.Prismatic` (model)
- `Modelica.Mechanics.MultiBody.Joints.Constraints.Revolute` (model)
- `Modelica.Mechanics.MultiBody.Joints.Constraints.Spherical` (model)
- `Modelica.Mechanics.MultiBody.Joints.Constraints.Universal` (model)
- `Modelica.Mechanics.MultiBody.Joints.Internal.RollingConstraintVerticalWheel` (model)
- `Modelica.Mechanics.MultiBody.Joints.RollingWheel` (model)
- `Modelica.Mechanics.MultiBody.Joints.RollingWheelSet` (model)
- `Modelica.Mechanics.MultiBody.Parts.RollingWheel` (model)
- `Modelica.Mechanics.MultiBody.Parts.RollingWheelSet` (model)
- `Modelica.Mechanics.Rotational.Components.InitializeFlange` (model)
- `Modelica.Mechanics.Rotational.Components.InitializeFlange.Set_a_start` (model)
- `Modelica.Mechanics.Rotational.Components.InitializeFlange.Set_flange_tau` (model)
- `Modelica.Mechanics.Rotational.Components.InitializeFlange.Set_phi_start` (model)
- `Modelica.Mechanics.Rotational.Components.InitializeFlange.Set_w_start` (model)
- `Modelica.Mechanics.Translational.Components.Brake` (model)
- `Modelica.Mechanics.Translational.Components.GeneralForceToPositionAdaptor` (model)
- `Modelica.Mechanics.Translational.Components.GeneralPositionToForceAdaptor` (model)
- `Modelica.Mechanics.Translational.Components.MassWithStopAndFriction` (model)
- `Modelica.Mechanics.Translational.Sensors.AccSensor` (model)
- `Modelica.Mechanics.Translational.Sensors.ForceSensor` (model)
- `Modelica.Mechanics.Translational.Sensors.MultiSensor` (model)
- `Modelica.Mechanics.Translational.Sensors.PositionSensor` (model)
- `Modelica.Mechanics.Translational.Sensors.SpeedSensor` (model)

</details>

<details><summary><code>Modelica.StateGraph</code> (24)</summary>

- `Modelica.StateGraph.Alternative` (block)
- `Modelica.StateGraph.Alternative.Step_in_forAlternative` (connector)
- `Modelica.StateGraph.Alternative.Step_out_forAlternative` (connector)
- `Modelica.StateGraph.InitialStep` (block)
- `Modelica.StateGraph.Interfaces.CompositeStepState` (model)
- `Modelica.StateGraph.Interfaces.CompositeStepStatePort_in` (connector)
- `Modelica.StateGraph.Interfaces.CompositeStepStatePort_out` (connector)
- `Modelica.StateGraph.Interfaces.CompositeStep_resume` (connector)
- `Modelica.StateGraph.Interfaces.CompositeStep_suspend` (connector)
- `Modelica.StateGraph.Interfaces.PartialStep.OuterStatePort` (model)
- `Modelica.StateGraph.Interfaces.Step_in` (connector)
- `Modelica.StateGraph.Interfaces.Step_out` (connector)
- `Modelica.StateGraph.Interfaces.Transition_in` (connector)
- `Modelica.StateGraph.Interfaces.Transition_out` (connector)
- `Modelica.StateGraph.Parallel` (block)
- `Modelica.StateGraph.Parallel.Transition_in_forParallel` (connector)
- `Modelica.StateGraph.Parallel.Transition_out_forParallel` (connector)
- `Modelica.StateGraph.PartialCompositeStep.InnerState` (model)
- `Modelica.StateGraph.PartialCompositeStep.OuterState` (model)
- `Modelica.StateGraph.StateGraphRoot` (model)
- `Modelica.StateGraph.Step` (block)
- `Modelica.StateGraph.StepWithSignal` (block)
- `Modelica.StateGraph.Transition` (block)
- `Modelica.StateGraph.TransitionWithSignal` (block)

</details>

<details><summary><code>Modelica.Thermal</code> (19)</summary>

- `Modelica.Thermal.FluidHeatFlow.Components.Cylinder` (model)
- `Modelica.Thermal.FluidHeatFlow.Components.OneWayValve` (model)
- `Modelica.Thermal.FluidHeatFlow.Components.OpenTank` (model)
- `Modelica.Thermal.FluidHeatFlow.Components.Valve` (model)
- `Modelica.Thermal.FluidHeatFlow.Media.Water` (record)
- `Modelica.Thermal.FluidHeatFlow.Sensors.PressureSensor` (model)
- `Modelica.Thermal.FluidHeatFlow.Sensors.VolumeFlowSensor` (model)
- `Modelica.Thermal.FluidHeatFlow.Sources.AbsolutePressure` (model)
- `Modelica.Thermal.FluidHeatFlow.Sources.IdealPump` (model)
- `Modelica.Thermal.HeatTransfer.Celsius.FixedTemperature` (model)
- `Modelica.Thermal.HeatTransfer.Celsius.FromKelvin` (model)
- `Modelica.Thermal.HeatTransfer.Celsius.TemperatureSensor` (model)
- `Modelica.Thermal.HeatTransfer.Components.Convection` (model)
- `Modelica.Thermal.HeatTransfer.Components.GeneralHeatFlowToTemperatureAdaptor` (model)
- `Modelica.Thermal.HeatTransfer.Components.GeneralTemperatureToHeatFlowAdaptor` (model)
- `Modelica.Thermal.HeatTransfer.Components.ThermalCollectorMatrix` (model)
- `Modelica.Thermal.HeatTransfer.Sensors.HeatFlowSensor` (model)
- `Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor` (model)
- `Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow` (model)

</details>

<details><summary><code>Modelica.Units</code> (3)</summary>

- `Modelica.Units.SI.ComplexMagneticFieldStrength` (operator record)
- `Modelica.Units.SI.ComplexMagneticFluxDensity` (operator record)
- `Modelica.Units.SI.ComplexPower` (operator record)

</details>

<details><summary><code>Modelica.Utilities</code> (3)</summary>

- `Modelica.Utilities.Streams.readMatrixSize` (function)
- `Modelica.Utilities.Streams.readRealMatrix` (function)
- `Modelica.Utilities.Streams.writeRealMatrix` (function)

</details>

## 6. Partial classes

A partial class is considered *covered* when at least one tested (or example) class extends it, directly or indirectly, or when it is otherwise referenced (e.g. as a `constrainedby` type or as the type of a replaceable component).

| | Partial classes | Share |
|---|---:|---:|
| Partial classes analyzed | 344 | |
| Covered via `ModelicaTest` | 259 | 75.3 % |
| Covered only via MSL examples | 53 | 15.4 % |
| Not covered at all | 32 | 9.3 % |
| … thereof without any subclass in the repository | 25 | |
| … thereof with subclasses, none of them tested | 7 | |

### 6.1 Partial classes not covered

*No subclass*: nothing in the repository extends the class; it is an interface offered to library users, and testing it requires a dedicated test model that extends it. *Untested subclasses*: the class is extended, but none of its descendants is tested or used in an example.

| Partial class | Kind | Subclasses in repository | Location |
|---|---|---:|---|
| `Modelica.Blocks.Interfaces.BooleanMIMOs` | block | *none* | `Modelica/Blocks/Interfaces.mo:733` |
| `Modelica.Blocks.Interfaces.BooleanSignalSource` | block | *none* | `Modelica/Blocks/Interfaces.mo:784` |
| `Modelica.Blocks.Interfaces.DiscreteMIMOs` | block | *none* | `Modelica/Blocks/Interfaces.mo:610` |
| `Modelica.Blocks.Interfaces.IntegerMIBooleanMOs` | block | *none* | `Modelica/Blocks/Interfaces.mo:867` |
| `Modelica.Blocks.Interfaces.IntegerMO` | block | *none* | `Modelica/Blocks/Interfaces.mo:824` |
| `Modelica.Blocks.Interfaces.MI2BooleanMOs` | block | *none* | `Modelica/Blocks/Interfaces.mo:750` |
| `Modelica.Blocks.Interfaces.MVcontrol` | block | *none* | `Modelica/Blocks/Interfaces.mo:512` |
| `Modelica.Blocks.Interfaces.MVdiscrete` | block | *none* | `Modelica/Blocks/Interfaces.mo:670` |
| `Modelica.Blocks.Interfaces.SI2BooleanSO` | block | *none* | `Modelica/Blocks/Interfaces.mo:767` |
| `Modelica.Blocks.Interfaces.SVdiscrete` | block | *none* | `Modelica/Blocks/Interfaces.mo:631` |
| `Modelica.ComplexBlocks.Interfaces.ComplexMI2MO` | block | *none* | `Modelica/ComplexBlocks/Interfaces/ComplexMI2MO.mo:2` |
| `Modelica.ComplexBlocks.Interfaces.ComplexMO` | block | *none* | `Modelica/ComplexBlocks/Interfaces/ComplexMO.mo:2` |
| `Modelica.Electrical.Analog.Interfaces.AbsoluteSensor` | model | *none* | `Modelica/Electrical/Analog/Interfaces/AbsoluteSensor.mo:2` |
| `Modelica.Electrical.Analog.Interfaces.RelativeSensor` | model | *none* | `Modelica/Electrical/Analog/Interfaces/RelativeSensor.mo:2` |
| `Modelica.Electrical.Digital.Interfaces.MIMO` | block | *none* | `Modelica/Electrical/Digital.mo:2278` |
| `Modelica.Electrical.Polyphase.Interfaces.TwoPort` | model | *none* | `Modelica/Electrical/Polyphase/Interfaces/TwoPort.mo:2` |
| `Modelica.Mechanics.MultiBody.Interfaces.PartialAbsoluteSensor` | model | *none* | `Modelica/Mechanics/MultiBody/Interfaces/PartialAbsoluteSensor.mo:2` |
| `Modelica.Mechanics.MultiBody.Interfaces.PartialForce` | model | *none* | `Modelica/Mechanics/MultiBody/Interfaces/PartialForce.mo:2` |
| `Modelica.Mechanics.MultiBody.Interfaces.PartialOneFrame_a` | model | *none* | `Modelica/Mechanics/MultiBody/Interfaces/PartialOneFrame_a.mo:2` |
| `Modelica.Mechanics.MultiBody.Interfaces.PartialRelativeSensor` | model | *none* | `Modelica/Mechanics/MultiBody/Interfaces/PartialRelativeSensor.mo:2` |
| `Modelica.Mechanics.Rotational.Interfaces.PartialOneFlangeAndSupport` | model | *none* | `Modelica/Mechanics/Rotational/Interfaces/PartialOneFlangeAndSupport.mo:2` |
| `Modelica.Mechanics.Translational.Interfaces.PartialElementaryRotationalToTranslational` | model | *none* | `Modelica/Mechanics/Translational/Interfaces/PartialElementaryRotationalToTranslational.mo:2` |
| `Modelica.Mechanics.Translational.Interfaces.PartialOneFlangeAndSupport` | model | *none* | `Modelica/Mechanics/Translational/Interfaces/PartialOneFlangeAndSupport.mo:2` |
| `Modelica.Mechanics.Translational.Interfaces.PartialTwoFlangesAndSupport` | model | *none* | `Modelica/Mechanics/Translational/Interfaces/PartialTwoFlangesAndSupport.mo:2` |
| `Modelica.Thermal.FluidHeatFlow.Interfaces.RelativeSensor` | model | *none* | `Modelica/Thermal/FluidHeatFlow/Interfaces/RelativeSensor.mo:2` |
| `Modelica.Blocks.Interfaces.IntegerSIBooleanSO` | block | 1 | `Modelica/Blocks/Interfaces.mo:852` |
| `Modelica.Clocked.RealSignals.Interfaces.PartialClockedMIMO` | block | 1 | `Modelica/Clocked/RealSignals/Interfaces/PartialClockedMIMO.mo:2` |
| `Modelica.ComplexBlocks.Interfaces.ComplexMIMO` | block | 1 | `Modelica/ComplexBlocks/Interfaces/ComplexMIMO.mo:2` |
| `Modelica.ComplexBlocks.Interfaces.ComplexSignalSource` | block | 1 | `Modelica/ComplexBlocks/Interfaces/ComplexSignalSource.mo:2` |
| `Modelica.Electrical.Spice3.Interfaces.TwoPortControlledSources` | model | 4 | `Modelica/Electrical/Spice3.mo:4318` |
| `Modelica.Thermal.FluidHeatFlow.Interfaces.RelativeSensorBase` | model | 3 | `Modelica/Thermal/FluidHeatFlow/Interfaces/RelativeSensorBase.mo:2` |
| `Modelica.Utilities.Internal.PartialModelicaServices.System.exitBase` | function | 1 | `Modelica/Utilities/Internal.mo:133` |

### 6.2 Partial classes covered only via MSL examples (53)

<details><summary>Show list</summary>

- `Modelica.Blocks.Interfaces.BooleanSISO` (block)
- `Modelica.Blocks.Interfaces.IntegerSignalSource` (block)
- `Modelica.Blocks.Interfaces.PartialBooleanMISO` (block)
- `Modelica.Blocks.Interfaces.PartialIntegerMISO` (block)
- `Modelica.Blocks.Interfaces.PartialIntegerSISO` (block)
- `Modelica.Blocks.Interfaces.PartialNoise` (block)
- `Modelica.Clocked.BooleanSignals.Interfaces.PartialClockedSISO` (block)
- `Modelica.Clocked.BooleanSignals.Interfaces.PartialClockedSO` (block)
- `Modelica.Clocked.BooleanSignals.Interfaces.PartialSISOSampler` (block)
- `Modelica.Clocked.BooleanSignals.Interfaces.SamplerIcon` (block)
- `Modelica.Clocked.ClockSignals.Clocks.Logical.PartialLogicalClock` (block)
- `Modelica.Clocked.ClockSignals.Clocks.Rotational.PartialRotationalClock` (block)
- `Modelica.Clocked.ClockSignals.Interfaces.ClockedBlockIcon` (block)
- `Modelica.Clocked.ClockSignals.Interfaces.PartialClock` (block)
- `Modelica.Clocked.ClockSignals.Interfaces.PartialPeriodicClock` (block)
- `Modelica.Clocked.IntegerSignals.Interfaces.PartialClockedSISO` (block)
- `Modelica.Clocked.IntegerSignals.Interfaces.PartialClockedSO` (block)
- `Modelica.Clocked.IntegerSignals.Interfaces.PartialSISOHold` (block)
- `Modelica.Clocked.IntegerSignals.Interfaces.PartialSISOSampler` (block)
- `Modelica.Clocked.IntegerSignals.Interfaces.SamplerIcon` (block)
- `Modelica.Clocked.RealSignals.Interfaces.PartialClockedSISO` (block)
- `Modelica.Clocked.RealSignals.Interfaces.PartialClockedSO` (block)
- `Modelica.Clocked.RealSignals.Interfaces.PartialNoise` (block)
- `Modelica.Clocked.RealSignals.Interfaces.PartialSISOHold` (block)
- `Modelica.Clocked.RealSignals.Interfaces.PartialSISOSampler` (block)
- `Modelica.Clocked.RealSignals.Interfaces.SamplerIcon` (block)
- `Modelica.ComplexBlocks.Interfaces.ComplexMIMOs` (block)
- `Modelica.ComplexBlocks.Interfaces.ComplexSI2SO` (block)
- `Modelica.ComplexBlocks.Interfaces.ComplexSISO` (block)
- `Modelica.Electrical.Analog.Interfaces.PartialConditionalHeatPort` (model)
- `Modelica.Electrical.Batteries.BaseClasses.BaseCellStack` (model)
- `Modelica.Electrical.Batteries.BaseClasses.BaseCellWithSensors` (model)
- `Modelica.Electrical.Batteries.BaseClasses.BaseStackWithSensors` (model)
- `Modelica.Electrical.Digital.Delay.DelayParams` (block)
- `Modelica.Electrical.Digital.Interfaces.MISO` (block)
- `Modelica.Electrical.Digital.Interfaces.MemoryBase` (model)
- `Modelica.Electrical.Digital.Interfaces.SISO` (block)
- `Modelica.Electrical.Polyphase.Interfaces.FourPlug` (model)
- `Modelica.Electrical.QuasiStatic.SinglePhase.Interfaces.AbsoluteSensor` (model)
- `Modelica.Electrical.Spice3.Interfaces.ConditionalSubstrate` (model)
- `Modelica.Magnetic.QuasiStatic.FluxTubes.BaseClasses.FixedShape` (model)
- `Modelica.Magnetic.QuasiStatic.FluxTubes.Interfaces.AbsoluteSensor` (model)
- `Modelica.Mechanics.MultiBody.Interfaces.partialGravityAcceleration` (function)
- `Modelica.Mechanics.Translational.Components.MassWithStopAndFriction.PartialFrictionWithStop` (model)
- `Modelica.Mechanics.Translational.Interfaces.PartialAbsoluteSensor` (model)
- `Modelica.Mechanics.Translational.Interfaces.PartialRelativeSensor` (model)
- `Modelica.StateGraph.Interfaces.PartialStateGraphIcon` (block)
- `Modelica.StateGraph.Interfaces.PartialStep` (block)
- `Modelica.StateGraph.Interfaces.PartialTransition` (block)
- `Modelica.StateGraph.PartialCompositeStep` (model)
- `Modelica.Thermal.FluidHeatFlow.BaseClasses.SinglePortBottom` (model)
- `Modelica.Thermal.FluidHeatFlow.Interfaces.AbsoluteSensor` (model)
- `Modelica.Thermal.FluidHeatFlow.Interfaces.FlowSensor` (model)

</details>

## Method and limitations

- References are collected per class from component types, `extends` clauses, modifiers (incl. `redeclare`), equations and algorithms; annotations are ignored. Names are resolved with Modelica-like lookup (enclosing scopes, qualified/aliased/wildcard imports).
- Functions called through a replaceable package (`Medium.density(...)`, `WallFriction.pressureLoss(...)`) cannot be resolved statically. Approximation: when a package is used as a package value (`package Medium = X`, `redeclare package Medium = X`), or is any package in `Modelica.Media`, all its nested classes count as used. This over-estimates coverage of `Modelica.Media`.
- Lookup through inherited (extended) scopes is not modelled; a few classes may be reported as untested although they are used via such names.
- "Used" means *instantiated or called somewhere in a test model*; it does not mean that all parameter combinations or code branches are tested, nor that the test has reference results.
- The analysis is static; conditional components (`if` declarations) count as used even if disabled.
