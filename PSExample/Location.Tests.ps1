#
# Location.ps1
#
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".Tests.", ".")
. "$here\$sut"

Describe -Tags "Example" "Add-Numbers" {

    It "Check City" {
        GetCity | Should Be "Chicago"
    }

	It "Check City with Mock" {
		Mock GetCity {return "MyCity"}
        GetCity | Should Be "MyCity"
    }
}