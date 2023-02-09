Write-Host 'Question 1'
Get-Random

Write-Host 'Question 2'
Get-Date
get-date | Get-Member
get-date | Select-Object -Property DayOfWeek

Write-Host 'Question 5'
Get-Hotfix
Description,InstalledOn,InstalledBy,HotFixID | ConvertTo-Html -Title
"HotFix Report" | Out-File HotFixReport.htm

Index,TimeGenerated,Source | Out-File elogs.txt


