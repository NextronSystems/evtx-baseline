$auditPolicyArray = @{
    ### Account Logon
    "Credential Validation" = "{0CCE923F-69AE-11D9-BED3-505054503030}"; 
    "Kerberos Authentication Service" = "{0CCE9242-69AE-11D9-BED3-505054503030}"; 
    "Kerberos Service Ticket Operations" = "{0CCE9240-69AE-11D9-BED3-505054503030}"; 
    "Other Account Logon Events" = "{0CCE9241-69AE-11D9-BED3-505054503030}"; 
    ### Account Management
    #"Application Group Management" = "{0CCE9239-69AE-11D9-BED3-505054503030}"; 
    "Computer Account Management" = "{0CCE9236-69AE-11D9-BED3-505054503030}"; 
    #"Distribution Group Management" = "{0CCE9238-69AE-11D9-BED3-505054503030}"; 
    "Other Account Management Events" = "{0CCE923A-69AE-11D9-BED3-505054503030}"; 
    "Security Group Management" = "{0CCE9237-69AE-11D9-BED3-505054503030}"; 
    "User Account Management" = "{0CCE9235-69AE-11D9-BED3-505054503030}"; 
    ### Detailed Tracking
    "DPAPI Activity" = "{0CCE922D-69AE-11D9-BED3-505054503030}"; 
    #"Plug and Play Events" = "{0CCE9248-69AE-11D9-BED3-505054503030}"; 
    "Process Creation" = "{0CCE922B-69AE-11D9-BED3-505054503030}"; 
    #"Process Termination" = "{0CCE922C-69AE-11D9-BED3-505054503030}"; 
    #"RPC Events" = "{0CCE922E-69AE-11D9-BED3-505054503030}"; 
    "Token Right Adjusted Events" = "{0CCE924A-69AE-11D9-BED3-505054503030}"; 
    ### DS Access
    #"Detailed Directory Service Replication" = "{0CCE923E-69AE-11D9-BED3-505054503030}"; 
    #"Directory Service Access" = "{0CCE923B-69AE-11D9-BED3-505054503030}"; 
    #"Directory Service Changes" = "{0CCE923C-69AE-11D9-BED3-505054503030}"; 
    #"Directory Service Replication" = "{0CCE923D-69AE-11D9-BED3-505054503030}"; 
    ### Logon/Logoff
    "Account Lockout" = "{0CCE9217-69AE-11D9-BED3-505054503030}"; 
    #"User / Device Claims" = "{0CCE9247-69AE-11D9-BED3-505054503030}"; 
    "Group Membership" = "{0CCE9249-69AE-11D9-BED3-505054503030}"; 
    #"IPsec Extended Mode" = "{0CCE921A-69AE-11D9-BED3-505054503030}"; 
    #"IPsec Main Mode" = "{0CCE9218-69AE-11D9-BED3-505054503030}"; 
    #"IPsec Quick Mode" = "{0CCE9219-69AE-11D9-BED3-505054503030}"; 
    #"Logoff" = "{0CCE9216-69AE-11D9-BED3-505054503030}"; 
    "Logon" = "{0CCE9215-69AE-11D9-BED3-505054503030}"; 
    #"Network Policy Server" = "{0CCE9243-69AE-11D9-BED3-505054503030}"; 
    "Other Logon/Logoff Events" = "{0CCE921C-69AE-11D9-BED3-505054503030}"; 
    "Special Logon" = "{0CCE921B-69AE-11D9-BED3-505054503030}"; 
    ### Object Access
    #"Application Generated" = "{0CCE9222-69AE-11D9-BED3-505054503030}"; 
    #"Certification Services" = "{0CCE9221-69AE-11D9-BED3-505054503030}";
    "Detailed File Share" = "{0CCE9244-69AE-11D9-BED3-505054503030}"; 
    "File Share" = "{0CCE9224-69AE-11D9-BED3-505054503030}"; 
    #"Filtering Platform Connection" = "{0CCE9226-69AE-11D9-BED3-505054503030}"; 
    #"Filtering Platform Packet Drop" = "{0CCE9225-69AE-11D9-BED3-505054503030}"; 
    #"Handle Manipulation" = "{0CCE9223-69AE-11D9-BED3-505054503030}"; 
    "Kernel Object" = "{0CCE921F-69AE-11D9-BED3-505054503030}"; 
    "Other Object Access Events" = "{0CCE9227-69AE-11D9-BED3-505054503030}"; 
    #"Removable Storage" = "{0CCE9245-69AE-11D9-BED3-505054503030}"; 
    #"SAM" = "{0CCE9220-69AE-11D9-BED3-505054503030}"; 
    #"Central Policy Staging" = "{0CCE9246-69AE-11D9-BED3-505054503030}"; 
    ### Policy Change
    "Audit Policy Change" = "{0CCE922F-69AE-11D9-BED3-505054503030}"; 
    "Authentication Policy Change" = "{0CCE9230-69AE-11D9-BED3-505054503030}"; 
    "Authorization Policy Change" = "{0CCE9231-69AE-11D9-BED3-505054503030}"; 
    #"Filtering Platform Policy Change" = "{0CCE9233-69AE-11D9-BED3-505054503030}"; 
    "MPSSVC Rule-Level Policy Change" = "{0CCE9232-69AE-11D9-BED3-505054503030}"; 
    "Other Policy Change Events" = "{0CCE9234-69AE-11D9-BED3-505054503030}"; 
    ### Privilege Use
    #"Non Sensitive Privilege Use" = "{0CCE9229-69AE-11D9-BED3-505054503030}"; 
    "Other Privilege Use Events" = "{0CCE922A-69AE-11D9-BED3-505054503030}"; 
    "Sensitive Privilege Use" = "{0CCE9228-69AE-11D9-BED3-505054503030}"; 
    # System
    "IPsec Driver" = "{0CCE9213-69AE-11D9-BED3-505054503030}"; 
    "Other System Events" = "{0CCE9214-69AE-11D9-BED3-505054503030}"; 
    "Security State Change" = "{0CCE9210-69AE-11D9-BED3-505054503030}"; 
    "Security System Extension" = "{0CCE9211-69AE-11D9-BED3-505054503030}"; 
    "System Integrity" = "{0CCE9212-69AE-11D9-BED3-505054503030}"; 
    ### Global Object Access Auditing
    #"File System" = "{0CCE921D-69AE-11D9-BED3-505054503030}"; 
    #"Registry" = "{0CCE921E-69AE-11D9-BED3-505054503030}";     
}
$eventLogsArray = @{
    "Microsoft-Windows-Sysmon/Operational" = 2;
    "Security" = 2;
    "System" = 2;
    "Application" = 2;
    "Windows PowerShell" = 2;
    "Microsoft-Windows-PowerShell/Operational" = 2;
}
$eventLogsAdditionalArray = (
    "Microsoft-Windows-DNS-Client/Operational",
    "Microsoft-Windows-DriverFrameworks-UserMode/Operational",
    "Microsoft-Windows-LSA/Operational",
    "Microsoft-Windows-TaskScheduler/Operational"
)

