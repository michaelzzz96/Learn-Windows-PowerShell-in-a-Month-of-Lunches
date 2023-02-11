Write-Host 'Question 1'
cd HKCU:\software\microsoft\Windows\currentversion\explorer
cd advanced
Set-ItemProperty -Path . -Name DontPrettyPath -Value 1


Write-Host 'Question 2'
New-Item -Name test.txt -ItemType file –Path C:\Write-Host 'Question 3'Set-Item .\Test.txt -Value TESTING
Write-Host 'Set-Item : The registry key at the specified path does not exist.'


Write-Host 'Question 4'
Write-Host '-Include and -Exclude must be used with –Recurse or if querying a container. '
Write-Host '-Filter uses the PSProviders filter capability, which not all providers support'

