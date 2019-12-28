#Define array
$students=@("kalpesh", "Amit", "Rajesh", "Rajesh")
#check / verify contentss
$students.Contains("kalpesh")
#find position
$students[0]
#to add new item in array
$students_var.insert(0, "Test")

Get-Member -InputObject $students

[System.Collections.ArrayList]$Students_Var=@("kalpesh", "Amit", "Rajesh", "Rajesh")

$students_var.add("Test")
Get-Service
get-help Write-Host -Online
Write-Host "*","*"

# LOOPS
for($i=1; $i -le 10; $i++)
{
    Write-Host "*"
}

# print  ****** 20 times horizontal using for loops
for($i=1; $i -le 20; $i++)
{
    Write-Host "*" -NoNewline
}

Get-Help Write-Host -Online
<# print  output like below 
*****
****
***
**
* #>

for($i=0; $i -le 5; $i++)
{
    Write-Host ""
    for($b=$i; $b -le 4; $b++)
    {
        Write-Host "*" -NoNewline
    }
}

<# print  output like below 
*
**
***
****
***** #>

for($i=0; $i -le 4; $i++)
{
    Write-Host ""
    for($b=0; $b -le $i; $b++)
    {
        Write-Host "*" -NoNewline
    }
}

for($i=5; $i -ge 1; $i--)
{
    Write-Host ""
    for($b=0; $b -lt $i; $b++)
    {
        Write-Host "*" -NoNewline
    }
}


<# create file in c:\demo folder 21.txt to 30.txt
New-Item -Path "c:\demo" -ItemType "file" -Name "1.txt" 
#>

for($i=21; $i -le 30; $i++)
{
New-Item -Path "c:\demo" -ItemType "file" -Name "$i.txt"
}

# update contents in all file from 41....50
for($i=21; $i -le 30; $i++)
{
Add-Content -Path C:\demo\$i.txt -Value "$($i+20)"
}

# create log file with file name log_28_dec_2019.log
for($i=0; $i -lt 10; $i++)
{
$Mydate = (get-date).adddays($i)
New-Item -Path "c:\demo" -ItemType "file" -Name "log-$($Mydate.ToString("dd-MMM-yyyy")).log"
}

Get-Help Get-Date -Online
Get-Date -Format "dd-MMM-yyyy"
Get-Date).AddDays($i)
$Mydate = (get-date).adddays(1)

$Mydate.ToString("dd-MMM-yyyy")

# For -Each loop
$services = Get-Service
Foreach($service in $services)
{
    Write-Host $($service.name)
}

# output should be like " the display of BITs is background INtellegent service

$services = Get-Service
Foreach($service in $services)
{
    Write-Host The Display name of $($service.name) is $($service.DisplayName)
}

# import emp details from one CSV and save it to another CSV withy email address 

$employees = Import-Csv -path "c:\demo\emp.csv"
Write-Host $employees
foreach($emp in $employees)
{
   $email = $($emp.firstname).Substring(0,1)+$($emp.lastname)+"@ntms.com"
   Write-Host $email 
   
}
