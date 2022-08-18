# evtx-baseline
A repository hosting example goodware evtx logs containing sample software installation and basic user interaction

# Donations
- win10-client.tgz by [@phantinuss](https://github.com/phantinuss/)
- win11-client.tgz by [@frack113](https://github.com/frack113/)
- win7-x86.tgz by [@pH-T](https://github.com/pH-T)
- win2022-evtx.tgz by [@Neo23x0](https://github.com/Neo23x0)
- win2022-ad.tgz by [@frack113](https://github.com/frack113)

If you want to donate, create an issue or contact @phantinuss at twitter or keybase (the large files are only organised in releases, not the repo itself)

## How the data was produced

1. Install a Windows VM using a trial license (https://www.microsoft.com/en-us/evalcenter/)
2. Install Sysmon (http://live.sysinternals.com/tools/Sysmon64.exe) using [sysmon-intense.xml](sysmon-intense.xml) which is a fork of [Cyb3rWard0g's config](https://github.com/OTRF/Blacksmith/blob/master/resources/configs/sysmon/sysmon.xml)
3. Increase the Sysmon log size to not lose events by log rotation (512MB-1GB were needed for the data in this repo)

![image](https://user-images.githubusercontent.com/79651203/155971412-1045b0f6-6309-4569-8041-687e4d2f4b08.png)
(Location: Open "Event Viewer", navigate to "Applications and Service Log" > "Microsoft" > "Windows" > "Sysmon" > "Operational" > right click "Properties")

4. Activate logging of process creation events and all other categories with their subcategories except the "Object Access" category. At least the [Microsoft Recommendations](https://docs.microsoft.com/en-us/windows-server/identity/ad-ds/plan/security-best-practices/audit-policy-recommendations) are needed.

![image](https://user-images.githubusercontent.com/79651203/161557067-87ab2977-e351-4595-b083-cceaafe19614.png)
(Location: Open "gpedit" > "Computer Configuration" > "Windows Settings" > "Security Settings" > "Advanced Audit Policy Configuration"

5. Activate logging of process command line

![image](https://user-images.githubusercontent.com/79651203/161557776-b06f7436-908d-4da2-8331-daa50e51309a.png)

6. Activate Powershell scriptblock Logging

`gpedit.msc > Computer Configuration > Administrative Templates > Windows Components > Windows PowerShell > Turn On PowerShell Script Block Logging`

7. Install software and simulate interaction

8. Export the eventlog and contribute

## Export Event Log

Once all is done and you're ready to donate the event log, open a powershell console as administrator and execute the following command

```powershell
mkdir C:\Users\Public\Downloads\evtx; Copy-Item "C:\Windows\System32\winevt\Logs\*.evtx" -Destination C:\Users\Public\Downloads\evtx\; $filename = "C:\Users\Public\Downloads\doantion-evtx-" + $([System.Environment]::OSVersion.Version.Major) + "-" + $([System.Environment]::OSVersion.Version.Minor) + "-" + $([System.Environment]::OSVersion.Version.Build); Compress-Archive -Path C:\Users\Public\Downloads\evtx  -CompressionLevel Optimal -DestinationPath $filename; Remove-Item C:\Users\Public\Downloads\evtx\ -Recurse; explorer C:\Users\Public\Downloads\
```

The resulting file will be located in `C:\Users\Public\Downloads\` and have the following naming convention `donation-evtx-[MajorVersion]-[MinorVersion]-[Build].zip` and is now ready to be donated :)

## Windows 10 Software and Interaction

### Installed Software
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

### User Interaction

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

## Windows 2022 AD Interaction

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
