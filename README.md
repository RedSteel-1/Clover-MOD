
-------------------------------

# CLOVER MOD AND PORTABLE SETUP.

-------------------------------

This script set performs clean and portable installation of Clover with custom program icon.

Clover is Chromium-based multi-tabbed wrapper for Windows File Explorer developed by [EJIE Technology](http://en.ejie.me).  
Brings tabs to Windows File Explorer.  

The script set does the following:
- Sets up Clover as portable program.
- Changes the program icon.
- Registers Clover in the system.
- Symlinks the portable User Data to user's AppData.
- Removes unused and unneeded files.
- Removes built-in system service of unknown purpose.
- Removes built-in adware modules, modules of unknown purpose and other shit.
- Removes the updater module.

## A. Installing Clover Portable from scratch.

1. Download this script set via "Clone or download" -> "Download ZIP", unpack.
2. [Download Clover](http://en.ejie.me).
3. Go to "Clover MOD" folder.
4. Open the downloaded Clover installer in 7-Zip and extract all files to "unpacked_installer".
5. Check if you like the "_icon.ico" icon and replace it if needed. Alternative icons can be found in "icons".
6. Run "Clover MOD.bat". The contents of "Clover MOD/unpacked_installer" will be removed during the execution.
7. Go back to the program root folder.
8. Run "Clover, Make User Data Portable (replace files in AppData).bat".
9. Run "Clover, Register In System.bat".

The Clover Portable folder should now contain the following:
- "Clover" folder (the program files are stored here).
- "Clover MOD" folder.
- "User Data" folder (your parameters, settings and stuff).
- "Clover*.bat" scripts.

## B. Updating Clover Portable to a newer version.

1. Steps 2-4 and 6 from section A.
2. Remove the folder "Clover.old" if needed.

## C. Uninstalling Clover Portable.

1. Run "Clover, Unregister In System.bat".
2. Run "Clover, Remove SymLinks in AppData.bat".
3. Delete the whole Clover Portable folder.

## D. Changing the location of Clover Portable.

1. Run "Clover, Unregister In System.bat".
2. Run "Clover, Remove SymLinks in AppData.bat".
3. Move the Clover Portable folder to another location.
4. Run "Clover, Make User Data Portable (replace files in AppData).bat".
5. Run "Clover, Register In System.bat".

## E. Copying the installation to another PC.

1. Copy the Clover Portable folder to another PC.
2. Run "Clover, Remove SymLinks in AppData.bat".
3. Run "Clover, Register In System.bat".

-------------------------------


