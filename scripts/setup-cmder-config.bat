@echo off

echo.
echo --- Removing existing Cmder config dir
rmdir /s /q "%cmder_root%\config"

echo.
echo --- Making symbolic link for config dir
mklink /j "%cmder_root%\config" "%~dp0..\config"

echo.
echo --- Removing existing ConEmu.xml
del /q "%cmder_root%\vendor\conemu-maximus5\ConEmu.xml"

echo.
echo --- Making symbolic link for ConEmu.xml
mklink "%cmder_root%\vendor\conemu-maximus5\ConEmu.xml" "%~dp0..\vendor\conemu-maximus5\ConEmu.xml"
