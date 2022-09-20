#!/bin/bash

##### creating shell script to download the raw data and save file into ######

### SETTING DATE FOR LOG FILES ###
log_date=$(date +"%d %m %Y %H-%M-%S")

### Setting enviroment vairable for all paths to folders ###

export INPUT_FOLDER=/home/dataengr/weclouddata_project1/Weclouddata-PROJECT1/input
export OUTPUT_FOLDER=/home/dataengr/weclouddata_project1/Weclouddata-PROJECT1/output
export LOG_FOLDER= /home/dataengr/weclouddata_project1/Weclouddata-PROJECT1/logs




: 'for loop below  download the data from canadian climate website using
wget command from 2020 -2022'

for year in {2020..2022};do

wget  --content-disposition "https://climate.weather.gc.ca/climate_data/bulk_data_e.html?format=csv&stationID=48549&Year=${year}&Month=2&Day=14&timeframe=2&submit= Download+Data " -0;
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