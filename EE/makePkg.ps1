$basePath = "LCA_Explicit_EE"
$tp2Name = "LCA_Explicit"
$modPath = $basePath + "/" + $tp2Name 
$archive = $basePath + ".zip"
$exePath = "setup-" + $tp2Name + ".exe"

Remove-Item -LiteralPath $modPath -Force -Recurse
Remove-Item $archive -Force
Remove-Item $exePath -Force

$folders = @(
'bg2',
'rbg',
'sod',
'tra'#,
#'wav'
)

foreach($folder in $folders){
	Copy-Item -Path $folder -Destination ($modPath + "/" + $folder) -Recurse
}
Copy-Item -Path ("F:\BGModding - LCA\Game\00783\LCA\EE\functions.tph") -Destination $modPath
Copy-Item -Path ("F:\BGModding - LCA\Game\00783\LCA\EE\d_compactor.ps1") -Destination $PSScriptRoot
& $PSScriptRoot/d_compactor.ps1 -dPath ($modPath)

Copy-Item -Path ($tp2Name + ".tp2") -Destination $modPath 
Copy-Item -Path ("install.tph") -Destination $modPath 
Copy-Item -Path "LICENSE.md" -Destination $modPath
Copy-Item -Path "Discord Server.url" -Destination ($basePath + "/Discord Server.url")

Copy-Item -Path "weidu.exe" -Destination ($basePath + "/" + $exePath)
Copy-Item -Path "Release Notes (LCA_Explicit).md" -Destination ($basePath + "/Release Notes.md")
Copy-Item -Path "User Guide (LCA_Explicit).pdf" -Destination ($basePath + "/User Guide.pdf")

$7zipPath = "$env:ProgramFiles/7-Zip/7z.exe"

if (-not (Test-Path -Path $7zipPath -PathType Leaf)) {
	$7zipPath = "F:/Program Files/7-Zip/7z.exe"
}

Set-Alias Start-SevenZip $7zipPath

$Source = "./" + $basePath + "/*"
$Target = "./" + $archive

Start-SevenZip a -mx=9 $Target $Source

Remove-Item -LiteralPath $basePath -Force -Recurse
Get-FileHash $archive -Algorithm SHA256 > SHA256.txt

Copy-Item -Path $archive -Destination ("\\192.168.1.88\smbuser\Home\Installers\" + $archive)