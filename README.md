# evtx-baseline
A repository hosting example goodware evtx logs containing sample software installation and basic user interaction

# Donations
- win10-client.tgz by [@phantinuss](https://github.com/phantinuss/)
- win11-client.tgz by [@frack113](https://github.com/frack113/)
- win7-x86.tgz by [@pH-T](https://github.com/pH-T)
- win2022-evtx.tgz by [@Neo23x0](https://github.com/Neo23x0)
- win2022-ad.tgz by [@frack113](https://github.com/frack113)
- win2022-0-20348-azure.tgz by [@Neo23x0](https://github.com/Neo23x0)

If you want to donate, create an issue or contact @phantinuss at twitter or keybase (the large files are only organised in releases, not the repo itself)

## How the data was produced

1. Install a Windows VM using a trial license (https://www.microsoft.com/en-us/evalcenter/)

2. Install Sysmon (http://live.sysinternals.com/tools/Sysmon64.exe) using [sysmonconfig-trace.xml](https://github.com/Neo23x0/sysmon-config/blob/master/sysmonconfig-trace.xml) which is a modified fork of [Cyb3rWard0g's config](https://github.com/OTRF/Blacksmith/blob/master/resources/configs/sysmon/sysmon.xml)

3. Open a powershell console as an administrator and copy paste the following script

- The following script will:
  - Increase the Sysmon and PowerShell log size to not lose events by log rotation to 2GB
  - Increase the `Application`, `Security` and `System` logs to 512MB
  - Enable the `Microsoft-Windows-TaskScheduler/Operational` eventlog channel
  - Enable the `Microsoft-Windows-DNS-Client/Operational` eventlog channel
  - Enable the `Microsoft-Windows-DriverFrameworks-UserMode/Operational` eventlog channel
  - Enable the `Microsoft-Windows-LSA/Operational` eventlog channel

```powershell
# Incrase Sysmon logs Size
$sysmon = Get-WinEvent -ListLog Microsoft-Windows-Sysmon/Operational
$sysmon.MaximumSizeInBytes = 2147483648 #2GB
$sysmon.SaveChanges()

# Incrase Powershell logs Size
$ps1 = Get-WinEvent -ListLog Microsoft-Windows-PowerShell/Operational
$ps1.MaximumSizeInBytes = 2147483648 #2GB
$ps1.SaveChanges()

$ps2 = Get-WinEvent -ListLog "Windows PowerShell"
$ps2.MaximumSizeInBytes = 2147483648 #2GB
$ps2.SaveChanges()

# Incrase Application logs Size
$application = Get-WinEvent -ListLog Application
$application.MaximumSizeInBytes = 537919488 #512MB
$application.SaveChanges()

# Incrase Security logs Size
$security = Get-WinEvent -ListLog Security
$security.MaximumSizeInBytes = 537919488 #512MB
$security.SaveChanges()

# Incrase System logs Size
$system = Get-WinEvent -ListLog System
$system.MaximumSizeInBytes = 537919488 #512MB
$system.SaveChanges()

# Enable various Log Channels
wevtutil sl Microsoft-Windows-DNS-Client/Operational /e:true
wevtutil sl Microsoft-Windows-DriverFrameworks-UserMode/Operational /e:true
wevtutil sl Microsoft-Windows-LSA/Operational /e:true
wevtutil sl Microsoft-Windows-TaskScheduler/Operational /e:true
```

4. Activate logging of process creation events and all other categories with their subcategories except the "Object Access" category. At least the [Microsoft Recommendations](https://docs.microsoft.com/en-us/windows-server/identity/ad-ds/plan/security-best-practices/audit-policy-recommendations) are needed.

![image](https://user-images.githubusercontent.com/79651203/161557067-87ab2977-e351-4595-b083-cceaafe19614.png)

(Location: Open "gpedit" > "Computer Configuration" > "Windows Settings" > "Security Settings" > "Advanced Audit Policy Configuration"

Note: When Advanced Audit Policy Configuration settings are used, the "Audit: Force audit policy subcategory settings (Windows Vista or later) to override audit policy category settings" policy setting under Local Policies\Security Options must als be enabled.

![image](https://user-images.githubusercontent.com/31235211/224973601-b8621b17-82e8-4ea7-8249-b5b92abc8ae3.png)


5. Activate logging of process command line

![image](https://user-images.githubusercontent.com/79651203/161557776-b06f7436-908d-4da2-8331-daa50e51309a.png)

(Location: Open "gpedit" > "Computer Configuration" > "Administrative Templates" > "System" > "Audit Process Creation" > "Include command line in process creation events" set to "Enabled")

6. Activate PowerShell Script Block Logging and PowerShell Module Logging

![powershell](https://user-images.githubusercontent.com/31235211/224982142-ccacd947-c86f-4b4f-bbe7-1546627f28cc.png)

(Location: Open "gpedit" > "Computer Configuration" > "Administrative Templates" > "Windows Components" > "Windows PowerShell" > "Turn on Module Logging" set to "Enabled")
(Location: Open "gpedit" > "Computer Configuration" > "Administrative Templates" > "Windows Components" > "Windows PowerShell" > "Turn on Script Block Logging" set to "Enabled")

7. Install software and simulate interaction

8. Export the eventlog using the method described below and contribute

## Export The Event Logs

Once all is done and you're ready to donate the event log, open a powershell console as administrator and execute the following command

- This small script will copy the event logs to a seperate directory and then compress them into a single file

```powershell
mkdir $ENV:UserProfile\evtx; Copy-Item "C:\Windows\System32\winevt\Logs\*.evtx" -Destination $ENV:UserProfile\evtx\; $filename = "$ENV:UserProfile\donation-evtx-" + $([System.Environment]::OSVersion.Version.Major) + "-" + $([System.Environment]::OSVersion.Version.Minor) + "-" + $([System.Environment]::OSVersion.Version.Build); Compress-Archive -Path $ENV:UserProfile\evtx  -CompressionLevel Optimal -DestinationPath $filename; Remove-Item $ENV:UserProfile\evtx\ -Recurse; explorer $ENV:UserProfile\
```

If you have 7-Zip (`C:\Program Files\7-Zip\7z.exe`) installed on your system and for faster results, please use the following command from an elevated powershell prompt

```powershell
mkdir $ENV:UserProfile\evtx; Copy-Item "C:\Windows\System32\winevt\Logs\*.evtx" -Destination $ENV:UserProfile\evtx\; $filename = "$ENV:UserProfile\donation-evtx-" + $([System.Environment]::OSVersion.Version.Major) + "-" + $([System.Environment]::OSVersion.Version.Minor) + "-" + $([System.Environment]::OSVersion.Version.Build); & "C:\Program Files\7-Zip\7z.exe" a $filename $ENV:UserProfile\evtx\*; Remove-Item $ENV:UserProfile\evtx\ -Recurse; explorer $ENV:UserProfile\
```

The resulting file will be located in `$ENV:UserProfile\evtx\` and have the following naming convention `donation-evtx-[MajorVersion]-[MinorVersion]-[Build]` and is now ready to be donated :)

## Examples for Activity

The following chapters show what we did on out test systems to simulate real user activity. It is meant as an example of what we did to create auhtentic log data. You could use your own systems or simulate your own user activity.

### Windows 10 Software and Interaction

#### Installed Software
(performed by https://ninite.com/)

* Web Browsers
  * Chrome
  * Opera
  * Firefox
* File Sharing
* Compression
  * 7zip
  * WinRAR
* Messaging
  * Zoom
  * Pidgin
  * Thunderbird
* Other
  * Evernote
  * Keepass 2
  * Everything
* Media
  * iTunes
  * VLC
  * Audacity
  * Spotify
* Runtimes
  * Java (AdoptOpenJDK) x64 
  * .NET Runtime x64 5+6
* Developer Tools
  * Python x64 3
  * Filezilla
  * Notepad++
  * WinSCP
  * PuTTY
  * WinMerge
  * Eclipse
  * VS Code
* Imaging
  * Paint.NET
  * Gimp
  * IrfanView
  * XnView
  * Inkscape
  * Greenshot
* Documents
  * Foxit Reader
  * LibreOffice
* Online Storage
  * Dropbox
  * Google Drive
  * OneDrive
* Security
* Utilities
  * Teamviewer
  * WinDirStat

#### User Interaction

    - Start the programs and search for updates
    - Install updates
    - Surf some Websites
        - Download pdf and open
    - Chrome: Download and install MS Office Trial
    - Call windirstat
    - Make screenshot in greenshot; open in xnview/irfanview
    - Execute java --version
    - Open Filezilla to bogus ftp
    - Open notepad++ sysmon config
    - Vscode extension install powershell stuff, python stuff
    - Putty to localhost
    - Winscp to localhost
    - Open Winmerge
    - Search with everything
    - Pack and extract using 7zip
    - Pack and extract using WinRar

### Windows 2022 AD Interaction

    - Install from ISO
    - Install sysmon
    - Configure logs
    - Connect network
    - Add AD role
    - Update OS
    - Add user1 and user2
    - * install win10 for client
    - connect  DESTOP-S5D8VB9 to domain
    - Add group sigma
    - add user1 to sigma group
    - login as user2 on destop
    - change default GPO to enable powershell log
    - gpupdate /force (client too)
    - create shareme
    - put sysmon64.exe into
    - get and push a new file in shareme from client
