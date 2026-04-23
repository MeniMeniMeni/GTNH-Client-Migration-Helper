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
If the script window opens and closes instantly, or you get an error saying scripts are disabled, this means your OS is configured to block PowerShell scripts (a default and recommended Windows behavior).

To get around this, you can temporarily enable it in just the current PowerShell session.

**Steps:**
1. Again, never run scripts that you do not trust.
2. Run: `Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass` and thoroughly read the warning.
3. Open PowerShell.
4. Type `cd "path\to\current\script\folder"`
5. Type `./A` and then press `tab` to auto-complete the script name and run it.
