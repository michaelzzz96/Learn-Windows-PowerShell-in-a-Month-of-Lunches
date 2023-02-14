﻿Write-Host 'Question 1'
Get-CimClass win32_networkadapterconfiguration | select -expand methods |
where Name -match "dhcp"
@{l='Computername';e={$_.CSName}},
@{l='BIOSSerialNumber';e={(get-ciminstance win32_bios).serialnumber }} | ft
-auto