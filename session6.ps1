

function get-osdetails
{
Param( [parameter(mandatory=$true)]

[ValidateScript( {if(test-path -path $_){$true}else{throw "Invalid Path: $_"}})]

$csvpath
)


$mycsv =Import-Csv $csvpath


}

get-osdetails -csvpath "C:\Users\Administrator\Desktop\mynumbers.csv"






<#
.Synopsis
   this function is for validte pth
.DESCRIPTION
   how to validte path in function
.EXAMPLE
   get-osdetails
.EXAMPLE
   Another example of how to use this cmdlet
#>

function get-osdetails
{
Param( [parameter(mandatory=$true)]

[ValidateScript( {if(test-path -path $_){$true}else{throw "Invalid Path: $_"}})]

$csvpath
)


$mycsv =Import-Csv $csvpath



}

get-osdetails -csvpath "C:\Users\Administrator\Desktop\mynumbers.csv"



New-Item -Path $env:PSModulePath.split(";")[0] -Force -ItemType Directory -Name OSdetailsFunction 


#write PSD1 file im module

<#
.Synopsis
   this function is for validte pth
.DESCRIPTION
   how to validte path in function
.EXAMPLE
   get-osdetails
.EXAMPLE
   Another example of how to use this cmdlet
#>

function get-osdetails
{
Param( [parameter(mandatory=$true)]

[ValidateScript( {if(test-path -path $_){$true}else{throw "Invalid Path: $_"}})]

$csvpath
)


###################################################

#PS Remoting

$credntial = Get-Credential


# in cleartext credential
$user = "Administrtor"
$pass = "ntms123#" | ConvertTo-SecureString -AsPlainText -Force
$cred = New-Object pscredential -ArgumentList $user,$pass


# EXPORT PASSWORD INTO TEXT FILE  ( no need to provide password every time in script )
$PASStxt = $PASS | ConvertFrom-SecureString 
Set-Content -Path C:\demo\pass.txt -Value $PASStxt
$pass1 = Get-Content C:\demo\pass.txt | ConvertTo-SecureString
$cred = New-Object pscredential -ArgumentList $user,$pass1

#Connect remote system\
Enter-PSSession -ComputerName SRVDEEP -Credential $cred

Enable-PSRemoting

Get-Help about_Remote_Troubleshooting -ShowWindow

Set-Item wsman:\localhost\Client\TrustedHosts -Value SRVDEEP


# create self sign certificate for HTTPS connction
Enable-psremoting

New-NetFirewallRule -DisplayName "Windows Remote Management (HTTPS-In)" -Name "Windows Remote Management (HTTPS-In)" -Profile Any -LocalPort 5986 -Protocol TCP

$Cert = New-SelfSignedCertificate -CertstoreLocation Cert:\LocalMachine\My -DnsName "SRV-Rakesh"

Export-Certificate  -Cert $Cert -FilePath "C:\Temp\Cert.cer"

New-Item -Path WSMan:\LocalHost\Listener -Transport HTTPS -Address * -CertificateThumbPrint $Cert.Thumbprint –Force

Set-Item wsman:\localhost\Client\TrustedHosts -Value 192.168.1.48 -Concatenate -Force

Set-NetConnectionProfile -NetworkCategory Private

# cHECK Trstred host in WSMAN
cd WSMan:\localhost

ls

cd 

#now can connect remote system using HTPS

$psoption = New-PSSessionOption -SkipCACheck -SkipCNCheck 

Enter-PSSession -Port 5986 -UseSSL -ComputerName SRVDEEP -SessionOption $psoption


#Invoke command ( What is the way of write invoke comand)

Get-Help Invoke-Command -ShowWindow
$Service = "Bits"
$psoption = New-PSSessionOption -SkipCACheck -SkipCNCheck 
Invoke-Command -ComputerName SRVDEEP -ScriptBlock {Get-service $using:Service | Select-Object status,name } -SessionOption $psoption -Port 5986 -UseSSL


#Invoke-Command -ArgumentList here u can pass an aray (What argument list is passed which is send in $args) only use in powershell version 1 & 2
Invoke-Command -ArgumentList $Service -ScriptBlock {

}