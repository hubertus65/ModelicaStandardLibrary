# ReviewResults (preliminary)

Results of the new ModelicaTest coverage tests on branch `coverage-improvement`,
one directory per sub-library. These are review results, not reference results:
they were produced with Modelon Impact (MSL 4.1.0 dependency, CVode) and still
need to be confirmed with the usual reference-result tooling before they move
to the reference-results repository.

Exception: `Clocked/`. The MSL distribution of Modelon Impact does not contain
`Modelica.Clocked`, so these cases run on OpenModelica 1.27.1 (CVode) with the
libraries of this repository (MSL 4.2.0 dev). omc loads them through
`loadModel(Modelica, {"4.2.0 dev"})`, so `OPENMODELICALIBRARY` must contain a
directory with entries `Modelica 4.2.0 dev`, `ModelicaServices 4.2.0 dev` (junctions
or symlinks to this repository) and `Complex 4.2.0 dev.mo`.

Some single cases of other sub-libraries cannot run on Impact either. They use a class that is new in
MSL 4.2, or MSL 4.1.0 code that OCT fails on and that this branch fixes. Each fix is also an upstream PR:
modelica/ModelicaStandardLibrary#4846, #4847, #4848 and #4851. These cases run on OpenModelica the same
way. ModCheck runs one source per case list, so they have their own case list, baselines and report in
`<SubLibrary>/OpenModelica/`. The reason is stated at each case.

`Completion/` holds the 21 tests of the completion round, which spans several sub-libraries (see section 4
of `CoverageImprovementReport.md`). Two of them run on OpenModelica: the Clocked variant, and
`UniversalConstraint_StiffSpring`, whose constraint orientation OCT lets drift. Its HTML reports
(`Completion/HtmlReports/`, `Completion/OpenModelica/HtmlReports/`) were generated but are not committed
for now; the commands below regenerate them.

Each `<SubLibrary>/` directory holds:

| Path | Content |
|---|---|
| `regression_cases_<SubLibrary>.yaml` | [ModCheck](https://github.com/MBILLC/ModCheck) case list: one case per new test model, simulation setup and comparison signals |
| `ReferenceResults/` | ModCheck baselines (`.npz`), simulated at `rtol` = 1e-6 |
| `Results/` | the latest ModCheck checking run (simulated at 100 x `rtol`, capped by `max_rtol` where set) |
| `HtmlReports/index.html` | the ModCheck HTML report of that checking run: verdict per comparison signal, plots of reference vs. check |
| `ModelicaTest/<Package>/<Model>/` | the baseline exported as MSL-style CSV with its `comparisonSignals.txt` |

The comparison signals of each model are also stored in the library, in
`ModelicaTest/Resources/Reference/ModelicaTest/<Package>/<Model>/comparisonSignals.txt`.

Reproduce a report (needs a Modelon Impact workspace `msl-coverage` holding the
test models):

```bash
cd ModCheck/ModCheck/Resources
python regression_testing.py --config <repo>/ReviewResults/Blocks/regression_cases_Blocks.yaml --store
python regression_testing.py --config <repo>/ReviewResults/Blocks/regression_cases_Blocks.yaml \
    --report-format html --batch-size 100 --html-report-dir <repo>/ReviewResults/Blocks/HtmlReports
```
