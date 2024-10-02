winget install Git.Git
$OGpath = Get-Location
$path = Read-Host "Collez le chemin d'acces"
try {
    cd "$path"
} catch {
    Write-Host "Dossier introuvable. Merci de recommencer avec un chemin d'accès valide."
    PAUSE
    exit
}
git clone https://github.com/tab342/codes-cpi1.git
cd $OGpath
if (Test-Path "../setup") {
    Remove-Item "../setup" -Recurse -Force
} else {
    Remove-Item "./setup.bat", "./setup.ps1" -Force -ErrorAction SilentlyContinue
}
clear
Write-Host "Installation terminee!"
PAUSE