# Second session PowerShell - date 07/12/2019

Get-Variable
$env:PSModulePath 
Get-Help Get-Alias -Online 
Get-Alias -Definition Get-Process
Get-Alias -Definition copy-item
Get-Help Copy-Item -Online
Copy-Item C:\Windows\System32\drivers\etc c:\temp -Recurse
Get-Command -verb 
get-command -Noun psprovider
Get-PSProvider 
cd hkcu:
Get-ChildItem -Path "C:\Windows\System32" | measure-object 
(Get-ChildItem -Path "C:\Windows\System32" -Recurse).count
cd env:
Get-ChildItem
Get-Item C:\windows\System32
Get-Item Env:Path
Get-ItemProperty C:\Windows\System32 | fl *
New-Item c:\demo -ItemType directory 
Get-ItemProperty C:\demo | fl *

get-help Set-ItemProperty -Online
Set-ItemProperty C:\demo -Name "creationTime" -Value "12/07/2018 12:12:12 AM"
Get-Date | Get-Member
(Get-Date).adddays(-120)

#display all the files in the C:\windows\system32\*.dll which are older than 3 years

#variable to store date to comapre
$olddate=(get-date).AddYears(-3)

Get-ChildItem C:\Windows\system32\*.dll | Where-Object {$_.lastwritetime -lt $olddate}

New-Item -Path "c:\demo" -ItemType "file" -Name "1.txt"

Get-Command -Noun content

Add-Content -Path C:\demo\1.txt -Value "My second PowerShell Session"

Get-Content -Path C:\demo\1.txt

set-Content -Path C:\demo\1.txt -Value "Set-Content Clears existing value"

Copy-Item -Path C:\demo\1.txt -Destination C:\demo\bak.txt
Get-Help Copy-Item -Online

#sort Object command to sorting output
Get-Process | Sort-Object WS -Descending
Get-Help Sort-Object -Online

#first five object in output
Get-Process | Sort-Object WS -Descending | Select-Object -First 5
get-help Select-Object -Online

<# Pipe operator
# command transfer its output to next command as input first it checks with 
1) by Value
2) by propertyName #>
Get-Help Stop-Service -ShowWindow
Start-Transcript
Get-Process | Stop-Service

Get-Process | Get-Member
Get-Service | Get-Member
"kalpesh" | Stop-Service

Get-Service |?{$_.Status -eq "stopped"} | Start-Service -WhatIf
# "-whatif" it to check action/ouput before actual execution 
# ? is alias for where-object 

#Table is used for defining oyour own properties with keypair values

$myhash = @{name="Kalpesh";surname="Dhotre"}
$myhash.surname
$myhash

Get-Service | select_object *, @{l=name; e={$_.name1}} | Stop-Service

Get-Process | Select-Object *, @{l="WS(MB)"; e={$_.WS/1MB}} 
Get-Process

Write-Host "This is my messege" -ForegroundColor Red
 
Get-Help Write-Host -Online

Write-Warning "Hello"

get-help Write-Error -Online

Write-Error -Message "Error"

$FirstNo = Read-Host
Write-Host "Your Number is" $FirstNo

Write-host " Enter First NO" 
[int] $FirstNo = Read-Host 
Write-host " Enter Second NO" 
[int] $SecondNo = Read-Host
Write-Host "Total is $($FirstNo + $SecondNo)"
$FirstNo.GetType()
