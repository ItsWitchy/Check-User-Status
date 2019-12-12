$csv = Import-Csv -Path '.\OneDrive - OPRG\Work\Scripts\STLUsers.csv'

ForEach($name in $csv)
{
    Get-ADUser -filter $name -Properties whenChanged, lastLogon
}

Select-Object SamAccountName, whenChanged, lastLogon
Export-Csv -Path '.\OneDrive - OPRG\Work\Scripts\STLUsers_Done.csv'