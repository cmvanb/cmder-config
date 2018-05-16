@echo off

:: remove recursively any files already in config dir
rmdir /S /Q "%cmder_root%\config"

:: make a junction (symbolic link directory) for config/
mklink /J "%cmder_root%\config" "%~dp0..\config"

:: remove current version of ConEmu.xml
rm "%cmder_root%\vendor\conemu-maximus5\ConEmu.xml"

:: make a symbolic link for ConEmu.xml
mklink "%cmder_root%\vendor\conemu-maximus5\ConEmu.xml" "%~dp0..\vendor\conemu-maximus5\ConEmu.xml"
