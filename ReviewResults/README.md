# ReviewResults (preliminary)

Results of the new ModelicaTest coverage tests on branch `coverage-improvement`,
one directory per sub-library. These are review results, not reference results:
they were produced with Modelon Impact (CVode) and still need to be confirmed with
the usual reference-result tooling before they move to the reference-results
repository.

Since 2026-11-02 the Impact cases run with the libraries of **this repository** (MSL 4.2.0 dev), not with
Impact's built-in MSL 4.1.0, so they test the code of this branch. The workspace `msl-coverage` is set up as
follows (see "Impact workspace" below):

- `Modelica`, `ModelicaServices`, `Complex.mo` and `ModelicaTest` of this branch are uploaded into the
  workspace's **default project**. In a non-default project, Impact resolves `Modelica` to its built-in
  4.1.0 instead.
- The built-in Modelica 4.1.0 dependency stays **enabled**; with every built-in MSL disabled, Impact
  compiles no model at all.
- The upload of `Modelica` contains `Resources/Library/linux64/` with the C libraries (`libModelicaExternalC.a`
  etc.), built from `Resources/C-Sources` of this branch. A git checkout has none, and without them every
  model that calls `Streams`, `Strings` or `Files` fails to link (`cannot find -lModelicaExternalC`).

Running on this MSL needs these fixes of the branch, each also an upstream PR:
modelica/ModelicaStandardLibrary#4846, #4847, #4848, #4851, #4854, #4855, #4686 (applied unchanged) and #4857.

Exception: `Clocked/`. Modelon Impact does not support `Modelica.Clocked`, so these cases run on
OpenModelica 1.27.1 (CVode) with the libraries of this repository. omc loads them through
`loadModel(Modelica, {"4.2.0 dev"})`, so `OPENMODELICALIBRARY` must contain a
directory with entries `Modelica 4.2.0 dev`, `ModelicaServices 4.2.0 dev` (junctions
or symlinks to this repository) and `Complex 4.2.0 dev.mo`.

`Completion/` holds the 21 tests of the completion round, which spans several sub-libraries (see section 4
of `CoverageImprovementReport.md`). Two of them run on OpenModelica (`Completion/OpenModelica/`): the
Clocked variant, and `UniversalConstraint_StiffSpring`, because OCT computes the orientation of the body
behind `Joints.Constraints.Universal` wrongly (hubertus65/ModelicaStandardLibrary#6). ModCheck runs one
source per case list, hence the separate list. Its HTML reports are not committed for now; the commands
below regenerate them.

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

### Impact workspace

Build the C libraries for linux64 (here in WSL Ubuntu; Impact's OCT uses gcc 11.4 with an older glibc, so
the C23 symbol that newer glibc headers substitute for `strtol_l` is mapped back):

```bash
cd Modelica/Resources/BuildProjects/gcc   # in a copy, the Makefile writes to ../../Library/linux64
make all CFLAGS="-O2 -fPIC -Wno-attributes -fno-delete-null-pointer-checks"
for f in ../../Library/linux64/*.a; do
  for s in $(nm -u $f | awk '{print $2}' | grep '^__isoc23_'); do objcopy --redefine-sym $s=${s#__isoc23_} $f; done
done
```

Then zip `Modelica` (with `Resources/Library/linux64/`), `ModelicaServices`, `ModelicaTest` and upload them
and `Complex.mo` with "Import library" into the default project of a new workspace `msl-coverage`.

### Reproduce a report

```bash
cd ModCheck/ModCheck/Resources
python regression_testing.py --config <repo>/ReviewResults/Blocks/regression_cases_Blocks.yaml --store
python regression_testing.py --config <repo>/ReviewResults/Blocks/regression_cases_Blocks.yaml \
    --report-format html --batch-size 25 --html-report-dir <repo>/ReviewResults/Blocks/HtmlReports
```
