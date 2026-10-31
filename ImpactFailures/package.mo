within ;
package ImpactFailures "Minimal models that fail in Modelon Impact (OCT) with the MSL"
  extends Modelica.Icons.Package;

  annotation (uses(Modelica(version="4.1.0")), Documentation(info="<html>
<p>
Minimal reproducers of failures of Modelon Impact (OCT compiler) with code of the Modelica Standard
Library, found while writing ModelicaTest coverage tests (branch <code>coverage-improvement</code>).
They use MSL 4.1.0, the version Impact ships. Each model is in its own file and was added by its own
pull request. Its documentation gives the error, how it was isolated, the workaround, and the upstream
MSL pull request that avoids it where one exists.
</p>
</html>"));
end ImpactFailures;
