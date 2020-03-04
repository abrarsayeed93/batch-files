echo off
title copy-ren-move

REM setlocal
set DateTimeNow=
REM e.g.
REM Fri 12/19/2014
REM 8:20:04.13
for /f "tokens=2-4 delims=/ "  %%a in ("%date%") do (set MM=%%a& set DD=%%b& set YYYY=%%c)
set _reportdate=%YYYY%-%DD%-%MM%

set user=%USERNAME%

echo %user%


xcopy "L:\Source Reports (DO NOT EDIT)\Weekly Pipeline\Direct Sales Reporting\Direct Sales Management Dashboard\management dashboard master.xlsx" "L:\Source Reports (DO NOT EDIT)\Weekly Pipeline\Direct Sales Reporting\Direct Sales Management Dashboard\Archives\management dashboard master.xlsx" /y /c
ren "L:\Source Reports (DO NOT EDIT)\Weekly Pipeline\Direct Sales Reporting\Direct Sales Management Dashboard\Archives\management dashboard master.xlsx" "Management dashboard_%_reportdate%.xlsx"

xcopy "L:\Source Reports (DO NOT EDIT)\Weekly Pipeline\Direct Sales Reporting\Direct Sales Management Dashboard\management dashboard master.xlsx" "C:\Users\%user%\SharePoint\Reporting - Sales GPS Documents\Teams\Direct Sales\Management Dashboard\management dashboard master.xlsx" /y /c
ren "C:\Users\%user%\SharePoint\Reporting - Sales GPS Documents\Teams\Direct Sales\Management Dashboard\management dashboard master.xlsx" "Management dashboard_%_reportdate%.xlsx"

if errorlevel 1 pause
echo Unsuccessful


PAUSE
echo copy-ren-move.
exit 0