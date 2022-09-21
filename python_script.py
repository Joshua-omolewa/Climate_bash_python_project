#!/usr/bin/env python3

#This python script combine three pandas data frames

import pandas as pd
import glob
import os

print (os.getcwd()) #print current directory for confirmation script is running in correct directory
#print(os.system('ls *.csv')) # To see the csv file in directory
print(os.system('$(ls))'))


#importing all the files
# file1 = pd.read_csv('/home/dataengr/weclouddata_project1/en_climate_hourly_NT_2204100_02-2020_P1H.csv') 
# file2 = pd.read_csv('/home/dataengr/weclouddata_project1/en_climate_hourly_NT_2204100_02-2021_P1H.csv')
# file3 = pd.read_csv('/home/dataengr/weclouddata_project1/en_climate_hourly_NT_2204100_02-2022_P1H.csv')

#combine all the files into one single data framemalong the rows
# combine_all_csv_files = pd.concat([file1,file2,file3],axis=0)
#print(combine_all_csv_files) 

#export file name and exlude pandas index
# done=combine_all_csv_files.to_csv('all_years.csv', index=False)