Write-Host 'Question 1'
Get-Hotfix -computerName (get-adcomputer -filter * |
Select-Object -expand name)
Write-Host 'With Select-Object using the -Property parameter it will output a ADComputer object type which will not feed into Get-Hotfix, Using -ExpandProperty will convert the type as String which will be accepted into Get-Hotfix and will work.'

Write-Host 'Question 2'
get-adcomputer -filter * | Get-HotFix
Write-Host 'This wont work because Get-Hotfix doesnt accept any parameters by value.'

Write-Host 'Question 3'
get-adcomputer -filter * | Select-Object @{l='computername';e={$_.name}} | Get-Hotfix
Write-Host 'This will work since name is being labeled as computername.'

Write-Host 'Question 4'
get-adcomputer -filter * |
Select-Object @{l='computername';e={$_.name}} | Get-Process

Write-Host 'Question 5'
Get-Service -ComputerName (get-adcomputer -filter *)

Write-Host 'Question 6'
get-adcomputer -filter * | Select-Object @{l='computername';e={$_.name}} | Get-WmiObject -class Win32_BIOS
Write-Host 'This will not work due to Get-WmiObject not accepting pipeline parameter binding to the ComputerName parameter'



