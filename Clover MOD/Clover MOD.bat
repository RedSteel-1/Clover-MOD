@if (1==1) @if(1==0) @ELSE
@echo off&SETLOCAL ENABLEEXTENSIONS
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"||(
    cscript //E:JScript //nologo "%~f0"
    @goto :EOF
)



rem @echo on
cd "%~dp0"
del "unpacked_installer\_Unpack Clover installer here.txt"
(DIR /B "unpacked_installer" | FINDSTR . 1>NUL) && (
	rem command to run if the directory has files
) || (
	echo "Unpacked Installer folder is empty!"
	timeout 3
	exit /b
)
taskkill /IM "Clover.exe" /F

if EXIST "..\Clover\Clover.exe" (
	rmdir /s /q "..\Clover.old"
	md "..\Clover.old" & xcopy /s /e /y "..\Clover" "..\Clover.old"
)
md "..\Clover"

cd "unpacked_installer"
SET CloverFiles="Clover.exe", "clover_dll.dll", "CloverInfo.ini", "login_ui.dll", "TabHelper32.dll", "TabHelper64.dll", "UtilWnd.dll"
SET CloverFolders="lang"
for %%f in (%CloverFiles%) do copy /y %%f "..\..\Clover"
for %%f in (%CloverFolders%) do md "..\..\Clover\%%f" & xcopy /s /e /y %%f "..\..\Clover\%%f"
del /s /q *
rd /s /q .
echo( > "_Unpack Clover installer here.txt"

cd ..
del "..\Clover\debug.log"
"utils\ResourceHacker.exe" -open "..\Clover\Clover.exe" -save "..\Clover\Clover.exe" -action addoverwrite -res "_icon.ico" -mask ICONGROUP,1000,
"utils\ResourceHacker.exe" -open "..\Clover\login_ui.dll" -save "..\Clover\login_ui.dll" -action delete -mask ZIPRES,SKINDATA,
"utils\ResourceHacker.exe" -open "..\Clover\UtilWnd.dll" -save "..\Clover\UtilWnd.dll" -action delete -mask ZIPRES,SKINDATA,
del "utils\ResourceHacker.log" "utils\ResourceHacker.ini"



@goto :EOF
@end @ELSE
ShA=new ActiveXObject("Shell.Application")
ShA.ShellExecute("cmd.exe","/c \""+WScript.ScriptFullName+"\"","","runas",5);
@end
