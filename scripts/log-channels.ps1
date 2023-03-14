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