#
# execute Pester tests
#

Import-Module "$PSScriptRoot\Pester\Pester.psm1"
$testResults = Invoke-Pester -CodeCoverage *.ps1 -Path "$PSScriptRoot\PSExample" -PassThru # -OutputFormat NUnitXml -OutputFile "$PSScriptRoot\TestResult.xml"

If($testResults.FailedCount -gt 0)
{
    Exit 1
}