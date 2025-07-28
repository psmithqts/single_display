$destination = "C:\Users\Skype\AppData\Local\Packages\Microsoft.SkypeRoomSystem_8wekyb3d8bbwe\LocalState"

# Ensure the destination directory exists
if (-Not (Test-Path -Path $destination)) {
    New-Item -ItemType Directory -Path $destination -Force
}

# Download files from GitHub
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/psmithqts/single_display/main/MTR_BG_Extend.png" -OutFile "$destination\MTR_BG_Extend.png"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/psmithqts/single_display/main/MTR_BG_Main.png" -OutFile "$destination\MTR_BG_Main.png"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/psmithqts/single_display/main/SkypeSettings.xml" -OutFile "$destination\SkypeSettings.xml"

Write-Host "Files downloaded and placed in LocalState successfully."