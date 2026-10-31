# ImpactFailures

Minimal Modelica models that fail in Modelon Impact (OCT compiler) with code of the Modelica Standard
Library 4.1.0 (the version Impact ships). They were found while writing ModelicaTest coverage tests on branch
`coverage-improvement`.

Each failure is one model file, added by its own pull request into this branch (`impact-failures`). Each
pull request gives the error message, how it was isolated, the workaround, and the upstream MSL pull
request that avoids the failure where one exists.

To reproduce: upload `ImpactFailures/` to an Impact workspace (MSL 4.1.0) and simulate the model.
