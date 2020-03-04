echo off
title Open Webpages

timeout /t 30

set url="http://studyinfo.studygroup.com/cognos11/bi/?perspective=classicviewer&pathRef=.public_folders%2FPublic%20Folders%2FActive%2FHE%20Regions%20Reports%E2%80%AC%2FHE%20NSE%20%28Non-Returners%29&id=iDB0D735AC9AA44169FF64944B157C44C&objRef=iDB0D735AC9AA44169FF64944B157C44C&type=report&format=HTML&prompt=true&action=run&cmProperties%5Bid%5D=iDB0D735AC9AA44169FF64944B157C44C&cmProperties%5BdefaultName%5D=HE%20NSE%20%28Non-Returners%29&cmProperties%5Btype%5D=report&cmProperties%5Bpermissions%5D%5B%5D=execute&cmProperties%5Bpermissions%5D%5B%5D=read&cmProperties%5Bpermissions%5D%5B%5D=setPolicy&cmProperties%5Bpermissions%5D%5B%5D=traverse&cmProperties%5Bpermissions%5D%5B%5D=write"
set url1="https://trello.com/b/IP34y4iK/sam-effectiveness"
set url2="https://docs.google.com/spreadsheets/d/1dFU-GIbn25LLy0C5j3UiF_TGJqY675zN0gBrWaFCuwQ/edit#gid=130308408"
start "" %url%
start "" %url1%
start "" %url2%








exit 0