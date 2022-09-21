#!/bin/bash

#Created by Joshua Omolewa

##### creating shell script to download the raw data and save file into ######

### SETTING DATE FORMAT TO BE CONCATENATED  WITH LOG FILES ###
log_date=$(date +"%d_%m_%Y_%H-%M-%S")
##########################################

#### shell script path ######

script_path="$(cd "$(dirname "${BASH_SOURCE:-$0}")" && pwd)"

### Setting enviroment variable for all paths to folders and log file ###

export INPUT_FOLDER=/home/dataengr/project1/Climate_bash_python_project/input
export OUTPUT_FOLDER=/home/dataengr/project1/Climate_bash_python_project/output
export SCRIPT_FOLDER=$script_path
export LOG_FOLDER=/home/dataengr/project1/Climate_bash_python_project/logs
export LOG_FILE_NAME="shell_script"
export LOG_FILE="${LOG_FOLDER}/${LOG_FILE_NAME}_${log_date}.log"
##############################################################

#### SETTING LOG RULES FOR AUTOMATIC LOGGING #####

exec > >(tee ${LOG_FILE}) 2>&1
###################################


###DOWNLOADING DATA FROM CLIMATE API###

: 'for loop below  download the data from canadian climate website using api below and saving downloaded file to input folder 
in quiet mode (-q) (to prevent ouput of download progress from displaying log files'

for year in {2020..2022};do

wget  -q --content-disposition "https://climate.weather.gc.ca/climate_data/bulk_data_e.html?format=csv&stationID=48549&Year=${year}&Month=2&Day=14&timeframe=2&submit= Download+Data " -O ${INPUT_FOLDER}/${year}.csv;

###checks if file downloads were sucessful###
if [ $? -eq 0 ]
then
 echo "download SUCCESS"
else
 echo "download Failure"
 exit 1
fi;
done;
###############################################################



###run python script####
./python_script.py


#checking if scripts run

if [ $? -eq 0 ]
then
 echo "Script execution SUCCESS"
 exit 0
else
 echo "Script Failure"
 exit 1
fi
