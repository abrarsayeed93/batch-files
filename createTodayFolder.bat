@ECHO OFF

for /f "skip=1" %%d in ('wmic os get localdatetime') do if not defined mydate set mydate=%%d
md %mydate:~0,8%



