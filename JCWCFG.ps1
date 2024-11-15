#Script by Jonicorn c;

#Install Programs
winget install -e --id Parsec.Parsec --accept-package-agreements --accept-source-agreements
winget install -e --id Bitwarden.Bitwarden --accept-package-agreements --accept-source-agreements
winget install -e --id Valve.Steam --accept-package-agreements --accept-source-agreements
winget install -e --id Discord.Discord --accept-package-agreements --accept-source-agreements
winget install -e --id Spotify.Spotify --accept-package-agreements --accept-source-agreements
winget install -e --id Microsoft.Office --accept-package-agreements --accept-source-agreements
winget install -e --id Nvidia.GeForceExperience --accept-package-agreements --accept-source-agreements
winget install -e --id RiotGames.LeagueOfLegends.EUW --accept-package-agreements --accept-source-agreements
winget install -e --id RiotGames.LeagueOfLegends.PBE --accept-package-agreements --accept-source-agreements
winget install -e --id RiotGames.Valorant.EU --accept-package-agreements --accept-source-agreements

#visual settings
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0           #Enable Darkmode
New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name "TaskbarAl" -Value 0                  #align Taskbar to the left
If (!(Test-Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer")) {                                                             #Remove Bing Search from Windows Search (Might not work yet)
        New-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Force | Out-Null                                        #Remove Bing Search from Windows Search (Might not work yet)
}                                                                                                                                    #Remove Bing Search from Windows Search (Might not work yet)
Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "DisableSearchBoxSuggestions" -Type DWord -Value 1 #Remove Bing Search from Windows Search (Might not work yet)
Set-Itemproperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'HideFileExt' -value 0              #Show file extentions
Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name MouseSpeed -Value 0                                                         #Disable Mouse acceleration
Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name MouseThreshold1 -Value 0                                                    #Disable Mouse acceleration
Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name MouseThreshold2 -Value 0                                                    #Disable Mouse acceleration



#Backend Settings
Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location -Name Value -Value Deny                             #Disable Location Tracking
New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" -Name SensorPermissionState -Value 0 #Disable Location Tracking
Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration -Name Status -Value 0                                                         #Disable Location Tracking
Set-ItemProperty -Path HKLM:\SYSTEM\Maps -Name AutoUpdateEnabled -Value 0                                                                                                #Disable Location Tracking




#WIP
