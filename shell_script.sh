#!/bin/bash

#creating shell script to download the raw data and save file into 


: 'for loop below  download the data from canadian climate website using
wget command from 2020 -2022'

for year in {2020..2022};do

wget  --content-disposition "https://climate.weather.gc.ca/climate_data/bulk_data_e.html?format=csv&stationID=1706&Year=${year}&Month=2&Day=14&timeframe=1&submit= Download+Data";
done;


#run python script
./python_script.py

#checking if scripts run

if [ $? -eq 0 ]
then
 echo "SUCCESS"
 exit 0
else
 echo "Failure"
 exit 1
fi