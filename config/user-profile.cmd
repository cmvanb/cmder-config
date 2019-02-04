@echo off

:: use this file to run your own startup commands
:: use  in front of the command to prevent printing the command

:: call "%GIT_INSTALL_ROOT%/cmd/start-ssh-agent.cmd"
:: set "PATH=%CMDER_ROOT%\vendor\whatever;%PATH%"
set "PATH=C:\Program Files (x86)\Vim\vim81;%PATH%"

:: Work set up.
set proj=C:\Projects

:: Set this code page so we can use vim digraphs (symbols)
chcp 65001 > nul
