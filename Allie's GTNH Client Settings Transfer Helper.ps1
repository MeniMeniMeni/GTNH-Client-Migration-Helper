#### Start Config ####

# Removes the main menu music files (to save your ears).
$RemoveMenuMusic = $true
$MenuMusicFolder = "config\txloader\load\minecraft\sounds\music\menu"

# Copies client mods into your new GTNH install.
# These should be stored in a "mods" folder next to this script.
$CopyClientMods = $true

# .minecraft Folder Paths for GTNH installs.
$OldGtnh = "C:\Users\admin\Prism Launcher\instances\GT_New_Horizons_2.8.0_Java_8\.minecraft"
$NewGtnh = "C:\Users\admin\Prism Launcher\instances\GT_New_Horizons_2.8.4_Java_8\.minecraft"

# Folders that you would like copied to your new install.
$CopyFolders = $true
$Folders = @(
    "journeymap",
    "TCNodeTracker",
    "resourcepacks",
    "saves",
    "shaderpacks",
    "visualprospecting",
    "config\NEI",
    "config\tabbychat"
)

# Files that you would like copied to your new install.
$CopyFiles = $true
$Files = @(
    "BotaniaVars.dat",
    "localconfig.cfg",
    "options.txt",
    "optionsnf.txt",
    "servers.dat",
    "config\BetterFoliage.cfg",
    "config\InGameInfoXML.cfg",
    "config\InGameInfoXML\InGameInfo.xml"
)

#### End Config ####





# Copies a file/folder if it exists.
function CopyIfExists {
    param($Source, $Destination)
    if (Test-Path $Source) {
        Write-Host "Copying: $Source"
        Copy-Item -Path $Source -Destination $Destination -Recurse -Force
    } else {
        Write-Host "Skipping copy, not found: $Source"
    }
}

# Copy our defined Folders to the new install.
if ($CopyFolders) {
    Write-Host "==== Copying folders... ===="
    foreach ($folder in $Folders) {
        CopyIfExists (Join-Path $OldGtnh $folder) (Join-Path $NewGtnh $folder)
    }
}

# Copy our defined Files to the new install.
if ($CopyFiles) {
    Write-Host "==== Copying files... ===="
    foreach ($file in $Files) {
        CopyIfExists (Join-Path $OldGtnh $file) (Join-Path $NewGtnh $file)
    }
}

# Remove main menu music.
if ($RemoveMenuMusic) {
    Write-Host "==== Removing menu music... ===="
    $menuMusicPath = Join-Path $NewGtnh $MenuMusicFolder

    if (Test-Path $menuMusicPath) {
        Remove-Item -Path (Join-Path $menuMusicPath '*') -Recurse -Force
    } else {
        Write-Host "No menu music found at: $menuMusicPath"
    }
}

# Copy client mods from our local ./mods folder to the new install.
if ($CopyClientMods) {
    Write-Host "==== Adding client mods to your new install... ===="
    $scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
    $modsSource = Join-Path $scriptDir "mods"
    $modsDest   = Join-Path $NewGtnh "mods"

    if (Test-Path $modsSource) {
        Copy-Item -Path (Join-Path $modsSource "*") -Destination $modsDest -Recurse -Force
    } else {
        Write-Host "A mods folder was not found next to this script."
    }
}

Write-Host "==== Done! ===="
Read-Host "==== Press Enter to exit. ===="