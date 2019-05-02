;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here

;= rem TERMINAL
clear=cls
history=cat "%CMDER_ROOT%\config\.history"
unalias=alias /d $1

;= rem WINDOWS NAVIGATION
e.=explorer .
..=cd ..
...=cd ../..
....=cd ../../..
.....=cd ../../../..
......=cd ../../../../..
.......=cd ../../../../../..
........=cd ../../../../../../..
.........=cd ../../../../../../../..
..........=cd ../../../../../../../../..

;= rem GIT COMMANDS
ga=git add $*
gaa=git add -A $*
gb=git branch $*
gc=git commit -m $*
gca=git commit --amend
gco=git checkout $*
gcp=git cherry-pick $*
gd=git diff $*
gds=git diff --staged $*
gf=git fetch $*
gl=git log --color --graph --pretty=format:"%Cred%h%Creset -%C(bold yellow)%d%Creset %s %Cgreen(%aN, %cr)%Creset" --abbrev-commit $*
gp=git push $*
gpu=git pull $*
gr=git remote $*
grb=git rebase $*
grbr=git rebase --strategy-option="rename-threshold=$1" $2
grs=git reset --hard $*
gs=git status $*
yolo=git add -A & git commit -m "$*" & git push
wip=git add -A & git commit -m "[WIP] $*"

;= rem TOOLS
ls=ls --color --show-control-chars -A -C -F $*
lso=ls $*
qgrep=grep -inIErs --color $*

