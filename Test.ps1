$erroractionpreference = "silentlycontinue"
$name = Read-Host Enter the KB number
$name -as [int]|findstr $name
If ($?){ 
wusa /uninstall /kb:$name
echo "This will uninstall windows update KB$name"
} else {echo "Enter only the number"}