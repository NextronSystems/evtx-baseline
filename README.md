# evtx-baseline
A repository hosting example goodware evtx logs containing sample software installation and basic user interaction

# Donations
- win10-client.tgz by [@phantinuss](https://github.com/phantinuss/)
- win11-client.tgz by [@frack113](https://github.com/frack113/)

If you want to donate, create an issue or contact @phantinuss at twitter or keybase (the large files are only organised in releases, not the repo itself)

## How the data was produced

1. Install a Windows VM using a trial license (https://www.microsoft.com/en-us/evalcenter/)
2. Install Sysmon (http://live.sysinternals.com/tools/Sysmon64.exe) using [sysmon-intense.xml](sysmon-intense.xml) which is a fork of [Cyb3rWard0g's config](https://github.com/OTRF/Blacksmith/blob/master/resources/configs/sysmon/sysmon.xml)
3. Increase the Sysmon log size to not lose events by log rotation (512MB-1GB were needed for the data in this repo)
![image](https://user-images.githubusercontent.com/79651203/155971412-1045b0f6-6309-4569-8041-687e4d2f4b08.png)

4. Install software and simulate interaction


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
