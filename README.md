# PROJECT: Climate data pipeline to combine climate data files using python and shell script
## Created by Joshua Omolewa

## 1. Business Scenario
Company requires data engineer to obtain climate data from Canadian Climate API and concatenate them into a single file and also generate log files for error tracking . To download the weather data manually, visit https://climate.weather.gc.ca/historical_data/search_historic_data_e.html.

## 2. Business Requirements
Please download the data from Canadian Climate. Please concatenate the downloaded files into one final csv file, called all_years.csv. This is the output of the lab. Please upload your scripts and final csv file all_years.csv to Github repository.

## 3. Deliverable
You need to submit a shell script, a python script and all_years.csv to the github repository .

Shell script: You will use the shell script to control every operation, including data downloading, log setting, python script running.

Python script: While the Python script is used to concatenate all the data into one file.

all_years.csv: This is the output file to be generated after concatenating the files.

## 4. Specification Detail
We only need the data of Station ID = 48549. The year range of the data we want is from 2020 to 2022. We only want the data in February. The data will be downloaded in hourly format. The output file will be named as all_years.csv.

## Please note the following to use the climate data API (see shell script)
* year = year (e.g 2022, 2023, 2000 etc)
* month = 2 (this refers to February)
* format= [csv|xml]: the format output
* timeframe = 1: for hourly data
* timeframe = 2: for daily data
* timeframe = 3 for monthly data
* Day = Day of the month the value of the "day" variable is not used and can be an arbitrary value
* station ID= station ID, For another station, change the value of the variable stationID
* format: file format (specify csv, xml e.t.c) For the data in XML format, change the value of the variable format to xml in the URL.
## 5. STEPS USED TO COMPLETE THIS PROJECT
* Download data with shell script and automate log generation process
* Execute python script from shell script to concatenate the data into one file
* Save output file in the python script
* Print out SUCCESS when runing shells script if all operations are completed successfuly.
* Upload files to the github repo using git.
