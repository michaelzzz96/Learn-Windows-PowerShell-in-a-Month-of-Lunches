Write-Host 'Question 1'
get-service | Get-Member -MemberType MethodWrite-Host 'Question 2'get-process | Get-Member -MemberType MethodWrite-Host 'Question 3'Get-CimClass -ClassName Win32_Process | Select-Object -ExpandProperty CimClassMethods


Write-Host 'Question 4'
Get-Process -Name Notepad | Stop-Process
Get-Process -Name Notepad | ForEach-Object {$_.kill()}
Get-CimInstance -ClassName Win32_Process -filter "name = 'notepad.exe'" | Invoke-CimMethod -MethodName Terminate
Stop-Process -Name Notepad


Write-Host 'Question 5'
Get-Content C:\dev\servers.txt | ForEach-Object {$_.toUpper()}
