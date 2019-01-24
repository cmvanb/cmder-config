;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gs=git status $*
gl=git log --color --graph --pretty=format:"%Cred%h%Creset -%C(bold yellow)%d%Creset %s %Cgreen(%aN, %cr)%Creset" --abbrev-commit $*
ga=git add $*
gaa=git add -A $*
gc=git commit -m $*
gca=git commit --amend
gco=git checkout $*
gcp=git cherry-pick $*
gp=git push $*
gpu=git pull $*
gd=git diff $*
gds=git diff --staged $*
grs=git reset --hard $*
grb=git rebase $1 --strategy-option="rename-threshold=$2" $*
gb=git branch $*
gr=git remote $*
ls=ls --color --show-control-chars -A -C -F $*
lso=ls $*
qgrep=grep -inIErs --color $*
..=cd ..
...=cd ../..
....=cd ../../..
.....=cd ../../../..
......=cd ../../../../..
.......=cd ../../../../../..
........=cd ../../../../../../..
.........=cd ../../../../../../../..
..........=cd ../../../../../../../../..

pwd=cd
clear=cls
history=cat "%CMDER_ROOT%\config\.history"
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"
