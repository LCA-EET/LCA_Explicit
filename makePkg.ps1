Remove-Item -LiteralPath "LCAExplicit_EET/LCA_EXPLICIT" -Force -Recurse
Remove-Item "LCAExplicit_EET.zip" -Force
Remove-Item "setup-LCA_EXPLICIT.exe" -Force

Copy-Item -Path "2DA" -Destination "LCAExplicit_EET/LCA_EXPLICIT/2DA" -Recurse
Copy-Item -Path "ARE" -Destination "LCAExplicit_EET/LCA_EXPLICIT/ARE" -Recurse
Copy-Item -Path "BAF" -Destination "LCAExplicit_EET/LCA_EXPLICIT/BAF" -Recurse
Copy-Item -Path "BAM" -Destination "LCAExplicit_EET/LCA_EXPLICIT/BAM" -Recurse
Copy-Item -Path "BMP" -Destination "LCAExplicit_EET/LCA_EXPLICIT/BMP" -Recurse
Copy-Item -Path "CRE" -Destination "LCAExplicit_EET/LCA_EXPLICIT/CRE" -Recurse
Copy-Item -Path "D" -Destination "LCAExplicit_EET/LCA_EXPLICIT/D" -Recurse
Copy-Item -Path "ITM" -Destination "LCAExplicit_EET/LCA_EXPLICIT/ITM" -Recurse
Copy-Item -Path "MOS" -Destination "LCAExplicit_EET/LCA_EXPLICIT/MOS" -Recurse
Copy-Item -Path "STO" -Destination "LCAExplicit_EET/LCA_EXPLICIT/STO" -Recurse
Copy-Item -Path "TIS" -Destination "LCAExplicit_EET/LCA_EXPLICIT/TIS" -Recurse
Copy-Item -Path "TRA" -Destination "LCAExplicit_EET/LCA_EXPLICIT/TRA" -Recurse
Copy-Item -Path "WAV" -Destination "LCAExplicit_EET/LCA_EXPLICIT/WAV" -Recurse
Copy-Item -Path "SPL" -Destination "LCAExplicit_EET/LCA_EXPLICIT/SPL" -Recurse
Copy-Item -Path "LCA_EXPLICIT.TP2" -Destination "LCAExplicit_EET/LCA_EXPLICIT"
Copy-Item -Path "LICENSE.md" -Destination "LCAExplicit_EET/LCA_EXPLICIT"
Copy-Item -Path "Release Notes.md" -Destination "LCAExplicit_EET/Release Notes.md"

Copy-Item -Path "weidu.exe" -Destination "LCAExplicit_EET/setup-LCA_EXPLICIT.exe"
Copy-Item -Path "User Guide.pdf" -Destination "LCAExplicit_EET/User Guide.pdf"

$7zipPath = "$env:ProgramFiles/7-Zip/7z.exe"

if (-not (Test-Path -Path $7zipPath -PathType Leaf)) {
    $7zipPath = "F:/Program Files/7-Zip/7z.exe"
}

Set-Alias Start-SevenZip $7zipPath

$Source = "./LCAExplicit_EET/*"
$Target = "./LCAExplicit_EET.zip"

Start-SevenZip a -mx=9 $Target $Source

Get-FileHash LCAExplicit_EET.zip -Algorithm SHA256 > SHA256.txt