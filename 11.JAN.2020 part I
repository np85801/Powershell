#get help of loop
Get-Help about_if -showwindow

# Basic If loop application
$b = 3

if ($b -eq 2)
{
    Write-Host "Value of varibale is 2"
}
else
{
    Write-Host "Value is not correct"
}


# check even and odd numbers between 1 to 10
for($i=1; $i -le 10; $i++)
{
if ($i%2 -eq 0)
{
    Write-Host "$i is even Number"
}
else
{
    Write-Host "$i is odd Number"
}
}

# Get all service name and check weather service name contain "win" 
# use -like operator

$services = Get-Service

foreach($service in $services)
{
    if($service.name -like "*win*")
    {
        write-host "service name $($service.name) contains WIN" -ForegroundColor red
    }
    else
    {
        Write-Host "service name $($service.name) does not contains WIN"
    }
}

# use of -match
# -cmatch is case sensative 
# [a-z]{3} - number of occurances 3 times
# [a-z]{3,} - min 3 occurances and max no limit
# [a-z]{3,5} - min 3 and maximum 5

"kalpesh" -match "lp"
"kalpesh" -match "esh$"
"kalpesh" -match "^kal"

"kalpesh" -like "ka*"

"a_bcd@abcd.colm" -match "\w{2,15}(_|.|-)?\w{2,15}[@]\w{2,15}(_|-)?\w{2,15}\.(com|in|org)" 

"kalpesh" -cmatch "k[A-Z]lpesh"

"kaaalpesh" -match  "k[a-z]{2,3}lpesh"
"Kaalpesh" -match "\W" 


Get-Help about_regular_expression -ShowWindow

"192.168.0.1" -match "[0-2][0-9][0-5]{1,3}.[0-2][0-5][0-5]{1,3}.[0-2][0-5][0-5]{1,3}.[0-2][0-5][0-5]{1,3}"

"255" -match "[0-1]{0,3}[0-5]{0,3}[0-5]{1,3}"

"010" -match "[0-2][0-5][0-5]{1,3}"

256 -match "[0-9]|[10][99]|[100-199]|[200-255]" 


# coorect expression
"333" -match "^((0?[1-9])|([1-9][0-9])|([1][0-9][0-9])|(2[0-4][0-9])|(25[0-5]))$"

333 -match "2[0-4][0-9]"
"333" -match "^([1-9][0-9])$"

192.168.0.1 -match "^(0?[0-9])|([1-9][0-9])|([1][0-9][0-9])|(2[0-4][0-9])|(25[0-5])\.){3}(^((0?[1-9])|([1-9][0-9])|([1][0-9][0-9])|(2[0-4][0-9])|(25[0-5]))$"

192.168.0.1 -match "^((0?[1-9])|([1-9][0-9])|([1][0-9][0-9])|(2[0-4][0-9])|(25[0-5])[\.]){3}((0?[1-9])|([1-9][0-9])|([1][0-9][0-9])|(2[0-4][0-9])|(25[0-5]))$"


Get-ChildItem c:\windows\*.* | Where-Object 
?{$_.name -match "[0-9]{2}"}

"ka3lp4pfd" -match "[0-9][0-9]"


Get-Content -Path C:\Windows\Logs\CBS\CBS.log | Where-Object
{$_-match "[0]{6}[0-9]{2}\screating"


S-1-5-18
S-1-5-21-2833469331-3397742219-1677346579-500

"S-1-5-21-2833469331-33977422191-1677346579-500" -match "^S-1-5-\d{2}(-\d{10}-\d{10}-\d{10}-\d{3})?"
