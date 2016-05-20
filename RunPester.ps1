#
# execute Pester tests
#

Import-Module "$PSScriptRoot\Pester\Pester.psm1"
Invoke-Pester -CodeCoverage *.ps1 -Path "$PSScriptRoot\PSExample" -OutputFormat NUnitXml -OutputFile "$PSScriptRoot\TestResult.xml"
