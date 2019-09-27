echo "Hello PowerShell"
# Set console character encoding to UTF-8
$env:LC_ALL='C.UTF-8'

# Set beautiful color for console
D:\opt\ColorTool\ColorTool.exe --both --quiet SoftServer.itermcolors
# D:\opt\ColorTool\ColorTool.exe --both --quiet Ubuntu.itermcolors
# D:\opt\ColorTool\ColorTool.exe --both --quiet rebecca.itermcolors
#
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

echo "Sayonara"
