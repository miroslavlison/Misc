$csvfile = Import-Csv 'C:\Users\a-milis\Source\Visualization\data\ICMBreakdown.csv'

#$values =@([pscustomobject]@{Category="";Position="";Value=""})

foreach ($i in $csvfile) {
    
    $values += @([pscustomobject]@{Category=$i.CreateDate;Position=0;Value=$i.Severity1})
    $values += @([pscustomobject]@{Category=$i.CreateDate;Position=1;Value=$i.Severity2})
    $values += @([pscustomobject]@{Category=$i.CreateDate;Position=2;Value=$i.Severity3})
    
}
$values | Export-Csv -notypeinformation -Path C:\users\a-milis\Desktop\Data.csv