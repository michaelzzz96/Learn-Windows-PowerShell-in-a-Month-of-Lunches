import-module NetAdapter
get-netadapter -physical

Import-Module DnsClient
Get-DnsClientCache -type AAAA,A

Get-Hotfix -Description 'Security Update'No. The object that Get-Service uses doesnt have that information. get-hotfix -Description Update | where {$_.InstalledBy -match
"administrator"}

get-process -name svchost,conhost