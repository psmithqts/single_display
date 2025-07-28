# Define destination folder
$destinationFolder = "C:\Users\Skype\AppData\Local\Packages\Microsoft.SkypeRoomSystem_8wekyb3d8bbwe\LocalState"

# Ensure the destination folder exists
try {
    if (!(Test-Path -Path $destinationFolder)) {
        New-Item -ItemType Directory -Path $destinationFolder -Force | Out-Null
        Write-Host "Created destination folder: $destinationFolder"
    }
} catch {
    Write-Error "Failed to create or access destination folder: $_"
    exit 1
}

# List of files to download
$files = @(
    @{
        Url = "https://raw.githubusercontent.com/psmithqts/single_display/main/skypsettings.xml"
        Name = "skypsettings.xml"
    },
    @{
        Url = "https://raw.githubusercontent.com/psmithqts/single_display/main/MTR_BG_Main.png"
        Name = "MTR_BG_Main.png"
    },
    @{
        Url = "https://raw.githubusercontent.com/psmithqts/single_display/1ba6accf332d724667a9cce26fff5d708a6ea022/MTR_BG_Extend.png"
        Name = "MTR_BG_Extend.png"
    }
)

# Download each file with error handling
foreach ($file in $files) {
    $destinationPath = Join-Path $destinationFolder $file.Name
    try {
        Invoke-WebRequest -Uri $file.Url -OutFile $destinationPath -ErrorAction Stop
        Write-Host "Successfully downloaded '$($file.Name)' to '$destinationPath'"
    } catch {
        Write-Error "Failed to download '$($file.Name)' from '$($file.Url)': $_"
    }
}
