Set-ExecutionPolicy Bypass -Scope Process -Force;

$env:chocolateyUseWindowsCompression = 'true'

(New-Object System.Net.WebClient).DownloadFile("https://www.7-zip.org/a/7z1805-x64.msi", "$env:userprofile\downloads\7z1805-x64.msi")

Start-Process msiexec.exe -Wait -ArgumentList "/I  $env:userprofile\7z1805-x64.msi /quiet"

iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#packages to install or upgrade
choco upgrade --force choco install keepass whatsapp terraform rufus nmap adwcleaner ffmpeg vagrant sqlite dbeaver openvpn libreoffice-fresh vscode git notepadplusplus nodejs-lts firefox googlechrome adobereader slack putty gcloudsdk thunderbird telegram docker-for-windows PyCharm-community postman vlc k-litecodecpackmega winamp visualstudio2017community obs wireshark curl -y
choco install --force python3 --version 3.5.9 -y 
choco install --force python3 --version 3.6.10 -y 
choco install --force python3 --version 3.7.6 -y
choco install --force python3 --version 3.8.1 -y
choco install --force python3 --version 3.9.0 -y
choco install dotnetcore-sdk -y