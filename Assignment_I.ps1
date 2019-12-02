# Command to get %temp% 
Get-PSProvider -PSProvider Environment
Get-Childitem env:

# if we run these two commands sequentially it gives different output, how to filter the same?
Get-PSProvider -PSProvider Environment; Get-Childitem env:
