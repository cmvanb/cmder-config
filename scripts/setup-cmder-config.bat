@echo off

:: remove recursively any files already in config dir
rmdir /S /Q "%cmder_root%\config"

:: make a junction (symbolic link directory) for config/
mklink /J "%cmder_root%\config" "%~dp0..\config"
