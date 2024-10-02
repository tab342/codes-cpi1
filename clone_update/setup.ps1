winget install Git.Git
$path = Read-Host "Collez le chemin d'acces"
cd "$path"
git clone https://github.com/tab342/codes-cpi1.git
clear
Write-Host "Installation terminee!"
PAUSE