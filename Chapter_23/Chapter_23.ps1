Write-Host 'Question 1'
New-PSSessionConfigurationFile -Path C:\TestPoint.pssc -ModulesToImport SMBShare -SessionType RestrictedRemoteServer
