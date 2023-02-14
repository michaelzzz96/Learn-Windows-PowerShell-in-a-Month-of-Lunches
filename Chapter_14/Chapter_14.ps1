Write-Host 'Question 1'
Get-CimClass win32_networkadapterconfiguration | select -expand methods |
where Name -match "dhcp"Write-Host 'Question 2'get-ciminstance win32_operatingsystem | Select BuildNumber,Caption,
@{l='Computername';e={$_.CSName}},
@{l='BIOSSerialNumber';e={(get-ciminstance win32_bios).serialnumber }} | ft
-autoWrite-Host 'Question 3'Get-WmiObject –class Win32_QuickFixEngineeringWrite-Host 'Question 4'get-wmiobject win32_service | Select Name,State,StartMode,StartNameWrite-Host 'Question 5'get-wmiobject -list *product