# ReviewResults (preliminary)

Results of the new ModelicaTest coverage tests on branch `coverage-improvement`,
one directory per sub-library. These are review results, not reference results:
they were produced with Modelon Impact (MSL 4.1.0 dependency, CVode) and still
need to be confirmed with the usual reference-result tooling before they move
to the reference-results repository.

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
