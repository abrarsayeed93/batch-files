@ECHO OFF

for /f "skip=1" %%d in ('wmic os get localdatetime') do if not defined mydate set mydate=%%d
md %mydate:~0,8%

copy "L:\Source Reports (DO NOT EDIT)\Weekly Pipeline\Direct Sales Reporting\Activity Reporting\Input\FTE.xlsx" "L:\Source Reports (DO NOT EDIT)\Weekly Pipeline\Direct Sales Reporting\Activity Reporting\Input\%mydate:~0,8%\FTE.xlsx" 
copy "L:\Source Reports (DO NOT EDIT)\Weekly Pipeline\Direct Sales Reporting\Activity Reporting\Input\Emails.csv" "L:\Source Reports (DO NOT EDIT)\Weekly Pipeline\Direct Sales Reporting\Activity Reporting\Input\%mydate:~0,8%\Emails.csv" 
copy "L:\Source Reports (DO NOT EDIT)\Weekly Pipeline\Direct Sales Reporting\Activity Reporting\Input\CIC_UK.xlsx" "L:\Source Reports (DO NOT EDIT)\Weekly Pipeline\Direct Sales Reporting\Activity Reporting\Input\%mydate:~0,8%\CIC_UK.xlsx" 
copy "L:\Source Reports (DO NOT EDIT)\Weekly Pipeline\Direct Sales Reporting\Activity Reporting\Input\CIC_SG.xlsx" "L:\Source Reports (DO NOT EDIT)\Weekly Pipeline\Direct Sales Reporting\Activity Reporting\Input\%mydate:~0,8%\CIC_SG.xlsx" 

del "L:\Source Reports (DO NOT EDIT)\Weekly Pipeline\Direct Sales Reporting\Activity Reporting\Input\FTE.xlsx"
del "L:\Source Reports (DO NOT EDIT)\Weekly Pipeline\Direct Sales Reporting\Activity Reporting\Input\Emails.csv"
del "L:\Source Reports (DO NOT EDIT)\Weekly Pipeline\Direct Sales Reporting\Activity Reporting\Input\CIC_UK.xlsx"
del "L:\Source Reports (DO NOT EDIT)\Weekly Pipeline\Direct Sales Reporting\Activity Reporting\Input\CIC_SG.xlsx"