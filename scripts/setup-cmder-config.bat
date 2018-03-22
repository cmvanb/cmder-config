@echo off

:: remove recursively any files already in config dir
rmdir /S /Q "%cmder_root%\config"

:: make a junction (symbolic link directory) for config/
mklink /J "%cmder_root%\config" "%~dp0..\config"

:: remove current version of ConEmu.xml
rm "%cmder_root%\vendor\conemu-maximus5\ConEmu.xml"

:: copy over repo version of ConEmu.xml
:: NOTE: xcopy has an annoying prompt for file or directory (f/d), so echo f as user input
echo f | xcopy /f /y "%~dp0..\vendor\conemu-maximus5\ConEmu.xml" "%cmder_root%\vendor\conemu-maximus5\ConEmu.xml"
