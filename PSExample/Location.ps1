#
# Script.ps1
#

function Get-City() {
	$address = Invoke-RestMethod -Uri http://ip-api.com/json
	return $address.city;
}
