﻿import-module NetAdapter
get-netadapter -physical

Import-Module DnsClient
Get-DnsClientCache -type AAAA,A

Get-Hotfix -Description 'Security Update'
"administrator"}

get-process -name svchost,conhost