$errors= 0
Write-Host "Checking Audit Policy ..."
Foreach ($i in $auditPolicyArray.GetEnumerator()){
    $auditEnabled = (auditpol /get /Subcategory:"$($i.Value)").Trim() -match "Success"
    if ( -not $auditEnabled ) {
        Write-Host "   [ERROR] Audit" $i.Name "is disabled." -BackgroundColor DarkRed
        $errors += 1
    }
}
Write-Host "`nChecking If Sysmon Is Installed...."
$sysmon = $False
try {
    $x = Get-WinEvent -ListLog Microsoft-Windows-Sysmon/Operational -ErrorAction Stop
    Write-Host "   [OK] Sysmon Is Installed" -BackgroundColor Green
    $sysmon = $True
}
catch {
    Write-Host "   [ERROR] Sysmon Isn't Installed" -BackgroundColor DarkRed
}
Write-Host "`nChecking Log Size Configuration...."
Foreach ($i in $eventLogsArray.GetEnumerator()){
    if ($i.Name -eq "Microsoft-Windows-Sysmon/Operational"){
        if ($sysmon){
            $size = (Get-WinEvent -ListLog $i.Name).MaximumSizeInBytes / 1000000000
            if ($i.Value -gt $size){
                Write-Host "   [ERROR] " $i.Name "Log Size Isn't configured" -BackgroundColor DarkRed
                $errors += 1
            }
        }
    }
    else{
        $size = (Get-WinEvent -ListLog $i.Name).MaximumSizeInBytes / 1000000000
        
        if ($i.Value -gt $size){
            Write-Host "   [ERROR] " $i.Name "Log Size Isn't configured" -BackgroundColor DarkRed
            $errors += 1
        }
    }
}
Write-Host "`nChecking Additional Log Channels ..."
Foreach ($i in $eventLogsAdditionalArray){
    $e = wevtutil gl $i | findstr "enabled: true"
    if ( $e -eq "enabled: false" ) {
        Write-Host "   [ERROR] " $i "Log Channel isn't enabled" -BackgroundColor DarkRed
        $errors += 1
    }
}

if ($errors -eq 0){
    Write-Host "All Good"
}