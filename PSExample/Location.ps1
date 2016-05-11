#
# Script.ps1
#

function GetCity() {
	$address = Invoke-RestMethod -Uri http://ip-api.com/json
	return $address.city;
}
