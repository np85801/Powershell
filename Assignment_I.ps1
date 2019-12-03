# Task By NTMS 
# 1) In the Registry, go to HKEY_CURRENT_USER\software\microsoft\Windows\-currentversion\explorer. Locate the Advanced key, and set its DontPrettyPathproperty to 1
Set-ItemProperty -Path 'HKCU:\software\microsoft\Windows\currentversion\explorer' -Name 'DontPrettyPathProperty' -Value '1'

# 2) Create a new directory called C:\Demo.
New-Item -Path "c:\" -ItemType "directory" -Name "Demo"

# 3) Create a zero-length file named C:\Demo\Test.txt 
New-Item -Path "c:\Demo" -ItemType "file" -Name "Test.txt"

# 4) Try to change the content of the Test.txt file
Add-Content -Path "c:\demo\test.txt" -Value "Hello My First assignment"

# 5) Display Value of %temp%
Get-PSProvider -PSProvider Environment
# after we get Drives Name - get its child item by following command
Get-Childitem env:temp
