# evtx-baseline
A repository hosting example goodware evtx logs containing sample software installation and basic user interaction

## How the data was produced

1. Install a Windows VM using a trial license (https://www.microsoft.com/en-us/evalcenter/)
2. Install Sysmon (http://live.sysinternals.com/tools/Sysmon64.exe) using [sysmon-intense.xml](sysmon-intense.xml) which is a fork of [Cyb3rWard0g's config](https://github.com/OTRF/Blacksmith/blob/master/resources/configs/sysmon/sysmon.xml)
3. Increase the Sysmon log size to not lose events by log rotation (512MB-1GB were needed for the data in this repo)
![image](https://user-images.githubusercontent.com/79651203/155971412-1045b0f6-6309-4569-8041-687e4d2f4b08.png)

4. Install software and simulate interaction


## Windows 10 Software and Interaction

### Installed Software
(performed by https://ninite.com/)

    - Chrome
    - Opera
    - Firefox
    - Teamviewer
    - WinDirStat
    - Zoom
    - Pidgin
    - Thunderbird
    - iTunes
    - VLC
    - Audacity
    - Spotify
    - Java x64 8
    - .NET Runtime x64 5+6
    - Paint.NET
    - Gimp
    - IrfanView
    - XnView
    - Inkscape
    - Greenshot
    - Foxit Reader
    - LibreOffice
    - Python x64 3
    - Filezilla
    - Notepad++
    - WinSCP
    - PuTTY
    - WinMerge
    - Eclipse
    - VS Code
    - Evernote
    - Keepass 2
    - Everything
    - Dropbox
    - Google Drive
    - OneDrive
    - 7zip
    - WinRAR

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
