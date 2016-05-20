#
# execute Pester tests
#

Import-Module "$PSScriptRoot\Pester\Pester.psm1"
$TestResults = Invoke-Pester -CodeCoverage *.ps1 -Path "$PSScriptRoot\PSExample" -PassThru

If($TestResults.FailedCount -gt 0)
{
    ($Results.TestResult).where({$_.Name -eq 'Is Release Build'})
}