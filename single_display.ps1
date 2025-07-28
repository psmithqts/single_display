$destination = "C:\Users\Skype\AppData\Local\Packages\Microsoft.SkypeRoomSystem_8wekyb3d8bbwe\LocalState"

# Download files from GitHub
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/psmithqts/single_display/main/MTR_BG_Extend.png" -OutFile "$destination\MTR_BG_Extend.png"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/psmithqts/single_display/main/MTR_BG_Main.png" -OutFile "$destination\MTR_BG_Main.png"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/psmithqts/dual_display/refs/heads/main/SkypeSettings.xml" -OutFile "$destination\SkypeSettings.xml"

Write-Host "Files downloaded and placed in LocalState successfully."