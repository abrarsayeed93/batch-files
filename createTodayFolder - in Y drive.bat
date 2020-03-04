@ECHO OFF

Y:
cd Y:\Sales Effectiveness\AutoDownloaded\Data Quality
for /f "skip=1" %%d in ('wmic os get localdatetime') do if not defined mydate set mydate=%%d
md %mydate:~0,8%



