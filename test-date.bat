@echo off
set name1=%date:~0,4%-%date:~5,2%-%date:~8,2%-%time:~0,2%-%time:~3,2%
set name2=checkip-
set name=%name2%%name1%
echo %name%
pause