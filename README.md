# GTNH-Client-Migration-Helper
A Powershell script that helps transfer files and configs from your old GTNH client install to your new one!

*Are you tired of your GTNH client settings and map data resetting every time you update your pack?*
*Do you dread manually copying config files and folders over one by one every update?*
## Introducing Allie's GTNH Client Migration Helper! 
The "why am I still doing this manually" elimination tool for all your pack update needs!

It helps setup your new GTNH install and transfer important files/configs/data from your old GTNH client install to your new one!

## What it does:
1. Optionally copies a configurable list of config/data folders to your new install. By default:
```
"journeymap",
"TCNodeTracker",
"resourcepacks",
"saves",
"shaderpacks",
"visualprospecting",
"config\NEI",
"config\tabbychat"
```
2. Optionally copies a configurable list of config/data files to your new install. By default:
```
"BotaniaVars.dat",
"localconfig.cfg",
"options.txt",
"optionsnf.txt",
"servers.dat",
"config\BetterFoliage.cfg",
"config\InGameInfoXML.cfg",
"config\InGameInfoXML\InGameInfo.xml"
```
3. Optionally deletes the main menu music files (to save your ears).
4. Optionally copies your custom client mods into your new GTNH install (from a local mods folder).

## Steps:
1. Unzip files.
2. Edit the PowerShell script to setup your config.
3. Add your client mods to the "mods" folder. 
4. As a reminder, never run scripts that you do not trust.
5. Right click -> Run with PowerShell.


## Troubleshooting:
If the script window opens and closes instantly, or you get an error saying scripts are disabled, this means your Windows is configured to block PowerShell scripts (a default and recommended Windows behavior) .
To get around this, can temporarily enable them in just the current PowerShell session (recommended).
**Steps:**
1. Run: `Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass` and thoroughly read the warning. Again, never run scripts that you do not trust.
2. Open PowerShell.
3. Type `cd "path\to\current\script\folder"`
4. Type `./A` and then tab complete to fill in the script name and press enter to run the script.
