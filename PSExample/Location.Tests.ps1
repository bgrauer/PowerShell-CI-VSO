#
# Location.ps1
#
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".Tests.", ".")
. "$here\$sut"

Describe -Tags "Example" "Add-Numbers" {

    It "Check City" {
        Get-City | Should Be "MyCity"
    }

	It "Check City with Mock" {
		Mock Get-City {return "MyCity"}
        Get-City | Should Be "MyCity"
    }
}