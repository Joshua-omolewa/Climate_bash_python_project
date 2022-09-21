#!/bin/bash

##### creating shell script to download the raw data and save file into ######

### SETTING DATE FOR LOG FILES ###
log_date=$(date +"%d %m %Y %H-%M-%S")
##########################################

### Setting enviroment variable for all paths to folders and log file ###

export INPUT_FOLDER=/home/dataengr/project1/Climate_bash_python_project/input
export OUTPUT_FOLDER=/home/dataengr/project1/Climate_bash_python_project/output
export LOG_FOLDER=/home/dataengr/project1/Climate_bash_python_project/logs
export LOG_FILE_NAME="shell_script"
export LOG_FILE=${LOG_FOLDER}/${LOG_FILE_NAME}_$(log_date).log
##############################################################




: 'for loop below  download the data from canadian climate website using
wget command from 2020 -2022'

for year in {2020..2022};do

wget  --content-disposition "https://climate.weather.gc.ca/climate_data/bulk_data_e.html?format=csv&stationID=48549&Year=${year}&Month=2&Day=14&timeframe=2&submit= Download+Data " -O $(INPUT_FOLDER)/$(year).csv;
done;


#run python script
#./python_script.py

#checking if scripts run

if [ $? -eq 0 ]
then
 echo "SUCCESS"
 exit 0
else
 echo "Failure"
 exit 1
fi