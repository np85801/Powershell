# Switch loop
$x = 5

switch ($x)
     {
         '2' {Write-Host "This is Two"}
         '3' {Write-Host "This is Three"}
         Default {Write-Host "value not found"}
     }

Get-Help ABOUT_OBJECTs -ShowWindow

# Change Computer name with powershell

Get-Command fir*

Get-Help Rename-Computer -Online

Rename-Computer -NewName "KD" -Restart

# Do while loop

Get-Command *fire*
get-help set-NetFirewallProfile -Online
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled true

Test-Connection -ComputerName SRV-rakesh -Quiet

Get-Help Test-Connection -Online

<#do
{
 if (Test-Connection -ComputerName SRV-rakesh -Quiet)
    Write-Host "
}
while ($x -gt 0) #>

$Error[0] | gm
$error[0].categoryinfo
$error[0].exception
get-kalpesh
$errorActionpreference
$ErrorActionPreference


do
{
Test-Connection -ComputerName vKD -ErrorAction SilentlyContinue -ErrorVariable EA
if($EA -ne $null)
{
    $x=0
    Write-Host "Command not successful"
}
}while($x -eq 0)

try
{
    get-process "Dinesh" -EA Stop
}
catch
{
    Write-Host "Exception is $_.exception"
}
